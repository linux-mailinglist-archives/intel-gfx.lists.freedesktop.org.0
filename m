Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB3E3378A8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48716EE31;
	Thu, 11 Mar 2021 16:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E6926EE31;
 Thu, 11 Mar 2021 16:02:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36290A7DFC;
 Thu, 11 Mar 2021 16:02:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 11 Mar 2021 16:02:21 -0000
Message-ID: <161547854121.28799.11221142258671604993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Separate_display_version_numbering_and_add_XE=5FLPD_=28vers?=
 =?utf-8?q?ion_13=29?=
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

Series: Separate display version numbering and add XE_LPD (version 13)
URL   : https://patchwork.freedesktop.org/series/87886/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
325b78c69cb5 drm/i915/display: Convert gen5/gen6 tests to IS_IRONLAKE/IS_SANDYBRIDGE
-:100: CHECK:CAMELCASE: Avoid CamelCase: <ILK_eDP_A_DISABLE>
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:11602:
+	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))

total: 0 errors, 0 warnings, 1 checks, 216 lines checked
bb353a8d0201 drm/i915: Add DISPLAY_VER()
-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display_ver = x

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
5b3894ed6cd4 drm/i915/display: Eliminate most usage of INTEL_GEN()
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
69601631074c drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in intel_pm.c
fbaed21cd392 drm/i915: Convert INTEL_GEN() to DISPLAY_VER() as appropriate in i915_irq.c
5a8f8a2a7928 drm/i915/display: Simplify GLK display version tests
873b4ff9025c drm/i915/xelpd: add XE_LPD display characteristics
21a721ff4189 drm/i915/xelpd: Handle proper AUX interrupt bits
14df043f007f drm/i915/xelpd: Enhanced pipe underrun reporting
-:66: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#66: FILE: drivers/gpu/drm/i915/display/intel_fifo_underrun.c:390:
+		return "hard";
+	else

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
50ac2fcab8d8 drm/i915/xelpd: Define plane capabilities
c41d35b07706 drm/i915/xelpd: Support 128k plane stride
ca26cb633455 drm/i915/xelpd: Handle new location of outputs D and E
223193985bf3 drm/i915/xelpd: Add XE_LPD power wells
-:36: WARNING:BAD_SIGN_OFF: Duplicate signature
#36: 
Cc: Anshuman Gupta <anshuman.gupta@intel.com>

total: 0 errors, 1 warnings, 0 checks, 522 lines checked
8439a0c727fa drm/i915/xelpd: Handle LPSP for XE_LPD
fa941027b199 drm/i915/xelpd: Increase maximum watermark lines to 255
b7e094126453 drm/i915/xelpd: Required bandwidth increases when VT-d is active
68f54617c023 drm/i915/xelpd: Add Wa_14011503030
e7d031d87c65 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
9de1ac3266ec drm/i915/xelpd: Support DP1.4 compression BPPs
-:40: CHECK:LINE_SPACING: Please don't use multiple blank lines
#40: FILE: drivers/gpu/drm/i915/display/intel_dp.c:569:
 
+

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
4f795e23a16a drm/i915: Get slice height before computing rc params
fd3647ae8e29 drm/i915/xelpd: Calculate VDSC RC parameters
-:51: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:393:
+		rc->first_line_bpg_offset = 12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);

total: 0 errors, 1 warnings, 0 checks, 134 lines checked
1e18a983ae35 drm/i915/xelpd: Add rc_qp_table for rcparams calculation
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
cddd8ca967f3 drm/i915/xelpd: Add VRR guardband for VRR CTL
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


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
