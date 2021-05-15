Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4643815EE
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 06:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6796E0C2;
	Sat, 15 May 2021 04:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A54BE6E084;
 Sat, 15 May 2021 04:51:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77B16A00C9;
 Sat, 15 May 2021 04:51:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 15 May 2021 04:51:46 -0000
Message-ID: <162105430646.17968.1662984737356516975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Alder_Lake-P_Support_=28rev3=29?=
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

Series: Alder Lake-P Support (rev3)
URL   : https://patchwork.freedesktop.org/series/89899/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1f1476bbdc3a drm/i915/xelpd: Enhanced pipe underrun reporting
0018489cbe17 drm/i915/xelpd: Support DP1.4 compression BPPs
-:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
#23: FILE: drivers/gpu/drm/i915/display/intel_dp.c:524:
 
+

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
b87e6b06fa3d drm/i915/xelpd: Calculate VDSC RC parameters
09597ccfe6b7 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

-:326: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_bpc' may be better as '(_bpc)' to avoid precedence issues
#326: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:286:
+#define PARAM_TABLE(_minmax, _bpc, _row, _col)  do { \
+	if (bpc == _bpc) \
+		return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+} while (0)

-:351: CHECK:LINE_SPACING: Please don't use multiple blank lines
#351: FILE: drivers/gpu/drm/i915/display/intel_qp_tables.c:311:
+
+

total: 0 errors, 1 warnings, 2 checks, 361 lines checked
86b0a49caa0c drm/i915/xelpd: Add VRR guardband for VRR CTL
-:189: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/i915_reg.h:4380:
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
aec612c383d6 drm/i915/adl_p: Add dedicated SAGV watermarks
-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_drv.h:593:
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

-:132: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#132: FILE: drivers/gpu/drm/i915/i915_reg.h:6472:
+#define _PLANE_WM_BASE(pipe, plane) \
+	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#140: FILE: drivers/gpu/drm/i915/i915_reg.h:6480:
+#define PLANE_WM_SAGV(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_1(pipe), _PLANE_WM_SAGV_2(pipe)))

-:146: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#146: FILE: drivers/gpu/drm/i915/i915_reg.h:6486:
+#define PLANE_WM_SAGV_TRANS(pipe, plane) \
+	_MMIO(_PLANE(plane, _PLANE_WM_SAGV_TRANS_1(pipe), _PLANE_WM_SAGV_TRANS_2(pipe)))

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#152: FILE: drivers/gpu/drm/i915/i915_reg.h:6492:
+#define PLANE_WM_TRANS(pipe, plane) \
 	_MMIO(_PLANE(plane, _PLANE_WM_TRANS_1(pipe), _PLANE_WM_TRANS_2(pipe)))

total: 0 errors, 0 warnings, 5 checks, 213 lines checked
ab38e9a19e25 drm/i915/adl_p: Setup ports/phys
9091d510c87e drm/i915/adl_p: Handle TC cold
59056339187a drm/i915/adl_p: Implement TC sequences
0f8f45b4eab0 drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
ca87410c9f8e drm/i915/adl_p: Add ddb allocation support
-:26: WARNING:LONG_LINE_COMMENT: line length of 102 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/i915_reg.h:7311:
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */

total: 0 errors, 1 warnings, 0 checks, 172 lines checked
06e65debe409 drm/i915: Introduce MBUS relative dbuf offsets
9c7584fd868b drm/i915/adl_p: MBUS programming
-:102: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/i915_reg.h:8179:
+#define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
74e6c6938518 drm/i915/adl_p: Tx escape clock with DSI
-:65: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#65: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:375:
+		esc_clk_div_m_phy = (act_word_clk - 1)/2;
 		                                      ^

total: 0 errors, 0 warnings, 1 checks, 47 lines checked
2fb9ed851bb9 drm/i915/display: Replace dc3co_enabled with dc3co_exitline on intel_psr struct
faf766443c65 drm/i915/display: Remove a redundant function argument from intel_psr_enable_source()
4b21bdb8b22f drm/i915/display: Add PSR interrupt error check function
5cf544ca43f8 drm/i915/display: Introduce new intel_psr_pause/resume function
8fa95e0f0503 drm/i915/adl_p: Define and use ADL-P specific DP translation tables
-:96: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#96: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1387:
+		return adlp_dkl_phy_dp_ddi_trans_hbr;
+	} else {

-:104: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#104: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1395:
+adlp_get_dkl_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,

total: 0 errors, 1 warnings, 1 checks, 94 lines checked
782c3c115c01 drm/i915/adl_p: Add PLL Support
2dd4e736791e drm/i915/adl_p: Program DP/HDMI link rate to DDI_BUF_CTL
da50af1ce2e4 drm/i915/adlp: Add PIPE_MISC2 programming
ca9ff5dd218c drm/i915/adl_p: Update memory bandwidth parameters


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
