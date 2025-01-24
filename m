Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2802A1B880
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 16:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6525110E9A1;
	Fri, 24 Jan 2025 15:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k639nZ9Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F370C10E999;
 Fri, 24 Jan 2025 15:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737731499; x=1769267499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qq95Fq1vepEm5NtN4hjWbjEGOt4KB0JUnATOegPal6M=;
 b=k639nZ9ZvHTvxKmcruXFnBM0rXiB0ddqpXNmk9ZDaKyvzmWrOGpCFtAu
 j/NdHpnM4j2o+ixEyHEvTzcxMC9d13IfJ2B2ZlaPvgeodvLo2fB3Y1lsf
 0ZwK5JT2I6IpKZcDC8EggVPfyrTH8QgO8zVZtBcU2q51rdnHplRg+9wZd
 LETgt7gmjkPX/NN/vEXy1Px90GWkkwIV6UDCVWiG1cxz+KPqiAcpXymni
 s363r/UnQFHSd1B20U35WQAWae0oLCwj1QMBmjQRikKgRBf4l30y38Xbf
 FziUt87DBn6Ln6rFVKPFNc/8V43fYGlfvh9yruaE5O8Mw8VlumsOkbmEX w==;
X-CSE-ConnectionGUID: /iW0YHgARpul1Pc6bwBsZg==
X-CSE-MsgGUID: lFROKuphQ4entLlUJ1kvZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38177373"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38177373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:39 -0800
X-CSE-ConnectionGUID: 8pCFNbk5RzCSebimu2uCsQ==
X-CSE-MsgGUID: 1eiP9EgzT0e4vKmI1NocLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108221144"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 07:11:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/35] drm/i915/vrr: Compute vrr.vsync_{start,
 end} during full modeset
Date: Fri, 24 Jan 2025 20:29:47 +0530
Message-ID: <20250124150020.2271747-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

vrr.vsync_{start,end} computation should not depend on
crtc_state->vrr.enable.

--v1:
 - Explain commit message more clearly [Jani]
 - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
--v2:
 - Correct computation of vrr.vsync_start/end should not depend on
   vrr.enable.[ville]
 - vrr enable disable requirement should not obstruct by SDP enable
   disable requirements. [Ville]
--v3:
 - Create separate patch for crtc_state_dump [Ankit].

--v4:
 - Update commit message and header [Ankit].

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b268a0a01cd1..adb51609d0a3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -299,7 +299,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
@@ -388,6 +388,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       trans_vrr_ctl(crtc_state));
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
+
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 }
 
 void intel_vrr_send_push(struct intel_dsb *dsb,
@@ -432,12 +438,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (HAS_AS_SDP(display))
-		intel_de_write(display,
-			       TRANS_VRR_VSYNC(display, cpu_transcoder),
-			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
-			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
-
 	if (crtc_state->cmrr.enable) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
@@ -462,10 +462,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
-
-	if (HAS_AS_SDP(display))
-		intel_de_write(display,
-			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -505,10 +501,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
-	}
-
-	if (crtc_state->vrr.enable) {
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
@@ -520,4 +512,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 		}
 	}
+
+	if (crtc_state->vrr.enable)
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

