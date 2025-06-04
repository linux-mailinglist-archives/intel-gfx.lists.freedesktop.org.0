Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFA1ACDD5F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 14:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5811B10E0A9;
	Wed,  4 Jun 2025 12:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2371910E0A9;
 Wed,  4 Jun 2025 12:00:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_split_ou?=
 =?utf-8?q?t_display_register_macros_to_a_separate_file?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Jun 2025 12:00:48 -0000
Message-ID: <174903844813.48110.2041899311606531279@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250604110225.993638-1-jani.nikula@intel.com>
In-Reply-To: <20250604110225.993638-1-jani.nikula@intel.com>
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

Series: drm/i915: split out display register macros to a separate file
URL   : https://patchwork.freedesktop.org/series/149830/
State : warning

== Summary ==

Error: dim checkpatch failed
057b7dcebbea drm/i915: split out display register macros to a separate file
-:339: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#339: 
new file mode 100644

-:523: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#523: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:180:
+#define   PHY_STATUS_SPLINE_LDO(phy, ch, spline)        (1 << (8 - (6 * (phy) + 3 * (ch) + (spline))))

-:842: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#842: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:499:
+ * The same register may be used for SDVO or HDMI */

-:923: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#923: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:580:
+ * of the infoframe structure specified by CEA-861. */

-:1080: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1080: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:737:
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:1087: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#1087: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:744:
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:1088: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#1088: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:745:
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:1089: WARNING:LONG_LINE_COMMENT: line length of 130 exceeds 100 columns
#1089: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:746:
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:1092: WARNING:LONG_LINE_COMMENT: line length of 115 exceeds 100 columns
#1092: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:749:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */

-:1093: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1093: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:750:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */

-:1095: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1095: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:752:
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */

-:1105: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1105: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:762:
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:1106: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1106: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:763:
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:1115: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1115: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:772:
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:1116: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1116: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:773:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:1117: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1117: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:774:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

-:1226: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#1226: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:883:
+#define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))

-:1392: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1392: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1049:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:1419: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1419: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1076:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:1420: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#1420: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1077:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

-:1447: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1447: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1104:
+#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
+			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))

-:1467: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1467: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1124:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:1480: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1480: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1137:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:1493: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1493: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1150:
+#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
+			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))

-:1502: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1502: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1159:
+#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
+			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))

-:1511: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1511: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1168:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:1526: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1526: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1183:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:1535: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1535: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1192:
+#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
+			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))

-:1543: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1543: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1200:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1543: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1543: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1200:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1552: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1552: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1209:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1552: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1552: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1209:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1615: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane_id' - possible side-effects?
#1615: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1272:
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */

-:1621: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#1621: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1278:
+#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
+						      GEN8_DE_PIPE_IER(pipe), \
+						      GEN8_DE_PIPE_IIR(pipe))

-:1812: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1812: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1469:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:1812: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'trans' - possible side-effects?
#1812: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1469:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:2153: WARNING:MACRO_ARG_UNUSED: Argument 'pipe' is not used in function-like macro
#2153: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1810:
+#define	 TRANS_DPLLA_SEL(pipe)		0

-:2195: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2195: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1852:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

-:2273: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2273: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1930:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:2277: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2277: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1934:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:2281: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#2281: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1938:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:2285: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2285: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1942:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:2289: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2289: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1946:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:2293: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2293: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1950:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:2303: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2303: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1960:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:2318: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2318: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1975:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:2322: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2322: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1979:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

-:2326: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#2326: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1983:
+#define ICL_VIDEO_DIP_PPS_ECC(dev_priv, trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)

-:2340: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#2340: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1997:
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */

-:2378: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2378: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2035:
+#define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)

-:2387: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#2387: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2044:
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)

-:2389: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2389: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2046:
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))

-:2395: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2395: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2052:
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)

-:2399: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2399: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2056:
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)

-:2587: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2587: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2244:
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))

-:2626: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2626: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2283:
+#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))

-:2668: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#2668: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2325:
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */

-:2698: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#2698: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2355:
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       ((width) == 3 ? 4 : (width) - 1))

-:2706: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2706: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2363:
+#define DDI_BUF_TRANS_LO(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8)

-:2708: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2708: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2365:
+#define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)

-:2713: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2713: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2370:
+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)

-:2726: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#2726: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2383:
+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)

-:2839: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2839: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2496:
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)

-:2967: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#2967: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2624:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
+						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

-:2971: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2971: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2628:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2972: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2972: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2629:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2994: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#2994: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2651:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2995: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#2995: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2652:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3117: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#3117: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2774:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:3119: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#3119: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2776:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

-:3239: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#3239: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2896:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

-:3282: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#3282: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2939:
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)

-:3287: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#3287: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2944:
+#define MTL_PIPE_CLKGATE_DIS2(pipe)		_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)

-:3291: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3291: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2948:
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)

-:3296: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3296: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2953:
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8 + 4)

-:3300: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3300: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2957:
+
+

total: 0 errors, 56 warnings, 20 checks, 6712 lines checked


