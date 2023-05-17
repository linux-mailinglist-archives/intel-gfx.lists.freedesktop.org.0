Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6D7706C11
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 17:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6EBA10E442;
	Wed, 17 May 2023 15:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8377E10E442;
 Wed, 17 May 2023 15:04:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B6B1AADD2;
 Wed, 17 May 2023 15:04:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 17 May 2023 15:04:38 -0000
Message-ID: <168433587850.6590.9798409544930618193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1684327004.git.jani.nikula@intel.com>
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/color=3A_register_=26_get_config_abstractions?=
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

Series: drm/i915/color: register & get config abstractions
URL   : https://patchwork.freedesktop.org/series/117875/
State : warning

== Summary ==

Error: dim checkpatch failed
88392f9a0c53 drm/i915/regs: split out intel_color_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:75: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:36:
+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */

-:87: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:48:
+#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */

-:88: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:49:
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */

-:126: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:87:
+#define PIPE_CSC_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)

-:128: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:89:
+#define PIPE_CSC_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)

-:130: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:91:
+#define PIPE_CSC_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)

-:133: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#133: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:94:
+#define PIPE_CSC_PREOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_HI, _PIPE_B_CSC_PREOFF_HI)

-:134: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:95:
+#define PIPE_CSC_PREOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_ME, _PIPE_B_CSC_PREOFF_ME)

-:135: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:96:
+#define PIPE_CSC_PREOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_LO, _PIPE_B_CSC_PREOFF_LO)

-:136: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:97:
+#define PIPE_CSC_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_HI, _PIPE_B_CSC_POSTOFF_HI)

-:137: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#137: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:98:
+#define PIPE_CSC_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_ME, _PIPE_B_CSC_POSTOFF_ME)

-:138: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:99:
+#define PIPE_CSC_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_LO, _PIPE_B_CSC_POSTOFF_LO)

-:228: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#228: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:189:
+#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */

-:229: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#229: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:190:
+#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */

-:230: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#230: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:191:
+#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */

-:242: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#242: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:203:
+#define PRE_CSC_GAMC_INDEX(pipe)	_MMIO_PIPE(pipe, _PRE_CSC_GAMC_INDEX_A, _PRE_CSC_GAMC_INDEX_B)

-:250: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#250: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:211:
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))

-:295: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#295: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:256:
+#define CGM_PIPE_CSC_COEFF01(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF01, _CGM_PIPE_B_CSC_COEFF01)

-:296: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#296: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:257:
+#define CGM_PIPE_CSC_COEFF23(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF23, _CGM_PIPE_B_CSC_COEFF23)

-:297: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#297: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:258:
+#define CGM_PIPE_CSC_COEFF45(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF45, _CGM_PIPE_B_CSC_COEFF45)

-:298: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#298: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:259:
+#define CGM_PIPE_CSC_COEFF67(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF67, _CGM_PIPE_B_CSC_COEFF67)

-:299: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#299: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:260:
+#define CGM_PIPE_CSC_COEFF8(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF8, _CGM_PIPE_B_CSC_COEFF8)

-:300: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:261:
+#define CGM_PIPE_DEGAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)

-:301: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#301: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:262:
+#define CGM_PIPE_GAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_GAMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)

total: 0 errors, 25 warnings, 0 checks, 591 lines checked
75886f52437f drm/i915/color: move CHV CGM pipe mode read to intel_color
f39691d89712 drm/i915: move HSW+ gamma mode read to intel_color
08e78de74e8d drm/i915: move ILK+ CSC mode read to intel_color
6cc47d52f6da drm/i915/color: move SKL+ gamma and CSC enable read to intel_color
6842dab3c552 drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color


