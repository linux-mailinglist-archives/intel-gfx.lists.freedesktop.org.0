Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90AE8A4EEA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E98810E36A;
	Mon, 15 Apr 2024 12:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65AE610E36A;
 Mon, 15 Apr 2024 12:23:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_i915=5Fr?=
 =?utf-8?q?eg=2Eh_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 12:23:24 -0000
Message-ID: <171318380441.1404431.362208830117722115@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712933479.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712933479.git.jani.nikula@intel.com>
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

Series: drm/i915: i915_reg.h cleanups
URL   : https://patchwork.freedesktop.org/series/132381/
State : warning

== Summary ==

Error: dim checkpatch failed
19e68395cec8 drm/i915/audio: move LPE audio regs to intel_audio_regs.h
dfbe99d107b3 drm/i915/color: move palette registers to intel_color_regs.h
abfc95490d07 drm/i915/display: split out intel_fbc_regs.h from i915_reg.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
new file mode 100644

-:91: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:64:
+#define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))

-:94: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:67:
+#define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))

-:98: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:71:
+#define   DPFC_CTL_PLANE_BINDING(plane_id)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (plane_id))

-:154: CHECK:LINE_SPACING: Please don't use multiple blank lines
#154: FILE: drivers/gpu/drm/i915/display/intel_fbc_regs.h:127:
+
+

total: 0 errors, 4 warnings, 1 checks, 340 lines checked
3a0f5dc85170 drm/i915/display: split out intel_sprite_regs.h from i915_reg.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

-:131: WARNING:LONG_LINE_COMMENT: line length of 108 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:99:
+#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */

-:132: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#132: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:100:
+#define DVSGAMC_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_ILK, _DVSBGAMC_ILK) + (i) * 4) /* 16 x u0.10 */

-:133: WARNING:LONG_LINE_COMMENT: line length of 112 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:101:
+#define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */

-:145: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:113:
+#define   SPRITE_FORMAT_XR_BGR101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 5) /* Extended range */

-:326: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#326: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:294:
+#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)

-:329: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#329: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:297:
+#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)

-:331: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#331: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:299:
+#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)

-:332: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#332: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:300:
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)

-:335: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#335: FILE: drivers/gpu/drm/i915/display/intel_sprite_regs.h:303:
+#define SPGAMC(pipe, plane_id, i)	_MMIO(_VLV_SPR((pipe), (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */

total: 0 errors, 10 warnings, 0 checks, 745 lines checked
08ff131d6a15 drm/i915/display: split out intel_dpio_regs.h from i915_reg.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 722 lines checked
566b3d7419f6 drm/i915/display: split out bxt_phy_regs.h from i915_reg.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:11: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#11: 
new file mode 100644

-:232: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'lane' - possible side-effects?
#232: FILE: drivers/gpu/drm/i915/display/bxt_phy_regs.h:217:
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
+					  ((lane) & 1) * 0x80)

total: 0 errors, 1 warnings, 1 checks, 637 lines checked


