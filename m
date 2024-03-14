Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABFA87C3BD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 20:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 157E210E3A5;
	Thu, 14 Mar 2024 19:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B2910FD36;
 Thu, 14 Mar 2024 19:37:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_cleanup_?=
 =?utf-8?q?dead_code_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 19:37:32 -0000
Message-ID: <171044505292.756215.16704090343975502276@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
In-Reply-To: <20240312235145.2443975-1-lucas.demarchi@intel.com>
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

Series: drm/i915: cleanup dead code (rev2)
URL   : https://patchwork.freedesktop.org/series/131049/
State : warning

== Summary ==

Error: dim checkpatch failed
8c0c8bf0df8f drm/i915: Drop dead code for xehpsdv
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
53e7df647789 drm/i915: Remove XEHP_FWRANGES()
-:174: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#174: FILE: drivers/gpu/drm/i915/intel_uncore.c:1476:
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		  0x0 -  0xaff: reserved

-:175: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#175: FILE: drivers/gpu/drm/i915/intel_uncore.c:1477:
+		0xb00 - 0x1fff: always on */

-:179: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#179: FILE: drivers/gpu/drm/i915/intel_uncore.c:1481:
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
+		0x4b00 - 0x4fff: reserved

-:180: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#180: FILE: drivers/gpu/drm/i915/intel_uncore.c:1482:
+		0x5000 - 0x51ff: always on */

-:185: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#185: FILE: drivers/gpu/drm/i915/intel_uncore.c:1487:
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved

-:186: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#186: FILE: drivers/gpu/drm/i915/intel_uncore.c:1488:
+		0x8180 - 0x81ff: always on */

-:190: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#190: FILE: drivers/gpu/drm/i915/intel_uncore.c:1492:
+	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt

-:192: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#192: FILE: drivers/gpu/drm/i915/intel_uncore.c:1494:
+		0x8c80 - 0x8cff: gt (DG2 only) */

-:194: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#194: FILE: drivers/gpu/drm/i915/intel_uncore.c:1496:
+	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*
+		0x8d00 - 0x8dff: render (DG2 only)

-:195: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#195: FILE: drivers/gpu/drm/i915/intel_uncore.c:1497:
+		0x8e00 - 0x8fff: reserved */

-:197: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#197: FILE: drivers/gpu/drm/i915/intel_uncore.c:1499:
+	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*
+		0x9000 - 0x947f: gt

-:198: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#198: FILE: drivers/gpu/drm/i915/intel_uncore.c:1500:
+		0x9480 - 0x94cf: reserved */

-:201: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#201: FILE: drivers/gpu/drm/i915/intel_uncore.c:1503:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on

-:202: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#202: FILE: drivers/gpu/drm/i915/intel_uncore.c:1504:
+		0x9600 - 0x967f: reserved */

-:204: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#204: FILE: drivers/gpu/drm/i915/intel_uncore.c:1506:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render

-:205: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#205: FILE: drivers/gpu/drm/i915/intel_uncore.c:1507:
+		0x9700 - 0x97ff: reserved */

-:207: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#207: FILE: drivers/gpu/drm/i915/intel_uncore.c:1509:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:209: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#209: FILE: drivers/gpu/drm/i915/intel_uncore.c:1511:
+		0xc000 - 0xcfff: gt */

-:215: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#215: FILE: drivers/gpu/drm/i915/intel_uncore.c:1517:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:216: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#216: FILE: drivers/gpu/drm/i915/intel_uncore.c:1518:
+		0xde00 - 0xde7f: reserved */

-:218: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#218: FILE: drivers/gpu/drm/i915/intel_uncore.c:1520:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render

-:220: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#220: FILE: drivers/gpu/drm/i915/intel_uncore.c:1522:
+		0xe100 - 0xe8ff: render */

-:222: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#222: FILE: drivers/gpu/drm/i915/intel_uncore.c:1524:
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
+		0xe900 - 0xe9ff: gt

-:224: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#224: FILE: drivers/gpu/drm/i915/intel_uncore.c:1526:
+		0xf000 - 0xffff: gt */

-:226: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#226: FILE: drivers/gpu/drm/i915/intel_uncore.c:1528:
+	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*
+		0x10000 - 0x11fff: reserved

-:228: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#228: FILE: drivers/gpu/drm/i915/intel_uncore.c:1530:
+		0x12800 - 0x12fff: reserved */

-:231: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#231: FILE: drivers/gpu/drm/i915/intel_uncore.c:1533:
+	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x13200 - 0x133ff: VD2 (DG2 only)

-:232: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#232: FILE: drivers/gpu/drm/i915/intel_uncore.c:1534:
+		0x13400 - 0x147ff: reserved */

-:235: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#235: FILE: drivers/gpu/drm/i915/intel_uncore.c:1537:
+	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*
+		0x15000 - 0x15fff: gt (DG2 only)

-:236: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#236: FILE: drivers/gpu/drm/i915/intel_uncore.c:1538:
+		0x16000 - 0x16dff: reserved */

-:238: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#238: FILE: drivers/gpu/drm/i915/intel_uncore.c:1540:
+	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*
+		0x16e00 - 0x1ffff: render

