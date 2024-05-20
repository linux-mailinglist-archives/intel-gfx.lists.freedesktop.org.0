Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B70C8CA1CB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB35310E82F;
	Mon, 20 May 2024 18:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C788710E4F9;
 Mon, 20 May 2024 18:08:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Plane_re?=
 =?utf-8?q?gister_cleanups_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 18:08:06 -0000
Message-ID: <171622848676.2157358.4003410467632423958@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Plane register cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/133701/
State : warning

== Summary ==

Error: dim checkpatch failed
9638afbf50ae drm/i915: Add skl+ plane name aliases to enum plane_id
4d3ce0118a4b drm/i915: Clean up the cursor register defines
49ffeb900e72 drm/i915: Add separate define for SEL_FETCH_CUR_CTL()
e5eefbbe6b08 drm/i915: Simplify PIPESRC_ERLY_TPT definition
-:55: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:256:
+#define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
49bf1f81d37a drm/i915: Rename selective fetch plane registers
26034ecefc36 drm/i915: Define SEL_FETCH_PLANE registers via PICK_EVEN_2RANGES()
-:90: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:20:
+#define _SEL_FETCH(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b, reg_5_a, reg_5_b, reg_6_a, reg_6_b) \

-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:20:
+#define _SEL_FETCH(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b, reg_5_a, reg_5_b, reg_6_a, reg_6_b) \
+	_PICK_EVEN_2RANGES((plane), PLANE_5, \
+			   _PIPE((pipe), (reg_1_a), (reg_1_b)), \
+			   _PIPE((pipe), (reg_2_a), (reg_2_b)), \
+			   _PIPE((pipe), (reg_5_a), (reg_5_b)), \
+			   _PIPE((pipe), (reg_6_a), (reg_6_b)))

-:96: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:26:
+#define _MMIO_SEL_FETCH(pipe, plane, reg_1_a, reg_1_b, reg_2_a, reg_2_b, reg_5_a, reg_5_b, reg_6_a, reg_6_b) \

-:117: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:390:
+								_SEL_FETCH_PLANE_CTL_1_A, _SEL_FETCH_PLANE_CTL_1_B, \

-:118: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:391:
+								_SEL_FETCH_PLANE_CTL_2_A, _SEL_FETCH_PLANE_CTL_2_B, \

-:119: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:392:
+								_SEL_FETCH_PLANE_CTL_5_A, _SEL_FETCH_PLANE_CTL_5_B, \

-:120: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#120: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:393:
+								_SEL_FETCH_PLANE_CTL_6_A, _SEL_FETCH_PLANE_CTL_6_B)

-:132: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#132: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:405:
+								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \

-:133: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:406:
+								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \

-:134: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:407:
+								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \

-:135: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:408:
+								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)

-:146: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#146: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:419:
+								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \

-:147: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#147: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:420:
+								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \

-:148: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#148: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:421:
+								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \

-:149: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:422:
+								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)

-:160: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:433:
+								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \

-:161: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:434:
+								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \

-:162: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:435:
+								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \

-:163: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#163: FILE: drivers/gpu/drm/i915/display/skl_universal_plane_regs.h:436:
+								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)

total: 0 errors, 18 warnings, 1 checks, 129 lines checked
17d28d1fa42d drm/i915: Add separate defines for cursor WM/DDB register bits
-:63: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:597:
+				  skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));

total: 0 errors, 1 warnings, 0 checks, 107 lines checked
2b8ba2490bb1 drm/i915: Move PIPEGCMAX to intel_color_regs.h
c2318fee4bb2 drm/i915: Extract i9xx_plane_regs.h
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:110: WARNING:LONG_LINE_COMMENT: line length of 116 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/i9xx_plane_regs.h:76:
+#define DSPGAMC(plane, i)	_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */

total: 0 errors, 2 warnings, 0 checks, 278 lines checked
b2963797f811 drm/i915: Polish pre-skl primary plane registers
-:90: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/display/i9xx_plane_regs.h:87:
+#define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
033d0ca297b6 drm/i915: Document a few pre-skl primary plane platform dependencies
f62f6b19525f drm/i915: Polish sprite plane register definitions
-:88: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:89:
+#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */

-:304: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#304: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:287:
+#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)

-:317: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#317: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:300:
+#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)

-:329: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#329: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:312:
+#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)

-:336: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#336: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:319:
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)

total: 0 errors, 5 warnings, 0 checks, 369 lines checked
5471bc08a773 drm/i915: Document which platforms use which sprite registers


