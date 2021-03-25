Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82650349C72
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 23:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9EA6EE55;
	Thu, 25 Mar 2021 22:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3290C6EE52;
 Thu, 25 Mar 2021 22:43:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 141E3A8830;
 Thu, 25 Mar 2021 22:43:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 25 Mar 2021 22:43:33 -0000
Message-ID: <161671221305.15547.17053898021096559100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Alder_Lake-P_=28rev2=29?=
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

Series: Introduce Alder Lake-P (rev2)
URL   : https://patchwork.freedesktop.org/series/87897/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c64437e8902e drm/i915/xelpd: add XE_LPD display characteristics
06a6b306bb11 drm/i915/xelpd: Handle proper AUX interrupt bits
342f5a714f77 drm/i915/xelpd: Enhanced pipe underrun reporting
-:66: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#66: FILE: drivers/gpu/drm/i915/display/intel_fifo_underrun.c:390:
+		return "hard";
+	else

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
0bdd697a29f1 drm/i915/xelpd: Define plane capabilities
9cd15eaee7ad drm/i915/xelpd: Support 128k plane stride
b9c9d9f72027 drm/i915/xelpd: Handle new location of outputs D and E
7f1092ee9104 drm/i915/xelpd: Add XE_LPD power wells
-:36: WARNING:BAD_SIGN_OFF: Duplicate signature
#36: 
Cc: Anshuman Gupta <anshuman.gupta@intel.com>

total: 0 errors, 1 warnings, 0 checks, 522 lines checked
1e2bd7a5af67 drm/i915/xelpd: Handle LPSP for XE_LPD
a0d6295b5373 drm/i915/xelpd: Increase maximum watermark lines to 255
37130f19e90e drm/i915/xelpd: Required bandwidth increases when VT-d is active
1649e5409acb drm/i915/xelpd: Add Wa_14011503030
30661a762a91 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
fe6932615988 drm/i915/xelpd: Support DP1.4 compression BPPs
-:40: CHECK:LINE_SPACING: Please don't use multiple blank lines
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:522:
 
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
47902928aede drm/i915: Get slice height before computing rc params
60bacc26c600 drm/i915/xelpd: Calculate VDSC RC parameters
-:51: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:389:
+		rc->first_line_bpg_offset = 12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
929cf2a04dfd drm/i915/xelpd: Add rc_qp_table for rcparams calculation
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

-:369: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#369: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:422:
+			rc->rc_range_params[buf_i].range_min_qp = RC_RANGE_QP(min, 10, buf_i, bpp_i);

-:370: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#370: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:423:
+			rc->rc_range_params[buf_i].range_max_qp = RC_RANGE_QP(max, 10, buf_i, bpp_i);

-:373: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#373: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:426:
+			rc->rc_range_params[buf_i].range_min_qp = RC_RANGE_QP(min, 12, buf_i, bpp_i);

-:374: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#374: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:427:
+			rc->rc_range_params[buf_i].range_max_qp = RC_RANGE_QP(max, 12, buf_i, bpp_i);

total: 0 errors, 5 warnings, 0 checks, 347 lines checked
f57027254bab drm/i915/xelpd: Add VRR guardband for VRR CTL
-:156: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#156: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:221:
+		crtc_state->vrr.guardband = REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);

-:159: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:224:
+			crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);

-:186: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/i915_reg.h:4371:
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 3 warnings, 0 checks, 140 lines checked
0d14daf39c18 drm/i915/adl_p: Add PCI Devices IDs
-:25: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#25: FILE: include/drm/i915_pciids.h:649:
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

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#25: FILE: include/drm/i915_pciids.h:649:
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

total: 1 errors, 0 warnings, 1 checks, 25 lines checked
eccf706853f7 drm/i915/adl_p: ADL_P device info enabling
854bc1ad1d76 drm/i915/adl_p: Add PCH support
cc43924843e1 drm/i915/adl_p: Add dedicated SAGV watermarks
-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_drv.h:584:
+#define HAS_HW_SAGV_WM(i915) ((DISPLAY_VER(i915) == 13) && !IS_DGFX(i915))

-:132: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#132: FILE: drivers/gpu/drm/i915/i915_reg.h:6463:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_reg.h:6471:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/i915_reg.h:6477:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/i915_reg.h:6483:
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

-:235: CHECK:LINE_SPACING: Please don't use multiple blank lines
#235: FILE: drivers/gpu/drm/i915/intel_pm.c:6280:
 
+

