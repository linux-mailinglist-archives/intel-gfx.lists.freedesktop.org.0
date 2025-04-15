Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DF3A8A35B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 17:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA2A10E7E4;
	Tue, 15 Apr 2025 15:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B6410E7E4;
 Tue, 15 Apr 2025 15:49:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_i915=5Fr?=
 =?utf-8?q?eg=2Eh_display_split_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Apr 2025 15:49:16 -0000
Message-ID: <174473215606.7357.18362179105560991588@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <cover.1744714233.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744714233.git.jani.nikula@intel.com>
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

Series: drm/i915: i915_reg.h display split (rev2)
URL   : https://patchwork.freedesktop.org/series/144505/
State : warning

== Summary ==

Error: dim checkpatch failed
72629f7e8577 drm/i915/reg: use REG_BIT and friends to define DP registers
401bdea74e50 drm/i915/reg: Add/remove some extra blank lines
719699f3d637 drm/i915: split out display register macros to a separate file
-:340: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#340: 
new file mode 100644

-:505: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#505: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:161:
+#define   PHY_STATUS_SPLINE_LDO(phy, ch, spline)        (1 << (8 - (6 * (phy) + 3 * (ch) + (spline))))

-:824: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#824: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:480:
+ * The same register may be used for SDVO or HDMI */

-:905: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#905: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:561:
+ * of the infoframe structure specified by CEA-861. */

-:1062: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1062: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:718:
+#define   TRANSCONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANSCONF_FRAME_START_DELAY_MASK, (x)) /* pre-hsw: 0-3 */

-:1069: WARNING:LONG_LINE_COMMENT: line length of 110 exceeds 100 columns
#1069: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:725:
+#define   TRANSCONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 2) /* ilk-ivb */

-:1070: WARNING:LONG_LINE_COMMENT: line length of 106 exceeds 100 columns
#1070: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:726:
+#define   TRANSCONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, 3) /* ivb */

-:1071: WARNING:LONG_LINE_COMMENT: line length of 130 exceeds 100 columns
#1071: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:727:
+#define   TRANSCONF_GAMMA_MODE(x)		REG_FIELD_PREP(TRANSCONF_GAMMA_MODE_MASK_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */

-:1074: WARNING:LONG_LINE_COMMENT: line length of 115 exceeds 100 columns
#1074: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:730:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 4) /* gen4 only */

-:1075: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1075: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:731:
+#define   TRANSCONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 5) /* gen4 only */

-:1077: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1077: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:733:
+#define   TRANSCONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK, 7) /* gen3 only */

-:1087: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1087: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:743:
+#define   TRANSCONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 4) /* ilk/snb only */

-:1088: WARNING:LONG_LINE_COMMENT: line length of 114 exceeds 100 columns
#1088: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:744:
+#define   TRANSCONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(TRANSCONF_INTERLACE_MASK_ILK, 5) /* ilk/snb only */

-:1097: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1097: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:753:
+#define   TRANSCONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 0) /* ilk-ivb */

-:1098: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1098: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:754:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 1) /* ilk-ivb */

-:1099: WARNING:LONG_LINE_COMMENT: line length of 113 exceeds 100 columns
#1099: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:755:
+#define   TRANSCONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(TRANSCONF_OUTPUT_COLORSPACE_MASK, 2) /* ilk-ivb */

-:1157: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#1157: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:813:
+#define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))

-:1333: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1333: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:989:
+#define SKL_PS_CTRL(pipe, id) _MMIO_PIPE(pipe,        \
+			_ID(id, _PS_1A_CTRL, _PS_2A_CTRL),       \
+			_ID(id, _PS_1B_CTRL, _PS_2B_CTRL))

-:1360: WARNING:LONG_LINE_COMMENT: line length of 107 exceeds 100 columns
#1360: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1016:
+#define   PS_PIPE_SCALER_LOC_AFTER_OUTPUT_CSC	REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 0) /* non-linear */

-:1361: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#1361: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1017:
+#define   PS_PIPE_SCALER_LOC_AFTER_CSC		REG_FIELD_PREP(PS_SCALER_LOCATION_MASK, 1) /* linear */

-:1388: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1388: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1044:
+#define SKL_PS_PWR_GATE(pipe, id) _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_PWR_GATE_1A, _PS_PWR_GATE_2A), \
+			_ID(id, _PS_PWR_GATE_1B, _PS_PWR_GATE_2B))

-:1408: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1408: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1064:
+#define SKL_PS_WIN_POS(pipe, id) _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_POS_1A, _PS_WIN_POS_2A), \
+			_ID(id, _PS_WIN_POS_1B, _PS_WIN_POS_2B))

-:1421: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1421: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1077:
+#define SKL_PS_WIN_SZ(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_WIN_SZ_1A, _PS_WIN_SZ_2A),   \
+			_ID(id, _PS_WIN_SZ_1B, _PS_WIN_SZ_2B))

-:1434: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1434: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1090:
+#define SKL_PS_VSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VSCALE_1A, _PS_VSCALE_2A),   \
+			_ID(id, _PS_VSCALE_1B, _PS_VSCALE_2B))

-:1443: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1443: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1099:
+#define SKL_PS_HSCALE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HSCALE_1A, _PS_HSCALE_2A),   \
+			_ID(id, _PS_HSCALE_1B, _PS_HSCALE_2B))

