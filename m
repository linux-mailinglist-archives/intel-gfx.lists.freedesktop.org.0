Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5C09A64AC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 12:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC6C10E48A;
	Mon, 21 Oct 2024 10:49:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXQM1wXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F9610E472
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 10:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729507759; x=1761043759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d1Xi6OO+qrW0UPNwgX3c46MKUH7EbDgSpiQl3jV+6k8=;
 b=jXQM1wXXRTVSvbmUvJVqyyLoH14UbyVUs5iGnI1r5D9m2EQBcX+UAnx7
 SM4eunodOEbG2ROOQnCDa5RRYzv/nBQNrQzNNtRajX2ZJrT7p1Uh+1azV
 l7rNHn/tVKfRprQ+aq+vsXyYKcioFWBtwEds5cBFLt2DT68NU6vQzyYvo
 1qPQ7Ds9FQ8cyrz16S5ntKBpJc++zAbxDEM3A4Eeo/tEvOZ2pq61IGSob
 SqV1leoiJhwU5qL/On3EHUi73ETkXhuuQbdBb+ZtwMxfh58dzqqbXnwFJ
 u6szNjCSUOiI4/dI6cPVS+hyiNSnbAHiUH48kt4VnXJuobVUF57bV8ibF Q==;
X-CSE-ConnectionGUID: OVYruF3KQRq3w4EAgAnfow==
X-CSE-MsgGUID: QzXUSNBmTrOqhMN9w9AygA==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="28439936"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28439936"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 03:49:19 -0700
X-CSE-ConnectionGUID: PxjKpsmHQECTuFHPQVGNww==
X-CSE-MsgGUID: UKsDzOc5SMGcmv7dWGY/+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84310738"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 03:49:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start, end} computation
Date: Mon, 21 Oct 2024 16:20:58 +0530
Message-ID: <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
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

vrr.vsync_{start,end} computation should not depend on
crtc_state->vrr.enable. Also add them to state dump.

--v1:
 - Explain commit message more clearly [Jani]
 - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
--v2:
 - Correct computation of vrr.vsync_start/end should not depend on
   vrr.enable.[ville]
 - vrr enable disable requirement should not obstruct by SDP enable
   disable requirements. [Ville]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +++-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++------------
 2 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..296a6c9de1f7 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -303,7 +303,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->vrr.flipline,
 		   intel_vrr_vmin_vblank_start(pipe_config),
 		   intel_vrr_vmax_vblank_start(pipe_config));
-
+	drm_printf(&p, "vrr_vsync_start: %d, vrr_vsync_end: %d\n",
+		   pipe_config->vrr.vsync_start,
+		   pipe_config->vrr.vsync_end);
 	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
 	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19a5d0076bb8..89696243f320 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	}
 
-	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
+	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
 			 crtc_state->hw.adjusted_mode.vsync_start);
@@ -316,6 +316,11 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       trans_vrr_ctl(crtc_state));
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -352,12 +357,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
@@ -382,10 +381,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
-
-	if (HAS_AS_SDP(display))
-		intel_de_write(display,
-			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -425,10 +420,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
-	}
-
-	if (crtc_state->vrr.enable) {
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
@@ -440,4 +431,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 		}
 	}
+
+	if (crtc_state->vrr.enable)
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.46.0

