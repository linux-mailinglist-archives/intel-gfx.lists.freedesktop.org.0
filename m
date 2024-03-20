Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A8B880C0E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 08:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AE410E73F;
	Wed, 20 Mar 2024 07:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E40F10E8E1;
 Wed, 20 Mar 2024 07:31:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_cleanup_?=
 =?utf-8?q?dead_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Mar 2024 07:31:26 -0000
Message-ID: <171091988645.920534.17688987453066833094@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: cleanup dead code
URL   : https://patchwork.freedesktop.org/series/131354/
State : warning

== Summary ==

Error: dim checkpatch failed
8f73eff2311a drm/i915: Drop dead code for xehpsdv
-:918: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#918: FILE: drivers/gpu/drm/i915/intel_uncore.c:1538:
+		0x13400 - 0x147ff: reserved */					\

-:928: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#928: FILE: drivers/gpu/drm/i915/intel_uncore.c:1544:
+	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*			\
+		0x16e00 - 0x1ffff: render					\

-:929: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#929: FILE: drivers/gpu/drm/i915/intel_uncore.c:1545:
+		0x20000 - 0x21fff: reserved */					\

total: 0 errors, 3 warnings, 0 checks, 818 lines checked
7af567a833e9 drm/i915: Remove XEHP_FWRANGES()
-:175: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#175: FILE: drivers/gpu/drm/i915/intel_uncore.c:1476:
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		  0x0 -  0xaff: reserved

-:176: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#176: FILE: drivers/gpu/drm/i915/intel_uncore.c:1477:
+		0xb00 - 0x1fff: always on */

-:180: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#180: FILE: drivers/gpu/drm/i915/intel_uncore.c:1481:
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
+		0x4b00 - 0x4fff: reserved

-:181: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#181: FILE: drivers/gpu/drm/i915/intel_uncore.c:1482:
+		0x5000 - 0x51ff: always on */

-:186: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#186: FILE: drivers/gpu/drm/i915/intel_uncore.c:1487:
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved

-:187: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#187: FILE: drivers/gpu/drm/i915/intel_uncore.c:1488:
+		0x8180 - 0x81ff: always on */

-:191: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#191: FILE: drivers/gpu/drm/i915/intel_uncore.c:1492:
+	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt

-:193: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#193: FILE: drivers/gpu/drm/i915/intel_uncore.c:1494:
+		0x8c80 - 0x8cff: gt (DG2 only) */

-:195: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#195: FILE: drivers/gpu/drm/i915/intel_uncore.c:1496:
+	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*
+		0x8d00 - 0x8dff: render (DG2 only)

-:196: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#196: FILE: drivers/gpu/drm/i915/intel_uncore.c:1497:
+		0x8e00 - 0x8fff: reserved */

-:198: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#198: FILE: drivers/gpu/drm/i915/intel_uncore.c:1499:
+	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*
+		0x9000 - 0x947f: gt

-:199: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#199: FILE: drivers/gpu/drm/i915/intel_uncore.c:1500:
+		0x9480 - 0x94cf: reserved */

-:202: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#202: FILE: drivers/gpu/drm/i915/intel_uncore.c:1503:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on

-:203: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#203: FILE: drivers/gpu/drm/i915/intel_uncore.c:1504:
+		0x9600 - 0x967f: reserved */

-:205: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#205: FILE: drivers/gpu/drm/i915/intel_uncore.c:1506:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render

-:206: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#206: FILE: drivers/gpu/drm/i915/intel_uncore.c:1507:
+		0x9700 - 0x97ff: reserved */

-:208: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#208: FILE: drivers/gpu/drm/i915/intel_uncore.c:1509:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:210: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#210: FILE: drivers/gpu/drm/i915/intel_uncore.c:1511:
+		0xc000 - 0xcfff: gt */

-:216: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#216: FILE: drivers/gpu/drm/i915/intel_uncore.c:1517:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:217: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#217: FILE: drivers/gpu/drm/i915/intel_uncore.c:1518:
+		0xde00 - 0xde7f: reserved */

-:219: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#219: FILE: drivers/gpu/drm/i915/intel_uncore.c:1520:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render

-:221: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#221: FILE: drivers/gpu/drm/i915/intel_uncore.c:1522:
+		0xe100 - 0xe8ff: render */

-:223: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#223: FILE: drivers/gpu/drm/i915/intel_uncore.c:1524:
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
+		0xe900 - 0xe9ff: gt

-:225: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#225: FILE: drivers/gpu/drm/i915/intel_uncore.c:1526:
+		0xf000 - 0xffff: gt */

-:227: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#227: FILE: drivers/gpu/drm/i915/intel_uncore.c:1528:
+	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*
+		0x10000 - 0x11fff: reserved

-:229: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#229: FILE: drivers/gpu/drm/i915/intel_uncore.c:1530:
+		0x12800 - 0x12fff: reserved */

-:232: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#232: FILE: drivers/gpu/drm/i915/intel_uncore.c:1533:
+	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x13200 - 0x133ff: VD2 (DG2 only)

-:233: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#233: FILE: drivers/gpu/drm/i915/intel_uncore.c:1534:
+		0x13400 - 0x147ff: reserved */

-:236: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#236: FILE: drivers/gpu/drm/i915/intel_uncore.c:1537:
+	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*
+		0x15000 - 0x15fff: gt (DG2 only)

-:237: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#237: FILE: drivers/gpu/drm/i915/intel_uncore.c:1538:
+		0x16000 - 0x16dff: reserved */

-:239: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#239: FILE: drivers/gpu/drm/i915/intel_uncore.c:1540:
+	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*
+		0x16e00 - 0x1ffff: render

