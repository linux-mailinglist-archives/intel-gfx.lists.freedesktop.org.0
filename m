Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 052233380CC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F7576EEA7;
	Thu, 11 Mar 2021 22:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 479366E094;
 Thu, 11 Mar 2021 22:48:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 392FAA3ECB;
 Thu, 11 Mar 2021 22:48:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Mar 2021 22:48:16 -0000
Message-ID: <161550289620.28799.11158921686812266267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Alder_Lake-P?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Introduce Alder Lake-P
URL   : https://patchwork.freedesktop.org/series/87897/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
545bd02e1c9a drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE
-:100: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:11602:
+	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 0 errors, 0 warnings, 1 checks, 216 lines checked
8e54a5e601c5 drm/i915: Add DISPLAY_VER()
-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display_ver = x

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
4d46d9bc5a06 drm/i915/display: Eliminate most usage of INTEL_GEN()
-:35: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#35: 
        + if (DISPLAY_VER(dev_priv) >= from && DISPLAY_VER(dev_priv) <= until) S

-:1222: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1222: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:552:
 
+

-:2058: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'port == PORT_E'
#2058: FILE: drivers/gpu/drm/i915/display/intel_display.c:6715:
+	if (DISPLAY_VER(dev_priv) < 9 &&
 	    (port == PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) {

-:2646: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 63)
#2646: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:153:
+	if (DISPLAY_VER(dev_priv) >= 9)
 		/* no global SR status; inspect per-plane WM */;

-:4192: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED'
#4192: FILE: drivers/gpu/drm/i915/display/intel_psr.c:324:
+	if (DISPLAY_VER(dev_priv) >= 9 &&
 	    (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED)) {

-:4808: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#4808: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:2032:
+		plane->need_async_flip_disable_wa = (DISPLAY_VER(dev_priv) >= 9 && DISPLAY_VER(dev_priv) <= 10);

total: 0 errors, 3 warnings, 3 checks, 4213 lines checked
92d30df5de1c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c
dd05f3125c5b drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c
a0318588a6b7 drm/i915/display: Simplify GLK display version tests
0afe26e7a99d drm/i915/xelpd: add XE_LPD display characteristics
2fd845823954 drm/i915/xelpd: Handle proper AUX interrupt bits
3e432180467c drm/i915/xelpd: Enhanced pipe underrun reporting
-:66: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#66: FILE: drivers/gpu/drm/i915/display/intel_fifo_underrun.c:390:
+		return "hard";
+	else

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
a34d69c7ec8d drm/i915/xelpd: Define plane capabilities
19b0bb00151b drm/i915/xelpd: Support 128k plane stride
d770b6b8cd28 drm/i915/xelpd: Handle new location of outputs D and E
bc80bcbca1c1 drm/i915/xelpd: Add XE_LPD power wells
-:36: WARNING:BAD_SIGN_OFF: Duplicate signature
#36: 
Cc: Anshuman Gupta <anshuman.gupta@intel.com>

total: 0 errors, 1 warnings, 0 checks, 522 lines checked
206a1379e251 drm/i915/xelpd: Handle LPSP for XE_LPD
da736ae5f9ac drm/i915/xelpd: Increase maximum watermark lines to 255
e280eb022d6d drm/i915/xelpd: Required bandwidth increases when VT-d is active
40c5437f3499 drm/i915/xelpd: Add Wa_14011503030
c06f1cfdb54c drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
ffeca9d43e30 drm/i915/xelpd: Support DP1.4 compression BPPs
-:40: CHECK:LINE_SPACING: Please don't use multiple blank lines
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:569:
 
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
c9b04c68d8a0 drm/i915: Get slice height before computing rc params
e1dce68d97ed drm/i915/xelpd: Calculate VDSC RC parameters
-:51: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:393:
+		rc->first_line_bpg_offset = 12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
e545fc603067 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

-:369: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#369: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:426:
+			rc->rc_range_params[buf_i].range_min_qp = RC_RANGE_QP(min, 10, buf_i, bpp_i);

-:370: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#370: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:427:
+			rc->rc_range_params[buf_i].range_max_qp = RC_RANGE_QP(max, 10, buf_i, bpp_i);

-:373: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#373: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:430:
+			rc->rc_range_params[buf_i].range_min_qp = RC_RANGE_QP(min, 12, buf_i, bpp_i);

-:374: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#374: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:431:
+			rc->rc_range_params[buf_i].range_max_qp = RC_RANGE_QP(max, 12, buf_i, bpp_i);

total: 0 errors, 5 warnings, 0 checks, 347 lines checked
1a36ab332c53 drm/i915/xelpd: Add VRR guardband for VRR CTL
-:156: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#156: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:221:
+		crtc_state->vrr.guardband = REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);

-:159: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:224:
+			crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);

