Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873E86D1FBD
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 14:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE8410E080;
	Fri, 31 Mar 2023 12:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBD5D10F226;
 Fri, 31 Mar 2023 12:10:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E386AA0BA8;
 Fri, 31 Mar 2023 12:10:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 31 Mar 2023 12:10:46 -0000
Message-ID: <168026464692.14985.12117524828413474043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230331090949.2858951-1-jani.nikula@intel.com>
In-Reply-To: <20230331090949.2858951-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/wm=3A_split_out_SKL?=
 =?utf-8?q?+_watermark_regs_to_a_separate_file?=
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

Series: series starting with [1/2] drm/i915/wm: split out SKL+ watermark regs to a separate file
URL   : https://patchwork.freedesktop.org/series/115921/
State : warning

== Summary ==

Error: dim checkpatch failed
e5197a49e7e5 drm/i915/wm: split out SKL+ watermark regs to a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:43: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#43: 
new file mode 100644

-:63: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:16:
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)

-:65: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:18:
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:81:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:136: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#136: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:89:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#142: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:95:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#148: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:101:
+#define PLANE_WM_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#157: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:110:
+#define PLANE_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_BUF_CFG_1(pipe), _PLANE_BUF_CFG_2(pipe))

-:166: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#166: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:119:
+#define PLANE_NV12_BUF_CFG(pipe, plane)	\
+	_MMIO_PLANE(plane, _PLANE_NV12_BUF_CFG_1(pipe), _PLANE_NV12_BUF_CFG_2(pipe))

-:196: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/skl_watermark_regs.h:149:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 4 warnings, 6 checks, 373 lines checked
35fe8767c0b7 drm/i915/psr: split out PSR regs to a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:41: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#41: 
new file mode 100644

-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'trans' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:61:
+#define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
+						 0 : ((trans) - TRANSCODER_A + 1) * 8)

-:123: WARNING:LONG_LINE_COMMENT: line length of 111 exceeds 100 columns
#123: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:78:
+#define EDP_PSR_AUX_DATA(tran, i)		_MMIO_TRANS2(tran, _SRD_AUX_DATA_A + (i) + 4) /* 5 registers */

-:180: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:135:
+#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines)) << 13)

-:184: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#184: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:139:
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)

-:191: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#191: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:146:
+#define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)

-:243: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:198:
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)

-:246: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#246: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:201:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:248: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#248: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:203:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

-:253: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:208:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:255: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:210:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

-:279: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:234:
+#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, _SEL_FETCH_PLANE_BASE_1_B)

total: 0 errors, 11 warnings, 1 checks, 562 lines checked


