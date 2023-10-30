Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF517DBD2C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7BF10E325;
	Mon, 30 Oct 2023 15:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7753E10E321
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681526; x=1730217526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+SeOB73dbRAnHxc4voag7KQoM4RfhjFGIaX1FU+qYck=;
 b=SxawfHqbchXw8we/ooL+YKlupBZl65bTcYjlr0d4uH3VVsn/OyXzgQ59
 0sHZCwA4bHZtTWF/nOUrBNllMaO/CbjIMGp01D/YoZLF9ll/uOPsFVM6U
 8jDM+jOqkLnG3W0fvrN7dDVj/Q3kfAjC7s8qaTmi4yZyUKQDsMi55L5Bs
 s/efItplKA6yz+fZAuK7dz7h3KbtQTvULUBHMVROUnXrNVeFlNkJ0uC/F
 2Z/ZMlvtAGLlNayY7gb14TrFAmPz5GWHSzewXKO7IHnud09TkRH0hgKiV
 Wkhna4plngYaVRRMcCO1FR9vwZlCl/LHrrf1FHTgE/RF3s2QL75CY0Eko w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974500"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974500"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494022"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494022"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:33 +0200
Message-Id: <20231030155843.2251023-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 20/30] drm/i915/dp: Disable FEC ready flag in
 the sink
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

Disable the FEC ready flag in the sink during a disabling modeset.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 818483d9a7fce..24b343465f6f6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2211,18 +2211,21 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
 }
 
 static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
-					const struct intel_crtc_state *crtc_state)
+					const struct intel_crtc_state *crtc_state,
+					bool enable)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!crtc_state->fec_enable)
 		return;
 
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
-		drm_dbg_kms(&i915->drm,
-			    "Failed to set FEC_READY in the sink\n");
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION,
+			       enable ? DP_FEC_READY : 0) <= 0)
+		drm_dbg_kms(&i915->drm, "Failed to set FEC_READY to %s in the sink\n",
+			    enable ? "enabled" : "disabled");
 
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
+	if (enable &&
+	    drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_STATUS,
 			       DP_FEC_DECODE_EN_DETECTED | DP_FEC_DECODE_DIS_DETECTED) <= 0)
 		drm_dbg_kms(&i915->drm, "Failed to clear FEC detected flags\n");
 }
@@ -2541,7 +2544,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * in the FEC_CONFIGURATION register to 1 before initiating link
 	 * training
 	 */
-	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 
 	intel_dp_check_frl_training(intel_dp);
 	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
@@ -2692,7 +2695,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * in the FEC_CONFIGURATION register to 1 before initiating link
 	 * training
 	 */
-	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 
 	intel_dp_check_frl_training(intel_dp);
 	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
@@ -2768,7 +2771,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
 	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
 					      true);
-	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 	intel_dp_start_link_train(intel_dp, crtc_state);
 	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
 	    !is_trans_port_sync_mode(crtc_state))
@@ -2997,6 +3000,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_disable_ddi_buf(encoder, old_crtc_state);
 
+	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
+
 	/*
 	 * From TGL spec: "If single stream or multi-stream master transcoder:
 	 * Configure Transcoder Clock select to direct no clock to the
-- 
2.39.2

