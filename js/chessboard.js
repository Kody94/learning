// create a grid like
// # # # # <-- 4 space, 4 '#'
//# # # # 
// # # # #
//# # # #
// # # # #
//# # # # 
// # # # #
//# # # #
// input: # of #

// a line consists of 
//# # # # 
// ---OR---
// # # # #

// each row is either divisible by two or not
// if it is divisible by two, use Variant A
// otherwise, use Variant B

function generateChessboard(size){
    for ( row = 0; row < size; row++ ) {
        if (row === 0 || row % 2 === 0) {
            // 'even' rows
            thisRow = ' ';
            for ( col = 0; col < size; col++ ) {
    
                if (col === 0 || col % 2 === 0) {
                    thisRow = thisRow += '#';
                } else {
                    thisRow = thisRow += ' ';
                }
            }
        } else {
            // 'odd' rows
            thisRow = '#';
            for ( col = 0; col < size; col++ ) {
    
                if (col === 0 || col % 2 === 0) {
                    thisRow = thisRow += ' ';
                } else {
                    thisRow = thisRow += '#';
                }
            }
        }
        console.log(thisRow);
    }
}

generateChessboard(128);
