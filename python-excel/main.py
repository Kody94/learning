import openpyxl
wb = openpyxl.load_workbook('data.xlsx')
current_sheet = wb.get_sheet_by_name('a')
print(current_sheet['C6'].value)
for i in range(1, 20, 1):
        print(i, current_sheet.cell(row=i, column=5).value)

