0000: noop
0001: noop
0002:  out "Welcome to the Synacor Challenge!\nPlease record your progress by putting codes like\nthis one into the challenge website: mktzJSQCHxDA\n\nExecuting self-test...\n\n"
0140:  jmp 015b
0142:  out "jmp fails\n"
0156: halt
0157: noop
0158: noop
0159: noop
015a: noop
015b: noop
015c: noop
015d: noop
015e: noop
015f: noop
0160:  jmp 0166
0162:  jmp 0170
0164:  jmp 018d
0166:  jmp 01e4
0168:  jmp 01a8
016a:  jmp 01c5
016c: noop
016d: noop
016e: noop
016f: noop
0170:  out "jmp lands -2\n"
018a: halt
018b: noop
018c: noop
018d:  out "jmp lands -1\n"
01a7: halt
01a8: noop
01a9: noop
01aa:  out "jmp lands +1\n"
01c4: halt
01c5: noop
01c6: noop
01c7: noop
01c8: noop
01c9:  out "jmp lands +2\n"
01e3: halt
01e4:   jt 0000 0432
01e7:   jf 0001 0432
01ea:   jt 0001 01ef
01ed:  jmp 0432
01ef:   jf 0000 01f4
01f2:  jmp 0432
01f4:   jt R0 0445
01f7:   jt R1 0445
01fa:   jt R2 0445
01fd:   jt R3 0445
0200:   jt R4 0445
0203:   jt R5 0445
0206:   jt R6 0445
0209:   jt R7 0445
020c:  set R0 0001
020f:   jf R0 045e
0212:  set R0 0000
0215:   jt R0 045e
0218:  add R0 0001 0001
021c:   jt R0 0234
021f:  out "no add op\n"
0233: halt
0234:   eq R1 R0 0002
0238:   jt R1 024e
023b:  out "no eq op\n"
024d: halt
024e: push R0
0250: push R1
0252:  pop R0
0254:  pop R1
0256:   eq R2 R1 0002
025a:   jf R2 0486
025d:   eq R2 R0 0001
0261:   jf R2 0486
0264:   gt R2 R1 R0
0268:   jf R2 0473
026b:   gt R2 R0 R1
026f:   jt R2 0473
0272:   gt R2 002a 002a
0276:   jt R2 0473
0279:  and R0 70f0 4caa
027d:   eq R1 R0 40a0
0281:   jf R1 0499
0284:   or R1 70f0 4caa
0288:   eq R0 R1 7cfa
028c:   jt R0 02ac
028f:  out "no bitwise or\n"
02ab: halt
02ac:  not R0 0000
02af:   eq R1 R0 7fff
02b3:   jf R1 04b8
02b6:  not R0 5555
02b9:   eq R1 R0 2aaa
02bd:   jf R1 04b8
02c0: call 0505
02c2:  jmp 0509
02c4:  pop R0
02c6:   eq R1 R0 02c4
02ca:   jt R1 0509
02cd:   eq R1 R0 02c2
02d1:   jf R1 0509
02d4:  set R0 0507
02d7: call R0
02d9:  jmp 0509
02db:  pop R0
02dd:   eq R1 R0 02db
02e1:   jt R1 0509
02e4:   eq R1 R0 02d9
02e8:   jf R1 0509
02eb:  add R0 7fff 7fff
02ef:   eq R1 R0 7ffe
02f3:   jf R1 0520
02f6:   eq R1 7ffe R0
02fa:   jf R1 0520
02fd:  add R0 4000 4000
0301:   jt R0 0520
0304:  add R0 4000 4000
0308:   jt R0 0520
030b: mult R0 0006 0009
030f:   eq R1 R0 002a
0313:   jt R1 0565
0316:   eq R1 R0 0036
031a:   jf R1 0586
031d: mult R0 3039 7d7b
0321:   eq R1 R0 0063
0325:   jf R1 0520
0328:  mod R0 0006 0003
032c:   eq R1 R0 0000
0330:   jf R1 059d
0333:  mod R0 0046 0006
0337:   eq R1 R0 0004
033b:   jf R1 059d
033e: mult R0 7ffe 000f
0342:   eq R1 R0 7fe2
0346:   jf R1 0520
0349:  jmp 034d
034b: 2710
034d: rmem R0 034b
0350:   eq R1 R0 4e20
0354:   jf R1 04d7
0357:  add R2 034b 0001
035b: rmem R0 R2
035e:   eq R1 R0 2710
0362:   jf R1 04d7
0365:  set R0 034b
0368: wmem R0 7530
036b: rmem R2 R0
036e:   eq R1 R2 7530
0372:   jf R1 04ee
0375: call 06bb
0377: rmem R0 17b4
037a:   eq R1 R0 000b
037e:   jf R1 04d7
0381:  add R2 17b4 0001
0385: rmem R0 R2
0388:   eq R1 R0 0074
038c:   jf R1 04d7
038f: wmem R2 0054
0392: rmem R0 R2
0395:   eq R1 R0 0074
0399:   jt R1 04ee
039c:   eq R1 R0 0054
03a0:   jf R1 04ee
03a3: wmem 03a9 0015
03a6: wmem 03aa 0007
03a9: noop
03aa:   jt 0013 03d2
03ad:  out "wmem opwrite fail\n"
03d1: halt
03d2:  add R1 000a 17c0
03d6:  add R1 R1 0001
03da: rmem R2 17e4
03dd:  add R2 R2 17e4
03e1:  set R0 17e4
03e4:  add R0 R0 0001
03e8:   gt R3 R0 R2
03ec:   jt R3 03ff
03ef: rmem R4 R0
03f2: wmem R1 R4
03f5:  add R0 R0 0001
03f9:  add R1 R1 0001
03fd:  jmp 03e8
03ff: rmem R0 17c0
0402: rmem R1 17d3
0405:  add R0 R0 R1
0409:  add R0 R0 0001
040d: wmem 17c0 R0
0410: wmem 17d3 002c
0413:  set R0 17c0
0416: call 05ee
0418: push R0
041a: push R1
041c: push R2
041e:  set R0 68e3
0421:  set R1 05fb
0424:  add R2 6006 0165
0428: call 05b2
042a:  pop R2
042c:  pop R1
042e:  pop R0
0430:  jmp 0aae
0432:  out "no jt/jf\n"
0444: halt
0445:  out "nonzero reg\n"
045d: halt
045e:  out "no set op\n"
0472: halt
0473:  out "no gt op\n"
0485: halt
0486:  out "no stack\n"
0498: halt
0499:  out "no bitwise and\n"
04b7: halt
04b8:  out "no bitwise not\n"
04d6: halt
04d7:  out "no rmem op\n"
04ed: halt
04ee:  out "no wmem op\n"
0504: halt
0505:  jmp 02c4
0507:  jmp 02db
0509:  out "no call op\n"
051f: halt
0520:  out "no modulo math during add or mult\n"
0564: halt
0565:  out "not hitchhiking\n"
0585: halt
0586:  out "no mult op\n"
059c: halt
059d:  out "no mod op\n"
05b1: halt
05b2: push R0
05b4: push R3
05b6: push R4
05b8: push R5
05ba: push R6
05bc:  set R6 R0
05bf:  set R5 R1
05c2: rmem R4 R0
05c5:  set R1 0000
05c8:  add R3 0001 R1
05cc:   gt R0 R3 R4
05d0:   jt R0 05e3
05d3:  add R3 R3 R6
05d7: rmem R0 R3
05da: call R5
05dc:  add R1 R1 0001
05e0:   jt R1 05c8
05e3:  pop R6
05e5:  pop R5
05e7:  pop R4
05e9:  pop R3
05eb:  pop R0
05ed:  ret 
05ee: push R1
05f0:  set R1 05f8
05f3: call 05b2
05f5:  pop R1
05f7:  ret 
05f8:  out R0
05fa:  ret 
05fb: push R1
05fd:  set R1 R2
0600: call 084d
0602:  out R0
0604:  pop R1
0606:  ret 
0607: push R1
0609: push R3
060b: rmem R3 R0
060e:   jf R3 061b
0611: call 05b2
0613:   jt R1 061b
0616:  set R0 R2
0619:  jmp 061e
061b:  set R0 7fff
061e:  pop R3
0620:  pop R1
0622:  ret 
0623: push R1
0625: push R2
0627:  set R2 R1
062a:  set R1 0645
062d: call 0607
062f:  pop R2
0631:  pop R1
0633:  ret 
0634: push R1
0636: push R2
0638:  set R2 R1
063b:  set R1 0670
063e: call 0607
0640:  pop R2
0642:  pop R1
0644:  ret 
0645:   eq R0 R0 R2
0649:   jf R0 0652
064c:  set R2 R1
064f:  set R1 7fff
0652:  ret 
0653: push R3
0655:  add R3 R2 0001
0659:  add R3 R3 R1
065d: rmem R3 R3
0660:   eq R3 R0 R3
0664:   jt R3 066d
0667:  set R2 R1
066a:  set R1 7fff
066d:  pop R3
066f:  ret 
0670: push R1
0672:  set R1 R2
0675: call 0683
0677:  pop R1
0679:   jf R0 0682
067c:  set R2 R1
067f:  set R1 7fff
0682:  ret 
0683: push R1
0685: push R2
0687: push R3
0689: push R4
068b: rmem R3 R0
068e: rmem R4 R1
0691:   eq R2 R3 R4
0695:   jf R2 06af
0698:   or R2 R3 R4
069c:   jf R2 06aa
069f:  set R2 R1
06a2:  set R1 0653
06a5: call 05b2
06a7:   jf R1 06af
06aa:  set R0 0001
06ad:  jmp 06b2
06af:  set R0 0000
06b2:  pop R4
06b4:  pop R3
06b6:  pop R2
06b8:  pop R1
06ba:  ret 
06bb: push R0
06bd: push R1
06bf:  set R1 17b4
06c2: rmem R0 R1
06c5: push R1
06c7: mult R1 R1 R1
06cb: call 084d
06cd:  set R1 4154
06d0: call 084d
06d2:  pop R1
06d4: wmem R1 R0
06d7:  add R1 R1 0001
06db:   eq R0 7562 R1
06df:   jf R0 06c2
06e2:  pop R1
06e4:  pop R0
06e6:  ret 
06e7: push R0
06e9: push R2
06eb: push R3
06ed: push R4
06ef: push R5
06f1:  add R2 R1 R0
06f5:  set R0 R1
06f8:  set R5 0000
06fb:  add R0 R0 0001
06ff:   gt R3 R0 R2
0703:   jt R3 0718
0706:   in R4
0708:   eq R3 R4 000a
070c:   jt R3 0718
070f: wmem R0 R4
0712:  add R5 R5 0001
0716:  jmp 06fb
0718: wmem R1 R5
071b:   eq R3 R4 000a
071f:   jt R3 0726
0722:   in R4
0724:  jmp 071b
0726:  pop R5
0728:  pop R4
072a:  pop R3
072c:  pop R2
072e:  pop R0
0730:  ret 
0731: push R3
0733: push R4
0735: push R5
0737: push R6
0739:  set R6 0001
073c:  add R4 R3 R6
0740: rmem R4 R4
0743:  add R5 17ed R6
0747: wmem R5 R4
074a:  add R6 R6 0001
074e: rmem R5 17ed
0751:   gt R4 R6 R5
0755:   jf R4 073c
0758:  set R3 0000
075b:  set R4 0000
075e: rmem R5 17ed
0761:  mod R5 R4 R5
0765:  add R5 R5 17ed
0769:  add R5 R5 0001
076d: rmem R6 R5
0770: mult R6 R6 1481
0774:  add R6 R6 3039
0778: wmem R5 R6
077b: push R0
077d: push R1
077f:  set R1 R6
0782: call 084d
0784:  set R6 R0
0787:  pop R1
0789:  pop R0
078b: rmem R5 R1
078e:  mod R6 R6 R5
0792:  add R6 R6 0001
0796:   gt R5 R6 R2
079a:   jt R5 07a0
079d:  set R3 0001
07a0:  add R6 R6 R1
07a4: rmem R6 R6
07a7:  add R4 R4 0001
07ab:  add R5 R4 17f1
07af: wmem R5 R6
07b2: rmem R5 17f1
07b5:   eq R5 R4 R5
07b9:   jf R5 075e
07bc:   jf R3 0758
07bf: push R0
07c1:  set R0 17f1
07c4: call 05ee
07c6:  pop R0
07c8:  pop R6
07ca:  pop R5
07cc:  pop R4
07ce:  pop R3
07d0:  ret 
07d1: push R0
07d3: push R1
07d5: push R2
07d7: push R3
07d9: push R4
07db: push R5
07dd:  set R2 0001
07e0:  set R5 0000
07e3:   jf R0 082c
07e6:   eq R4 R2 2710
07ea:  set R3 R0
07ed:   jt R4 07f8
07f0: mult R1 R2 000a
07f4:  mod R3 R0 R1
07f8:  set R4 0000
07fb: mult R2 R2 7fff
07ff:   jf R3 080c
0802:  add R4 R4 0001
0806:  add R3 R3 R2
080a:  jmp 07ff
080c: mult R2 R2 7fff
0810: mult R3 R4 R2
0814: mult R3 R3 7fff
0818:  add R0 R0 R3
081c:  add R4 R4 0030
0820: mult R2 R2 000a
0824:  add R5 R5 0001
0828: push R4
082a:  jmp 07e3
082c:   jt R5 0833
082f:  out "0"
0831:  jmp 0840
0833:   jf R5 0840
0836:  pop R0
0838:  out R0
083a:  add R5 R5 7fff
083e:  jmp 0833
0840:  pop R5
0842:  pop R4
0844:  pop R3
0846:  pop R2
0848:  pop R1
084a:  pop R0
084c:  ret 
084d: push R1
084f: push R2
0851:  and R2 R0 R1
0855:  not R2 R2
0858:   or R0 R0 R1
085c:  and R0 R0 R2
0860:  pop R2
0862:  pop R1
0864:  ret 
0865:  add R0 R0 R1
0869:   gt R1 R1 R0
086d:  ret 
086e: push R2
0870:   gt R2 R1 R0
0874: mult R1 R1 7fff
0878:  add R0 R0 R1
087c:  set R1 R2
087f:  pop R2
0881:  ret 
0882:   jf R0 08c1
0885:   jf R1 08c1
0888: push R2
088a: push R3
088c:   gt R2 R1 R0
0890:   jt R2 089c
0893:  set R2 R0
0896:  set R0 R1
0899:  set R1 R2
089c:  set R2 R0
089f:  set R0 0000
08a2:  add R0 R0 R1
08a6:   gt R3 R1 R0
08aa:   jt R3 08b9
08ad:  add R2 R2 7fff
08b1:   jt R2 08a2
08b4:  set R1 0000
08b7:  jmp 08bc
08b9:  set R1 0001
08bc:  pop R3
08be:  pop R2
08c0:  ret 
08c1:  set R0 0000
08c4:  set R1 0000
08c7:  ret 
08c8: push R1
08ca: push R2
08cc:   jf R1 08e4
08cf:  add R1 R1 7fff
08d3:  and R2 R0 4000
08d7: mult R0 R0 0002
08db:   jf R2 08cc
08de:   or R0 R0 0001
08e2:  jmp 08cc
08e4:  pop R2
08e6:  pop R1
08e8:  ret 
08e9: push R1
08eb:   gt R1 R0 000e
08ef:   jt R1 0905
08f2:  set R1 R0
08f5:  set R0 0001
08f8:   jf R1 0908
08fb:  add R1 R1 7fff
08ff: mult R0 R0 0002
0903:  jmp 08f8
0905:  set R0 7fff
0908:  pop R1
090a:  ret 
090b: 0aae 1808 6917 18ce 691a 0000 1933 6921 19c5 6924 0000 1a41 692d 1b0a 6930 0000 1bb7 6938 1c66 693a 0000 1d5a 6942 1dc0 6944 0000 1e7f 694e 1f47 6955 0000 1ff3 6961 208c 6967 0ea2 20f5 6973 213e 6977 0eb6 21f1 6985 223a 6989 0eca 22f4 6997 233d 699b 0ede 239a 69a1 23d7 69a3 0e48 2438 69ac 24b5 69af 0e48 24fc 69b8 2529 69bb 0e48 25ab 69c4 26af 69c7 0000 277d 69d2 0005 28bf 69e5 296d 69e7 0000 2a0e 69ef 2a8c 69f1 0000 2b54 69f9 2c03 69fb 0000 2d35 6a01 2dce 6a03 0000 2e95 6a0e 2fa7 6a11 0000 30bb 6a1b 3193 6a1f 0000 323f 6a2a 3332 6a2d 0000 347c 6a36 357e 6a39 0000 3683 6a42 370a 6a45 0000 3881 6a4f 392a 6a51 1203 39b8 6a5a 3a44 6a5d 0f87 3aed 6a69 3b7e 6a6d 0fa9 3c9c 6a79 3d30 6a7d 0fcd 3ddd 6a8c 3e77 6a91 0fef 3f1f 6a9d 3fb1 6aa1 1011 4060 6ab0 40f7 6ab5 1033 41a9 6ac1 424b 6ac5 1047 42f2 6ad1 4385 6ad5 1069 4422 6add 44fd 6adf 0000 45ae 6ae8 461d 6aeb 0000 468d 6af4 468e 0000 471e 7fff 47a8 0000 4824 7fff 4888 7fff 48ba 7fff 4903 7fff 4951 7fff 49a4 7fff 4a09 7fff 4a55 0000 4aa9 0000 4af8 0a3f 4b3a 0a53 4bb8 0000 564d 09f9 09b8 0002 0002 0002 0002 000f 0aac
0ab9: rmem R0 0aad
0abc:   eq R0 R0 R1
0ac0:   jt R0 0ad2
0ac3: rmem R0 0aac
0ac6:  add R0 R0 0004
0aca: rmem R0 R0
0acd:   jf R0 0ad2
0ad0: call R0
0ad2: rmem R1 0aac
0ad5: rmem R0 0aad
0ad8:   eq R0 R0 R1
0adc:   jt R0 0ae7
0adf:  set R0 6576
0ae2: wmem R0 0000
0ae5: call 0b94
0ae7: wmem 0aad R1
0aea: push R0
0aec: push R1
0aee: push R2
0af0:  set R0 6b16
0af3:  set R1 05fb
0af6:  add R2 16cf 13a6
0afa: call 05b2
0afc:  pop R2
0afe:  pop R1
0b00:  pop R0
0b02:  set R0 0020
0b05:  set R1 6576
0b08: call 06e7
0b0a:  out "\n\n"
0b0e:  set R0 6576
0b11:  set R1 0020
0b14: call 0623
0b16:   eq R1 R0 7fff
0b1a:   jf R1 0b20
0b1d: rmem R0 6576
0b20:  set R2 R0
0b23: rmem R1 6576
0b26: push R1
0b28: wmem 6576 R2
0b2b:  set R0 6b06
0b2e:  set R1 6576
0b31: call 0634
0b33:  pop R1
0b35: wmem 6576 R1
0b38:   eq R1 R0 7fff
0b3c:   jf R1 0b45
0b3f:  set R0 0000
0b42:  set R2 0000
0b45:  add R1 6b0e 0001
0b49:  add R1 R1 R0
0b4d: rmem R1 R1
0b50: rmem R3 6576
0b53:   eq R3 R3 R2
0b57:   jt R3 0b80
0b5a: mult R0 R2 7fff
0b5e: rmem R3 6576
0b61:  add R3 R0 R3
0b65:   jf R2 0b6c
0b68:  add R3 R3 7fff
0b6c:  mod R3 R3 0020
0b70:  add R0 6576 R2
0b74:   jf R2 0b7b
0b77:  add R0 R0 0001
0b7b: wmem R0 R3
0b7e:  jmp 0b86
0b80:  set R0 6576
0b83: wmem R0 0000
0b86: call R1
0b88:   jt R1 0ab6
0b8b:  pop R3
0b8d:  pop R2
0b8f:  pop R1
0b91:  pop R0
0b93:  ret 
0b94: push R0
0b96: push R1
0b98: push R2
0b9a: rmem R1 R0
0b9d:   jf R1 0bd8
0ba0: call 1721
0ba2:   jf R0 0bbe
0ba5: push R0
0ba7: call 1766
0ba9:  set R1 R0
0bac:  pop R0
0bae:   jf R1 0bbe
0bb1:  add R1 R0 0001
0bb5: rmem R0 R1
0bb8: call 05ee
0bba:  out "\n"
0bbc:  jmp 0ca6
0bbe: push R0
0bc0: push R1
0bc2: push R2
0bc4:  set R0 6b28
0bc7:  set R1 05fb
0bca:  add R2 012c 65d3
0bce: call 05b2
0bd0:  pop R2
0bd2:  pop R1
0bd4:  pop R0
0bd6:  jmp 0ca6
0bd8: rmem R0 0aac
0bdb: push R0
0bdd:  out "== "
0be3:  add R0 R0 0000
0be7: rmem R0 R0
0bea: call 05ee
0bec:  out " ==\n"
0bf4:  pop R0
0bf6: push R0
0bf8:  add R0 R0 0001
0bfc: rmem R0 R0
0bff: rmem R1 R0
0c02:   eq R1 R1 0002
0c06:   jf R1 0c20
0c09: push R0
0c0b:  set R0 0a78
0c0e: call 1766
0c10:  set R1 R0
0c13:  pop R0
0c15:  add R0 R0 0001
0c19:  add R0 R0 R1
0c1d: rmem R0 R0
0c20: call 05ee
0c22:  out "\n"
0c24:  pop R0
0c26: push R0
0c28: call 16bf
0c2a:   jf R0 0c4a
0c2d: push R0
0c2f: push R1
0c31: push R2
0c33:  set R0 6b3f
0c36:  set R1 05fb
0c39:  add R2 0282 026e
0c3d: call 05b2
0c3f:  pop R2
0c41:  pop R1
0c43:  pop R0
0c45: rmem R2 0aac
0c48: call 16f4
0c4a:  pop R0
0c4c: push R0
0c4e:  add R0 R0 0002
0c52: rmem R0 R0
0c55: rmem R0 R0
0c58:   eq R2 R0 0001
0c5c:  out "\nThere "
0c6a:   jt R2 0c75
0c6d:  out "are"
0c73:  jmp 0c79
0c75:  out "is "
0c7b: call 07d1
0c7d:  out " exit"
0c87:   eq R2 R0 0001
0c8b:   jt R2 0c90
0c8e:  out "s:\n"
0c94:  pop R0
0c96: push R0
0c98:  add R0 R0 0002
0c9c: rmem R0 R0
0c9f:  set R1 16b6
0ca2: call 05b2
0ca4:  pop R0
0ca6:  pop R2
0ca8:  pop R1
0caa:  pop R0
0cac:  ret 
0cad: push R0
0caf: push R1
0cb1: push R2
0cb3:  set R1 R0
0cb6: rmem R0 0aac
0cb9:  add R0 R0 0002
0cbd: rmem R0 R0
0cc0: call 0634
0cc2:   eq R2 R0 7fff
0cc6:   jt R2 0ce6
0cc9: rmem R2 0aac
0ccc:  add R2 R2 0003
0cd0: rmem R2 R2
0cd3:  add R2 R2 0001
0cd7:  add R2 R2 R0
0cdb: rmem R2 R2
0cde: wmem 0aac R2
0ce1: wmem 0aad 0000
0ce4:  jmp 0cfe
0ce6: push R0
0ce8: push R1
0cea: push R2
0cec:  set R0 6b5a
0cef:  set R1 05fb
0cf2:  add R2 0053 021d
0cf6: call 05b2
0cf8:  pop R2
0cfa:  pop R1
0cfc:  pop R0
0cfe:  pop R2
0d00:  pop R1
0d02:  pop R0
0d04:  ret 
0d05: push R0
0d07: push R0
0d09: push R1
0d0b: push R2
0d0d:  set R0 6b8c
0d10:  set R1 05fb
0d13:  add R2 0dca 1f9d
0d17: call 05b2
0d19:  pop R2
0d1b:  pop R1
0d1d:  pop R0
0d1f:  pop R0
0d21:  ret 
0d22: push R0
0d24: push R2
0d26: push R0
0d28: push R1
0d2a: push R2
0d2c:  set R0 6d85
0d2f:  set R1 05fb
0d32:  add R2 23b3 2039
0d36: call 05b2
0d38:  pop R2
0d3a:  pop R1
0d3c:  pop R0
0d3e:  set R2 0000
0d41: call 16f4
0d43:  pop R2
0d45:  pop R0
0d47:  ret 
0d48: push R0
0d4a: push R1
0d4c: push R2
0d4e: call 1721
0d50:   jf R0 0d81
0d53:  add R1 R0 0002
0d57: rmem R0 R1
0d5a: rmem R2 0aac
0d5d:   eq R2 R0 R2
0d61:   jf R2 0d81
0d64: wmem R1 0000
0d67: push R0
0d69: push R1
0d6b: push R2
0d6d:  set R0 6d96
0d70:  set R1 05fb
0d73:  add R2 32c4 39b1
0d77: call 05b2
0d79:  pop R2
0d7b:  pop R1
0d7d:  pop R0
0d7f:  jmp 0d99
0d81: push R0
0d83: push R1
0d85: push R2
0d87:  set R0 6d9e
0d8a:  set R1 05fb
0d8d:  add R2 19c4 1cac
0d91: call 05b2
0d93:  pop R2
0d95:  pop R1
0d97:  pop R0
0d99:  pop R2
0d9b:  pop R1
0d9d:  pop R0
0d9f:  ret 
0da0: push R0
0da2: push R1
0da4: call 1721
0da6:   jf R0 0dd3
0da9:  add R1 R0 0002
0dad: rmem R0 R1
0db0:   jt R0 0dd3
0db3: rmem R0 0aac
0db6: wmem R1 R0
0db9: push R0
0dbb: push R1
0dbd: push R2
0dbf:  set R0 6dba
0dc2:  set R1 05fb
0dc5:  add R2 0a84 2860
0dc9: call 05b2
0dcb:  pop R2
0dcd:  pop R1
0dcf:  pop R0
0dd1:  jmp 0deb
0dd3: push R0
0dd5: push R1
0dd7: push R2
0dd9:  set R0 6dc4
0ddc:  set R1 05fb
0ddf:  add R2 146b 017e
0de3: call 05b2
0de5:  pop R2
0de7:  pop R1
0de9:  pop R0
0deb:  pop R1
0ded:  pop R0
0def:  ret 
0df0: push R0
0df2: push R1
0df4: call 1721
0df6:   jf R0 0e11
0df9:  add R1 R0 0002
0dfd: rmem R1 R1
0e00:   jt R1 0e11
0e03:  add R1 R0 0003
0e07: rmem R1 R1
0e0a:   jf R1 0e2b
0e0d: call R1
0e0f:  jmp 0e43
0e11: push R0
0e13: push R1
0e15: push R2
0e17:  set R0 6de7
0e1a:  set R1 05fb
0e1d:  add R2 0fad 0dc3
0e21: call 05b2
0e23:  pop R2
0e25:  pop R1
0e27:  pop R0
0e29:  jmp 0e43
0e2b: push R0
0e2d: push R1
0e2f: push R2
0e31:  set R0 6e0a
0e34:  set R1 05fb
0e37:  add R2 323b 162e
0e3b: call 05b2
0e3d:  pop R2
0e3f:  pop R1
0e41:  pop R0
0e43:  pop R1
0e45:  pop R0
0e47:  ret 
0e48: push R0
0e4a: push R1
0e4c: push R2
0e4e:  set R0 0a78
0e51: call 1766
0e53:   jt R0 0e6e
0e56:  add R0 0a74 0002
0e5a: wmem R0 7fff
0e5d:  add R0 0a78 0002
0e61: wmem R0 7fff
0e64:  add R0 0a70 0002
0e68: wmem R0 7fff
0e6b: wmem 0aac 0a58
0e6e:  pop R2
0e70:  pop R1
0e72:  pop R0
0e74:  ret 
0e75: push R0
0e77: push R1
0e79: push R2
0e7b:  set R0 6e2c
0e7e:  set R1 05fb
0e81:  add R2 08bc 0d2d
0e85: call 05b2
0e87:  pop R2
0e89:  pop R1
0e8b:  pop R0
0e8d: halt
0e8e: halt
0e8f: push R1
0e91: rmem R1 0e8e
0e94:   or R1 R1 R0
0e98: wmem 0e8e R1
0e9b:  pop R1
0e9d:  ret 
0e9e: wmem 0e8e 0000
0ea1:  ret 
0ea2: push R0
0ea4:  set R0 0001
0ea7: call 0e8f
0ea9:  pop R0
0eab:  ret 
0eac: push R0
0eae:  set R0 0002
0eb1: call 0e8f
0eb3:  pop R0
0eb5:  ret 
0eb6: push R0
0eb8:  set R0 0004
0ebb: call 0e8f
0ebd:  pop R0
0ebf:  ret 
0ec0: push R0
0ec2:  set R0 0008
0ec5: call 0e8f
0ec7:  pop R0
0ec9:  ret 
0eca: push R0
0ecc:  set R0 0010
0ecf: call 0e8f
0ed1:  pop R0
0ed3:  ret 
0ed4: push R0
0ed6:  set R0 0020
0ed9: call 0e8f
0edb:  pop R0
0edd:  ret 
0ede: push R0
0ee0: push R1
0ee2: push R2
0ee4: push R3
0ee6:  set R0 0040
0ee9: call 0e8f
0eeb: push R0
0eed: push R1
0eef: push R2
0ef1:  set R0 6e4c
0ef4:  set R1 05fb
0ef7:  add R2 3aed 3b91
0efb: call 05b2
0efd:  pop R2
0eff:  pop R1
0f01:  pop R0
0f03: rmem R0 0e8e
0f06:  set R1 650a
0f09:  set R2 7fff
0f0c:  set R3 6e8b
0f0f: call 0731
0f11: push R0
0f13: push R1
0f15: push R2
0f17:  set R0 6e8f
0f1a:  set R1 05fb
0f1d:  add R2 1183 03df
0f21: call 05b2
0f23:  pop R2
0f25:  pop R1
0f27:  pop R0
0f29: wmem 0aac 0971
0f2c:  pop R3
0f2e:  pop R2
0f30:  pop R1
0f32:  pop R0
0f34:  ret 
0f35: push R0
0f37: push R1
0f39: rmem R0 099e
0f3c: rmem R1 69dd
0f3f:   eq R0 R0 R1
0f43:   jt R0 0f64
0f46: push R0
0f48: push R1
0f4a: push R2
0f4c:  set R0 6ebb
0f4f:  set R1 05fb
0f52:  add R2 068c 14de
0f56: call 05b2
0f58:  pop R2
0f5a:  pop R1
0f5c:  pop R0
0f5e: wmem 0aac 0999
0f61: wmem 0aad 0999
0f64:  pop R1
0f66:  pop R0
0f68:  ret 
0f69: 659d 0865 0882
0f6f: halt
0f70: 0000
0f72: halt
0f73: halt
0f74: halt
0f75: halt
0f76: push R0
0f78: push R1
0f7a:  set R0 0002
0f7d:  set R1 0000
0f80: call 107a
0f82:  pop R1
0f84:  pop R0
0f86:  ret 
0f87: push R0
0f89: push R1
0f8b:  set R0 0008
0f8e:  set R1 0001
0f91: call 10b7
0f93:  pop R1
0f95:  pop R0
0f97:  ret 
0f98: push R0
0f9a: push R1
0f9c:  set R0 0001
0f9f:  set R1 0002
0fa2: call 107a
0fa4:  pop R1
0fa6:  pop R0
0fa8:  ret 
0fa9: push R0
0fab: push R1
0fad:  set R0 0001
0fb0:  set R1 0003
0fb3: call 10b7
0fb5: call 11b5
0fb7:  pop R1
0fb9:  pop R0
0fbb:  ret 
0fbc: push R0
0fbe: push R1
0fc0:  set R0 0004
0fc3:  set R1 0004
0fc6: call 10b7
0fc8:  pop R1
0fca:  pop R0
0fcc:  ret 
0fcd: push R0
0fcf: push R1
0fd1:  set R0 0002
0fd4:  set R1 0005
0fd7: call 107a
0fd9:  pop R1
0fdb:  pop R0
0fdd:  ret 
0fde: push R0
0fe0: push R1
0fe2:  set R0 000b
0fe5:  set R1 0006
0fe8: call 10b7
0fea:  pop R1
0fec:  pop R0
0fee:  ret 
0fef: push R0
0ff1: push R1
0ff3:  set R0 0002
0ff6:  set R1 0007
0ff9: call 107a
0ffb:  pop R1
0ffd:  pop R0
0fff:  ret 
1000: push R0
1002: push R1
1004:  set R0 0000
1007:  set R1 0008
100a: call 107a
100c:  pop R1
100e:  pop R0
1010:  ret 
1011: push R0
1013: push R1
1015:  set R0 0004
1018:  set R1 0009
101b: call 10b7
101d:  pop R1
101f:  pop R0
1021:  ret 
1022: push R0
1024: push R1
1026:  set R0 0001
1029:  set R1 000a
102c: call 107a
102e:  pop R1
1030:  pop R0
1032:  ret 
1033: push R0
1035: push R1
1037:  set R0 0012
103a:  set R1 000b
103d: call 10b7
103f:  pop R1
1041:  pop R0
1043:  ret 
1044: call 1203
1046:  ret 
1047: push R0
1049: push R1
104b:  set R0 0001
104e:  set R1 000c
1051: call 107a
1053:  pop R1
1055:  pop R0
1057:  ret 
1058: push R0
105a: push R1
105c:  set R0 0009
105f:  set R1 000d
1062: call 10b7
1064:  pop R1
1066:  pop R0
1068:  ret 
1069: push R0
106b: push R1
106d:  set R0 0002
1070:  set R1 000e
1073: call 107a
1075:  pop R1
1077:  pop R0
1079:  ret 
107a: push R0
107c: push R1
107e: push R2
1080:  add R2 0a9c 0002
1084: rmem R2 R2
1087:   jt R2 10b0
108a: call 1135
108c: wmem 0f6f R0
108f:  add R1 R0 0f69
1093: rmem R1 R1
1096:  set R0 65a8
1099: call 05ee
109b:  set R0 R1
109e: call 05ee
10a0:  set R0 65e8
10a3: call 05ee
10a5:  set R0 R1
10a8: call 05ee
10aa:  out ".\n\n"
10b0:  pop R2
10b2:  pop R1
10b4:  pop R0
10b6:  ret 
10b7: push R0
10b9: push R1
10bb: push R2
10bd:  add R2 0a9c 0002
10c1: rmem R2 R2
10c4:   jt R2 112e
10c7: call 1135
10c9: push R0
10cb: rmem R0 0f6f
10ce:  add R1 R0 0f69
10d2: rmem R1 R1
10d5:  set R0 660a
10d8: call 05ee
10da:  set R0 R1
10dd: call 05ee
10df:  set R0 663a
10e2: call 05ee
10e4:  pop R0
10e6:  set R1 R0
10e9: rmem R0 0f70
10ec: rmem R2 0f6f
10ef:  add R2 R2 0f6c
10f3: rmem R2 R2
10f6: call R2
10f8:   jt R1 1127
10fb: rmem R1 0f70
10fe: wmem 0f70 R0
1101:   gt R2 R0 R1
1105:   jf R2 1111
1108: push R0
110a:  set R0 667b
110d: call 05ee
110f:  pop R0
1111:   gt R2 R1 R0
1115:   jf R2 1121
1118: push R0
111a:  set R0 669b
111d: call 05ee
111f:  pop R0
1121:  out "\n\n"
1125:  jmp 112e
1127: call 1234
1129:  set R0 66bb
112c: call 05ee
112e:  pop R2
1130:  pop R1
1132:  pop R0
1134:  ret 
1135: push R0
1137: push R1
1139: push R2
113b: push R3
113d: push R4
113f: push R5
1141: rmem R5 0f71
1144:   gt R3 R5 752f
1148:   jt R3 1152
114b:  add R5 R5 0001
114f: wmem 0f71 R5
1152:  set R3 R0
1155:  set R4 R1
1158:  add R0 R5 0002
115c: call 08e9
115e: rmem R1 0f72
1161:   or R0 R1 R0
1165:  set R1 R4
1168: call 08c8
116a: wmem 0f72 R0
116d:  set R0 0f73
1170:  add R1 R5 0002
1174:  set R2 R4
1177: call 11a3
1179:  set R0 0f74
117c: mult R1 R5 R5
1180: mult R2 R4 R4
1184: call 11a3
1186:  set R0 0f75
1189:  set R1 000d
118c: mult R2 R3 0009
1190: mult R2 R2 R2
1194: call 11a3
1196:  pop R5
1198:  pop R4
119a:  pop R3
119c:  pop R2
119e:  pop R1
11a0:  pop R0
11a2:  ret 
11a3: push R0
11a5: rmem R0 R0
11a8: call 08c8
11aa:  set R1 R2
11ad: call 084d
11af:  pop R1
11b1: wmem R1 R0
11b4:  ret 
11b5: push R0
11b7:  add R0 0a9c 0002
11bb: rmem R0 R0
11be:   jt R0 1200
11c1:  set R0 66d1
11c4: call 05ee
11c6: rmem R0 0f70
11c9:   eq R0 R0 001e
11cd:   jt R0 11de
11d0:  set R0 66f2
11d3: call 05ee
11d5:  set R0 671e
11d8: call 05ee
11da: call 1234
11dc:  jmp 1200
11de:  set R0 6748
11e1: call 05ee
11e3: rmem R0 0f72
11e6:  add R0 R0 0001
11ea:   jt R0 11f4
11ed:  set R0 6774
11f0: call 05ee
11f2:  jmp 11d5
11f4:  set R0 67d8
11f7: call 05ee
11f9:  add R0 0a9c 0002
11fd: wmem R0 7fff
1200:  pop R0
1202:  ret 
1203: push R0
1205:  add R0 0a9c 0002
1209: rmem R0 R0
120c:   jt R0 1231
120f:  set R0 685d
1212: call 05ee
1214: rmem R0 0aac
1217:   eq R0 R0 0a3f
121b:   jt R0 1225
121e:  set R0 6865
1221: call 05ee
1223:  jmp 122a
1225:  set R0 686b
1228: call 05ee
122a:  set R0 6871
122d: call 05ee
122f: call 1234
1231:  pop R0
1233:  ret 
1234: push R0
1236: wmem 0f70 0016
1239: wmem 0f71 0000
123c: wmem 0f72 0000
123f: wmem 0f73 0000
1242: wmem 0f74 0000
1245: wmem 0f75 0000
1248:  add R0 0a9c 0002
124c: wmem R0 0a3f
124f:  pop R0
1251:  ret 
1252: push R0
1254:  add R0 0a9c 0002
1258: rmem R0 R0
125b:   eq R0 R0 7fff
125f:   jt R0 126d
1262:  set R0 68c8
1265: call 05ee
1267: wmem 0aac 0a12
126a: wmem 0aad 0a12
126d:  pop R0
126f:  ret 
1270: push R0
1272: push R1
1274: push R2
1276: push R3
1278: push R0
127a: push R1
127c: push R2
127e:  set R0 6ed1
1281:  set R1 05fb
1284:  add R2 1a6e 4bf9
1288: call 05b2
128a:  pop R2
128c:  pop R1
128e:  pop R0
1290:  set R0 1092
1293:  set R1 650a
1296:  set R2 7fff
1299:  set R3 6eed
129c: call 0731
129e: push R0
12a0: push R1
12a2: push R2
12a4:  set R0 6ef1
12a7:  set R1 05fb
12aa:  add R2 10bd 06b1
12ae: call 05b2
12b0:  pop R2
12b2:  pop R1
12b4:  pop R0
12b6:  pop R3
12b8:  pop R2
12ba:  pop R1
12bc:  pop R0
12be:  ret 
12bf: push R0
12c1:  add R0 0a70 0002
12c5: rmem R0 R0
12c8:   jt R0 12fa
12cb:  add R0 0a7c 0002
12cf: wmem R0 7fff
12d2:  add R0 0a70 0002
12d6: wmem R0 7fff
12d9:  add R0 0a74 0002
12dd: wmem R0 0000
12e0: push R0
12e2: push R1
12e4: push R2
12e6:  set R0 6f25
12e9:  set R1 05fb
12ec:  add R2 1334 3830
12f0: call 05b2
12f2:  pop R2
12f4:  pop R1
12f6:  pop R0
12f8:  jmp 1312
12fa: push R0
12fc: push R1
12fe: push R2
1300:  set R0 6f5e
1303:  set R1 05fb
1306:  add R2 2c4e 109c
130a: call 05b2
130c:  pop R2
130e:  pop R1
1310:  pop R0
1312:  pop R0
1314:  ret 
1315: push R0
1317:  add R0 0a74 0002
131b: wmem R0 7fff
131e:  add R0 0a78 0002
1322: wmem R0 0000
1325: push R0
1327: push R1
1329: push R2
132b:  set R0 6f99
132e:  set R1 05fb
1331:  add R2 0e30 3746
1335: call 05b2
1337:  pop R2
1339:  pop R1
133b:  pop R0
133d: wmem 0aad 0000
1340:  pop R0
1342:  ret 
1343: push R0
1345:  add R0 0a74 0002
1349: wmem R0 0000
134c:  add R0 0a78 0002
1350: wmem R0 7fff
1353: push R0
1355: push R1
1357: push R2
1359:  set R0 6fb3
135c:  set R1 05fb
135f:  add R2 2259 1aa1
1363: call 05b2
1365:  pop R2
1367:  pop R1
1369:  pop R0
136b: wmem 0aad 0000
136e:  pop R0
1370:  ret 
1371: push R2
1373: push R3
1375: rmem R2 0aac
1378:   eq R2 R2 0999
137c:   jt R2 1399
137f: push R0
1381: push R1
1383: push R2
1385:  set R0 6fcd
1388:  set R1 05fb
138b:  add R2 0552 0029
138f: call 05b2
1391:  pop R2
1393:  pop R1
1395:  pop R0
1397:  jmp 14d8
1399:  add R2 R0 0002
139d: wmem R2 7fff
13a0: rmem R2 099e
13a3:  add R2 R2 69d7
13a7:  add R2 R2 0001
13ab: rmem R2 R2
13ae:  add R3 0999 0001
13b2: rmem R3 R3
13b5:  add R3 R3 R2
13b9:  add R2 R1 0030
13bd: wmem R3 R2
13c0: rmem R2 099e
13c3:  add R2 R2 69dd
13c7:  add R2 R2 0001
13cb: wmem R2 R1
13ce: push R0
13d0: push R0
13d2: push R1
13d4: push R2
13d6:  set R0 6ff8
13d9:  set R1 05fb
13dc:  add R2 1263 070b
13e0: call 05b2
13e2:  pop R2
13e4:  pop R1
13e6:  pop R0
13e8:  pop R0
13ea: push R0
13ec:  add R2 R0 0000
13f0: rmem R0 R2
13f3: call 05ee
13f5:  pop R0
13f7: push R0
13f9: push R0
13fb: push R1
13fd: push R2
13ff:  set R0 7007
1402:  set R1 05fb
1405:  add R2 34e6 03fc
1409: call 05b2
140b:  pop R2
140d:  pop R1
140f:  pop R0
1411:  pop R0
1413: rmem R2 099e
1416:  add R2 R2 0001
141a: wmem 099e R2
141d: rmem R3 69dd
1420:   eq R3 R2 R3
1424:   jf R3 14d8
1427:  set R0 0000
142a:  add R1 69dd 0001
142e: rmem R1 R1
1431:  add R0 R0 R1
1435:  add R1 69dd 0002
1439: rmem R1 R1
143c:  add R2 69dd 0003
1440: rmem R2 R2
1443: mult R2 R2 R2
1447: mult R1 R1 R2
144b:  add R0 R0 R1
144f:  add R1 69dd 0004
1453: rmem R1 R1
1456: mult R2 R1 R1
145a: mult R2 R2 R1
145e:  add R0 R0 R2
1462:  add R1 69dd 0005
1466: rmem R1 R1
1469: mult R1 R1 7fff
146d:  add R0 R0 R1
1471:   eq R1 R0 018f
1475:   jt R1 14c0
1478:  add R2 0a80 0002
147c: wmem R2 0999
147f:  add R2 0a84 0002
1483: wmem R2 0999
1486:  add R2 0a88 0002
148a: wmem R2 0999
148d:  add R2 0a8c 0002
1491: wmem R2 0999
1494:  add R2 0a90 0002
1498: wmem R2 0999
149b: wmem 099e 0000
149e:  set R0 69d7
14a1:  set R1 14dd
14a4: call 05b2
14a6: push R0
14a8: push R1
14aa: push R2
14ac:  set R0 7026
14af:  set R1 05fb
14b2:  add R2 521a 134a
14b6: call 05b2
14b8:  pop R2
14ba:  pop R1
14bc:  pop R0
14be:  jmp 14d8
14c0: push R0
14c2: push R1
14c4: push R2
14c6:  set R0 7069
14c9:  set R1 05fb
14cc:  add R2 3ddf 1d04
14d0: call 05b2
14d2:  pop R2
14d4:  pop R1
14d6:  pop R0
14d8:  pop R3
14da:  pop R2
14dc:  ret 
14dd: push R2
14df:  add R2 0999 0001
14e3: rmem R2 R2
14e6:  add R2 R2 R0
14ea: wmem R2 005f
14ed:  pop R2
14ef:  ret 
14f0: push R0
14f2: push R1
14f4:  set R0 0a80
14f7:  set R1 0002
14fa: call 1371
14fc:  pop R1
14fe:  pop R0
1500:  ret 
1501: push R0
1503: push R1
1505:  set R0 0a84
1508:  set R1 0003
150b: call 1371
150d:  pop R1
150f:  pop R0
1511:  ret 
1512: push R0
1514: push R1
1516:  set R0 0a88
1519:  set R1 0005
151c: call 1371
151e:  pop R1
1520:  pop R0
1522:  ret 
1523: push R0
1525: push R1
1527:  set R0 0a8c
152a:  set R1 0007
152d: call 1371
152f:  pop R1
1531:  pop R0
1533:  ret 
1534: push R0
1536: push R1
1538:  set R0 0a90
153b:  set R1 0009
153e: call 1371
1540:  pop R1
1542:  pop R0
1544:  ret 
1545: push R0
1547: push R1
1549: push R2
154b:   jf R7 15e5
154e: push R0
1550: push R1
1552: push R2
1554:  set R0 70ac
1557:  set R1 05fb
155a:  add R2 5f40 13b3
155e: call 05b2
1560:  pop R2
1562:  pop R1
1564:  pop R0
1566: noop
1567: noop
1568: noop
1569: noop
156a: noop
156b:  set R0 0004
156e:  set R1 0001
1571: call 178b
1573:   eq R1 R0 0006
1577:   jf R1 15cb
157a: push R0
157c: push R1
157e: push R2
1580:  set R0 7156
1583:  set R1 05fb
1586:  add R2 5c0d 0056
158a: call 05b2
158c:  pop R2
158e:  pop R1
1590:  pop R0
1592:  set R0 R7
1595:  set R1 650a
1598:  set R2 7fff
159b: push R3
159d:  set R3 7239
15a0: call 0731
15a2:  pop R3
15a4: push R0
15a6: push R1
15a8: push R2
15aa:  set R0 723d
15ad:  set R1 05fb
15b0:  add R2 060e 43d9
15b4: call 05b2
15b6:  pop R2
15b8:  pop R1
15ba:  pop R0
15bc: wmem 0aac 09c2
15bf: wmem 0aad 0000
15c2:  add R1 0a94 0002
15c6: wmem R1 7fff
15c9:  jmp 1652
15cb: push R0
15cd: push R1
15cf: push R2
15d1:  set R0 72d8
15d4:  set R1 05fb
15d7:  add R2 02d0 1fad
15db: call 05b2
15dd:  pop R2
15df:  pop R1
15e1:  pop R0
15e3:  jmp 1652
15e5: push R0
15e7: push R1
15e9: push R2
15eb:  set R0 7369
15ee:  set R1 05fb
15f1:  add R2 127f 047f
15f5: call 05b2
15f7:  pop R2
15f9:  pop R1
15fb:  pop R0
15fd:  set R0 0000
1600:  add R2 0001 69dd
1604: rmem R1 R2
1607:  add R0 R0 R1
160b: mult R0 R0 7bac
160f: call 084d
1611: rmem R1 69dd
1614:  add R1 R1 69dd
1618:  add R2 R2 0001
161c:   gt R1 R2 R1
1620:   jf R1 1604
1623:  set R1 650a
1626:  set R2 7fff
1629: push R3
162b:  set R3 73df
162e: call 0731
1630:  pop R3
1632: push R0
1634: push R1
1636: push R2
1638:  set R0 73e3
163b:  set R1 05fb
163e:  add R2 1401 18fb
1642: call 05b2
1644:  pop R2
1646:  pop R1
1648:  pop R0
164a: wmem 0aac 09b8
164d: wmem 0aad 0000
1650:  jmp 1652
1652:  pop R2
1654:  pop R1
1656:  pop R0
1658:  ret 
1659: push R0
165b: push R1
165d: push R2
165f: push R3
1661: push R0
1663: push R1
1665: push R2
1667:  set R0 743d
166a:  set R1 05fb
166d:  add R2 3d8a 1962
1671: call 05b2
1673:  pop R2
1675:  pop R1
1677:  pop R0
1679: rmem R0 0f73
167c: rmem R1 0f74
167f: call 084d
1681: rmem R1 0f75
1684: call 084d
1686:  set R1 653f
1689:  set R2 0004
168c: push R3
168e:  set R3 74f6
1691: call 0731
1693:  pop R3
1695: push R0
1697: push R1
1699: push R2
169b:  set R0 74fa
169e:  set R1 05fb
16a1:  add R2 1583 5b72
16a5: call 05b2
16a7:  pop R2
16a9:  pop R1
16ab:  pop R0
16ad:  pop R3
16af:  pop R2
16b1:  pop R1
16b3:  pop R0
16b5:  ret 
16b6:  out "- "
16ba: call 05ee
16bc:  out "\n"
16be:  ret 
16bf: push R1
16c1: push R2
16c3:  set R0 6af5
16c6:  set R1 16d6
16c9:  set R2 0000
16cc: call 05b2
16ce:  set R0 R2
16d1:  pop R2
16d3:  pop R1
16d5:  ret 
16d6: push R3
16d8: push R4
16da: rmem R3 0aac
16dd:  add R4 R0 0002
16e1: rmem R4 R4
16e4:   eq R3 R3 R4
16e8:   jf R3 16ef
16eb:  add R2 R2 0001
16ef:  pop R4
16f1:  pop R3
16f3:  ret 
16f4: push R0
16f6: push R1
16f8:  set R0 6af5
16fb:  set R1 1705
16fe: call 05b2
1700:  pop R1
1702:  pop R0
1704:  ret 
1705: push R3
1707:  add R3 R0 0002
170b: rmem R3 R3
170e:   eq R3 R2 R3
1712:   jf R3 171e
1715:  add R0 R0 0000
1719: rmem R0 R0
171c: call 16b6
171e:  pop R3
1720:  ret 
1721: push R1
1723: push R2
1725:  set R2 R0
1728:  set R0 6af5
172b:  set R1 174c
172e: call 0607
1730:   eq R1 R0 7fff
1734:   jt R1 1744
1737:  add R1 6af5 R0
173b:  add R1 R1 0001
173f: rmem R0 R1
1742:  jmp 1747
1744:  set R0 0000
1747:  pop R2
1749:  pop R1
174b:  ret 
174c: push R1
174e:  set R1 R2
1751:  add R0 R0 0000
1755: rmem R0 R0
1758: call 0683
175a:  pop R1
175c:   jf R0 1765
175f:  set R2 R1
1762:  set R1 7fff
1765:  ret 
1766: push R1
1768: push R2
176a:  add R0 R0 0002
176e: rmem R0 R0
1771:   jf R0 1783
1774: rmem R1 0aac
1777:   eq R1 R0 R1
177b:   jt R1 1783
177e:  set R0 0000
1781:  jmp 1786
1783:  set R0 0001
1786:  pop R2
1788:  pop R1
178a:  ret 
178b:   jt R0 1793
178e:  add R0 R1 0001
1792:  ret 
1793:   jt R1 17a0
1796:  add R0 R0 7fff
179a:  set R1 R7
179d: call 178b
179f:  ret 
17a0: push R0
17a2:  add R1 R1 7fff
17a6: call 178b
17a8:  set R1 R0
17ab:  pop R0
17ad:  add R0 R0 7fff
17b1: call 178b
17b3:  ret 
17b4: 0054 0073 0020 0074 0069 0067 0073 006c 002d 0065 0074 0063 006d 006c 0074 002c 0061 006c 0074 0073 0073 0070 0073 000a 0063 006d 006c 0074 0003 1116 000c 006d 006d 005a 006b 004d 004c 0046 006f 0068 006c 0073 0059 0075 0066 006e 0020 006f 0072 0065 0066 0073 0061 0064 006e 0020 0074 0074 0065 0062 0073 0020 0066 0061 0020 006e 0072 006f 0073 006d 0075 0074 0069 002e 0020 0074 0069 0073 0062 0073 0020 006f 0074 0065 006e 0072 0068 0020 0068 0072 0020 0073 0061 006d 0073 0069 0065 0064 006f 0077 0079 0020 0041 0073 0067 0020 0065 0072 0079 0072 0061 0073 0022 0065 0070 006f 0074 0020 0044 0066 006e 0074 006c 0020 006f 0074 0065 0073 0072 0020 0069 0068 006e 0022 0064 006f 0077 0079 0073 0075 0068 0046 006f 0068 006c 0073 0041 0020 006f 0020 0065 0069 0020 006f 006c 0061 0065 0020 006f 0020 0065 006c 0074 0065 0075 0067 0020 006f 0020 0064 0065 0074 0072 0020 0075 006c 006e 0020 006f 0020 0061 006b 002e 0005 006f 0074 0009 0061 006b 0063 0076 0085 0068 0073 0073 0065 0073 0074 0020 0065 0074 0065 006d 0075 0068 006f 0020 0020 0065 0070 0063 0076 002e 0020 0073 0079 0075 0070 0065 0020 006f 0074 0020 006e 006f 0074 0065 0064 0072 006e 0073 002c 0079 0075 0074 0069 006b 0079 0075 0068 0061 0020 0068 0020 0063 006f 0073 006f 0020 0061 0073 0064 0065 0065 0020 0069 0068 006e 0005 006f 0074 0005 006f 0074 0009 0061 006b 0063 0076 005b 0068 0020 0061 0065 0069 0020 006f 0065 0068 0074 006e 0072 006f 0020 0065 0065 0020 006e 0020 0068 0020 0069 0068 0020 0072 006d 0074 0065 0064 006f 0077 0079 0074 0020 0068 0020 006f 0074 0020 0073 0071 0069 0065 0064 006d 0005 006f 0074 0005 006f 0074 0009 0061 006b 0063 0076 00bb 0068 0020 0061 0065 0061 006f 0073 0069 0073 0064 0061 0061 0069 0061 006c 0020 0068 006e 0065 0061 0020 006f 0020 0069 0064 0079 0075 0073 006c 0020 0074 0061 006c 0067 0065 0061 006f 0065 0061 006c 0072 0065 0063 0061 006d 0020 0054 0065 0065 0069 0020 0061 0065 0079 0065 006f 0067 0020 0069 0068 0020 0065 0065 0074 0020 006f 0069 0065 0061 0072 0070 0020 0072 0064 0065 006c 0061 0069 0067 006f 0074 0069 0074 0020 0068 0020 0061 006b 0065 0070 0069 0065 0073 0006 0072 0064 0065 0073 0075 0068 0052 0070 0020 0072 0064 0065 0054 0069 0020 006f 0065 0062 0069 0067 0020 0072 0061 0073 0061 0020 006f 0020 0061 006b 0061 006f 0067 0069 002e 0020 006f 0020 0072 006e 0074 0073 0072 0020 006f 0020 006c 0020 0074 0069 002c 006f 0020 0068 0074 0065 0020 0074 0063 006e 0065 0065 0020 0075 0070 0072 0020 006f 0072 0077 0069 0068 002e 0063 006e 0069 0075 0004 0061 006b 0046 006c 0069 0067 0074 0072 0075 0068 0074 0065 0061 0072 00a9 0073 0079 0075 0063 006e 0069 0075 0020 006c 006e 0020 0068 0020 0072 0064 0065 0020 0074 0073 0061 0073 0020 0059 0075 0074 0079 0074 0020 0072 0062 0074 0065 0062 0069 0067 002c 0062 0074 0069 0020 0076 0064 0073 0079 0075 0020 0072 0073 0020 006e 0074 0065 0064 0072 006e 0073 002e 0020 006f 0020 0072 0020 006c 006d 0065 0069 0067 0071 0069 006b 0079 0064 0077 0077 0072 0020 006e 006f 0074 0065 0063 0061 006d 002e 0004 006f 006e 004d 0073 0020 0061 0065 006e 0059 0075 0061 0065 0073 0061 0064 006e 0020 006e 0061 006c 0072 0065 0063 0076 0072 0020 0075 006c 006f 0020 0069 006c 006d 006e 0073 0065 0074 006d 0073 002e 0020 0074 006d 0073 0020 0061 0065 0062 006f 0065 0020 006f 0072 0066 006c 0021 0020 0068 0020 0061 0065 006e 0065 0074 006e 0073 0074 0020 0068 0020 0061 0074 0061 0064 0077 0073 003b 0061 0020 0068 0020 0065 0074 0065 0064 0020 006f 0020 0068 006e 0020 006f 0020 0065 0020 0020 0061 0073 0067 0020 0065 0064 006e 0020 0075 0020 0066 0074 0065 0063 0076 0072 002e 0077 0073 0004 0061 0074 004d 0073 0020 0061 0065 006e 0059 0075 0061 0065 0073 0061 0064 006e 0020 006e 0061 006c 0072 0065 0063 0076 0072 0020 0075 006c 006f 0020 0069 006c 006d 006e 0073 0065 0074 006d 0073 002e 0020 0068 0020 0061 0065 006e 0065 0074 006e 0073 0074 0020 0068 0020 0065 0074 0004 0065 0074 004d 0073 0020 0061 0065 006e 0059 0075 0061 0065 0073 0061 0064 006e 0020 006e 0061 006c 0072 0065 0063 0076 0072 0020 0075 006c 006f 0020 0069 006c 006d 006e 0073 0065 0074 006d 0073 002e 0020 0068 0020 0061 0065 006e 0065 0074 006e 0073 0074 0020 0068 0020 0061 0074 0020 0054 0065 0065 0069 0020 0020 0072 0076 0073 0020 006e 0074 0065 0072 0063 0073 0077 0069 0068 006f 0065 0073 0069 0074 0020 0020 0061 0073 0067 002e 0065 0073 0007 0061 0073 0067 0007 0061 0073 0067 00b0 006f 0020 0072 0020 006e 0061 0063 0065 0069 0065 006f 0020 0068 0020 0065 0074 0077 006c 0020 0066 0074 0065 006d 0073 0020 0061 0065 006e 0020 0041 0064 0072 0020 0061 0073 0067 0020 0065 0064 0020 0075 0074 0065 0020 0065 0074 0020 0054 0065 0065 0069 0020 0020 0061 0064 0072 0068 0072 0020 0068 0063 0020 0065 0064 0020 006f 006e 0069 0074 0020 0020 006d 006c 0065 002c 006d 0073 002d 0069 006c 0064 0063 0076 0072 0020 0065 006f 002e 0063 0076 0072 0006 0061 0064 0072 0064 0072 006e 0073 0007 0061 0073 0067 0039 0074 0069 0020 0069 0063 0020 006c 0063 002e 0020 006f 0020 0072 0020 0069 0065 0079 0074 0020 0065 0065 0074 006e 0062 0020 0020 0072 0065 004b 006f 0020 0065 006c 0074 0061 0020 006f 0072 006c 0067 0074 0073 0075 0063 0020 0073 006d 0072 0020 0068 006e 0073 0066 0069 0069 006e 0020 006f 006b 0065 0020 0072 0065 0020 0077 0079 0008 006f 0074 006e 0065 0062 0063 000f 0077 0073 0079 0070 0073 0061 0065 007b 006f 0020 0072 0020 006e 0061 006d 007a 0020 0066 0074 0069 0074 0020 0069 0074 0065 0070 0073 0061 0065 002c 0061 006c 0064 006d 0079 006c 0074 0062 0020 006f 0065 0062 006f 0075 0069 0065 0063 006e 0020 006f 0073 0020 0054 0065 0065 0069 0020 0020 0061 0064 0072 0068 0072 0020 0065 0064 006e 0020 0070 0006 0061 0064 0072 006e 0072 0068 0073 0075 0068 0065 0073 0004 0065 0074 0054 0069 0074 0020 0061 0073 0067 0073 0059 0075 0061 0065 0069 0020 0020 0077 0073 0079 006d 007a 0020 0066 006c 0074 006c 0020 0061 0073 0067 0073 0020 006c 0020 006c 006b 002e 006e 0072 0068 0073 0075 0068 0077 0073 000f 0077 0073 0079 0070 0073 0061 0065 0037 006f 0020 0072 0020 006e 0061 006d 007a 0020 0066 006c 0074 006c 0020 0077 0073 0079 0070 0073 0061 0065 002c 0061 006c 0061 0069 0065 0005 006f 0074 0005 006f 0074 0004 0061 0074 0054 0069 0074 0020 0061 0073 0067 0073 0059 0075 0061 0065 0069 0020 0020 0061 0065 006f 0020 006c 006b 0020 0069 0074 0065 0070 0073 0061 0065 002c 0061 006c 0074 0069 0074 002e 000a 0068 0020 0061 0073 0067 0020 006f 0074 0065 0065 0073 0020 006f 006b 0020 0065 0079 0064 0072 003b 0079 0075 0074 0069 006b 0079 0075 0068 0061 0020 0020 0072 0065 0005 006f 0074 0005 006f 0074 0004 0065 0074 0065 0073 000f 0077 0073 0079 0070 0073 0061 0065 0037 006f 0020 0072 0020 006e 0061 006c 0074 006c 0020 0061 0065 006f 0020 0077 0073 0079 0070 0073 0061 0065 002c 0061 006c 0061 0069 0065 0005 006f 0074 0005 006f 0074 0004 0061 0074 0054 0069 0074 0020 0061 0073 0067 0073 0059 0075 0061 0065 0069 0020 0020 0077 0073 0079 0061 0069 0065 006f 0020 0069 0074 0065 0070 0073 0061 0065 002c 0061 006c 006d 007a 002e 000a 0068 0020 0061 0074 0070 0073 0061 0065 0061 0070 0061 0073 0076 0072 0020 0061 006b 0020 006f 0020 0065 006c 006c 006b 006c 0020 006f 0062 0020 0061 0065 0020 0079 0061 0047 0075 002e 006e 0072 0068 0073 0075 0068 0077 0073 0004 0061 0074 0054 0069 0074 0020 0061 0073 0067 0073 0059 0075 0061 0065 0069 0020 0020 0061 0065 006f 0020 006c 006b 0020 0077 0073 0079 0070 0073 0061 0065 002c 0061 006c 006c 0074 006c 002e 006e 0072 0068 0065 0073 0005 006f 0074 000f 0077 0073 0079 0070 0073 0061 0065 0037 006f 0020 0072 0020 006e 0061 006d 007a 0020 0066 0074 0069 0074 0020 0069 0074 0065 0070 0073 0061 0065 002c 0061 006c 0061 0069 0065 0004 0065 0074 0054 0069 0074 0020 0061 0073 0067 0073 0059 0075 0061 0065 0069 0020 0020 0061 0065 006f 0020 0077 0073 0079 006c 0074 006c 0020 0061 0073 0067 0073 0020 006c 0020 006c 006b 002e 0077 0073 000f 0077 0073 0079 0070 0073 0061 0065 0037 006f 0020 0072 0020 006e 0061 0074 0069 0074 0020 0061 0065 006f 0020 0069 0074 0065 0070 0073 0061 0065 002c 0061 006c 0061 0069 0065 0005 006f 0074 0005 006f 0074 000c 0061 006b 0070 0073 0061 0065 0059 0075 0061 0065 0069 0020 0020 0061 0072 0077 0070 0073 0061 0065 0020 0054 0065 0065 0069 0020 0061 006b 0065 0073 0074 0020 0068 0020 0065 0074 0020 0075 0020 006f 0020 0061 0020 0061 0065 0079 0073 0065 0061 0067 006f 0069 0067 006f 0065 0069 0067 0074 0020 0068 0020 0061 0074 0004 0065 0074 0065 0073 000c 0061 006b 0070 0073 0061 0065 0059 0075 0061 0065 0069 0020 0020 0061 006b 0020 0061 0072 0077 0070 0073 0061 0065 0004 0061 0074 0077 0073 000c 0061 006b 0070 0073 0061 0065 0059 0075 0061 0065 0069 0020 0020 0061 006b 0020 0061 0072 0077 0070 0073 0061 0065 0004 0061 0074 0077 0073 000c 0061 006b 0070 0073 0061 0065 0059 0075 0061 0065 0069 0020 0020 0061 006b 0020 0061 0072 0077 0070 0073 0061 0065 0020 0054 0020 0068 0020 0065 0074 0020 006f 0020 0070 0074 0073 006d 0020 0065 0065 0061 0069 006e 0077 0065 0065 0074 0065 0070 0073 0061 0065 0065 0070 006e 0073 0004 0061 0074 0077 0073 0005 0075 006e 00f8 006f 0020 0074 006e 0020 006e 0061 006c 0072 0065 0063 0076 0072 0020 0069 0068 0061 0068 0067 0020 0075 006e 0074 0020 0068 0020 006f 0074 002c 006f 0065 0067 006f 006e 0062 0020 006c 006e 0020 0069 0065 0020 0054 0065 0065 0069 0020 0020 0061 0067 0020 0074 006e 0020 0072 0068 0061 0020 006f 0074 0065 006e 0072 0068 0061 0074 006e 0020 0073 0074 0065 0064 006f 0077 0079 0074 0020 0068 0020 0075 006e 0064 0063 006d 006c 0078 0020 0041 0063 0065 0069 0065 0069 0020 0068 0020 006f 006b 0074 0020 0068 0020 0061 0074 006c 0061 0073 0074 0020 006e 0061 0061 006d 006e 006c 0020 0061 006b 0070 0073 0061 0065 0061 002e 0065 0073 0005 006f 0074 0005 0075 006e 00b5 006f 0020 0072 0020 006e 0074 0065 006f 0063 002d 0070 006c 006e 0020 006f 0065 0020 0066 0061 006d 0073 0069 0065 0072 0069 0065 0020 006f 0070 0065 002e 0020 0068 0072 0020 0073 0061 0064 006f 0020 006f 0074 0065 0073 0075 0068 006c 0061 0069 0067 0074 0020 0068 0020 0076 0072 0072 0077 0068 006f 0074 0069 0065 0061 0064 0073 0061 0072 0020 006f 0074 0065 006e 0072 0068 0077 0069 0068 006c 0061 0020 006e 006f 0061 006c 0072 0065 0020 0061 006c 0005 006f 0074 0005 006f 0074 0005 0075 006e 0125 006f 0020 0074 006e 0020 006e 0074 0065 006d 0073 0069 0065 0063 006e 0072 006c 0068 006c 0020 0066 0074 0065 0065 0072 0069 0073 0020 0054 0065 0077 006c 0073 0061 0065 0063 0075 0062 0069 0067 0020 006e 0020 0065 0065 0061 0069 006e 0068 0073 0063 0065 0072 0079 0074 006b 006e 006f 0065 002e 0020 006f 006d 0020 0072 0020 0074 0061 0068 0064 0069 0020 006c 0020 0069 0065 0074 006f 0073 0020 0054 0065 0065 0069 0020 0020 0074 0061 0067 0020 006f 0075 0065 0074 0069 0020 0068 0020 0065 0074 0072 006f 0020 0068 0020 0061 006c 0077 0074 0020 0069 0063 006c 0072 0073 006f 0073 0061 0064 0075 0075 0075 006c 0073 006d 006f 0073 0020 0049 0020 0065 0064 003a 000a 0020 0020 0020 0020 005e 0020 0020 005e 0020 0020 0020 0020 0039 0005 006f 0074 0005 006f 0074 0004 0061 0074 0077 0073 0005 0075 006e 00a7 0065 0061 0073 0020 0074 0068 0073 0062 0065 0020 006f 0077 006c 002d 0072 0074 0063 0065 002c 0074 0069 0020 006f 006d 0068 0072 006c 0020 0068 0077 0020 0069 006e 0020 0066 0064 0063 0079 0020 0054 0065 0077 006c 0073 0061 0065 0063 0076 0072 0064 0069 0020 006c 0062 0072 0074 0020 0075 0061 0073 0061 0064 0064 0063 0072 0074 0064 0077 0074 0020 0072 0063 006f 0073 006d 0074 006c 0020 006e 0020 0074 006e 0073 0005 006f 0074 0005 0075 006e 008a 006f 0020 0074 006e 0020 006e 0077 0061 0020 0065 006d 0020 006f 0068 0076 0020 006e 0065 0062 0065 0020 0020 0069 0069 0067 0068 006c 003b 0062 006f 0065 0020 0061 006c 0073 0061 0064 0070 0074 0065 0079 0061 0065 0073 0061 0074 0072 0064 0065 0065 0079 0068 0072 002e 0020 0020 0074 0069 0063 0073 0020 0065 0065 006c 0061 0073 0064 0077 002e 0064 0077 0004 0065 0074 0052 0069 0073 0054 0069 0020 0065 006d 0020 006f 0062 0020 0020 0069 0063 0065 003b 0074 0065 0065 0061 0065 0062 0069 006b 0073 006f 0065 0020 006e 0020 0068 006c 0065 0020 006c 006e 0020 0068 0020 0061 006c 0020 0045 0065 0079 0068 006e 0020 0065 0065 0068 0073 0066 006c 0065 0020 006e 006f 0064 0073 0065 0061 0072 0002 0070 0052 0069 0073 0059 0075 0066 006e 0020 006f 0072 0065 0066 0069 0020 0068 0074 0077 0073 006f 0063 0020 0068 0020 0069 0069 0067 0071 0061 0074 0072 0020 006f 0020 0068 0020 006f 0070 0065 002e 0020 0061 0079 0073 0061 006c 0072 0072 006f 0073 0077 0069 0068 006f 0063 0020 0061 0020 0061 006c 0020 006f 0064 0076 0064 0020 0068 006d 006e 0077 006c 0079 0069 0020 0069 0061 0072 0079 0020 0054 0065 0065 0069 0020 0020 0074 0069 0063 0073 0020 0070 0068 0072 002e 0075 0004 0061 0074 0052 0069 0073 0054 0069 0020 0061 0020 006f 0067 0061 006f 0061 006c 0076 0073 0020 0068 006f 0065 0072 006f 002e 0020 0072 0065 002d 0070 0066 0075 0074 0069 0073 0061 0064 0063 0075 0062 0069 0067 0073 0061 0075 0073 006c 006e 0020 0068 0020 0061 006c 002c 0061 0064 0074 0065 0063 0072 0065 0020 0074 006e 0020 0068 006f 0065 0069 0020 0068 0020 0065 0074 0072 006f 0020 0068 0020 006f 006d 0069 0020 0061 006c 006e 0020 0070 0072 002e 0064 0077 0014 0079 0061 006f 0020 0065 0064 0075 0072 0065 0073 0059 0075 0073 0061 0064 0069 0020 0068 0020 006f 0062 0020 0066 0077 0061 0020 0070 0065 0072 0020 006f 0062 0020 0020 0065 006c 0079 0066 006e 0070 0061 0065 0074 0020 006f 006b 0020 0053 0064 0079 0020 0068 0072 0020 006f 0073 0027 0020 0065 006d 0074 0020 0065 0061 0079 006e 0020 0072 0075 0064 0061 0020 0068 0020 006f 0065 0074 0020 006f 0079 0075 006d 006b 0020 0020 006f 0065 0074 0020 0061 006c 0074 0065 0020 0061 0065 002e 0020 0068 0020 006f 006b 0068 006c 0020 0065 0065 006c 006f 0073 006c 006b 0020 0074 006d 0067 0074 0068 0076 0020 006f 0065 0068 006e 0020 006e 0065 0065 0074 006e 0020 006e 0069 002c 0074 006f 0067 002e 006f 0074 0069 0065 0053 006e 0063 0072 0048 0061 0071 0061 0074 0072 0091 0074 0073 0061 0077 0072 002c 0073 006e 0079 0064 0079 0020 0057 0069 0065 0074 0065 0062 0065 007a 0020 0072 006d 004c 006b 0020 0072 0065 0069 0020 0065 0074 0069 006c 0020 0065 0072 0073 0069 0067 0020 006f 0020 006f 0027 0020 0065 0020 006e 0074 0069 0067 0068 0072 0020 0068 0074 0077 006c 0020 0065 0070 0079 0075 0077 0074 0020 006f 0072 0071 0065 0074 0006 006e 0069 0065 0042 0061 0068 0054 0069 0020 0073 0061 0073 006e 0079 0062 0061 0068 0069 0020 0020 006f 0065 006f 0020 006f 0065 0074 006f 0069 0061 0020 0073 0061 0064 0020 0049 0020 0073 0072 0069 0069 0067 0020 0054 0065 006f 0065 006e 0069 0020 006f 0079 0075 0020 006f 0074 002c 0061 0064 0068 0061 0079 0066 006c 0061 0065 0069 0020 006f 0079 0075 0020 006f 0074 003b 0074 0065 0062 0061 0068 0065 0074 006e 0073 0077 0073 0020 006e 0020 0061 0074 0004 0065 0074 0065 0073 0005 006f 0074 0005 0065 0063 0106 0068 0073 0069 0020 0020 0061 0064 0020 0065 0063 0020 006e 0061 0063 0076 0020 006e 0073 006d 0020 0072 0070 0063 006c 0069 006c 006e 002e 0020 0074 0069 0020 0061 006e 006e 002e 0020 006f 0079 0075 0020 0065 0074 0069 0020 006e 0065 0062 006e 006d 006e 0020 0066 0074 0065 0063 0076 0020 0068 0063 0020 006f 006b 0020 006f 0020 0074 0065 0020 006f 0063 0069 0062 0020 0054 0065 0062 0061 0068 0065 0074 006e 0073 0074 0020 0068 0020 0061 0074 0020 006e 0020 0068 0072 0020 0073 0064 006e 0065 0066 006c 0061 0065 0074 0020 0068 0020 006f 0074 002e 0020 0068 0020 0063 0061 0020 006f 0074 0065 0073 0075 0068 0073 0065 0073 0075 0069 0076 0074 006e 002e 0065 0073 0005 006f 0074 0005 0065 0063 00f2 0068 0073 0069 0020 0020 0061 0064 0020 0065 0063 0020 006e 0061 0063 0076 0020 006e 0073 006d 0020 0072 0070 0063 006c 0069 006c 006e 002e 0020 0074 0069 0020 0061 006e 006e 002e 0020 0068 0020 0074 0065 0020 006f 0065 0065 0062 006e 006d 006e 0020 006f 0079 0075 0020 0061 0074 0062 006f 006b 0020 006f 0072 0070 0074 002c 0061 0064 0074 0065 006f 0065 006e 0077 0074 0072 0020 0065 0065 006c 006f 0020 006e 0061 0065 0020 0054 0065 0062 0061 0068 0065 0074 006e 0073 0074 0020 0068 0020 0065 0074 0020 006e 0020 0068 0072 0020 0073 0064 006e 0065 0066 006c 0061 0065 0074 0020 0068 0020 006f 0074 002e 0077 0073 0005 006f 0074 000f 0072 0070 0063 006c 0049 006c 006e 00c6 0068 0020 0061 0067 0020 0072 0065 0020 0065 0065 0073 0065 0020 006f 0062 0020 0072 0074 0063 0069 0067 0079 0075 0066 006f 0020 0068 0020 0061 006e 0020 0041 0020 006f 0020 0075 0068 0074 0072 0075 0068 0074 0065 0075 0064 0072 0072 0077 0068 0020 006f 0020 0061 0020 0065 0072 0062 0072 0073 0063 0069 0070 006e 0020 0076 0072 0065 0064 0020 0054 0065 0065 0069 0020 0020 0074 0065 0020 006f 006b 0066 0063 0020 006f 0079 0075 0020 0065 0074 0062 006f 006b 006e 0020 006f 0072 0070 0074 002e 006e 0072 0068 0073 0075 0068 0065 0073 000f 0072 0070 0063 006c 0049 006c 006e 007a 0068 0020 0061 0074 0065 0062 006e 006d 006e 0020 0066 0074 0065 0063 0076 0020 006f 0065 0073 006f 0065 0020 006f 002e 0020 0074 0070 006f 0075 0065 0020 0020 006d 006c 0020 0061 0065 0066 006c 0020 0065 0065 0077 0069 0068 0063 0073 0061 0065 0020 0078 0069 0065 006c 0020 006e 006f 0061 0070 006f 002e 006e 0072 0068 0073 0075 0068 0077 0073 000f 0072 0070 0063 006c 0049 006c 006e 00e6 0068 0020 006d 0061 006b 0065 0074 006f 0020 0068 0020 006f 0065 0063 006d 0020 006f 0067 0065 0020 0065 0065 0074 0020 006f 0072 0065 0073 0020 006e 0020 0065 0074 0020 0042 0074 0065 006e 0074 0065 0065 0074 006c 0020 006f 006b 0066 0063 0073 0020 0068 0072 0020 0073 0061 006e 0072 006f 002c 006f 0065 0067 006f 006e 0070 0074 0020 0065 0064 006e 0020 006f 0074 002e 0020 006f 0020 0065 0072 0077 0076 0073 006c 0070 0069 0067 0075 0020 006e 0061 0062 0061 0068 0074 0072 0075 0068 0074 0065 0064 006e 0065 0076 0067 0074 0074 006f 0020 006f 0079 0075 0020 006f 0074 002e 006e 0072 0068 0073 0075 0068 0054 006f 0069 0061 0020 0073 0061 0064 0059 0075 0061 0065 006f 0020 0020 0061 0072 0077 0070 0074 0020 0065 0077 0065 0020 0077 0020 0074 0065 0020 006f 006b 0066 0063 0073 0077 0069 0068 006c 006f 0020 0069 0065 0074 0065 0020 0061 0065 0062 0065 0020 0065 0065 0066 0072 0074 006f 0073 006e 0073 006f 0020 0065 0072 002e 0020 0061 006e 0074 0069 006b 0065 0020 006f 006e 0074 0072 0075 0068 0074 0065 0076 0067 0074 0074 006f 0020 006e 0020 006f 0073 0020 006e 0020 0068 006f 0067 0020 0068 0020 0065 0076 0073 0079 0075 0063 006e 006f 0063 0073 006f 0061 006c 0020 0065 0020 0020 006c 0076 0072 006f 0020 0069 0068 0020 0075 0064 0065 0073 006f 0020 0065 0074 0061 006f 0065 0079 0075 0077 0065 0065 0074 0065 0072 0063 0020 0061 006c 0020 006e 002e 006e 0072 0068 0073 0075 0068 0054 006f 0069 0061 0020 0073 0061 0064 0054 0065 006e 0072 006f 0020 0061 0068 0073 006f 0065 0020 006f 006e 0061 0064 0074 0020 0068 0020 006f 0074 0020 006e 0020 0065 0064 0020 006f 0074 0065 006d 0075 0068 006f 0020 0020 006d 006c 0020 0061 0065 0020 0041 0073 0067 0020 0065 0072 0079 0072 0061 0073 0022 0072 0061 0075 0065 0056 0075 0074 0041 0063 0073 0022 0020 0075 0020 0069 0066 0072 006e 0020 0061 0064 0072 0074 006e 0020 0061 0020 0072 0073 0065 0020 0068 0073 006f 0074 0061 0064 0077 0069 0074 006e 0022 0061 0072 006f 0020 006f 0072 0062 0065 004d 006e 0074 0072 0020 0041 006c 006e 006e 0070 0072 0074 0073 006b 0065 0020 0075 0021 002e 006e 0072 0068 0073 0075 0068 0054 006f 0069 0061 0020 0061 0065 0059 0075 0073 0061 0064 0061 0020 0068 0020 006e 0072 006e 0065 0074 0020 0020 0061 0075 0061 0020 0061 0065 0077 0069 0068 006c 006f 0073 006c 006b 0020 0074 0068 0073 0027 0020 0065 006e 0076 0073 0074 0064 0069 0020 0075 0074 0020 006f 0065 0074 006d 002e 0020 0069 0068 0020 006f 0072 0020 006e 0074 0072 0075 0068 0074 0065 006f 0065 0069 0067 0074 0020 0068 0020 006f 0074 002c 0077 0069 0065 0066 0072 0066 0069 0073 006c 0067 0074 0074 0065 0070 0074 0020 0075 0074 0065 0020 006e 006f 0074 0065 0063 0076 0020 006f 0074 0065 006e 0072 0068 0005 006f 0074 0005 006f 0074 000d 0072 0070 0063 006c 0043 0076 007a 0069 0065 006c 0065 0020 006c 0077 0079 0064 0069 0074 0061 006f 006e 0020 006f 0020 006e 0020 0069 0068 0020 0068 0020 0075 006e 006c 0020 0068 0063 0020 0065 006d 0020 006f 0067 0074 0062 0069 0068 0065 0020 006f 0074 0065 0073 0075 0068 0020 0075 0020 0069 006d 0072 0074 0020 0068 0020 006f 0074 002e 006e 0072 0068 0073 0075 0068 0054 006f 0069 0061 0020 0061 0065 0054 0065 0063 0076 0020 0073 0061 006c 0074 006c 0020 0069 0065 0020 0065 0065 0020 0059 0075 0066 006e 0020 0068 0020 006f 0077 0062 0065 0063 0075 0074 0064 0072 006d 0069 0073 006f 0020 0020 006d 006c 0020 0061 0070 0020 006e 0020 006c 0068 0075 0068 0079 0075 0064 006e 0074 0073 0073 0065 0074 0074 0065 0062 006f 0065 0020 0069 0063 0073 006f 0020 0061 006c 0073 0061 0064 0063 0061 0072 0020 0069 006c 0070 006f 0065 0075 0065 0075 0020 006f 0079 0075 0020 0075 0073 002c 0074 0065 0066 0072 0066 0069 0073 0073 0065 0020 006f 006c 006b 0020 0073 006e 0020 0068 0020 0065 0072 0073 0061 0020 0020 0068 006c 0065 002e 0020 0020 0061 0073 0067 0077 0079 006c 0061 0073 006e 0072 0068 0061 0064 0073 0075 0068 0020 006e 0020 0068 0072 0020 0073 0061 0020 006c 006f 0065 0074 0020 0068 0020 0061 0074 0005 006f 0074 0005 006f 0074 0004 0061 0074 0054 006f 0069 0061 0020 0061 0065 0041 0063 0076 00a3 0074 0074 0065 0062 0063 0020 0066 0074 0069 0020 006c 006f 0065 0020 0068 0072 0020 0073 0061 0073 0061 006c 0074 0062 0065 0020 0020 0068 0069 002c 0061 0064 0061 0062 006f 0065 0020 0061 0074 0072 002e 0020 0074 006c 006f 0073 006c 006b 0020 0068 0073 0073 0061 0065 0077 0073 0075 0065 0020 0075 0068 006d 0072 0020 0065 0065 0074 0079 0074 0061 0020 0068 0020 0061 0070 0074 0020 0068 0020 0065 0074 0004 0065 0074 0054 006f 0069 0061 0020 0061 0065 0054 0069 0020 0075 006e 006c 0073 006f 0065 0020 0065 0070 0072 0075 0064 0072 0072 0075 0064 0074 0020 0068 0020 006f 0074 002c 0062 0074 0074 0065 0066 0072 0066 0069 0073 0061 0065 0061 006c 0061 006f 006e 0020 006f 006c 0067 0074 0079 0075 0020 0061 0068 0005 006f 0074 0005 006f 0074 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0020 002a 0020 0079 0062 006c 0004 0061 0074 0073 0075 0068 0056 0075 0074 004c 0063 0082 006f 0020 0072 0020 006e 0061 0067 0069 0020 0066 0072 006f 0073 0074 0061 0020 006f 0074 006f 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0074 0065 006e 006d 0065 0020 0038 002e 0065 0073 0005 006f 0074 0004 0065 0074 0056 0075 0074 004c 0063 0080 006f 0020 0072 0020 006e 0061 0067 0069 0020 0066 0072 006f 0073 0074 0061 0020 006f 0074 006f 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0061 0027 0027 0073 006d 006f 002e 0065 0073 0005 006f 0074 0004 0065 0074 0056 0075 0074 0044 006f 00f6 006f 0020 0074 006e 0020 0065 006f 0065 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 0020 0074 0068 0073 0061 006c 0072 0065 0027 0030 0020 0061 0076 0064 0069 0074 0020 0074 0020 0041 0066 0078 0064 0074 0020 0068 0020 0061 006c 006e 0061 0020 0068 0020 006f 0072 0020 0068 0072 0020 0073 0061 0072 006e 0069 0067 0068 0075 0067 0061 0073 0077 0069 0068 006e 0076 0072 0073 0065 0073 0074 0020 0075 0020 0075 0020 0066 0073 006e 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0074 0065 006e 006d 0065 0020 0031 002e 0073 0075 0068 0077 0073 0005 0061 006c 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0068 0020 0075 0062 0072 0027 0027 0005 006f 0074 0004 0061 0074 0073 0075 0068 0056 0075 0074 004c 0063 0080 006f 0020 0072 0020 006e 0061 0067 0069 0020 0066 0072 006f 0073 0074 0061 0020 006f 0074 006f 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0061 0027 0027 0073 006d 006f 002e 006e 0072 0068 0065 0073 0005 006f 0074 0004 0065 0074 0056 0075 0074 004c 0063 0083 006f 0020 0072 0020 006e 0061 0067 0069 0020 0066 0072 006f 0073 0074 0061 0020 006f 0074 006f 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0074 0065 006e 006d 0065 0020 0031 0027 0005 006f 0074 0004 0061 0074 0073 0075 0068 0077 0073 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0020 002a 0020 0079 0062 006c 0005 006f 0074 0005 006f 0074 0004 0065 0074 0056 0075 0074 004c 0063 0080 006f 0020 0072 0020 006e 0061 0067 0069 0020 0066 0072 006f 0073 0074 0061 0020 006f 0074 006f 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 002e 000a 0068 0020 006c 006f 0020 0066 0074 0069 0020 006f 006d 0069 0020 0020 0061 0067 0020 006f 0061 0063 0064 0070 0063 0069 0067 0061 0027 0027 0073 006d 006f 002e 006e 0072 0068 0065 0073 0005 006f 0074 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0068 0020 0075 0062 0072 0027 0027 0005 006f 0074 0004 0061 0074 0073 0075 0068 0077 0073 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0020 002d 0020 0079 0062 006c 0005 006f 0074 0004 0061 0074 0073 0075 0068 0077 0073 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0068 0020 0075 0062 0072 0027 0038 002e 006e 0072 0068 0073 0075 0068 0077 0073 0011 0061 006c 0020 006e 0065 0068 006d 0065 0090 006f 0020 0072 0020 006e 0074 0065 0061 0074 0063 0061 0062 0072 0074 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 0020 0059 0075 006e 0074 0063 0020 0068 0020 0075 0062 0072 0027 0032 0020 0073 0063 0072 0065 0020 006e 006f 0074 0065 006f 0062 0073 0070 0064 0073 0061 002e 006e 0072 0068 0065 0073 0005 006f 0074 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0020 002d 0020 0079 0062 006c 0005 006f 0074 0004 0061 0074 0077 0073 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0068 0020 0075 0062 0072 0027 0027 0005 006f 0074 0004 0061 0074 0077 0073 000a 0061 006c 0020 006f 006b 0059 0075 0061 0065 0069 0020 0020 0072 0064 006f 0020 006f 006d 0020 0068 0074 0063 006e 0072 006c 0074 0065 0064 006f 0020 006f 0074 0065 0076 0075 0074 000a 0054 0065 0066 006f 0072 006f 0020 0068 0073 0072 006f 0020 0073 0061 006c 0072 0065 006d 0073 0069 0020 0065 0069 0074 006e 0020 0020 002a 0020 0079 0062 006c 0005 006f 0074 0004 0065 0074 0056 0075 0074 0054 0069 0020 0061 006c 0020 006f 0074 0069 0073 0069 0063 0065 0069 006c 0020 0069 0068 0073 0020 0050 006c 0073 006f 0020 006f 0064 0061 0064 0070 0061 0069 0075 0020 006f 006e 0020 0075 0072 0075 0064 0079 0075 0020 006e 0020 0068 0020 0061 006c 0020 0072 0020 0064 0072 0065 0020 0069 0068 0074 0070 007a 0073 0020 0075 0069 0073 0020 0061 0070 0069 0065 002c 0065 0065 0061 0064 002c 006f 0061 0073 0020 0069 0069 0068 0075 0020 0072 0073 0061 0073 0020 006c 0072 0075 002d 0031 002c 0061 0064 0075 006f 0074 0069 0069 006d 0005 0065 0076 001f 0075 0062 0069 0067 0061 006f 006e 0020 006e 0074 0065 0064 0072 006e 0073 0063 0069 0068 0075 0020 0020 006f 0072 0065 006f 0020 0069 0068 002c 0079 0075 0068 0076 0020 0065 006f 0065 0068 0070 006c 0073 006c 0020 006f 0074 0061 0064 0061 0065 0066 006d 006c 006e 0020 0072 0075 0064 0069 0020 0068 0020 0061 006b 0065 0073 0007 006f 0077 0072 0004 0061 006b 0046 006d 006c 006e 0020 0072 0075 0064 0069 0020 0068 0020 0061 006b 0065 0073 0059 0075 0063 006e 0074 0073 0065 0020 006f 0066 006e 0020 006f 0072 0077 0079 0020 0048 0077 0076 0072 0020 006f 0020 006f 0074 0069 006b 0079 0075 0068 0061 0020 006f 0020 0072 0077 0069 0067 0069 0020 0068 0020 0069 0074 006e 0065 0003 0075 000b 006e 0065 0074 0067 0074 0011 0061 0069 006b 0064 0061 0064 006c 0073 0049 0068 0020 0072 0077 0069 0067 0069 0020 0065 0074 006e 0020 006f 0064 0072 0020 0044 0064 0049 006d 006e 0069 006e 0074 0065 0065 0061 0065 0047 0075 0073 0064 0077 0020 0065 0065 0003 0075 0004 0061 0074 0068 0064 0005 0061 0065 0000 0074 0062 0065 0088 0068 0020 0061 006c 0074 0073 0065 0073 0061 0070 006f 0072 0061 0065 0066 0072 0075 0065 0061 0020 0020 0072 0074 006e 0020 0075 0066 0063 0020 0075 0020 0073 0075 0066 0072 0075 0061 0065 0079 0062 0061 006b 0020 0050 0072 0061 0073 0079 0075 0073 006f 006c 0020 0053 0020 0074 0061 0020 0020 0072 0074 006e 0020 0075 0066 0063 002e 002e 0065 0070 0079 006c 006e 0065 006e 0054 0065 006c 006e 0065 006e 0073 0065 0073 0074 0020 0061 0065 0071 0069 0065 0061 0062 0074 006f 0020 0065 0072 0062 0074 0061 0070 0061 0073 006f 0068 0072 0069 0065 0066 006e 0074 006f 0061 002e 0020 0074 0069 002c 0068 0077 0076 0072 0020 0061 0020 0068 0074 0069 0020 0073 006f 0074 006f 0020 0069 002e 006c 006e 0065 006e 0054 0065 006c 006e 0065 006e 0073 0065 0073 0074 0020 0061 0065 0071 0069 0065 0061 0062 0074 006f 0020 0065 0072 0062 0074 0061 0070 0061 0073 006f 0068 0072 0069 0065 0066 006e 0074 006f 0061 002e 0020 0074 0069 0020 0066 0020 0075 0020 0061 0070 006c 0020 0075 006c 006f 0020 0069 002e 006c 0074 006c 006e 0065 006e 0054 0065 006c 006e 0065 006e 0073 0065 0073 0074 0020 0061 0065 0071 0069 0065 0061 0062 0074 006f 0020 0065 0072 0020 0049 0020 0073 006c 0074 0061 0064 0070 006f 0075 0069 0067 0061 0062 0069 0068 0020 0069 0068 002e 0063 006e 0054 0069 0020 0061 0020 0073 0066 006c 0020 0066 0068 0067 002d 0075 006c 0074 0020 0061 0074 0072 0020 0069 002e 0072 0064 0063 0069 003f 0068 0073 0063 0069 0020 0073 006d 0064 0020 0066 0061 0072 0064 006d 0074 006c 0020 0049 0020 0061 0020 0077 0020 006f 0073 006f 0020 006e 0020 0069 0065 000d 006f 0072 0064 0064 0063 0069 003f 0068 0073 0063 0069 0020 0073 0073 006d 0077 0061 0020 006f 0072 0064 0064 0020 0049 0020 0061 0020 0020 0072 0061 0067 0065 006f 0020 006e 0020 0069 0065 000a 0068 006e 0020 006f 006e 0054 0069 0020 006f 006e 0069 0020 006f 0065 006f 0020 0074 006c 0020 0075 0074 0020 0068 006e 002e 0020 0074 0068 0073 0061 0070 006e 0061 006f 0020 006e 006f 0065 0073 0064 002e 0063 006e 0061 0065 0063 0069 0057 0068 0073 0063 0069 0020 0073 0073 0069 0068 006c 0020 006f 006e 0065 002c 0061 006d 0073 0020 0069 0065 0061 0074 006e 0020 006f 006c 0020 0049 0020 0061 0020 0065 0065 0020 006f 0073 006f 0020 006e 0020 0069 0065 0009 006c 0065 0063 0069 0041 0068 0073 0063 0069 0020 0073 006d 0064 0020 0066 0061 0062 0075 0020 0065 0061 002e 0020 0074 0068 0073 006e 006e 0020 006f 0073 006f 0020 006e 0020 0069 0065 000a 0065 0065 006f 0074 0072 0054 0069 0020 006d 006c 0020 0065 0069 0065 0068 0073 0061 0062 0074 006f 0020 006e 0069 0020 006e 0020 0065 0064 0020 0074 006c 0070 0072 0065 0022 006f 0020 0068 0020 0069 0065 000d 0075 0069 0065 0073 0063 0072 0040 0068 0073 0062 0073 006e 0073 0020 0061 0064 0068 0073 0022 0079 0061 006f 002e 006f 0022 0070 0069 0074 0064 0069 0020 0065 0020 006e 006f 0065 0073 0064 002e 006f 0062 0054 0069 0020 0073 0061 0063 0065 0072 0067 0061 0073 0073 0068 0072 0020 0062 0075 0020 0068 0020 0069 0065 006f 0020 0020 0065 006e 0073 0062 006c 002e 006d 0072 006f 0076 0068 0073 0069 0020 0020 0061 0068 0072 006d 006e 0061 0065 0068 006e 002d 0065 0064 006d 0072 006f 0020 0072 006d 0074 0065 006f 0068 0072 0069 0065 006d 0067 0069 0069 0065 0074 0076 0075 0074 0072 006f 002e 0020 0068 0074 0055 0045 0063 0075 0064 0069 0020 006f 0073 0062 0079 0068 0076 003f 0073 0072 006e 0065 0062 006f 0a87 0068 0020 006f 0065 0020 0066 0074 0069 0020 006f 006b 0073 0062 006c 0020 0077 0072 0073 0077 0074 0020 006f 006f 0073 0020 0049 0020 0073 0074 0074 0065 0020 0041 0042 0069 0066 0049 0074 006f 0075 0074 006f 0020 006f 0049 0074 0072 0069 0065 0073 006f 0061 0020 0068 0073 0063 0022 0020 0049 0020 0065 0064 003a 000a 0065 0065 0074 0061 0076 006e 0065 0020 006e 0069 0074 0072 0069 0065 0073 006f 0061 0020 0068 0073 0063 0020 0061 0065 0070 006f 0075 0065 0020 0061 0063 006e 0074 006e 000a 0072 0064 0063 0069 006e 0020 0062 0075 0020 0068 0020 0075 0064 006d 006e 0061 0073 006f 0020 0075 0020 006e 0076 0072 0065 0020 0046 0072 0065 0061 0070 0065 000a 006e 0065 0064 006d 006e 0069 006e 006c 0070 0079 0069 0073 0073 0065 0073 0074 0020 0072 0064 0063 0020 0068 0074 0074 0065 0075 0069 0065 0073 0020 0073 0020 0074 0069 0073 0072 006f 002c 0061 0070 0072 006c 0020 0061 0068 006d 0074 0063 006c 0063 006e 0074 0075 0074 0020 006e 0020 0068 0074 0061 006c 0065 0065 0074 0020 0072 0020 0061 0073 0064 0062 0020 0068 000a 006e 0065 0061 0074 006f 0073 0062 0074 0065 006e 0065 0067 0074 0070 0063 0065 0073 006f 0020 006e 0072 0079 0063 006c 0065 0020 0072 0067 0073 0065 0073 002e 0046 0072 0068 0072 006f 0065 0020 0074 0073 0065 0073 0074 0061 0020 0068 006c 0020 0068 0020 006f 0065 0020 0065 0069 0074 0072 0020 0072 006d 0072 006c 0020 006f 0074 006f 0020 0075 0064 006e 000a 0068 006e 0073 006c 006b 0020 006f 006e 0020 006e 0020 0069 0068 002c 0074 0065 0068 0067 0065 0074 0072 0067 0073 0065 0020 0074 0065 0073 002d 0061 006c 0064 0022 0069 0068 0068 0072 0067 0073 0065 0022 0020 0073 0075 0065 0020 006f 0063 006e 0072 006c 0069 0074 0072 0069 0065 0073 006f 0061 0020 0076 006e 0073 0073 0063 0020 0073 0074 006c 0070 0072 0061 0069 006e 000a 0041 0068 0070 0074 0065 0069 0061 0020 0075 0068 0074 006c 0070 0072 0061 0069 006e 0064 0076 0063 0020 006f 006c 0020 0065 0064 0074 0020 0061 0065 0068 0076 0020 0078 0063 006c 0020 0077 000a 0065 0074 006e 0074 006f 0073 0020 004f 0065 0064 0073 0069 0061 0069 006e 0077 0075 0064 0062 0020 0073 0064 0077 0065 0020 0068 0020 0069 0068 0068 0072 0067 0073 0065 0020 0073 0061 0020 0074 000a 0069 0069 0075 0020 006e 0072 0079 006c 0076 006c 002d 0074 0069 0020 006f 006c 0020 0065 0074 0065 0064 0066 0075 0074 006f 0065 0061 0069 006e 0061 0073 006d 006e 0020 0068 0020 0073 0072 0068 0073 006e 0020 0061 0020 006f 0063 006e 0072 006c 0074 0065 0065 0067 0074 0020 0065 0069 0074 0072 0020 0049 0020 0068 0073 0073 0074 0061 0069 006e 0020 0068 0020 0065 0065 006f 0074 0072 0073 006f 006c 0020 0065 0064 0074 0065 0075 0065 0020 006f 0061 0070 0065 006f 0066 0067 0072 0064 0073 0066 0020 006f 0061 0069 006e 0061 0020 0020 0065 0061 006c 002e 000a 0068 0020 0065 006f 0064 0064 0073 0069 0061 0069 006e 0020 006f 0065 0065 002c 0069 0020 0072 0064 0063 0065 0020 006f 0072 0071 0069 0065 0061 0076 0072 0020 0070 0063 0066 0063 0065 0065 0067 0020 0065 0065 0020 006e 0074 0065 0065 0067 0074 0020 0065 0069 0074 0072 0020 0054 0065 0074 006c 0070 0072 0065 0020 0075 0074 0074 006b 0020 0072 0061 0020 0061 0065 0074 000a 006f 0066 0072 0020 0068 0074 0074 0069 0020 006e 0072 0079 006c 0076 006c 0069 0020 0078 0063 006c 0020 006f 0072 0063 0020 0065 006f 0065 0074 006c 0070 0072 0069 0067 0069 0073 0075 0065 0021 0049 0020 0074 0069 0020 0076 006e 0073 0069 0068 006c 0020 0066 002c 0074 0065 0075 0065 0020 006f 006c 0020 0070 006f 0061 006c 0029 0061 0072 0076 0020 0074 0074 0065 0063 0072 0065 0074 006c 0063 0074 006f 002c 0062 0074 0077 0075 0064 0062 0069 0066 0079 0065 0070 0072 0065 0063 0020 006e 006d 006c 0065 0020 006e 0074 0065 0066 0062 0069 0020 0066 0072 0061 0069 0079 0069 0073 006c 0020 0020 0068 0073 0069 002c 006f 0020 006f 0072 0065 0020 006f 0020 0065 006f 006d 006e 0065 002e 0020 006e 0020 0065 0065 006f 0074 0072 0077 0075 0064 006e 0065 0020 006f 0074 0073 000a 0068 0020 006e 0072 0079 006c 0076 006c 0069 0020 0068 0020 0069 0068 0068 0072 0067 0073 0065 0020 006e 0020 0062 0072 0020 0065 0065 006f 0074 0074 006f 0020 0066 0069 0020 0073 006e 0074 0065 0061 0074 0079 0063 0072 0065 0074 000a 0054 0069 0020 0065 0075 0072 0064 0070 0065 0069 0069 006e 0069 0070 0069 0073 0074 0061 0020 0068 0020 006f 0066 0072 0061 0069 006e 006d 0063 0061 0069 006d 0077 0075 0064 0062 0020 0065 0079 0063 006d 0075 0061 0069 006e 006c 0079 0065 0070 006e 0069 0065 0020 0057 0069 0065 0074 0069 0020 006f 006c 0020 0069 0065 0079 006e 0074 0062 0020 006e 0069 0073 0065 0066 0072 006c 0072 0065 000a 0063 006c 0020 0065 0065 006f 0074 0072 002c 0061 0068 0070 0074 0065 0069 0061 0020 0061 0064 0068 006c 0020 0065 0065 006f 0074 0072 0077 0075 0064 0074 006b 0020 0069 006c 006f 0073 006f 000a 0065 0072 0020 006f 0063 006d 0075 0065 0074 0065 0072 0073 006c 0020 006e 0020 006f 0066 0072 0020 0068 0074 0074 0065 0065 0067 0074 0020 0065 0069 0074 0072 0069 0020 006f 0072 0063 002e 000a 0066 0079 0075 0066 006e 0020 006f 0072 0065 0066 0074 0061 0070 0064 0069 0020 006e 0061 0074 0072 0061 0065 0064 006d 006e 0069 006e 0077 0074 0020 006f 0068 006e 0020 0075 0020 000a 0061 0064 0068 006c 0020 0065 0065 006f 0074 0072 0020 006f 0020 0069 006c 006e 0065 0020 006f 0065 0074 0061 0074 0074 0065 0063 006e 0069 006d 0074 006f 0020 006c 006f 0069 0068 002c 0072 0069 0070 0065 0065 0074 0069 0020 006e 006d 0072 0020 006f 0065 0066 006c 0068 0072 0077 0072 002c 0061 0064 006f 0074 006d 007a 0020 0074 0020 0054 0069 0020 0068 0075 0064 0020 0074 0074 0065 0076 0072 0020 0065 0073 002c 0061 006c 0077 0079 0075 0074 0020 0065 0065 006d 006e 0020 0068 0020 0061 0075 0020 0066 0074 0065 0065 0067 0074 0020 0065 0069 0074 0072 0077 0069 0068 0077 0075 0064 0068 0076 0020 0065 006e 0061 0063 0070 0065 0020 0079 0074 0065 0074 006c 0070 0072 0065 0027 0020 006f 0066 0072 0061 0069 006e 006d 0063 0061 0069 006d 000a 0054 0065 002c 0073 0074 0074 0065 0065 0067 0074 0020 0065 0069 0074 0072 0074 0020 0068 0073 0076 006c 0065 0020 0063 0069 0061 0065 0074 0065 0074 006c 0070 0072 0065 002c 0061 0064 0062 0070 0073 0020 0068 0020 006f 0066 0072 0061 0069 006e 006d 0063 0061 0069 006d 0020 0049 0020 0068 0020 0069 0068 0068 0072 0067 0073 0065 0020 0073 0073 0074 0063 0072 0065 0074 0079 0020 006f 0061 006f 0061 0069 0073 0073 006f 006c 0020 0065 0065 0070 0072 0065 0063 0064 0020 0075 0020 0065 0061 0065 002d 0069 0020 0074 0069 0020 0065 0020 006e 006f 0072 0063 006c 002c 0074 0065 006e 0077 0062 0070 0073 0065 0020 006f 0066 0072 0061 0069 006e 006d 0063 0061 0069 006d 0077 006c 0020 006f 0020 0072 0074 0063 0020 006f 0021 000a 0066 0063 0075 0073 002c 0073 006e 0065 0074 006c 0070 0072 0061 0069 006e 0069 0020 006d 006f 0073 0062 0065 0020 0068 0073 0069 0020 006c 0020 006f 0061 006c 0020 0069 0069 0075 006f 0073 0007 006f 0072 0061 0eb4 0069 0065 006c 0065 0020 0065 0065 0075 0069 0067 0074 0069 0020 0075 0074 0020 006c 0020 006f 0072 0061 0020 0073 0061 0072 0073 0069 0067 0073 006f 0020 006e 0069 0020 006f 0020 0063 0072 0064 0074 0065 0020 0066 002e 0020 0074 0072 0061 0073 000a 0044 0079 0031 0020 0065 0068 0076 0020 0065 0063 0065 0020 0068 0074 0073 0065 0073 0074 0020 0065 0074 0065 0066 006e 006c 0069 0020 0020 0065 0069 0073 006f 0020 0075 007a 0065 0020 0075 0072 0069 0067 0061 0020 006e 0069 006e 0020 0072 0061 0075 0065 0020 0049 0073 0073 0065 0074 006d 0073 0020 0064 0065 0074 0072 0072 0020 0069 0065 0075 0020 006f 0067 0062 0066 0072 0020 0068 0073 0070 0069 0074 0020 0075 0020 0065 0072 0020 006f 0063 006f 0065 0020 0057 0020 0075 0074 0070 0065 0073 006f 0021 000a 0061 0020 003a 0050 0053 003a 0049 0027 0020 0020 006f 0064 0074 0069 0067 0074 0065 0069 006c 006e 0020 0073 0074 006f 0069 0061 002e 0020 0065 0073 006f 006c 0020 0061 0065 0066 006f 0020 006f 0020 0065 006b 0021 000a 0061 0020 003a 0054 0065 0076 0075 0074 0061 0070 0061 0073 0074 0020 0065 0073 0061 0065 0020 0079 0061 006d 0073 0065 0069 0075 0020 006f 0063 0020 0020 0068 0020 006f 0072 0077 006e 0074 0062 0064 0065 0061 0020 006e 0068 0020 0057 0020 006f 0027 0020 0061 0065 0074 0065 0072 0073 0075 0063 0073 0074 0020 006c 0077 0069 0020 0070 006e 0020 006e 0020 0020 006f 006c 006e 0074 0072 0073 0020 0061 0061 0069 0067 0074 0065 0063 006e 0065 0074 0020 0076 006e 0069 0020 0065 0064 0064 0020 0057 0027 006c 0068 0076 0020 006f 0066 0067 0072 0020 0075 0020 0068 0020 006f 006b 006d 0063 0061 0069 006d 000a 0044 0079 0033 0020 0068 0020 006f 0072 0074 0020 0068 0020 0061 006c 0020 0061 0020 0020 0075 0062 0072 0063 0072 0065 0020 006e 006f 0069 002e 0020 0061 0068 0072 006f 0020 0065 0064 006e 0020 0070 0074 0020 0068 0020 0061 006c 0020 0061 0020 006f 0065 006e 006d 0065 0073 006f 0020 0079 0062 006c 0020 006d 0065 0064 0064 0069 0020 006f 0061 0063 0020 006e 0074 0065 0066 006f 0072 002e 0020 0065 0065 0065 0020 006f 006e 0020 0020 0074 0061 0067 0020 006c 0073 0020 0072 0020 006e 0074 0065 0061 0074 0063 0061 0062 0072 006f 0020 0020 0065 0065 0074 006c 0069 0073 006c 0020 0061 0065 0065 0020 0069 0068 0061 006e 006d 0065 002e 0020 0068 0074 0063 0075 0064 0074 0065 0020 0065 006e 000a 0044 0079 0035 0020 0065 0066 006e 006c 0079 0062 0069 0074 0075 0020 0068 0020 006f 0072 0067 0020 006f 0074 0075 0068 0074 0065 0073 0072 006e 0065 006f 0062 0069 0020 0068 0020 006e 0065 0068 006d 0065 002e 0020 0074 0066 0061 0068 0073 0063 006c 0072 0020 0073 0077 0020 0061 0072 0020 0074 0066 006f 0020 006f 006d 0074 0020 006f 006d 0020 006e 0020 006f 0065 0069 0065 0020 0068 0020 0079 0062 006c 0020 006e 0074 0065 0072 006f 0073 0066 0061 0068 0063 006c 0072 0020 0073 0077 006c 002e 0020 0074 0073 006d 006c 0020 0076 0070 0072 0074 0073 0069 0020 0065 0074 0079 0074 0020 0065 0076 0020 0069 0068 0069 002c 0062 0074 0061 006f 0068 0072 0061 0070 0061 0073 006f 0020 0068 0020 0065 0065 0074 006c 0069 0020 0068 0020 006e 0065 0068 006d 0065 0020 0068 0072 006c 0020 0068 0072 0061 0074 0072 0020 0049 0020 006c 006f 0073 0065 0073 0074 0020 006f 0074 0069 0020 0076 006e 0077 0065 0020 0065 0072 0074 0072 0020 0069 0068 0069 0020 006f 0074 0065 0061 0074 0063 0061 0062 0072 0066 006f 0020 0068 0020 0074 0065 0020 006f 006d 002e 000a 0061 0020 003a 0057 0065 0020 0068 0020 0072 0020 0073 0063 0072 0069 0064 0074 0020 0068 0020 0061 006c 0020 006f 0072 0020 0068 0020 0075 0062 0072 0020 006e 0074 0065 0064 006f 0020 006c 0073 0020 006c 0063 002c 0061 0064 0074 0065 0020 0068 0020 0072 0020 0076 0070 0072 0074 0073 0020 0044 0064 0077 0020 006f 0073 006d 0074 0069 0067 0077 006f 0067 0020 0044 0065 006e 0074 0074 0065 0064 006f 0020 0069 0065 0075 003f 0020 0065 0061 0073 0020 006f 006e 0020 0020 006d 006c 0020 006f 0072 006c 0073 0020 0065 0072 0074 0065 0064 006f 002c 0065 0064 0065 0073 0079 0072 006e 0069 0067 0020 0049 0020 0074 0077 0069 0069 0067 0066 0072 0073 006d 0074 0069 0067 000a 0044 0079 0031 003a 0053 006d 0020 0066 006d 0020 0072 0077 0073 0065 0072 0074 0065 006f 0062 0061 0074 0061 006c 0020 0065 0073 0068 0061 0065 0020 0072 006c 0067 0074 0072 0061 0020 0068 0079 0077 006c 0020 0072 0075 0064 0077 0074 0020 0074 0020 0049 0020 0068 0074 0065 0065 0020 006f 0073 0062 0065 0020 0054 0065 0020 0061 0020 0068 0074 0069 0020 0068 0079 0077 006c 0020 0068 006f 0067 0020 0065 0074 0069 0020 006f 006d 0020 0065 0065 0074 0064 0079 0020 0068 0079 0066 0065 0020 0074 0067 0074 0069 0067 006c 0067 0074 0072 0061 0064 006c 0067 0074 0072 0020 0075 0020 0074 0065 0065 0074 0061 006c 0020 0075 0074 0065 0061 006f 0061 0065 0020 006e 0020 0020 0065 0020 006e 0020 0070 0065 0072 0020 0073 0075 0075 006c 000a 0044 0079 0032 003a 004e 0077 0049 0063 006e 0066 0065 0020 0068 0020 0072 0020 0068 006e 0069 0067 0077 0069 0068 0020 0073 0049 0077 006c 0020 0072 0075 0064 0020 0049 0020 0065 0065 0064 0020 006e 0074 0065 0061 0065 0020 0020 0068 0020 0068 006e 0065 0069 0020 0065 0079 0073 0062 006c 0020 006e 0073 006d 0020 006c 0063 0073 0020 0075 0020 0065 0074 0069 006c 0020 006f 0065 006e 0074 0063 0061 006c 0020 006e 006f 0068 0072 002c 0065 0070 0063 0061 006c 0020 0068 006e 0049 0077 006c 0020 006e 006f 0061 0072 006f 0020 0069 0068 0061 006c 0072 0065 0020 0075 0062 0072 006f 0020 0075 0020 0066 0061 0072 006f 0020 0061 006b 0064 0027 0027 0020 0050 0072 0061 0073 0077 0020 0061 0020 0063 0075 006c 0079 0063 006e 0072 006c 0074 0065 0077 0069 0068 0020 0066 0074 0069 0020 0079 0074 0072 006f 0073 006f 0062 000a 0044 0079 0033 003a 004f 0065 006f 0020 0068 0020 0072 0077 0065 0062 0072 0020 0061 0020 0061 0064 0072 006e 0020 0068 0020 006f 006d 0020 006f 0061 0020 006e 0020 006c 0069 0065 0020 0068 0074 0074 0065 006e 006d 0065 0073 006f 0020 0068 0020 006f 0072 0066 0061 0068 0064 0077 0069 0065 0061 0020 0065 0061 0070 006f 0063 0065 0021 0020 0065 0073 0069 0020 0068 0020 006f 0072 0073 0069 006c 0064 0064 0027 0020 0070 006e 0020 0075 0020 0065 006e 0074 0063 0064 0074 0061 0020 0068 0020 006f 0072 006c 0073 0020 0061 0020 0075 0020 0075 0020 006e 0020 006c 0073 0065 0020 006c 0063 002e 0020 0068 006e 0077 0020 0065 0074 0074 0020 0068 0063 0020 006e 0069 002c 0069 0020 0061 0020 0074 006c 0020 0075 006e 006e 0020 0069 0065 0069 0020 006c 0061 0073 0064 0065 002e 0020 0065 0068 0070 0020 0065 0069 0020 006f 006e 0020 0061 003f 0020 0066 006e 0074 0020 0068 0063 0020 006f 0077 0020 0065 0064 0074 0020 0070 0065 0073 003a 0074 0065 0064 006f 0020 0072 0074 0065 0068 0075 0067 0061 0073 0020 0042 0074 003f 000a 0061 0020 0035 0020 0068 0020 0069 0065 006c 0065 0020 0072 0020 0065 0074 006e 0020 0075 0070 0063 006f 0073 0020 004f 0065 006f 0020 0068 006d 006c 006f 0065 0020 0074 006d 0020 0075 006e 0020 006f 0061 0020 006e 0020 0068 006e 0066 0065 0020 0066 002e 0020 0020 0068 006e 0020 0020 0061 0020 006e 0074 0065 0020 006e 0020 006c 006e 0069 0067 0061 006c 0074 006c 0020 0061 0074 0072 0074 0061 0020 0073 0061 002e 0020 0072 0077 0073 0069 0020 0020 0069 0074 0065 0073 006f 0065 003f 0020 0065 0061 0065 0067 0074 0069 0067 0062 0074 0065 0020 0074 0063 006e 0072 006c 0069 0067 0074 0065 0077 0069 0068 0020 0066 0074 0065 006f 0062 0020 006e 0020 0065 0074 0069 006b 0074 0061 0027 0020 0068 0074 0074 0065 006e 006d 0065 0073 0061 0065 0061 006c 0061 006f 0074 0020 0054 0065 006f 0062 0073 0061 0074 0020 0074 0074 0065 0077 0069 0068 0020 0061 0065 0065 0020 006e 0074 0065 0070 0064 0073 0061 002c 0061 0064 0067 0065 0020 006f 006e 0061 0020 0065 006c 0061 0065 0061 0072 006f 0020 0061 006b 0064 0027 0027 0020 0070 0061 0020 0065 006c 0061 0065 0061 0072 006f 0020 0061 006b 0064 0027 0027 0020 006e 0020 0070 0065 0065 0020 006f 0065 0061 0020 0065 006c 0061 0065 0061 0072 006f 0020 0061 006b 0064 0027 0027 0020 0045 0074 0072 006e 0020 006f 006d 0020 0069 0068 006c 0072 0065 0020 0075 0062 0072 0020 0061 0020 0020 0072 0061 0065 0020 0066 0065 0074 000a 0044 0079 0038 003a 0045 0065 0079 006f 0063 0020 006e 0061 0067 0065 0074 0077 0069 0065 0020 006e 0020 0066 0074 0065 0063 0065 006d 006d 0065 0073 0068 0073 0074 0065 0073 006d 0020 0074 0072 003a 0074 0061 0020 0068 0020 006f 0072 0066 0061 0068 0073 0077 0069 0065 0020 0068 0020 006f 0072 006c 0073 0020 0061 0020 006c 0065 0064 0020 0075 0020 0075 002c 0069 0020 006c 0073 0065 0020 006c 0063 002c 0061 0064 0074 0065 006f 0062 0065 0061 006f 0061 0065 002e 0020 0072 0020 0065 0074 006f 0073 006f 003f 0020 0065 0063 006e 0074 0073 0065 0020 006f 0066 006e 0020 0020 0061 0020 006f 006d 006b 0020 0068 0020 0072 0027 0020 0065 0067 0074 006d 0074 0068 0077 0061 0020 0068 0020 006f 0072 0077 006e 0073 0062 0066 0072 0020 0068 0020 006f 0072 006c 0073 0020 0075 0073 006f 0074 0020 0049 0020 006e 0079 0077 0020 006f 006c 0020 0069 0064 0061 0073 006f 0074 0072 0072 0075 0065 0074 0072 0075 0068 0074 0065 0072 006f 0073 002e 000a 0044 0079 0031 0034 0020 0065 0061 0065 0061 0061 0064 006e 006e 0020 0068 0020 0069 0073 006f 002e 0020 006f 0065 006f 0020 0073 0063 006e 0077 0072 0020 0075 0020 0068 0020 006f 0075 0069 006e 0074 0020 0068 0020 0075 007a 0065 0020 0049 0077 006c 0020 0065 0076 0020 0068 0073 006a 0075 006e 006c 0068 0072 0020 006f 0068 006c 0020 0075 0075 0065 0061 0076 006e 0075 0065 0073 0020 0068 0075 0068 0049 0061 0020 006f 0020 0075 0065 0077 0061 0020 0065 0070 0069 0020 0069 006c 0067 0076 002e 0020 006f 0064 006c 0063 0021 0061 0063 0065 0067 0069 006b 006d 006f 0071 0073 0075 0077 0079 0041 0043 0045 0047 0049 004b 004d 004f 0051 0053 0055 0057 0059 0017 0062 0070 0075 006f 0078 0038 0054 0055 004f 0048 0056 0002 006f 006c 006f 0004 0065 0070 0069 0076 0074 006b 0004 0072 0070 0075 0065 0075 0065 0074 006c 0070 0072 0065 0072 006b 002d 0031 0030 003d 0033 0039 0000 0005 0072 0065 0003 0065 0006 0065 006c 0077 0041 0020 006f 0020 006e 0065 0020 0068 0020 006f 006d 0020 0068 0020 0079 0062 006c 006f 0020 0068 0020 006c 006f 0020 0072 0065 006c 0020 006c 0073 0065 0020 002e 0020 0068 0020 0072 0020 0065 0069 0073 0073 0062 006c 0020 006c 0077 006e 0020 0041 0020 006f 0020 006e 0065 0020 0068 0020 006f 006d 0020 0068 0020 0072 0020 0072 0065 006c 0020 006c 0073 0065 0020 002e 0020 0068 0020 0075 0062 0072 006f 0020 0068 0020 006c 006f 0020 0069 0072 0074 0073 0073 0072 006e 0065 0079 0062 006e 0061 0068 0079 0075 0020 0065 0074 001f 0020 0068 0020 0072 0020 0065 006d 0020 006f 0067 0074 0068 0061 0069 0072 001f 0020 0068 0020 0072 0020 0065 006d 0020 006f 0067 0074 006c 0067 0074 0072 0015 0020 0068 0020 0072 0020 0068 0074 0065 0073 000a 0020 0073 0079 0075 0061 0070 006f 0063 0020 0068 0020 0061 006c 0020 006f 0072 0020 0074 0065 006e 006d 0065 0020 006e 0074 0065 0076 0075 0074 0064 006f 0020 006c 0073 0065 0020 006c 0063 002e 0020 0054 0065 006f 0062 0065 0061 006f 0061 0065 0020 0075 0020 0066 0079 0075 0020 0061 0064 002e 000a 0074 0065 006e 006d 0065 0020 006e 0074 0065 0076 0075 0074 0064 006f 0020 006c 0073 0065 0020 0068 0074 0021 0020 0054 0065 0068 0075 0067 0061 0073 0068 0073 0061 0072 0061 0079 0072 006e 006f 0074 0020 0049 0020 006c 0073 0065 0020 006c 0063 0020 006e 0020 006c 0070 0020 0076 0072 0020 0065 0074 0072 0069 0067 0074 0065 0066 006f 0020 0066 0073 006e 002e 0020 0054 0065 0068 0075 0067 0061 0073 0069 0020 0074 006c 0020 0075 006e 006e 0021 0020 0074 0066 0061 0068 0073 0077 0069 0065 0020 0059 0075 0068 0061 0020 0020 006c 0063 0020 0072 006d 0074 0065 0076 0075 0074 0064 006f 002e 0020 0068 0020 0072 0020 0076 0070 0072 0074 0073 006f 0074 006f 0020 006f 0072 0068 006e 0073 000a 0007 0073 0079 0075 0005 0065 0076 0005 006e 0065 0056 0074 0065 0072 006f 002c 0074 0065 006f 0062 0065 0061 006f 0061 0065 0020 0075 0020 0066 0079 0075 0020 0061 0064 0021 0020 0074 0072 006d 0074 0072 0061 0069 0065 0020 006e 0069 0073 0070 0064 0073 0061 002e 000a 0054 0065 0076 0075 0074 0064 006f 0020 0073 0073 0061 0065 002e 0030 6103 614b 610e 610d 611f 6118 614b 6104 611b 610e 6102 6105 6108 610f 614b 6118 614b 611c 610d 613b 611e 6125 612d 6161 18c0 0002 0912 1923 090d 19b9 0002 090d 1a2b 0002 0917 1afd 0002 0917 1b90 0002 0921 1c61 0930 1d44 0002 0935 1dbb 0930 1e6a 0002 093f 1f30 1f3e 093a 0944 1f4f 0002 1fde 097b 0005 2076 2082 0005 094e 0958 0003 20da 0003 0949 0003 2133 0003 094e 0004 21d1 21dc 0967 0949 0003 222f 0003 0962 0004 22d4 22df 096c 0953 0003 2332 0003 094e 0001 0001 0001 0001 0002 2425 0953 0002 24b0 0980 0002 24ea 097b 0002 2524 0980 0002 25a0 0985 0002 26a9 098a 0002 2771 0999 0004 28a9 28b4 099f 09a4 0005 010f 0119 0005 0002 0007 0001 0001 0002 2a03 09a9 0001 0001 0002 2b49 09b3 0001 0001 0001 0001 0001 0001 0003 2e84 0003 09cc 0002 2fa1 09c2 0002 30a5 09c2 0003 3188 0003 09c2 0003 3224 0003 09cc 0002 332c 09e0 0002 3466 09e5 0002 3578 09ea 0002 366f 09ef 0002 3704 09f4 0003 3861 0003 09ef 0001 0001 0002 39a7 0a3f 0002 3a3e 0a08 0003 3ad7 0003 0a1c 0003 3b73 0003 0a21 0003 3c86 0003 0a0d 0003 3d25 0003 0a1c 0004 3dc2 3dcd 0a08 0a30 0004 3e67 3e72 0a0d 0a35 0003 3f09 0003 0a3a 0003 3fa6 0003 0a30 0004 4045 4050 0a1c 0a44 0004 40e7 40f2 0a21 0a49 0003 418c 0003 0a4e 0003 4240 0003 0a44 0003 42dd 0003 0a49 0003 437b 0003 0a4e 0002 4417 0a3a 0001 0001 0002 4589 0a5d 0002 4611 0a62 0003 467d 0003 0a67 0000 0010 0a70 0a78 0a80 0a88 0a90 0a98 0aa8 0aa0 6557 655f 6568 6572 0cad 0d05 0d48 0df0 2a7f 2a1d 2a01 2a11 2a55 2a1a 2a55 2a1a 2a7f 66a6 668a 668c 669a 6691 66df 668a 6697 6696 669a 66d1 001a 04a4 0499 0497 04d0 0496 0499 0484 0482 0483 04d0 0495 0495 04fa 0239 0214 021e 0204 0205 0214 0202 0204 021e 024b 0204 0209 0257 0215 0200 0250 021f 0250 021e 0204 0205 0204 021f 0203 027a 2d0b 2d08 2d6d 2d47 2d08 2d47 2d06 2d47 2d02 2d02 2d1e 2d40 2d08 2d0c 2d47 2d08 2d02 2d06 2d0e 2d02 2d13 2d02 2d15 2d08 2d4b 2d08 2d47 2d08 2d47 2d06 2d47 2d0b 2d08 2d47 2d14 2d05 2d02 2d13 2d40 2d4f 2d12 2d0f 2d06 2d47 2d0b 2d08 2d47 2d0f 2d0e 2d40 2d47 2d08 2d02 2d06 2d0e 2d02 2d14 2d0a 2d13 2d0e 2d00 2d14 2d02 2d0e 2d0e 2d49 2d00 2d6d 2d47 2d08 2d47 2d06 2d47 2d00 2d47 2d02 2d0e 2d59 2d47 2d08 2d13 2d06 2d02 2d47 2d09 2d13 2d06 2d47 2d0e 2d02 2d13 2d08 2d47 2d14 2d04 2d47 2d14 2d40 2d08 2d10 2d14 2d40 2d4b 2d08 2d47 2d08 2d47 2d06 2d47 2d02 2d02 2d1e 2d40 2d02 2d0e 2d59 2d47 2d14 2d04 2d47 2d14 2d40 2d02 2d13 2d4e 2d6d 2d09 2d6d 2d47 2d08 2d14 2d02 2d13 2d02 2d04 2d09 2d02 2d13 2d47 2d01 2d1e 2d12 2d47 2d09 2d02 2d13 2d15 2d4b 2d0a 2d15 2d0b 2d47 2d0e 2d11 2d49 2d13 2d0c 2d6d 2d47 2d08 2d47 2d06 2d47 2d13 2d0c 2d47 2d0e 2d02 2d59 2d47 2d14 2d04 2d47 2d14 2d40 2d06 2d02 2d0b 2d15 2d02 2d15 2d04 2d40 2d49 2d03 2d08 2d6d 2d47 2d08 2d03 2d08 2d47 2d08 2d02 2d0f 2d09 2d47 2d09 2d1e 2d12 2d47 2d09 2d02 2d13 2d15 2d4b 2d1e 2d12 2d0a 2d1e 2d40 2d15 2d17 2d5b 2d13 2d0a 2d40 2d6d 2d14 2d6d 2d47 2d08 2d47 2d06 2d47 2d04 2d0e 2d06 2d02 2d08 2d47 2d13 2d02 2d10 2d14 2d47 2d17 2d0b 2d47 2d09 2d0e 2d02 2d47 2d0e 2d0f 2d40 2d14 2d47 2d0e 2d02 2d59 2d49 0010 4383 439e 4385 439a 4382 4383 4395 43e6 6c21 6c1e 6c1b 6c7f 3629 3605 3603 3615 361e 3650 3605 3618 3619 3615 3650 3615 3615 367a 32a0 328b 3294 3280 32ee 15b0 159c 158a 1587 159d 158f 1587 15c9 1581 159d 1580 15c9 1586 159b 1599 158a 15c7 0022 1d1f 1d50 1d11 1d57 1d50 1d19 1d14 1d04 1d11 1d50 1d1e 1d09 1d05 1d50 1d11 1d1b 1d7a 4830 481c 4808 480c 484e 4849 481c 480c 4801 481e 481d 4849 481a 4849 4801 481d 4863 15b0 159c 1581 159f 15c9 158c 1587 158c 159d 1587 158b 15c9 15c9 159b 158c 15e3 763d 7617 761b 761b 765e 7610 760a 761b 7609 7612 765e 7618 7611 761b 7611 765e 7616 765e 761f 760d 7619 7609 7607 7652 7607 760b 760d 761b 7674 765e 765e 0003 78a7 002b 1568 150d 1542 1503 1507 150c 1516 1542 1504 1516 150b 1542 150c 1542 1507 1512 1515 150e 150b 1505 1568 0015 1b02 1b1e 1b0e 1b05 1b4a 1b19 1b06 1b09 1b0f 1b44 001b 6608 6647 660e 6603 661e 6612 6614 660b 6647 6615 6613 6609 6647 0003 0c3d 0033 174e 1700 171a 170b 171a 170c 170b 1740 174e 170b 1706 171e 174e 171a 171d 171d 1703 174e 1707 170a 1701 174e 1701 170b 1764 0038 4b0b 4b44 4b0d 4b08 4b1d 4b11 4b44 4b05 4b10 4b16 4b44 4b0d 4b0c 4b0b 4b08 4b44 4b2d 4b44 4b01 4b09 4b44 4b0b 4b07 4b01 4b16 4b11 4b45 4b6e 3cb3 3c9f 3c86 3cca 3c8b 3c8f 3c9e 3cca 3c83 3c8e 3c99 3c87 3c9e 3c83 3c8d 3c9e 3cca 3c9f 3cca 3c82 3cca 3c83 3cca 3c84 3c85 3c8c 3c98 3c9e 3ce0 0019 4519 4556 451f 451e 4556 4519 4504 451a 4518 4513 4518 457c 0019 3c95 3cda 3c95 3c89 3cda 3c95 3c88 3c96 3c94 3c9f 3c94 3cf0 002a 0514 055c 051e 0515 050f 0508 0509 055b 0513 050f 050f 055b 0514 050c 050f 055b 0513 055b 0514 0515 0571 1937 191b 191e 190f 190b 191a 190b 001e 388b 3896 38c2 388a 38c2 3887 3896 388d 3896 388d 3887 38c2 388e 3896 38e8 6525 6544 650b 6544 6508 6507 6544 650c 6544 6505 6510 6507 650d 6548 6510 6501 6544 6516 6544 6508 6544 6501 6501 6517 6500 650b 6510 6544 650c 6544 6508 650b 654a 0042 5a90 5a9a 5a96 5a93 5a82 5a86 5a97 5a86 5a8f 5a90 5ac3 5a8c 5a8d 5ac3 5a8c 5ac3 5a86 5a91 5a82 5a80 5a8a 5a88 5a85 5a8c 5ac3 5a8b 5ac3 5a8c 5a97 5ac3 5a8c 5a91 5ae9 72b2 7280 7281 729d 7296 72d3 729f 7290 7281 729d 7290 7285 729a 7296 729a 72d3 7281 7299 7290 7296 72d3 729d 729c 728a 7286 72d3 729a 7297 72f9 72d3 72d1 729d 7280 7292 72d3 7296 7287 729d 72d3 7296 7296 7287 7297 72d3 72a0 7292 7287 729d 72d3 729c 7295 7281 7292 729a 729d 7283 729c 7296 7280 72d3 72b6 7287 729e 7287 7297 7287 729e 72d3 729c 7290 729e 729f 7287 729c 72c9 72c2 7291 729f 729a 729d 728a 7292 7280 72d1 72f9 5c3a 5c16 5c14 5c08 5c43 5c13 5c0c 5c43 5c43 5c02 5c07 5c43 5c06 5c00 5c43 5c0a 5c0b 5c02 5c10 5c0a 5c0b 5c43 5c06 5c07 5c00 5c06 5c43 5c37 5c06 5c0f 5c10 5c43 5c0b 5c0d 5c43 5c0c 5c43 5c06 5c06 5c01 5c11 5c0a 5c43 5c00 5c0a 5c02 5c0a 5c04 5c17 5c02 5c43 5c06 5c06 5c0c 5c17 5c11 5c4d 5c43 5c16 5c43 5c0c 5c43 5c0c 5c43 5c02 5c44 5c43 5c0a 5c07 5c0a 5c43 5c0d 5c14 5c06 5c06 5c0a 5c43 5c0c 5c11 5c13 5c00 5c4d 5c43 5c0c 5c06 5c0d 5c43 5c06 5c0e 5c43 5c0c 5c0b 5c15 5c43 5c11 5c14 5c43 5c43 5c06 5c10 5c04 5c43 5c0d 5c17 5c06 5c10 5c0d 5c43 5c06 5c06 5c69 5c43 5c43 0003 4d18 009a 49ed 4993 4985 4980 4989 49c7 4988 4995 498e 49c9 49c7 498f 49c7 4982 4994 4980 49c7 4986 498f 4994 4986 4986 49c9 49c7 4988 49c7 4986 4982 4986 4983 4982 49c7 4995 4986 498f 4986 4983 4981 4982 49c7 498e 498a 499e 4980 4988 4989 4982 49c7 4989 4995 4986 498e 499e 4986 49c7 498f 49c7 4981 4982 4993 49c7 4981 4993 4982 4993 498b 4997 4995 4986 498e 4989 4990 4986 49c7 4981 49c9 49ed 223c 220e 220f 2213 2218 225d 2211 221e 220f 2213 221e 220b 2214 2218 2214 225d 220f 2217 221e 2218 225d 2213 2212 2204 2208 225d 2214 2219 2277 225d 225f 2214 221e 2211 221f 221c 2214 2213 2219 2209 221e 2218 225c 225d 221f 220f 2214 221a 2209 2211 220d 220f 221c 2214 2213 225f 2277 2212 2215 2213 225d 2211 2218 220e 2218 220e 2209 225d 221c 220d 2213 2277 0075 1691 16de 169d 1697 169f 169b 168a 169b 168a 1692 168e 168c 169b 16df 16de 168d 1687 168b 168d 1697 169f 16de 1696 1691 1699 16de 1697 169b 169f 169a 168d 169f 169b 16de 1691 16de 1696 1690 16de 1691 16de 169b 16de 16de 169f 168a 168c 16de 1690 168a 169b 168d 169f 168d 16d0 16f4 16de 16de 0003 6932 0059 2cf6 2c9a 2c99 2cdc 2cdc 2c99 2cdc 2c93 2c99 2c88 2cd0 2c85 2c89 2c9a 2c92 2cdc 2c93 2c8e 2c99 2c9a 2c9e 2c9f 2cdc 2c92 2c8f 2c90 2c98 2c9b 2c93 2c92 2cdc 2c92 2cdc 2cdc 2c95 2c88 2c99 2c98 2c8f 2c8e 2c99 2c88 2c98 2cf6 00b8 5683 56cc 568d 5689 5685 5698 56cc 5684 56cc 5685 569e 569e 56cc 5682 56cc 5683 56cc 5689 56cc 5683 569e 5689 568a 568b 5696 5682 56cc 568d 5687 56cc 56ae 5698 569b 5685 56cd 56cc 5698 5680 5683 569f 5680 5687 56cc 5683 5689 5682 56cc 569e 5698 56cc 5682 5695 5699 56cc 568d 5689 569b 5685 5689 5695 5699 569b 569e 56cc 5682 5683 569f 5685 5699 56cc 5682 5698 5689 568e 568d 5684 56cc 56b8 569e 5699 5684 5698 5689 5681 569e 5683 56c0 5695 5699 569f 5689 56ce 7437 5496 70d7 7086 7087 7082 7090 70d5 709b 7096 7094 7096 7094 70d5 709b 708c 7080 70d5 709a 7090 7090 7091 70ff 70b6 709b 7087 7081 7099 7081 709a 7086 70d5 709a 70d5 7094 7090 7087 7094 709d 7091 7081 7090 7090 7091 709a 70d5 709d 70d5 709d 7099 7090 7092 70d4 70ff