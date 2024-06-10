Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5369902714
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEFA10E4E0;
	Mon, 10 Jun 2024 16:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OQuGiBjx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF4A10E0D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038178; x=1749574178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8s4cZJ7WvNBcBf0DZnGaMP7E3Okd8640nEKO656Byw=;
 b=OQuGiBjxlBAUbPlGsdEMTiW1MQ/qqY2QvY5QnqZBYmT1fPOyG3sOuFkn
 xnJkGr8NRNWOw7DO85XJnVdz7jtCsCbKpIBek2e5qZGjFN8dwxEr3p+Qn
 SRc9deruHnVP0iOpOu0+BDeyfzPYwoAAN+7Kkf6PV+w7U+hDuo3wb8vDZ
 ZrVveOJrSo1fBvSaKZb7N5pSQdIaGmSYAlsZDztqCM0BtqwuTy6IIjSEx
 2xCsMaju7Yns/bvFVMjG3OjnnIVtez47R4859OlBL2TCj1vKfZKGRLYzi
 IYkFfgQyj3hxPo16dXgaIkoyS8vVyrChq4IG2I4rqKRoZ1OtoLjj98Gn6 Q==;
X-CSE-ConnectionGUID: //kCaGi6Rm2BPPyksteGOw==
X-CSE-MsgGUID: 80kSYgyxQGemm9FeTXyOLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493992"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493992"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:38 -0700
X-CSE-ConnectionGUID: qXv3euPSTUON9f5enb1rOA==
X-CSE-MsgGUID: qi90eBjsQ+WtLj9IFnPfvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060593"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 09/21] drm/i915/dp: Pass atomic state to link training
 function
Date: Mon, 10 Jun 2024 19:49:21 +0300
Message-ID: <20240610164933.2947366-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Imre Deak <imre.deak@gmail.com>

The next patch adds sending a modeset-retry uevent after a link training
failure to all MST connectors on link. This requires the atomic state,
so pass it to intel_dp_start_link_train(). In case of SST where
retraining still happens by calling this function directly instead of a
modeset commit the atomic state is not available and NULL is passed
instead. This is ok, since in this case the encoder's only DP connector
is available from intel_dp->attached_connector not requiring the atomic
state.

v2: Add NOTE that the atomic state may not be valid for SST links and
    assert that it's valid for MST links. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c              |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c               |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_dp_link_training.h |  4 +++-
 5 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 75a6e7bc10e13..07f1e719bdfc2 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -707,7 +707,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 	intel_dp_configure_protocol_converter(intel_dp, pipe_config);
 	intel_dp_check_frl_training(intel_dp);
 	intel_dp_pcon_dsc_configure(intel_dp, pipe_config);
-	intel_dp_start_link_train(intel_dp, pipe_config);
+	intel_dp_start_link_train(state, intel_dp, pipe_config);
 	intel_dp_stop_link_train(intel_dp, pipe_config);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 127283fc6c9ed..5b27410280355 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2596,7 +2596,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
 	 *     (timeout after 800 us)
 	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 
 	/* 6.n Set DP_TP_CTL link training to Normal */
 	if (!is_trans_port_sync_mode(crtc_state))
@@ -2738,7 +2738,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
 	 *     (timeout after 800 us)
 	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 
 	/* 7.k Set DP_TP_CTL link training to Normal */
 	if (!is_trans_port_sync_mode(crtc_state))
@@ -2805,7 +2805,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 						   to_intel_connector(conn_state->connector),
 						   crtc_state);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
 	    !is_trans_port_sync_mode(crtc_state))
 		intel_dp_stop_link_train(intel_dp, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e8de50fa918c..4438ec2989249 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5218,7 +5218,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 		intel_dp_check_frl_training(intel_dp);
 		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
-		intel_dp_start_link_train(intel_dp, crtc_state);
+		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 8caf740e642f2..04629a4341eef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1453,6 +1453,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 
 /**
  * intel_dp_start_link_train - start link training
+ * @state: Atomic state
  * @intel_dp: DP struct
  * @crtc_state: state for CRTC attached to the encoder
  *
@@ -1460,8 +1461,11 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
  * retraining with reduced link rate/lane parameters if the link training
  * fails.
  * After calling this function intel_dp_stop_link_train() must be called.
+ *
+ * NOTE: @state is only valid for MST links and can be %NULL for SST.
  */
-void intel_dp_start_link_train(struct intel_dp *intel_dp,
+void intel_dp_start_link_train(struct intel_atomic_state *state,
+			       struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -1475,6 +1479,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	 */
 	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
+	if (drm_WARN_ON(&i915->drm,
+			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
+			!state))
+		return;
+
 	if (lttpr_count < 0)
 		/* Still continue with enabling the port and link training. */
 		lttpr_count = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 19836a8a4f904..f658230960333 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -8,6 +8,7 @@
 
 #include <drm/display/drm_dp_helper.h>
 
+struct intel_atomic_state;
 struct intel_crtc_state;
 struct intel_dp;
 
@@ -25,7 +26,8 @@ void intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state,
 				enum drm_dp_phy dp_phy);
-void intel_dp_start_link_train(struct intel_dp *intel_dp,
+void intel_dp_start_link_train(struct intel_atomic_state *state,
+			       struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state);
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state);
-- 
2.43.3

