Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4548BA2C856
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 17:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC1210EB68;
	Fri,  7 Feb 2025 16:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126FA10EB68;
 Fri,  7 Feb 2025 16:12:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_i915=5Fr?=
 =?utf-8?q?eg=2Eh_display_split?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Feb 2025 16:12:34 -0000
Message-ID: <173894475406.2707550.6498822234340796959@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1738935286.git.jani.nikula@intel.com>
In-Reply-To: <cover.1738935286.git.jani.nikula@intel.com>
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

Series: drm/i915: i915_reg.h display split
URL   : https://patchwork.freedesktop.org/series/144505/
State : warning

== Summary ==

Error: dim checkpatch failed
dc241ad94e8c drm/i915/reg: use REG_BIT and friends to define DP registers
adfada3efcca drm/i915/reg: Remove some extra blank lines
01ac518767ad drm/i915: split out display register macros to a separate file
-:332: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#332: 
new file mode 100644

-:476: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#476: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:140:
+#define   PHY_STATUS_SPLINE_LDO(phy, ch, spline)        (1 << (8 - (6 * (phy) + 3 * (ch) + (spline))))

-:774: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#774: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:438:
+ * The same register may be used for SDVO or HDMI */

-:855: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#855: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:519:
+ * of the infoframe structure specified by CEA-861. */

-:1044: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1044: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:708:
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:1051: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#1051: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:715:
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:1052: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#1052: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:716:
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:1053: WARNING:LONG_LINE_COMMENT: line length of 130 exceeds 100 columns
#1053: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:717:
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:1056: WARNING:LONG_LINE_COMMENT: line length of 115 exceeds 100 columns
#1056: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:720:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */

-:1057: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1057: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:721:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */

-:1059: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1059: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:723:
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */

-:1069: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1069: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:733:
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:1070: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1070: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:734:
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:1079: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1079: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:743:
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:1080: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1080: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:744:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:1081: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1081: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:745:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

-:1323: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1323: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:987:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:1350: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1350: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1014:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:1351: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#1351: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1015:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

-:1378: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1378: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1042:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:1391: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1391: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1055:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:1404: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1404: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1068:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:1419: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1419: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1083:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:1427: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1427: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1091:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1427: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1427: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1091:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1436: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1436: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1100:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1436: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1436: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1100:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1497: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane_id' - possible side-effects?
#1497: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1161:
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */

-:1503: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#1503: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1167:
+#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
+						      GEN8_DE_PIPE_IER(pipe), \
+						      GEN8_DE_PIPE_IIR(pipe))

-:1680: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1680: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1344:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:1680: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'trans' - possible side-effects?
#1680: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1344:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:2006: WARNING:MACRO_ARG_UNUSED: Argument 'pipe' is not used in function-like macro
#2006: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1670:
+#define	 TRANS_DPLLA_SEL(pipe)		0

-:2048: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2048: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1712:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

-:2126: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2126: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1790:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:2130: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2130: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1794:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:2134: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#2134: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1798:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:2138: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2138: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1802:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:2142: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2142: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1806:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:2146: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2146: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1810:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:2156: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2156: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1820:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:2160: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2160: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1824:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:2164: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2164: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1828:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

-:2173: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#2173: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1837:
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */

-:2211: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2211: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1875:
+#define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)

-:2220: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#2220: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1884:
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)

-:2222: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2222: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1886:
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))

-:2228: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2228: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1892:
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)

-:2232: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2232: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1896:
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)

-:2413: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2413: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2077:
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))

-:2452: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2452: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2116:
+#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))

-:2494: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#2494: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2158:
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */

-:2527: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2527: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2191:
+#define DDI_BUF_TRANS_LO(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8)

-:2529: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2529: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2193:
+#define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)

-:2534: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2534: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2198:
+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)

-:2547: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#2547: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2211:
+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)

-:2660: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2660: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2324:
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)

-:2788: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#2788: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2452:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
+						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

-:2792: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2792: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2456:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2793: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2793: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2457:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2815: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#2815: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2479:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2816: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#2816: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2480:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2936: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2936: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2600:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:2938: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2938: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2602:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

-:3046: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#3046: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2710:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

-:3089: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#3089: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2753:
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)

-:3093: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3093: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2757:
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)

-:3098: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3098: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2762:
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8 + 4)

-:3102: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3102: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2766:
+
+

total: 0 errors, 53 warnings, 15 checks, 6452 lines checked