-:239: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#239: FILE: drivers/gpu/drm/i915/intel_uncore.c:1541:
+		0x20000 - 0x21fff: reserved */

-:242: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#242: FILE: drivers/gpu/drm/i915/intel_uncore.c:1544:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on

-:243: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#243: FILE: drivers/gpu/drm/i915/intel_uncore.c:1545:
+		0x24080 - 0x2417f: reserved */

-:245: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#245: FILE: drivers/gpu/drm/i915/intel_uncore.c:1547:
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:246: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#246: FILE: drivers/gpu/drm/i915/intel_uncore.c:1548:
+		0x24200 - 0x249ff: reserved */

-:248: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#248: FILE: drivers/gpu/drm/i915/intel_uncore.c:1550:
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render

-:249: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#249: FILE: drivers/gpu/drm/i915/intel_uncore.c:1551:
+		0x24a80 - 0x251ff: reserved */

-:251: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#251: FILE: drivers/gpu/drm/i915/intel_uncore.c:1553:
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt

-:252: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#252: FILE: drivers/gpu/drm/i915/intel_uncore.c:1554:
+		0x25300 - 0x25fff: reserved */

-:254: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#254: FILE: drivers/gpu/drm/i915/intel_uncore.c:1556:
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
+		0x26000 - 0x27fff: render

-:256: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#256: FILE: drivers/gpu/drm/i915/intel_uncore.c:1558:
+		0x2a000 - 0x2ffff: undocumented */

-:260: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#260: FILE: drivers/gpu/drm/i915/intel_uncore.c:1562:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:264: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#264: FILE: drivers/gpu/drm/i915/intel_uncore.c:1566:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:266: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#266: FILE: drivers/gpu/drm/i915/intel_uncore.c:1568:
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6bff: VD1

-:269: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#269: FILE: drivers/gpu/drm/i915/intel_uncore.c:1571:
+		0x1c6e00 - 0x1c7fff: reserved */

-:271: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#271: FILE: drivers/gpu/drm/i915/intel_uncore.c:1573:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0

-:272: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#272: FILE: drivers/gpu/drm/i915/intel_uncore.c:1574:
+		0x1ca100 - 0x1cbfff: reserved */

-:278: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#278: FILE: drivers/gpu/drm/i915/intel_uncore.c:1580:
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2

-:283: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#283: FILE: drivers/gpu/drm/i915/intel_uncore.c:1585:
+		0x1d3f00 - 0x1d3fff: VD2 */

-:285: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#285: FILE: drivers/gpu/drm/i915/intel_uncore.c:1587:
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
+		0x1d4000 - 0x1d6bff: VD3

-:288: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#288: FILE: drivers/gpu/drm/i915/intel_uncore.c:1590:
+		0x1d6e00 - 0x1d7fff: reserved */

-:290: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#290: FILE: drivers/gpu/drm/i915/intel_uncore.c:1592:
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
+		0x1d8000 - 0x1da0ff: VE1

-:291: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#291: FILE: drivers/gpu/drm/i915/intel_uncore.c:1593:
+		0x1da100 - 0x1dffff: reserved */

-:293: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#293: FILE: drivers/gpu/drm/i915/intel_uncore.c:1595:
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
+		0x1e0000 - 0x1e2bff: VD4

-:297: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#297: FILE: drivers/gpu/drm/i915/intel_uncore.c:1599:
+		0x1e3f00 - 0x1e3fff: VD4 */

-:299: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#299: FILE: drivers/gpu/drm/i915/intel_uncore.c:1601:
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
+		0x1e4000 - 0x1e6bff: VD5

-:302: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#302: FILE: drivers/gpu/drm/i915/intel_uncore.c:1604:
+		0x1e6e00 - 0x1e7fff: reserved */

-:304: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#304: FILE: drivers/gpu/drm/i915/intel_uncore.c:1606:
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
+		0x1e8000 - 0x1ea0ff: VE2

-:305: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#305: FILE: drivers/gpu/drm/i915/intel_uncore.c:1607:
+		0x1ea100 - 0x1effff: reserved */

-:307: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#307: FILE: drivers/gpu/drm/i915/intel_uncore.c:1609:
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
+		0x1f0000 - 0x1f2bff: VD6

-:311: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#311: FILE: drivers/gpu/drm/i915/intel_uncore.c:1613:
+		0x1f3f00 - 0x1f3fff: VD6 */

-:313: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#313: FILE: drivers/gpu/drm/i915/intel_uncore.c:1615:
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
+		0x1f4000 - 0x1f6bff: VD7

-:316: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#316: FILE: drivers/gpu/drm/i915/intel_uncore.c:1618:
+		0x1f6e00 - 0x1f7fff: reserved */

total: 0 errors, 64 warnings, 0 checks, 304 lines checked
9c03857255e7 drm/i915: Stop inheriting IP_VER(12, 50)
a4c0e80ba83b drm/i915: Update IP_VER(12, 50)
ff52e704eb5d drm/i915: Drop dead code for pvc
9e29ae3c3f79 drm/i915: Remove special handling for !RCS_MASK()