-:186: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/i915_reg.h:4360:
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 3 warnings, 0 checks, 140 lines checked
7c90acb36f4d drm/i915/adl_p: Add PCI Devices IDs
-:24: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#24: FILE: include/drm/i915_pciids.h:649:
+#define INTEL_ADLP_IDS(info) \
+	INTEL_VGA_DEVICE(0x46A0, info), \
+	INTEL_VGA_DEVICE(0x46A1, info), \
+	INTEL_VGA_DEVICE(0x46A2, info), \
+	INTEL_VGA_DEVICE(0x46A3, info), \
+	INTEL_VGA_DEVICE(0x46A6, info), \
+	INTEL_VGA_DEVICE(0x46A8, info), \
+	INTEL_VGA_DEVICE(0x46AA, info), \
+	INTEL_VGA_DEVICE(0x462A, info), \
+	INTEL_VGA_DEVICE(0x4626, info), \
+	INTEL_VGA_DEVICE(0x4628, info), \
+	INTEL_VGA_DEVICE(0x46B0, info), \
+	INTEL_VGA_DEVICE(0x46B1, info), \
+	INTEL_VGA_DEVICE(0x46B2, info), \
+	INTEL_VGA_DEVICE(0x46B3, info), \
+	INTEL_VGA_DEVICE(0x46C0, info), \
+	INTEL_VGA_DEVICE(0x46C1, info), \
+	INTEL_VGA_DEVICE(0x46C2, info), \
+	INTEL_VGA_DEVICE(0x46C3, info)

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#24: FILE: include/drm/i915_pciids.h:649:
+#define INTEL_ADLP_IDS(info) \
+	INTEL_VGA_DEVICE(0x46A0, info), \
+	INTEL_VGA_DEVICE(0x46A1, info), \
+	INTEL_VGA_DEVICE(0x46A2, info), \
+	INTEL_VGA_DEVICE(0x46A3, info), \
+	INTEL_VGA_DEVICE(0x46A6, info), \
+	INTEL_VGA_DEVICE(0x46A8, info), \
+	INTEL_VGA_DEVICE(0x46AA, info), \
+	INTEL_VGA_DEVICE(0x462A, info), \
+	INTEL_VGA_DEVICE(0x4626, info), \
+	INTEL_VGA_DEVICE(0x4628, info), \
+	INTEL_VGA_DEVICE(0x46B0, info), \
+	INTEL_VGA_DEVICE(0x46B1, info), \
+	INTEL_VGA_DEVICE(0x46B2, info), \
+	INTEL_VGA_DEVICE(0x46B3, info), \
+	INTEL_VGA_DEVICE(0x46C0, info), \
+	INTEL_VGA_DEVICE(0x46C1, info), \
+	INTEL_VGA_DEVICE(0x46C2, info), \
+	INTEL_VGA_DEVICE(0x46C3, info)

total: 1 errors, 0 warnings, 1 checks, 24 lines checked
3ca777b82d4f drm/i915/adl_p: ADL_P device info enabling
9a60ab0c7f6f drm/i915/adl_p: Add PCH support
e5d780a7e2c8 drm/i915/adl_p: Add dedicated SAGV watermarks
-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_drv.h:585:
+#define HAS_HW_SAGV_WM(i915) ((DISPLAY_VER(i915) == 13) && !IS_DGFX(i915))

-:132: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#132: FILE: drivers/gpu/drm/i915/i915_reg.h:6452:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_reg.h:6460:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/i915_reg.h:6466:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/i915_reg.h:6472:
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:235: CHECK:LINE_SPACING: Please don't use multiple blank lines
#235: FILE: drivers/gpu/drm/i915/intel_pm.c:6260:
 
+

