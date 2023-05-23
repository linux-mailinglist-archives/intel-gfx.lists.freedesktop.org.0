Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3769E70DA7E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82AD10E426;
	Tue, 23 May 2023 10:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6486610E423;
 Tue, 23 May 2023 10:28:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D33BAA3D8;
 Tue, 23 May 2023 10:28:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 23 May 2023 10:28:10 -0000
Message-ID: <168483769037.14422.13119117512589886392@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1684327004.git.jani.nikula@intel.com>
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/color=3A_register_=26_get_config_abstractions_=28r?=
 =?utf-8?q?ev2=29?=
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

Series: drm/i915/color: register & get config abstractions (rev2)
URL   : https://patchwork.freedesktop.org/series/117875/
State : warning

== Summary ==

Error: dim checkpatch failed
930bc469b869 drm/i915/regs: split out intel_color_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

-:76: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:36:
+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */

-:88: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:48:
+#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */

-:89: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:49:
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */

-:127: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#127: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:87:
+#define PIPE_CSC_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)

-:129: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:89:
+#define PIPE_CSC_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)

-:131: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:91:
+#define PIPE_CSC_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)

-:134: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#134: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:94:
+#define PIPE_CSC_PREOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_HI, _PIPE_B_CSC_PREOFF_HI)

-:135: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:95:
+#define PIPE_CSC_PREOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_ME, _PIPE_B_CSC_PREOFF_ME)

-:136: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#136: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:96:
+#define PIPE_CSC_PREOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_LO, _PIPE_B_CSC_PREOFF_LO)

-:137: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#137: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:97:
+#define PIPE_CSC_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_HI, _PIPE_B_CSC_POSTOFF_HI)

-:138: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:98:
+#define PIPE_CSC_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_ME, _PIPE_B_CSC_POSTOFF_ME)

-:139: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:99:
+#define PIPE_CSC_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_LO, _PIPE_B_CSC_POSTOFF_LO)

-:229: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#229: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:189:
+#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */

-:230: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#230: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:190:
+#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */

-:231: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:191:
+#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */

-:243: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:203:
+#define PRE_CSC_GAMC_INDEX(pipe)	_MMIO_PIPE(pipe, _PRE_CSC_GAMC_INDEX_A, _PRE_CSC_GAMC_INDEX_B)

-:251: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#251: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:211:
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))

-:296: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#296: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:256:
+#define CGM_PIPE_CSC_COEFF01(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF01, _CGM_PIPE_B_CSC_COEFF01)

-:297: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#297: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:257:
+#define CGM_PIPE_CSC_COEFF23(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF23, _CGM_PIPE_B_CSC_COEFF23)

-:298: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#298: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:258:
+#define CGM_PIPE_CSC_COEFF45(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF45, _CGM_PIPE_B_CSC_COEFF45)

-:299: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#299: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:259:
+#define CGM_PIPE_CSC_COEFF67(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF67, _CGM_PIPE_B_CSC_COEFF67)

-:300: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:260:
+#define CGM_PIPE_CSC_COEFF8(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF8, _CGM_PIPE_B_CSC_COEFF8)

-:301: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#301: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:261:
+#define CGM_PIPE_DEGAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)

-:302: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#302: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:262:
+#define CGM_PIPE_GAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_GAMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)

total: 0 errors, 25 warnings, 0 checks, 591 lines checked
f587c9a40276 drm/i915/color: move CHV CGM pipe mode read to intel_color
ba9561648572 drm/i915: move HSW+ gamma mode read to intel_color
5be0f4b4cf8d drm/i915: move ILK+ CSC mode read to intel_color
d53fc4dcd17c drm/i915/color: move SKL+ gamma and CSC enable read to intel_color
748c7aec78b5 drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color


