Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07119376F1B
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 05:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B8B6E057;
	Sat,  8 May 2021 03:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E6C96E04E;
 Sat,  8 May 2021 03:20:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74FA9A47DB;
 Sat,  8 May 2021 03:20:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 08 May 2021 03:20:18 -0000
Message-ID: <162044401844.3595.1583367046588011704@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Alder_Lake-P_Support_=28rev2=29?=
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

Series: Alder Lake-P Support (rev2)
URL   : https://patchwork.freedesktop.org/series/89899/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a5348dda9410 drm/i915/xelpd: Handle proper AUX interrupt bits
3ecdad37cbcd drm/i915/xelpd: Enhanced pipe underrun reporting
07183c19b8aa drm/i915/xelpd: Define plane capabilities
abc805f00044 drm/i915/xelpd: Handle new location of outputs D and E
2737fb6d9b50 drm/i915/xelpd: Add XE_LPD power wells
ec8e4ff3faf8 drm/i915/xelpd: Increase maximum watermark lines to 255
11ef5b059192 drm/i915/xelpd: Required bandwidth increases when VT-d is active
3a868413743b drm/i915/xelpd: Add Wa_14011503030
70c3509ba166 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
a84964ed0f9d drm/i915/xelpd: Support DP1.4 compression BPPs
-:40: CHECK:LINE_SPACING: Please don't use multiple blank lines
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:524:
 
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
1733e1391418 drm/i915: Get slice height before computing rc params
a62c87014d6e drm/i915/xelpd: Calculate VDSC RC parameters
f6216e9e9950 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:325: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_bpc' may be better as '(_bpc)' to avoid precedence issues
#325: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:286:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col)  do { \
+	if (bpc == _bpc) \
+		return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+} while (0)

-:350: CHECK:LINE_SPACING: Please don't use multiple blank lines
#350: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:311:
+
+

total: 0 errors, 1 warnings, 2 checks, 361 lines checked
399cb3269226 drm/i915/xelpd: Add VRR guardband for VRR CTL
-:189: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/i915_reg.h:4377:
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
01726de55f6e drm/i915/xelpd: Provide port/phy mapping for vbt
172c8c97b24c drm/i915/adl_p: Add PCH support
62c7114fb15a drm/i915/adl_p: Add dedicated SAGV watermarks
-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_drv.h:593:
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

-:132: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#132: FILE: drivers/gpu/drm/i915/i915_reg.h:6469:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_reg.h:6477:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/i915_reg.h:6483:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/i915_reg.h:6489:
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

total: 0 errors, 0 warnings, 5 checks, 213 lines checked
2beede9590f0 drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
5608185661ae drm/i915/adl_p: Setup ports/phys
0a98c7eb58a4 drm/i915/adl_p: Add cdclk support for ADL-P
64297fea6102 drm/i915/display/tc: Rename safe_mode functions ownership
bcbfac5840a5 drm/i915/adl_p: Handle TC cold
6a77eb96eadb drm/i915/adl_p: Implement TC sequences
4c9202704607 drm/i915/adl_p: Enable modular fia
de648c5cfcdd drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
c400a5672183 drm/i915/adl_p: Add ddb allocation support
-:26: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/i915_reg.h:7308:
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */

total: 0 errors, 1 warnings, 0 checks, 172 lines checked
17add1f707f3 drm/i915: Introduce MBUS relative dbuf offsets
075f6d078c7f drm/i915: Move intel_modeset_all_pipes()
23743ef20e3e drm/i915/adl_p: MBUS programming
-:101: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/i915_reg.h:8176:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
a3bd392378ed drm/i915/adl_p: Tx escape clock with DSI
-:65: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#65: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:375:
+		esc_clk_div_m_phy = (act_word_clk - 1)/2;
 		                                      ^

total: 0 errors, 0 warnings, 1 checks, 47 lines checked
37e0eb134827 drm/i915/display: Replace dc3co_enabled with dc3co_exitline on intel_psr struct
e3d2f3d8e800 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()
bca93cbf5918 drm/i915/display: Add PSR interrupt error check function
34b2e80ee8c8 drm/i915/display: Introduce new intel_psr_pause/resume function
38f0185bbe0e drm/i915/adl_p: Define and use ADL-P specific DP translation tables
-:82: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#82: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1376:
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
0b872982349a drm/i915/adl_p: Enable/disable loadgen sharing
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1475:
+		if ((intel_crtc_has_dp_encoder(crtc_state) &&
+		    crtc_state->port_clock == 162000) ||

total: 0 errors, 0 warnings, 1 checks, 21 lines checked
f1a2e79c34cc drm/i915/adl_p: Add PLL Support
8b77135caf2c drm/i915/adl_p: Program DP/HDMI link rate to DDI_BUF_CTL
1f56c398ed97 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
c919653d488b drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
2859e7a26f76 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
339f29d0da3f drm/i915/adlp: Add PIPE_MISC2 programming
50a252b4a002 drm/i915/adl_p: Update memory bandwidth parameters
873e70b36f89 drm/i915/adl_p: Add IPs stepping mapping
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_drv.h:1559:
+#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
+	(IS_ALDERLAKE_P(__i915) && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:1563:
+#define IS_ADLP_GT_STEP(__i915, since, until) \
+	(IS_ALDERLAKE_P(__i915) && \
+	 IS_GT_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 2 checks, 38 lines checked
706e22d8d64c drm/i915/adl_p: Implement Wa_22011091694
6c629895ef1a drm/i915/display/adl_p: Implement Wa_22011320316
c6bebd2308a2 drm/i915/adl_p: Disable CCS on a-step (Wa_22011186057)
379e0be23f04 drm/i915/perf: Enable OA formats for ADL_P


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
