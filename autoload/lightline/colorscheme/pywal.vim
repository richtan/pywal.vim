let s:black = [ '', 0 ]
let s:gray = [ '', 8 ]
let s:white = [ '', 15 ]
let s:blue = [ '', 4 ]
let s:cyan = [ '', 6 ]
let s:green = [ '', 2 ]
let s:purple = [ '', 5 ]
let s:red = [ '', 1 ]
let s:yellow = [ '', 3 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:green ], [ s:white, s:gray ] ]
let s:p.normal.right = [ [ s:black, s:green ], [ s:white, s:gray ] ]
let s:p.insert.left = [ [ s:black, s:blue ], [ s:cyan, s:gray ] ]
let s:p.insert.right = [ [ s:black, s:blue ], [ s:cyan, s:gray ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:cyan, s:gray ] ]
let s:p.replace.right = [ [ s:black, s:red ], [ s:cyan, s:gray ] ]
let s:p.visual.left = [ [ s:black, s:purple ], [ s:cyan, s:gray ] ]
let s:p.visual.right = [ [ s:black, s:purple ], [ s:cyan, s:gray ] ]
let s:p.normal.middle = [ [ s:white, s:black ] ]
let s:p.tabline.left = [ [ s:white, s:gray ] ]
let s:p.tabline.tabsel = [ [ s:black, s:blue ] ]
let s:p.tabline.middle = [ [ s:white, s:gray ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:black, s:red ] ]
let s:p.normal.warning = [ [ s:black, s:yellow ] ]

let g:lightline#colorscheme#pywal#palette = lightline#colorscheme#flatten(s:p)
