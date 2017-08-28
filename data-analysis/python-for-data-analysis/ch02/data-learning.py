# -*- coding: utf-8 -*-
"""
Created on Mon Aug 28 17:18:50 2017

@author: kstriplin
"""
import pandas as pd
import numpy as np
import json

path = "C:\\Users\\kstriplin\\Documents\\business-insights\\usagov_bitly_data2012-03-16-1331923249.txt"
records = [json.loads(line) for line in open(path)]
df = pd.DataFrame(records)
clean_tz = df['tz'].fillna('Missing')
clean_tz[clean_tz == ''] = 'Unknown'
tz_counts = clean_tz.value_counts()


print(tz_counts[:10])

tz_counts[:10].plot(kind='barh', rot=0)

results = pd.Series([x.split()[0] for x in df.a.dropna()])
print(results.value_counts()[:8])

cframe = df[df.a.notnull()]
operating_system = np.where(cframe['a'].str.contains('Windows'),'Windows','Not Windows')
print(operating_system[:5])
by_tz_os = cframe.groupby(['tz', operating_system])
agg_counts = by_tz_os.size().unstack().fillna(0)
print(agg_counts[:10])

# use to sort in ascending order
indexer = agg_counts.sum(1).argsort()
print(indexer[:10])

count_subset = agg_counts.take(indexer)[-10:]
print(count_subset)
count_subset.plot(kind='barh', stacked=True)
normed_subset = count_subset.div(count_subset.sum(1), axis=0)
normed_subset.plot(kind='barh', stacked=True)