-:240: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#240: FILE: drivers/gpu/drm/i915/intel_uncore.c:1541:
+		0x20000 - 0x21fff: reserved */

-:243: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#243: FILE: drivers/gpu/drm/i915/intel_uncore.c:1544:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on

-:244: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#244: FILE: drivers/gpu/drm/i915/intel_uncore.c:1545:
+		0x24080 - 0x2417f: reserved */

-:246: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#246: FILE: drivers/gpu/drm/i915/intel_uncore.c:1547:
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:247: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#247: FILE: drivers/gpu/drm/i915/intel_uncore.c:1548:
+		0x24200 - 0x249ff: reserved */

-:249: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#249: FILE: drivers/gpu/drm/i915/intel_uncore.c:1550:
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render

-:250: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#250: FILE: drivers/gpu/drm/i915/intel_uncore.c:1551:
+		0x24a80 - 0x251ff: reserved */

-:252: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#252: FILE: drivers/gpu/drm/i915/intel_uncore.c:1553:
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt

-:253: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#253: FILE: drivers/gpu/drm/i915/intel_uncore.c:1554:
+		0x25300 - 0x25fff: reserved */

-:255: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#255: FILE: drivers/gpu/drm/i915/intel_uncore.c:1556:
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
+		0x26000 - 0x27fff: render

-:257: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#257: FILE: drivers/gpu/drm/i915/intel_uncore.c:1558:
+		0x2a000 - 0x2ffff: undocumented */

-:261: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#261: FILE: drivers/gpu/drm/i915/intel_uncore.c:1562:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:265: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#265: FILE: drivers/gpu/drm/i915/intel_uncore.c:1566:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:267: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#267: FILE: drivers/gpu/drm/i915/intel_uncore.c:1568:
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6bff: VD1

-:270: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#270: FILE: drivers/gpu/drm/i915/intel_uncore.c:1571:
+		0x1c6e00 - 0x1c7fff: reserved */

-:272: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#272: FILE: drivers/gpu/drm/i915/intel_uncore.c:1573:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0

-:273: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#273: FILE: drivers/gpu/drm/i915/intel_uncore.c:1574:
+		0x1ca100 - 0x1cbfff: reserved */

-:279: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#279: FILE: drivers/gpu/drm/i915/intel_uncore.c:1580:
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2

-:284: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#284: FILE: drivers/gpu/drm/i915/intel_uncore.c:1585:
+		0x1d3f00 - 0x1d3fff: VD2 */

-:286: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#286: FILE: drivers/gpu/drm/i915/intel_uncore.c:1587:
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
+		0x1d4000 - 0x1d6bff: VD3

-:289: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#289: FILE: drivers/gpu/drm/i915/intel_uncore.c:1590:
+		0x1d6e00 - 0x1d7fff: reserved */

-:291: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#291: FILE: drivers/gpu/drm/i915/intel_uncore.c:1592:
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
+		0x1d8000 - 0x1da0ff: VE1

-:292: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#292: FILE: drivers/gpu/drm/i915/intel_uncore.c:1593:
+		0x1da100 - 0x1dffff: reserved */

-:294: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#294: FILE: drivers/gpu/drm/i915/intel_uncore.c:1595:
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
+		0x1e0000 - 0x1e2bff: VD4

-:298: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#298: FILE: drivers/gpu/drm/i915/intel_uncore.c:1599:
+		0x1e3f00 - 0x1e3fff: VD4 */

-:300: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#300: FILE: drivers/gpu/drm/i915/intel_uncore.c:1601:
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
+		0x1e4000 - 0x1e6bff: VD5

-:303: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#303: FILE: drivers/gpu/drm/i915/intel_uncore.c:1604:
+		0x1e6e00 - 0x1e7fff: reserved */

-:305: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#305: FILE: drivers/gpu/drm/i915/intel_uncore.c:1606:
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
+		0x1e8000 - 0x1ea0ff: VE2

-:306: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#306: FILE: drivers/gpu/drm/i915/intel_uncore.c:1607:
+		0x1ea100 - 0x1effff: reserved */

-:308: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#308: FILE: drivers/gpu/drm/i915/intel_uncore.c:1609:
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
+		0x1f0000 - 0x1f2bff: VD6

-:312: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#312: FILE: drivers/gpu/drm/i915/intel_uncore.c:1613:
+		0x1f3f00 - 0x1f3fff: VD6 */

-:314: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#314: FILE: drivers/gpu/drm/i915/intel_uncore.c:1615:
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
+		0x1f4000 - 0x1f6bff: VD7

-:317: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#317: FILE: drivers/gpu/drm/i915/intel_uncore.c:1618:
+		0x1f6e00 - 0x1f7fff: reserved */

total: 0 errors, 64 warnings, 0 checks, 304 lines checked
5221a75b289b drm/i915: Stop inheriting IP_VER(12, 50)
4fe1645b9ebc drm/i915: Update IP_VER(12, 50)
b9f80de3482e drm/i915: Drop dead code for pvc
-:422: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#422: 
new file mode 100644

-:429: ERROR:TRAILING_WHITESPACE: trailing whitespace
#429: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c.rej:3:
+ $

-:437: ERROR:TRAILING_WHITESPACE: trailing whitespace
#437: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c.rej:11:
+ $

-:443: ERROR:TRAILING_WHITESPACE: trailing whitespace
#443: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c.rej:17:
+ $

total: 3 errors, 1 warnings, 0 checks, 794 lines checked
bcf5869d9d95 drm/i915: Remove special handling for !RCS_MASK()


