FasdUAS 1.101.10   ��   ��    k             l    : ����  O     :  	  O    9 
  
 k    8       V    �� ��    H       l    ����  I   �� ��
�� .coredoexnull���     ****  4    �� 
�� 
cwin  m    ���� ��  ��  ��        l   ��������  ��  ��        l   ��  ��    M G Let's collect the window location so we can move the mouse to it later     �   �   L e t ' s   c o l l e c t   t h e   w i n d o w   l o c a t i o n   s o   w e   c a n   m o v e   t h e   m o u s e   t o   i t   l a t e r      r    &    l   $ ����  n    $   !   1   " $��
�� 
posn ! l   " "���� " 4   "�� #
�� 
cwin # m     !���� ��  ��  ��  ��    o      ����  0 windowposition windowPosition   $ % $ I  ' /�� &��
�� .ascrcmnt****      � **** & n  ' + ' ( ' 4   ( +�� )
�� 
cobj ) m   ) *����  ( o   ' (����  0 windowposition windowPosition��   %  *�� * I  0 8�� +��
�� .ascrcmnt****      � **** + n  0 4 , - , 4   1 4�� .
�� 
cobj . m   2 3����  - o   0 1����  0 windowposition windowPosition��  ��    4    �� /
�� 
pcap / m     0 0 � 1 1  I I N A 	 m      2 2�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 7 1 Setting x and y to the IINA window's coordinates    8 � 9 9 b   S e t t i n g   x   a n d   y   t o   t h e   I I N A   w i n d o w ' s   c o o r d i n a t e s 6  : ; : l  ; A <���� < r   ; A = > = n  ; ? ? @ ? 4   < ?�� A
�� 
cobj A m   = >����  @ o   ; <����  0 windowposition windowPosition > o      ���� 0 x  ��  ��   ;  B C B l  B H D���� D r   B H E F E n  B F G H G 4   C F�� I
�� 
cobj I m   D E����  H o   B C����  0 windowposition windowPosition F o      ���� 0 y  ��  ��   C  J K J l     ��������  ��  ��   K  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P � � Move the mouse to the window to activate the onscreen controls. Wish there was a more elegant way of doing this, as this technique is slow.    Q � R R   M o v e   t h e   m o u s e   t o   t h e   w i n d o w   t o   a c t i v a t e   t h e   o n s c r e e n   c o n t r o l s .   W i s h   t h e r e   w a s   a   m o r e   e l e g a n t   w a y   o f   d o i n g   t h i s ,   a s   t h i s   t e c h n i q u e   i s   s l o w . O  S T S l  I V U���� U I  I V�� V��
�� .sysoexecTEXT���     TEXT V b   I R W X W b   I P Y Z Y b   I N [ \ [ b   I L ] ^ ] m   I J _ _ � ` `� 
 / u s r / b i n / p y t h o n   < < E N D 
 i m p o r t   s y s 
 i m p o r t   t i m e 
 f r o m   Q u a r t z . C o r e G r a p h i c s   i m p o r t   * 
 d e f   m o u s e E v e n t ( t y p e ,   p o s x ,   p o s y ) : 
                     t h e E v e n t   =   C G E v e n t C r e a t e M o u s e E v e n t ( N o n e ,   t y p e ,   ( p o s x , p o s y ) ,   k C G M o u s e B u t t o n L e f t ) 
                     C G E v e n t P o s t ( k C G H I D E v e n t T a p ,   t h e E v e n t ) 
 d e f   m o u s e m o v e ( p o s x , p o s y ) : 
                     m o u s e E v e n t ( k C G E v e n t M o u s e M o v e d ,   p o s x , p o s y ) ; 
 o u r E v e n t   =   C G E v e n t C r e a t e ( N o n e ) ; 
 c u r r e n t p o s = C G E v e n t G e t L o c a t i o n ( o u r E v e n t ) ; 	 	 #   S a v e   c u r r e n t   m o u s e   p o s i t i o n 
 m o u s e m o v e ( i n t ( ^ o   J K���� 0 x   \ m   L M a a � b b  ) , i n t ( Z o   N O���� 0 y   X m   P Q c c � d dT ) ) ; 	 	 	 #   M o v e   m o u s e   t o   w i n d o w   l o c a t i o n 
 t i m e . s l e e p ( 0 . 0 1 ) ; 	 	 	 	 	 	 	 	 #   D e l a y   t o   m a k e   t h e   w i n d o w   n o t i c e 
 m o u s e m o v e ( i n t ( c u r r e n t p o s . x ) , i n t ( c u r r e n t p o s . y ) ) ;   	 #   R e s t o r e   m o u s e   p o s i t i o n��  ��  ��   T  e f e l     ��������  ��  ��   f  g h g l     ��������  ��  ��   h  i�� i l  W � j���� j O   W � k l k O   [ � m n m k   b � o o  p q p l  b b��������  ��  ��   q  r s r l  b b�� t u��   t 0 * Wait for the onscreen controller to exist    u � v v T   W a i t   f o r   t h e   o n s c r e e n   c o n t r o l l e r   t o   e x i s t s  w x w V   b ~�� y��   y H   f y z z l  f x {���� { I  f x�� |��
�� .coredoexnull���     **** | n   f t } ~ } 4   o t�� 
�� 
vali  m   r s����  ~ n   f o � � � 4   j o�� �
�� 
sliI � m   m n����  � 4   f j�� �
�� 
cwin � m   h i���� ��  ��  ��   x  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � < 6 Jump to a location on the timeline as a percentage(!)    � � � � l   J u m p   t o   a   l o c a t i o n   o n   t h e   t i m e l i n e   a s   a   p e r c e n t a g e ( ! ) �  � � � r    � � � � m    �����  � n       � � � 1   � ���
�� 
valL � n   � � � � � 4   � ��� �
�� 
vali � m   � �����  � n   � � � � � 4   � ��� �
�� 
sliI � m   � �����  � 4   � ��� �
�� 
cwin � m   � �����  �  ��� � l  � ���������  ��  ��  ��   n 4   [ _�� �
�� 
pcap � m   ] ^ � � � � �  I I N A l m   W X � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  : � �  B � �  S � �  i����  ��  ��   �   �  2�� 0���������������� _ a c�� ���������
�� 
pcap
�� 
cwin
�� .coredoexnull���     ****
�� 
posn��  0 windowposition windowPosition
�� 
cobj
�� .ascrcmnt****      � ****�� 0 x  �� 0 y  
�� .sysoexecTEXT���     TEXT
�� 
sliI
�� 
vali�� 
�� 
valL�� �� 7*��/ / h*�k/j hY��O*�k/�,E�O��k/j O��l/j UUO��k/E�O��l/E�O��%�%�%�%j O� ?*��/ 7 h*�k/a l/a k/j hY��Oa *�k/a l/a k/a ,FOPUU ascr  ��ޭ