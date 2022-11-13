

Haskellにおける型レベルプログラミングの基本(翻訳)
https://qiita.com/HirotoShioi/items/39fc492401e4dcbc8cba  

高階カインド(Higher Kinds)


Prelude> :kind Maybe
Maybe :: * -> *
Prelude> :type Maybe

<interactive>:1:1: error:
    • Data constructor not in scope: Maybe
    • Perhaps you meant variable ‘maybe’ (imported from Prelude)