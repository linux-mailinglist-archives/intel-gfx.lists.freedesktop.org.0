Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D297B97243F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 23:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE7910E03A;
	Mon,  9 Sep 2024 21:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A1810E03A;
 Mon,  9 Sep 2024 21:10:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_split_ou?=
 =?utf-8?q?t_display_regs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 21:10:48 -0000
Message-ID: <172591624809.978260.8238030874511218593@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1725908151.git.jani.nikula@intel.com>
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
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

Series: drm/i915: split out display regs
URL   : https://patchwork.freedesktop.org/series/138427/
State : warning

== Summary ==

Error: dim checkpatch failed
2c792972d20f drm/i915/reg: fix transcoder timing register style
d8ce6ad341a2 drm/i915/reg: fix g4x pipe data/link m/n register style
c236a3756f9a drm/i915/reg: fix pipe conf, stat etc. register style
2122d4575496 drm/i915/reg: fix pipe data/link m/n register style
c99231c1e500 drm/i915/reg: fix SKL scaler register style
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_reg.h:2238:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_reg.h:2293:
+#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
+			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_reg.h:2313:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/i915_reg.h:2326:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:64: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#64: FILE: drivers/gpu/drm/i915/i915_reg.h:2339:
+#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
+			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/i915_reg.h:2348:
+#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
+			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/i915_reg.h:2357:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#92: FILE: drivers/gpu/drm/i915/i915_reg.h:2372:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:101: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#101: FILE: drivers/gpu/drm/i915/i915_reg.h:2381:
+#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
+			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#109: FILE: drivers/gpu/drm/i915/i915_reg.h:2389:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#109: FILE: drivers/gpu/drm/i915/i915_reg.h:2389:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

total: 0 errors, 0 warnings, 11 checks, 134 lines checked
6b81898dcbb6 drm/i915/reg: fix PCH transcoder timing and data/link m/n style
-:56: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/i915_reg.h:3200:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

total: 0 errors, 1 warnings, 0 checks, 116 lines checked
c543013f5746 drm/i915/reg: fix DIP CTL register style
-:64: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/i915_reg.h:3278:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:68: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:3282:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:72: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/i915_reg.h:3286:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:76: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/i915_reg.h:3290:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:80: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/i915_reg.h:3294:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:84: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/i915_reg.h:3298:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:94: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/i915_reg.h:3308:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:109: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/i915_reg.h:3323:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:117: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/i915_reg.h:3333:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

total: 0 errors, 9 warnings, 0 checks, 128 lines checked
0f7d5de1b967 drm/i915/reg: fix small register style issues here and there
3a3679ef5f93 drm/i915/reg: remove unused DSI register macros
e1ecdbd2ef7c drm/i915/reg: remove superfluous whitespace
55c9153c989e drm/i915: split out display regs from i915_reg.h
-:344: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#344: 
new file mode 100644

-:486: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#486: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:138:
+#define   PHY_STATUS_SPLINE_LDO(phy, ch, spline)        (1 << (8 - (6 * (phy) + 3 * (ch) + (spline))))

-:804: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#804: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:456:
+ * The same register may be used for SDVO or HDMI */

-:885: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#885: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:537:
+ * of the infoframe structure specified by CEA-861. */

-:1103: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1103: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:755:
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:1110: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#1110: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:762:
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:1111: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#1111: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:763:
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:1112: WARNING:LONG_LINE_COMMENT: line length of 130 exceeds 100 columns
#1112: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:764:
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:1115: WARNING:LONG_LINE_COMMENT: line length of 115 exceeds 100 columns
#1115: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:767:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */

-:1116: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1116: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:768:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */

-:1118: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1118: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:770:
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */

-:1128: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1128: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:780:
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:1129: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1129: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:781:
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:1138: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1138: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:790:
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:1139: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1139: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:791:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:1140: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1140: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:792:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

-:1192: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1192: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:844:
+#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)

-:1579: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1579: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1231:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:1606: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1606: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1258:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:1607: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#1607: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1259:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

-:1634: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1634: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1286:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:1647: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1647: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1299:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:1660: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1660: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1312:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:1675: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1675: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1327:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:1683: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1683: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1335:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1683: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1683: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1335:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1692: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1692: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1344:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1692: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1692: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1344:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1755: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane_id' - possible side-effects?
#1755: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1407:
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */

-:2237: WARNING:MACRO_ARG_UNUSED: Argument 'pipe' is not used in function-like macro
#2237: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1889:
+#define	 TRANS_DPLLA_SEL(pipe)		0

-:2278: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2278: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1930:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

-:2356: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2356: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2008:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:2360: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2360: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2012:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:2364: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#2364: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2016:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:2368: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2368: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2020:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:2372: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2372: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2024:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:2376: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2376: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2028:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:2386: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2386: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2038:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:2390: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2390: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2042:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:2394: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2394: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2046:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

-:2403: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#2403: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2055:
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */

-:2441: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2441: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2093:
+#define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)

-:2450: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#2450: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2102:
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)

-:2452: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2452: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2104:
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))

-:2458: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2458: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2110:
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)

-:2639: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2639: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2291:
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))

-:2676: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2676: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2328:
+#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))

-:2749: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2749: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2401:
+#define DDI_BUF_TRANS_LO(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8)

-:2751: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2751: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2403:
+#define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)

-:2756: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2756: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2408:
+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)

-:2769: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#2769: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2421:
+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)

-:2882: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2882: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2534:
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)

-:3007: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#3007: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2659:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
+						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

-:3011: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#3011: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2663:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3012: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#3012: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2664:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3034: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#3034: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2686:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3035: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3035: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2687:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3155: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#3155: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2807:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:3157: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#3157: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2809:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

-:3268: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#3268: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2920:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

-:3319: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#3319: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2971:
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)

-:3323: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3323: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2975:
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)

-:3328: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3328: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2980:
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8 + 4)

-:3332: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3332: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2984:
+
+

total: 0 errors, 51 warnings, 13 checks, 6912 lines checked


