Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059C05B4399
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 03:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E87C10E184;
	Sat, 10 Sep 2022 01:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBBF210E184;
 Sat, 10 Sep 2022 01:16:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E586BA00FD;
 Sat, 10 Sep 2022 01:16:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 10 Sep 2022 01:16:26 -0000
Message-ID: <166277258693.9590.1963172150646027259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220910001631.1986601-1-matthew.d.roper@intel.com>
In-Reply-To: <20220910001631.1986601-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_MTL_forcewake_support?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/mtl: Add MTL forcewake support
URL   : https://patchwork.freedesktop.org/series/108394/
State : warning

== Summary ==

Error: dim checkpatch failed
f1791c323987 drm/i915/mtl: Add MTL forcewake support
-:141: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#141: FILE: drivers/gpu/drm/i915/intel_uncore.c:1734:
+	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_GT), /*
+		0x4000 - 0x48ff: render

-:142: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#142: FILE: drivers/gpu/drm/i915/intel_uncore.c:1735:
+		0x4900 - 0x51ff: reserved */

-:144: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#144: FILE: drivers/gpu/drm/i915/intel_uncore.c:1737:
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER), /*
+		0x5200 - 0x53ff: render

-:146: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#146: FILE: drivers/gpu/drm/i915/intel_uncore.c:1739:
+		0x5500 - 0x7fff: render */

-:149: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#149: FILE: drivers/gpu/drm/i915/intel_uncore.c:1742:
+	GEN_FW_RANGE(0x8140, 0x817f, FORCEWAKE_RENDER), /*
+		0x8140 - 0x815f: render

-:150: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#150: FILE: drivers/gpu/drm/i915/intel_uncore.c:1743:
+		0x8160 - 0x817f: reserved */

-:153: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#153: FILE: drivers/gpu/drm/i915/intel_uncore.c:1746:
+	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
+		0x8200 - 0x87ff: gt

-:158: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#158: FILE: drivers/gpu/drm/i915/intel_uncore.c:1751:
+		0x9480 - 0x94cf: reserved */

-:161: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#161: FILE: drivers/gpu/drm/i915/intel_uncore.c:1754:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on

-:162: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#162: FILE: drivers/gpu/drm/i915/intel_uncore.c:1755:
+		0x9600 - 0x967f: reserved */

-:164: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#164: FILE: drivers/gpu/drm/i915/intel_uncore.c:1757:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render

-:165: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#165: FILE: drivers/gpu/drm/i915/intel_uncore.c:1758:
+		0x9700 - 0x97ff: reserved */

-:167: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#167: FILE: drivers/gpu/drm/i915/intel_uncore.c:1760:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:169: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#169: FILE: drivers/gpu/drm/i915/intel_uncore.c:1762:
+		0xc000 - 0xcfff: gt */

-:171: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#171: FILE: drivers/gpu/drm/i915/intel_uncore.c:1764:
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0), /*
+		0xd000 - 0xd3ff: always on

-:172: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#172: FILE: drivers/gpu/drm/i915/intel_uncore.c:1765:
+		0xd400 - 0xd7ff: reserved */

-:177: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#177: FILE: drivers/gpu/drm/i915/intel_uncore.c:1770:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:178: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#178: FILE: drivers/gpu/drm/i915/intel_uncore.c:1771:
+		0xde00 - 0xde7f: reserved */

-:180: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#180: FILE: drivers/gpu/drm/i915/intel_uncore.c:1773:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render

-:182: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#182: FILE: drivers/gpu/drm/i915/intel_uncore.c:1775:
+		0xe100 - 0xe8ff: render */

-:185: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#185: FILE: drivers/gpu/drm/i915/intel_uncore.c:1778:
+	GEN_FW_RANGE(0xea00, 0x147ff, 0), /*
+		 0xea00 - 0x11fff: reserved

-:187: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#187: FILE: drivers/gpu/drm/i915/intel_uncore.c:1780:
+		0x12800 - 0x147ff: reserved */

-:189: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#189: FILE: drivers/gpu/drm/i915/intel_uncore.c:1782:
+	GEN_FW_RANGE(0x14800, 0x19fff, FORCEWAKE_GT), /*
+		0x14800 - 0x153ff: gt

-:190: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#190: FILE: drivers/gpu/drm/i915/intel_uncore.c:1783:
+		0x15400 - 0x19fff: reserved */

-:192: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#192: FILE: drivers/gpu/drm/i915/intel_uncore.c:1785:
+	GEN_FW_RANGE(0x1a000, 0x21fff, FORCEWAKE_RENDER), /*
+		0x1a000 - 0x1bfff: render

-:193: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#193: FILE: drivers/gpu/drm/i915/intel_uncore.c:1786:
+		0x1c000 - 0x21fff: reserved */

-:196: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#196: FILE: drivers/gpu/drm/i915/intel_uncore.c:1789:
+	GEN_FW_RANGE(0x24000, 0x2ffff, 0), /*
+		0x24000 - 0x2407f: always on

-:197: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#197: FILE: drivers/gpu/drm/i915/intel_uncore.c:1790:
+		0x24080 - 0x2ffff: reserved */

