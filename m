Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD36522C66
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 08:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E53A10E56C;
	Wed, 11 May 2022 06:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 352F310E56C;
 Wed, 11 May 2022 06:34:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B361A01BB;
 Wed, 11 May 2022 06:34:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 11 May 2022 06:34:24 -0000
Message-ID: <165225086414.2698.276870616954221548@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511060228.1179450-1-matthew.d.roper@intel.com>
In-Reply-To: <20220511060228.1179450-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Introduce_Ponte_Vecchio_=28rev4=29?=
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

Series: i915: Introduce Ponte Vecchio (rev4)
URL   : https://patchwork.freedesktop.org/series/103443/
State : warning

== Summary ==

Error: dim checkpatch failed
7241ce406773 drm/i915/uncore: Reorganize and document shadow and forcewake tables
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/intel_uncore.c:1106:
+#define __fwtable_reg_read_fw_domains(uncore, offset) \
+({ \
+	enum forcewake_domains __fwd = 0; \
+	if (NEEDS_FORCE_WAKE((offset))) \
+		__fwd = find_fw_domain(uncore, offset); \
+	__fwd; \
+})

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'uncore' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/intel_uncore.c:1114:
+#define __fwtable_reg_write_fw_domains(uncore, offset) \
+({ \
+	enum forcewake_domains __fwd = 0; \
+	const u32 __offset = (offset); \
+	if (NEEDS_FORCE_WAKE((__offset)) && !is_shadowed(uncore, __offset)) \
+		__fwd = find_fw_domain(uncore, __offset); \
+	__fwd; \
+})

-:147: CHECK:LINE_SPACING: Please don't use multiple blank lines
#147: FILE: drivers/gpu/drm/i915/intel_uncore.c:1170:
+
+

total: 0 errors, 0 warnings, 3 checks, 172 lines checked
bd51aa0085b0 drm/i915/pvc: Add forcewake support
-:80: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#80: FILE: drivers/gpu/drm/i915/intel_uncore.c:1576:
+	GEN_FW_RANGE(0x4000, 0x813f, FORCEWAKE_GT), /*
+		0x4000 - 0x4aff: gt

-:86: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#86: FILE: drivers/gpu/drm/i915/intel_uncore.c:1582:
+		0x8000 - 0x813f: gt */

-:90: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#90: FILE: drivers/gpu/drm/i915/intel_uncore.c:1586:
+	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
+		0x8200 - 0x82ff: gt

-:97: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#97: FILE: drivers/gpu/drm/i915/intel_uncore.c:1593:
+		0x9480 - 0x94cf: reserved */

-:100: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#100: FILE: drivers/gpu/drm/i915/intel_uncore.c:1596:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on

-:101: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#101: FILE: drivers/gpu/drm/i915/intel_uncore.c:1597:
+		0x9600 - 0x967f: reserved */

-:103: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#103: FILE: drivers/gpu/drm/i915/intel_uncore.c:1599:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render

-:104: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#104: FILE: drivers/gpu/drm/i915/intel_uncore.c:1600:
+		0x9700 - 0x97ff: reserved */

-:106: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#106: FILE: drivers/gpu/drm/i915/intel_uncore.c:1602:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:108: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#108: FILE: drivers/gpu/drm/i915/intel_uncore.c:1604:
+		0xc000 - 0xcfff: gt */

-:113: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#113: FILE: drivers/gpu/drm/i915/intel_uncore.c:1609:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:114: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#114: FILE: drivers/gpu/drm/i915/intel_uncore.c:1610:
+		0xde00 - 0xde7f: reserved */

-:116: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#116: FILE: drivers/gpu/drm/i915/intel_uncore.c:1612:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdeff: render

-:119: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#119: FILE: drivers/gpu/drm/i915/intel_uncore.c:1615:
+		0xe800 - 0xe8ff: reserved */

-:121: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#121: FILE: drivers/gpu/drm/i915/intel_uncore.c:1617:
+	GEN_FW_RANGE(0xe900, 0x11fff, FORCEWAKE_GT), /*
+		 0xe900 -  0xe9ff: gt

-:124: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#124: FILE: drivers/gpu/drm/i915/intel_uncore.c:1620:
+		0x10000 - 0x11fff: reserved */

-:126: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#126: FILE: drivers/gpu/drm/i915/intel_uncore.c:1622:
+	GEN_FW_RANGE(0x12000, 0x12fff, 0), /*
+		0x12000 - 0x127ff: always on

-:127: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#127: FILE: drivers/gpu/drm/i915/intel_uncore.c:1623:
+		0x12800 - 0x12fff: reserved */

-:129: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#129: FILE: drivers/gpu/drm/i915/intel_uncore.c:1625:
+	GEN_FW_RANGE(0x13000, 0x23fff, FORCEWAKE_GT), /*
+		0x13000 - 0x135ff: gt

-:135: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#135: FILE: drivers/gpu/drm/i915/intel_uncore.c:1631:
+		0x22000 - 0x23fff: gt */

-:137: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#137: FILE: drivers/gpu/drm/i915/intel_uncore.c:1633:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		24000 - 0x2407f: always on

-:138: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#138: FILE: drivers/gpu/drm/i915/intel_uncore.c:1634:
+		24080 - 0x2417f: reserved */

-:140: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#140: FILE: drivers/gpu/drm/i915/intel_uncore.c:1636:
+	GEN_FW_RANGE(0x24180, 0x3ffff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:146: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#146: FILE: drivers/gpu/drm/i915/intel_uncore.c:1642:
+		0x30000 - 0x3ffff: gt */

-:149: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#149: FILE: drivers/gpu/drm/i915/intel_uncore.c:1645:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:153: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#153: FILE: drivers/gpu/drm/i915/intel_uncore.c:1649:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:155: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#155: FILE: drivers/gpu/drm/i915/intel_uncore.c:1651:
+	GEN_FW_RANGE(0x1c4000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6aff: VD1

-:158: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#158: FILE: drivers/gpu/drm/i915/intel_uncore.c:1654:
+		0x1c8000 - 0x1cffff: reserved */

-:160: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#160: FILE: drivers/gpu/drm/i915/intel_uncore.c:1656:
+	GEN_FW_RANGE(0x1d0000, 0x23ffff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2aff: VD2

-:163: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#163: FILE: drivers/gpu/drm/i915/intel_uncore.c:1659:
+		0x1d4000 - 0x23ffff: reserved */

total: 0 errors, 30 warnings, 0 checks, 174 lines checked
54fe97a1c27b drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
-:77: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#77: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:295:
+#define PIPE_CONTROL_3D_ENGINE_FLAGS (\
 		PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH | \
 		PIPE_CONTROL_DEPTH_CACHE_FLUSH | \
 		PIPE_CONTROL_TILE_CACHE_FLUSH | \

total: 1 errors, 0 warnings, 0 checks, 148 lines checked
4740d049abe7 drm/i915/pvc: Add new BCS engines to GuC engine list
-:6: WARNING:TYPO_SPELLING: 'Intialize' may be misspelled - perhaps 'Initialize'?
#6: 
Intialize ADS system info to reflect the availablity of new BCS engines
^^^^^^^^^

-:6: WARNING:TYPO_SPELLING: 'availablity' may be misspelled - perhaps 'availability'?
#6: 
Intialize ADS system info to reflect the availablity of new BCS engines
                                         ^^^^^^^^^^^

total: 0 errors, 2 warnings, 0 checks, 16 lines checked
ccc5768d8c39 drm/i915/guc: XEHPSDV and PVC do not use HuC