total: 0 errors, 0 warnings, 6 checks, 215 lines checked
c8feb3de6d2f drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
a31a27c201e3 drm/i915/adl_p: Load DMC
53cbbdc4ce2b drm/i915/adl_p: Setup ports/phys
b88ec5ff4cf4 drm/i915/adl_p: Add cdclk support for ADL-P
72da71eda198 drm/i915/display/tc: Rename safe_mode functions ownership
1cc279b9a9ae drm/i915/adl_p: Handle TC cold
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:554:
+	if (IS_ALDERLAKE_P(dev_priv) ||
+	   (DISPLAY_VER(dev_priv) == 11 && dig_port->tc_legacy_port))

total: 0 errors, 0 warnings, 1 checks, 9 lines checked
d3d588966024 drm/i915/adl_p: Implement TC sequences
76d78f0a89b0 drm/i915/adl_p: Enable modular fia
7f6b13959baf drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
d9c40cc5183b drm/i915/adl_p: Add ddb allocation support
-:39: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:7291:
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */

total: 0 errors, 1 warnings, 0 checks, 180 lines checked
ece44a3951a4 drm/i915: Introduce MBUS relative dbuf offsets
-:11: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#11: 
MBUS unit. To accomodate that we shall store the MBUS relative
              ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
33b7d6985cbf drm/i915: Move intel_modeset_all_pipes()
b7078c173757 drm/i915/adl_p: MBUS programming
-:101: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/i915_reg.h:8149:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 1 warnings, 0 checks, 237 lines checked
bed8e7bb8774 drm/i915/adl_p: Tx escape clock with DSI
-:65: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#65: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:373:
+		esc_clk_div_m_phy = (act_word_clk - 1)/2;
 		                                      ^

total: 0 errors, 0 warnings, 1 checks, 47 lines checked
eaa274e708a8 drm/i915/adl_p: Add initial ADL_P Workarounds
-:148: CHECK:LINE_SPACING: Please don't use multiple blank lines
#148: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1700:
 
+

total: 0 errors, 0 warnings, 1 checks, 144 lines checked
229748b64190 drm/i915/adlp: Define GuC/HuC for Alderlake_P
b304533d0f55 drm/i915/adl_p: Define and use ADL-P specific DP translation tables
-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1375:
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
4b31b97ab781 drm/i915/adl_p: Enable/disable loadgen sharing
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1465:
+		if ((intel_crtc_has_dp_encoder(crtc_state) &&
+		    crtc_state->port_clock == 162000) ||

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
24fddb894143 drm/i915/adl_p: Add PLL Support
f3adcffb1aee drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
f6779a65ec33 drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1507:
+	if (ret || intel_dp->force_dsc_en || (!(DISPLAY_VER(i915) == 13) &&
+	    pipe_config->bigjoiner)) {

total: 0 errors, 0 warnings, 1 checks, 15 lines checked
a967b8f0d577 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
0f2911a4def4 drm/i915/adlp: Add PIPE_MISC2 programming
-:28: ERROR:CODE_INDENT: code indent should use tabs where possible
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6220:
+        const struct intel_crtc_scaler_state *scaler_state =$

-:28: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6220:
+        const struct intel_crtc_scaler_state *scaler_state =$

-:29: ERROR:CODE_INDENT: code indent should use tabs where possible
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:6221:
+                &crtc_state->scaler_state;$

-:29: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:6221:
+                &crtc_state->scaler_state;$

total: 2 errors, 2 warnings, 0 checks, 48 lines checked
7ae8fa32c79f drm/i915/adl_p: Update memory bandwidth parameters
338170857dd4 drm/i915/adl_p: Implement Wa_22011091694
80727a5175f3 drm/i915/display/adl_p: Implement Wa_22011320316
-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:1619:
+#define IS_ADLP_REVID(p, since, until) \
+	(IS_ALDERLAKE_P(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
5f5ddd87a7d9 drm/i915/display/adl_p: Remove CCS support
8e8789fb3382 drm/i915/perf: Enable OA formats for ADL_P
ff4d1fd19abd drm/i915/display/adl_p: Implement PSR changes
-:146: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#146: FILE: drivers/gpu/drm/i915/i915_reg.h:4635:
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)

-:149: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/i915_reg.h:4638:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:159: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/i915_reg.h:4645:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:161: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/i915_reg.h:4647:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

total: 0 errors, 4 warnings, 0 checks, 128 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