-:218: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#218: FILE: drivers/gpu/drm/i915/intel_uncore.c:1811:
+	GEN_FW_RANGE(0x116000, 0x11ffff, FORCEWAKE_GSC), /*
+		0x116000 - 0x117fff: gsc

-:221: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#221: FILE: drivers/gpu/drm/i915/intel_uncore.c:1814:
+		0x11f000 - 0x11ffff: reserved */

-:224: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#224: FILE: drivers/gpu/drm/i915/intel_uncore.c:1817:
+	GEN_FW_RANGE(0x1c0000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c3dff: VD0

-:227: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#227: FILE: drivers/gpu/drm/i915/intel_uncore.c:1820:
+		0x1c4000 - 0x1c7fff: reserved */

-:229: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#229: FILE: drivers/gpu/drm/i915/intel_uncore.c:1822:
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0

-:230: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#230: FILE: drivers/gpu/drm/i915/intel_uncore.c:1823:
+		0x1ca100 - 0x1cbfff: reserved */

-:232: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#232: FILE: drivers/gpu/drm/i915/intel_uncore.c:1825:
+	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1cc000 - 0x1cdfff: VD0

-:233: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#233: FILE: drivers/gpu/drm/i915/intel_uncore.c:1826:
+		0x1ce000 - 0x1cffff: reserved */

-:235: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#235: FILE: drivers/gpu/drm/i915/intel_uncore.c:1828:
+	GEN_FW_RANGE(0x1d0000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d3dff: VD2

-:237: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#237: FILE: drivers/gpu/drm/i915/intel_uncore.c:1830:
+		0x1d4000 - 0x1d7fff: VD2 */

-:240: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#240: FILE: drivers/gpu/drm/i915/intel_uncore.c:1833:
+	GEN_FW_RANGE(0x1da100, 0x380aff, 0), /*
+		0x1da100 - 0x23ffff: reserved

-:242: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#242: FILE: drivers/gpu/drm/i915/intel_uncore.c:1835:
+		0x380000 - 0x380aff: reserved */

-:246: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#246: FILE: drivers/gpu/drm/i915/intel_uncore.c:1839:
+	GEN_FW_RANGE(0x381000, 0x38817f, FORCEWAKE_GT), /*
+		0x381000 - 0x381fff: gt

-:253: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#253: FILE: drivers/gpu/drm/i915/intel_uncore.c:1846:
+		0x388140 - 0x38817f: reserved */

-:255: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#255: FILE: drivers/gpu/drm/i915/intel_uncore.c:1848:
+	GEN_FW_RANGE(0x388180, 0x3882ff, 0), /*
+		0x388180 - 0x3881ff: always on

-:256: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#256: FILE: drivers/gpu/drm/i915/intel_uncore.c:1849:
+		0x388200 - 0x3882ff: reserved */

-:258: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#258: FILE: drivers/gpu/drm/i915/intel_uncore.c:1851:
+	GEN_FW_RANGE(0x388300, 0x38955f, FORCEWAKE_GT), /*
+		0x388300 - 0x38887f: gt

-:261: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#261: FILE: drivers/gpu/drm/i915/intel_uncore.c:1854:
+		0x389480 - 0x38955f: reserved */

-:263: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#263: FILE: drivers/gpu/drm/i915/intel_uncore.c:1856:
+	GEN_FW_RANGE(0x389560, 0x389fff, 0), /*
+		0x389560 - 0x3895ff: always on

-:264: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#264: FILE: drivers/gpu/drm/i915/intel_uncore.c:1857:
+		0x389600 - 0x389fff: reserved */

-:266: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#266: FILE: drivers/gpu/drm/i915/intel_uncore.c:1859:
+	GEN_FW_RANGE(0x38a000, 0x38cfff, FORCEWAKE_GT), /*
+		0x38a000 - 0x38afff: gt

-:268: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#268: FILE: drivers/gpu/drm/i915/intel_uncore.c:1861:
+		0x38c000 - 0x38cfff: gt */

-:271: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#271: FILE: drivers/gpu/drm/i915/intel_uncore.c:1864:
+	GEN_FW_RANGE(0x38d120, 0x391fff, FORCEWAKE_GT), /*
+		0x38d120 - 0x38dfff: gt

-:274: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#274: FILE: drivers/gpu/drm/i915/intel_uncore.c:1867:
+		0x389000 - 0x391fff: reserved */

-:276: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#276: FILE: drivers/gpu/drm/i915/intel_uncore.c:1869:
+	GEN_FW_RANGE(0x392000, 0x392fff, 0), /*
+		0x392000 - 0x3927ff: always on

-:277: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#277: FILE: drivers/gpu/drm/i915/intel_uncore.c:1870:
+		0x392800 - 0x292fff: reserved */

-:283: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#283: FILE: drivers/gpu/drm/i915/intel_uncore.c:1876:
+	GEN_FW_RANGE(0x393500, 0x393c7f, 0), /*
+		0x393500 - 0x393bff: reserved

-:284: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#284: FILE: drivers/gpu/drm/i915/intel_uncore.c:1877:
+		0x393c00 - 0x393c7f: always on */

total: 0 errors, 56 warnings, 0 checks, 364 lines checked


