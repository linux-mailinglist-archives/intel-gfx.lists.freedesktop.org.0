Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDFF9D1399
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D8210E4FB;
	Mon, 18 Nov 2024 14:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6dHVVXV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC2010E4F7;
 Mon, 18 Nov 2024 14:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941387; x=1763477387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TiXJwXZ7XKfHZsmekf5mySkK5EfojGjHSB29ZqVWbbI=;
 b=l6dHVVXV9vDgGsLnKG9d19mdm6OliAQVwfym6GxotA9kL/fgJn+RMj2f
 gvWghnvzCwcWF8aEvrm8p5ZGJdpqH2uqnpZ3nV1DdnSV8ib/Bt8SQ+VXU
 VenwVyat9uqpPANuptKU0B30tq2V6vjlsLaAG9DajjcM5I7lqEBnxBsJX
 8+Ghml/S4llxI7I9Rn+1k2Nd56PFB0ERXjmcL/pH/xVpUi5fdcLxwG2JC
 q0+WYTyYkNSdYBjQlfZ7Mponb+Nz8zRsIecYydtUNnkMiTmYT2eApA9oD
 W60NVsVBe0Ii6z/iExcNidCP/l3elAIwg1uIQkw6GdOMxmH8vW8ExB4rd A==;
X-CSE-ConnectionGUID: 0vWhLWO/Sa20I7/91X7Yyg==
X-CSE-MsgGUID: d/HQ3oJnQTC/CZhPe5raMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31307125"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31307125"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:46 -0800
X-CSE-ConnectionGUID: 3GziANGvQemF8NzShdb55g==
X-CSE-MsgGUID: i9BWOi24RgW4ybP6Sbwetw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="94289237"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/11] drm/i915/dp: refactor clear/wait for act sent
Date: Mon, 18 Nov 2024 16:49:02 +0200
Message-Id: <17d894f2ee37b23cac460bf1be1c639d734445c8.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Move clear_act_sent() and wait_for_act_sent() to intel_ddi.[ch] and make
independent of DP MST. They'll be needed for 128b/132b SST
operation. Rename accordingly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 23 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_ddi.h    |  8 ++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 ++++-----------------
 3 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cbd5d3dd7adc..afa86f8302a4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2211,8 +2211,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 		return DP_TP_CTL(encoder->port);
 }
 
-i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state)
+static i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
@@ -2223,6 +2223,25 @@ i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 		return DP_TP_STATUS(encoder->port);
 }
 
+void intel_ddi_clear_act_sent(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	intel_de_write(display, dp_tp_status_reg(encoder, crtc_state),
+		       DP_TP_STATUS_ACT_SENT);
+}
+
+void intel_ddi_wait_for_act_sent(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	if (intel_de_wait_for_set(display, dp_tp_status_reg(encoder, crtc_state),
+				  DP_TP_STATUS_ACT_SENT, 1))
+		drm_err(display->drm, "Timed out waiting for ACT sent\n");
+}
+
 static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel_dp,
 							  const struct intel_crtc_state *crtc_state,
 							  bool enable)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 0d5d820740f6..2faadd1441e2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -26,8 +26,12 @@ enum transcoder;
 
 i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state);
-i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state);
+
+void intel_ddi_clear_act_sent(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state);
+void intel_ddi_wait_for_act_sent(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state);
+
 void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				struct intel_encoder *intel_encoder,
 				const struct intel_crtc_state *old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 53fb93fc52b5..d789f43880c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -966,28 +966,6 @@ mst_connector_atomic_check(struct drm_connector *connector,
 						intel_connector->port);
 }
 
-static void clear_act_sent(struct intel_encoder *encoder,
-			   const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(encoder);
-
-	intel_de_write(display, dp_tp_status_reg(encoder, crtc_state),
-		       DP_TP_STATUS_ACT_SENT);
-}
-
-static void wait_for_act_sent(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(encoder);
-	struct intel_dp *intel_dp = to_primary_dp(encoder);
-
-	if (intel_de_wait_for_set(display, dp_tp_status_reg(encoder, crtc_state),
-				  DP_TP_STATUS_ACT_SENT, 1))
-		drm_err(display->drm, "Timed out waiting for ACT sent\n");
-
-	drm_dp_check_act_status(&intel_dp->mst_mgr);
-}
-
 static void mst_stream_disable(struct intel_atomic_state *state,
 			       struct intel_encoder *encoder,
 			       const struct intel_crtc_state *old_crtc_state,
@@ -1049,13 +1027,14 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 
 	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
 
-	clear_act_sent(encoder, old_crtc_state);
+	intel_ddi_clear_act_sent(encoder, old_crtc_state);
 
 	intel_de_rmw(display,
 		     TRANS_DDI_FUNC_CTL(display, old_crtc_state->cpu_transcoder),
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
 
-	wait_for_act_sent(encoder, old_crtc_state);
+	intel_ddi_wait_for_act_sent(encoder, old_crtc_state);
+	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
 	drm_dp_remove_payload_part2(&intel_dp->mst_mgr, new_mst_state,
 				    old_payload, new_payload);
@@ -1299,7 +1278,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
-	clear_act_sent(encoder, pipe_config);
+	intel_ddi_clear_act_sent(encoder, pipe_config);
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
@@ -1307,7 +1286,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 	drm_dbg_kms(display->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	wait_for_act_sent(encoder, pipe_config);
+	intel_ddi_wait_for_act_sent(encoder, pipe_config);
+	drm_dp_check_act_status(&intel_dp->mst_mgr);
 
 	if (first_mst_stream)
 		intel_ddi_wait_for_fec_status(encoder, pipe_config, true);
-- 
2.39.5