total: 0 errors, 0 warnings, 6 checks, 215 lines checked
0a8ca545c487 drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
0829e10a0986 drm/i915/adl_p: Load DMC
e0b3264bd0aa drm/i915/adl_p: Setup ports/phys
7d3738ea84a7 drm/i915/adl_p: Add cdclk support for ADL-P
105d4ea67ba9 drm/i915/display/tc: Rename safe_mode functions ownership
37791d3e9b57 drm/i915/adl_p: Handle TC cold
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:554:
+	if (IS_ALDERLAKE_P(dev_priv) ||
+	   (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port))

total: 0 errors, 0 warnings, 1 checks, 9 lines checked
b561e55ad7ed drm/i915/adl_p: Implement TC sequences
9466294b8073 drm/i915/adl_p: Enable modular fia
2a5c21d0cfe3 drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
1934f7197873 drm/i915/adl_p: Add ddb allocation support
-:39: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/i915_reg.h:7302:
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */

total: 0 errors, 1 warnings, 0 checks, 180 lines checked
3085ffa95a6c drm/i915: Introduce MBUS relative dbuf offsets
-:11: WARNING:TYPO_SPELLING: 'accomodate' may be misspelled - perhaps 'accommodate'?
#11: 
MBUS unit. To accomodate that we shall store the MBUS relative
              ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
1d59d31ac064 drm/i915: Move intel_modeset_all_pipes()
b6f7ef6a2700 drm/i915/adl_p: MBUS programming
-:101: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/i915_reg.h:8170:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 1 warnings, 0 checks, 237 lines checked
6ae0308eb78c drm/i915/adl_p: Tx escape clock with DSI
-:65: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#65: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:373:
+		esc_clk_div_m_phy = (act_word_clk - 1)/2;
 		                                      ^

total: 0 errors, 0 warnings, 1 checks, 47 lines checked
22f7579ed8ae drm/i915/adl_p: Add initial ADL_P Workarounds
-:148: CHECK:LINE_SPACING: Please don't use multiple blank lines
#148: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1700:
 
+

total: 0 errors, 0 warnings, 1 checks, 144 lines checked
172c5e1265df drm/i915/adlp: Define GuC/HuC for Alderlake_P
741d91ba895c drm/i915/adl_p: Define and use ADL-P specific DP translation tables
-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1375:
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
a826d07dfb49 drm/i915/adl_p: Enable/disable loadgen sharing
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1465:
+		if ((intel_crtc_has_dp_encoder(crtc_state) &&
+		    crtc_state->port_clock == 162000) ||

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
87b27bda44f9 drm/i915/adl_p: Add PLL Support
43b982e116e1 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
a3fcb1f129cf drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1427:
+	if (ret || intel_dp->force_dsc_en || (!(DISPLAY_VER(i915) == 13) &&
+	    pipe_config->bigjoiner)) {

total: 0 errors, 0 warnings, 1 checks, 15 lines checked
4b22d79b8150 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
08ab2ee39ff8 drm/i915/adlp: Add PIPE_MISC2 programming
-:28: ERROR:CODE_INDENT: code indent should use tabs where possible
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6252:
+        const struct intel_crtc_scaler_state *scaler_state =$

-:28: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6252:
+        const struct intel_crtc_scaler_state *scaler_state =$

-:29: ERROR:CODE_INDENT: code indent should use tabs where possible
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:6253:
+                &crtc_state->scaler_state;$

-:29: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:6253:
+                &crtc_state->scaler_state;$

total: 2 errors, 2 warnings, 0 checks, 48 lines checked
b8c997a50244 drm/i915/adl_p: Update memory bandwidth parameters
59365b8cc821 drm/i915/adl_p: Implement Wa_22011091694
db10565794e4 drm/i915/display/adl_p: Implement Wa_22011320316
-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:1605:
+#define IS_ADLP_REVID(p, since, until) \
+	(IS_ALDERLAKE_P(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
4c6bdb3a898f drm/i915/display/adl_p: Remove CCS support
e4ebbafb718a drm/i915/perf: Enable OA formats for ADL_P
d6cca7188c32 drm/i915/display/adl_p: Implement PSR changes
-:150: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#150: FILE: drivers/gpu/drm/i915/i915_reg.h:4646:
+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)

-:153: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#153: FILE: drivers/gpu/drm/i915/i915_reg.h:4649:
+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:163: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#163: FILE: drivers/gpu/drm/i915/i915_reg.h:4656:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)

-:165: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/i915_reg.h:4658:
+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)

total: 0 errors, 4 warnings, 0 checks, 129 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