-:1452: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1452: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1108:
+#define SKL_PS_VPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_VPHASE_1A, _PS_VPHASE_2A),   \
+			_ID(id, _PS_VPHASE_1B, _PS_VPHASE_2B))

-:1467: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1467: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1123:
+#define SKL_PS_HPHASE(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_HPHASE_1A, _PS_HPHASE_2A),   \
+			_ID(id, _PS_HPHASE_1B, _PS_HPHASE_2B))

-:1476: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1476: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1132:
+#define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
+			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))

-:1484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1484: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1140:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1484: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1140:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:1493: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#1493: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1149:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1493: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#1493: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1149:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
+			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:1554: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane_id' - possible side-effects?
#1554: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1210:
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */

-:1560: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#1560: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1216:
+#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
+						      GEN8_DE_PIPE_IER(pipe), \
+						      GEN8_DE_PIPE_IIR(pipe))

-:1740: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1740: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1396:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:1740: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'trans' - possible side-effects?
#1740: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1396:
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))

-:2073: WARNING:MACRO_ARG_UNUSED: Argument 'pipe' is not used in function-like macro
#2073: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1729:
+#define	 TRANS_DPLLA_SEL(pipe)		0

-:2115: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2115: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1771:
+#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHIFT_A, _PCH_TRANS_VSYNCSHIFT_B)

-:2193: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2193: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1849:
+#define HSW_TVIDEO_DIP_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_CTL_A)

-:2197: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2197: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1853:
+#define HSW_TVIDEO_DIP_AVI_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_AVI_DATA_A + (i) * 4)

-:2201: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#2201: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1857:
+#define HSW_TVIDEO_DIP_VS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VS_DATA_A + (i) * 4)

-:2205: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2205: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1861:
+#define HSW_TVIDEO_DIP_SPD_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)

-:2209: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2209: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1865:
+#define HSW_TVIDEO_DIP_GMP_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)

-:2213: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2213: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1869:
+#define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)

-:2223: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2223: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1879:
+#define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)

-:2238: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2238: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1894:
+#define HSW_TVIDEO_DIP_GCP(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_GCP_A)

-:2242: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2242: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1898:
+#define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)

-:2246: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#2246: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1902:
+#define ICL_VIDEO_DIP_PPS_ECC(dev_priv, trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)

-:2260: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#2260: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1916:
+#define  TRANS_FRAME_START_DELAY(x)	REG_FIELD_PREP(TRANS_FRAME_START_DELAY_MASK, (x)) /* ibx: 0-3 */

-:2298: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2298: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1954:
+#define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)

-:2307: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#2307: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1963:
+#define TRANS_DP2_VFREQHIGH(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQHIGH_A, _TRANS_DP2_VFREQHIGH_B)

-:2309: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#2309: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1965:
+#define  TRANS_DP2_VFREQ_PIXEL_CLOCK(clk_hz)	REG_FIELD_PREP(TRANS_DP2_VFREQ_PIXEL_CLOCK_MASK, (clk_hz))

-:2315: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2315: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1971:
+#define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)

-:2319: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2319: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:1975:
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)

-:2507: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2507: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2163:
+#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK, (x))

-:2546: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#2546: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2202:
+#define  PORT_SYNC_MODE_MASTER_SELECT(x)	REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))

-:2588: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#2588: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2244:
+#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(18, 16) /* 17:16 on hsw but bit 18 mbz */

-:2618: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'width' - possible side-effects?
#2618: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2274:
+#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
+							       ((width) == 3 ? 4 : (width) - 1))

-:2626: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2626: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2282:
+#define DDI_BUF_TRANS_LO(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8)

-:2628: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#2628: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2284:
+#define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)

-:2633: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2633: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2289:
+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)

-:2646: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#2646: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2302:
+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)

-:2759: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#2759: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2415:
+#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)

-:2887: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#2887: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2543:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
+						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

-:2891: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2891: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2547:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2892: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2892: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2548:
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2914: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#2914: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2570:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:2915: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#2915: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2571:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:3037: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#3037: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2693:
+#define TGL_DPLL0_DIV0(pll)				_MMIO_PLL(pll, _TGL_DPLL0_DIV0, _TGL_DPLL1_DIV0)

-:3039: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#3039: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2695:
+#define   TGL_DPLL0_DIV0_AFC_STARTUP(val)		REG_FIELD_PREP(TGL_DPLL0_DIV0_AFC_STARTUP_MASK, (val))

-:3159: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#3159: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2815:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

-:3202: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#3202: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2858:
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)

-:3207: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#3207: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2863:
+#define MTL_PIPE_CLKGATE_DIS2(pipe)		_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)

-:3211: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3211: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2867:
+#define MTL_MEM_SS_INFO_QGV_POINT_LOW(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8)

-:3216: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3216: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2872:
+#define MTL_MEM_SS_INFO_QGV_POINT_HIGH(point)	_MMIO(MTL_MEM_SS_INFO_QGV_POINT_OFFSET + (point) * 8 + 4)

-:3220: CHECK:LINE_SPACING: Please don't use multiple blank lines
#3220: FILE: drivers/gpu/drm/i915/display/intel_display_regs.h:2876:
+
+

total: 0 errors, 56 warnings, 20 checks, 6596 lines checked


