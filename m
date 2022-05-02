Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE28C517539
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 18:58:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60AE10E1E2;
	Mon,  2 May 2022 16:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DFC110E1E2;
 Mon,  2 May 2022 16:58:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9ABE6A363D;
 Mon,  2 May 2022 16:58:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 02 May 2022 16:58:40 -0000
Message-ID: <165151072062.28136.186722401684195243@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
In-Reply-To: <20220502163417.2635462-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Introduce_Ponte_Vecchio?=
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

Series: i915: Introduce Ponte Vecchio
URL   : https://patchwork.freedesktop.org/series/103443/
State : warning

== Summary ==

Error: dim checkpatch failed
f0fb02e3d246 drm/i915/pvc: add initial Ponte Vecchio definitions
9db154eb1285 drm/i915/pvc: Add forcewake support
-:83: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#83: FILE: drivers/gpu/drm/i915/intel_uncore.c:1549:
+	GEN_FW_RANGE(0x4000, 0x813f, FORCEWAKE_GT), /*
+		0x4000 - 0x4aff: gt

-:89: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#89: FILE: drivers/gpu/drm/i915/intel_uncore.c:1555:
+		0x8000 - 0x813f: gt */

-:93: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#93: FILE: drivers/gpu/drm/i915/intel_uncore.c:1559:
+	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
+		0x8200 - 0x82ff: gt

-:100: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#100: FILE: drivers/gpu/drm/i915/intel_uncore.c:1566:
+		0x9480 - 0x94cf: reserved */

-:103: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#103: FILE: drivers/gpu/drm/i915/intel_uncore.c:1569:
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on

-:104: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#104: FILE: drivers/gpu/drm/i915/intel_uncore.c:1570:
+		0x9600 - 0x967f: reserved */

-:106: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#106: FILE: drivers/gpu/drm/i915/intel_uncore.c:1572:
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render

-:107: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#107: FILE: drivers/gpu/drm/i915/intel_uncore.c:1573:
+		0x9700 - 0x97ff: reserved */

-:109: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#109: FILE: drivers/gpu/drm/i915/intel_uncore.c:1575:
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt

-:111: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#111: FILE: drivers/gpu/drm/i915/intel_uncore.c:1577:
+		0xc000 - 0xcfff: gt */

-:116: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#116: FILE: drivers/gpu/drm/i915/intel_uncore.c:1582:
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt

-:117: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#117: FILE: drivers/gpu/drm/i915/intel_uncore.c:1583:
+		0xde00 - 0xde7f: reserved */

-:119: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#119: FILE: drivers/gpu/drm/i915/intel_uncore.c:1585:
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdeff: render

-:122: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#122: FILE: drivers/gpu/drm/i915/intel_uncore.c:1588:
+		0xe800 - 0xe8ff: reserved */

-:124: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#124: FILE: drivers/gpu/drm/i915/intel_uncore.c:1590:
+	GEN_FW_RANGE(0xe900, 0x11fff, FORCEWAKE_GT), /*
+		 0xe900 -  0xe9ff: gt

-:127: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#127: FILE: drivers/gpu/drm/i915/intel_uncore.c:1593:
+		0x10000 - 0x11fff: reserved */

-:129: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#129: FILE: drivers/gpu/drm/i915/intel_uncore.c:1595:
+	GEN_FW_RANGE(0x12000, 0x12fff, 0), /*
+		0x12000 - 0x127ff: always on

-:130: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#130: FILE: drivers/gpu/drm/i915/intel_uncore.c:1596:
+		0x12800 - 0x12fff: reserved */

-:132: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#132: FILE: drivers/gpu/drm/i915/intel_uncore.c:1598:
+	GEN_FW_RANGE(0x13000, 0x23fff, FORCEWAKE_GT), /*
+		0x13000 - 0x135ff: gt

-:138: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#138: FILE: drivers/gpu/drm/i915/intel_uncore.c:1604:
+		0x22000 - 0x23fff: gt */

-:140: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#140: FILE: drivers/gpu/drm/i915/intel_uncore.c:1606:
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		24000 - 0x2407f: always on

-:141: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#141: FILE: drivers/gpu/drm/i915/intel_uncore.c:1607:
+		24080 - 0x2417f: reserved */

-:143: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#143: FILE: drivers/gpu/drm/i915/intel_uncore.c:1609:
+	GEN_FW_RANGE(0x24180, 0x3ffff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt

-:149: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#149: FILE: drivers/gpu/drm/i915/intel_uncore.c:1615:
+		0x30000 - 0x3ffff: gt */

-:152: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#152: FILE: drivers/gpu/drm/i915/intel_uncore.c:1618:
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0

-:156: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#156: FILE: drivers/gpu/drm/i915/intel_uncore.c:1622:
+		0x1c3f00 - 0x1c3fff: VD0 */

-:158: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#158: FILE: drivers/gpu/drm/i915/intel_uncore.c:1624:
+	GEN_FW_RANGE(0x1c4000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6aff: VD1

-:161: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#161: FILE: drivers/gpu/drm/i915/intel_uncore.c:1627:
+		0x1c8000 - 0x1cffff: reserved */

-:163: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#163: FILE: drivers/gpu/drm/i915/intel_uncore.c:1629:
+	GEN_FW_RANGE(0x1d0000, 0x23ffff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2aff: VD2

-:166: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#166: FILE: drivers/gpu/drm/i915/intel_uncore.c:1632:
+		0x1d4000 - 0x23ffff: reserved */

total: 0 errors, 30 warnings, 0 checks, 182 lines checked
6aaa5eae770e drm/i915/pvc: Define MOCS table for PVC
4f8badfb9a00 drm/i915/pvc: Read correct RP_STATE_CAP register
1df054006168 drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
-:69: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#69: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:292:
+#define PIPE_CONTROL_3D_ENGINE_FLAGS (\
 		PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH | \
 		PIPE_CONTROL_DEPTH_CACHE_FLUSH | \
 		PIPE_CONTROL_TILE_CACHE_FLUSH | \

total: 1 errors, 0 warnings, 0 checks, 86 lines checked
6d214ea49092 drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter engine
b685122d0794 drm/i915/pvc: Engines definitions for new copy engines
befeda8a35c8 drm/i915/pvc: Interrupt support for new copy engines
0728ae69f00a drm/i915/pvc: Reset support for new copy engines
c15cacc3d911 drm/i915/pvc: skip all copy engines from aux table invalidate
3eca5fba5260 drm/i915/pvc: read fuses for link copy engines


