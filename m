Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F2A8CA268
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F3610E863;
	Mon, 20 May 2024 18:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h22ZsXoi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6053310E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231508; x=1747767508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VO3jQncVcjKCZjdrr7iKqB4r5Xpgugmvsqis8ostWso=;
 b=h22ZsXoiXofptlWG5MNYDZrwhg/E6NuLjkXGn/DUo7i8F0I89CLlgZRd
 3xZtny8x8GKr6nZkd2F46V1xrXu/JL752KCmV0+1LJ6Fs75/0Hz4XjqFr
 ZtcfgE5N6hopBglASq7hVjQkple7kOaMIEa9OiqhJB2xyBOmMHzutA1g6
 79Kkl/A8js78VjHIki4mWH2HlN327A4ctHsJB4CuWUCiPHomFKFYcLqZk
 PeW1kpKiLoYYjWxnNyJXXDrOgEX3N1yga9yxnNQ4yX0NUDGFTIrE3RA3U
 H9Hkz+2pd3jTVYOcqfUcSADxIvJyIew5G+kFMrikbitF2ZfCqKcK6XH/v w==;
X-CSE-ConnectionGUID: +P2PwZoJTNag1ZdJ5qpXTg==
X-CSE-MsgGUID: +Kdf7xj3QDKyiMcgNjf97g==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218533"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218533"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:28 -0700
X-CSE-ConnectionGUID: 3uYDKC1NT9m4yp5pD/WWaQ==
X-CSE-MsgGUID: aRadFnmQQx6MdZuHYgE+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213855"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 09/21] drm/i915/dp: Pass atomic state to link training
 function
Date: Mon, 20 May 2024 21:58:07 +0300
Message-ID: <20240520185822.3725844-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

From: Imre Deak <imre.deak@gmail.com>

The next patch adds sending a modeset-retry uevent after a link training
failure to all MST connectors on link. This requires the atomic state,
so pass it to intel_dp_start_link_train(). In case of SST where
retraining still happens by calling this function directly instead of a
modeset commit the atomic state is not available and NULL is passed
instead. This is ok, since in this case the encoder's only DP connector
is available from intel_dp->attached_connector not requiring the atomic
state.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c              | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c               | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_dp_link_training.h | 4 +++-
 5 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 4363e32a834df..0d7424a7581e6 100644
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
index 86358ec27e685..58e57a7704811 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2586,7 +2586,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
 	 *     (timeout after 800 us)
 	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 
 	/* 6.n Set DP_TP_CTL link training to Normal */
 	if (!is_trans_port_sync_mode(crtc_state))
@@ -2728,7 +2728,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
 	 *     (timeout after 800 us)
 	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 
 	/* 7.k Set DP_TP_CTL link training to Normal */
 	if (!is_trans_port_sync_mode(crtc_state))
@@ -2795,7 +2795,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 						   to_intel_connector(conn_state->connector),
 						   crtc_state);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
-	intel_dp_start_link_train(intel_dp, crtc_state);
+	intel_dp_start_link_train(state, intel_dp, crtc_state);
 	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
 	    !is_trans_port_sync_mode(crtc_state))
 		intel_dp_stop_link_train(intel_dp, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7c824c5a13346..1f0b7cceea2dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5214,7 +5214,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 		intel_dp_check_frl_training(intel_dp);
 		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
-		intel_dp_start_link_train(intel_dp, crtc_state);
+		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e804f0b801c02..4f60daa97407d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1453,6 +1453,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 
 /**
  * intel_dp_start_link_train - start link training
+ * @state: Atomic state
  * @intel_dp: DP struct
  * @crtc_state: state for CRTC attached to the encoder
  *
@@ -1461,7 +1462,8 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
  * fails.
  * After calling this function intel_dp_stop_link_train() must be called.
  */
-void intel_dp_start_link_train(struct intel_dp *intel_dp,
+void intel_dp_start_link_train(struct intel_atomic_state *state,
+			       struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
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

