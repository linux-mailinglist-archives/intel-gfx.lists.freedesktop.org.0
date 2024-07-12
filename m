Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9A92FBF1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 15:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8986E10ED21;
	Fri, 12 Jul 2024 13:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXzIVwb5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6654910EACF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 13:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720792649; x=1752328649;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=l8OoonLhLTjlJuY+HEug9buXsnXbyA0NmV8we7vXSq8=;
 b=CXzIVwb5H0e8UwBJeMEr/zhiMMIwJlNpC50V44Hb2/oJlKc/R0rUSsuW
 I/rFfx5Ni7LMJ3aWJzxCezrDr8HpQB3vgGKQMbksZMrxQmtOorMW2DMau
 leJoCH2DVrj2lLWP5s3CPEY9vyqRRwEY1Dovn3HmQDeg13kbBijfTdPWO
 kUR+B3yoBcxHqyNFwEd6P+cWYDdrgdovjtBQkU6AWOTDJNJh1uUivrbWw
 umtsKYd3O7whNi0WCdusqlfXHTktZ50YsyrOH13V3e4mBSjFV7zLvPWAf
 wWin/azCqELtcCgNqr56DKbx91iPhE6W2771SB2HBetzeZe5YA2QaXIMo A==;
X-CSE-ConnectionGUID: dJCvBhXbRi20j77WoEl0BA==
X-CSE-MsgGUID: lI46m7UeRaWA9Du2OWXjLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="28823542"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="28823542"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:13 -0700
X-CSE-ConnectionGUID: JhdVzJp+TlK8ZkWX2Gwepw==
X-CSE-MsgGUID: FLDTaD7LTz+xod3JGq8aeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="53485085"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 06:57:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dp: Require a valid atomic state for SST link
 training
Date: Fri, 12 Jul 2024 16:57:23 +0300
Message-ID: <20240712135724.660399-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240712135724.660399-1-imre.deak@intel.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
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

After the previous patch link training happens always with a valid
atomic state, so remove the NOTE comments and asserts which required a
valid state only for DP-MST and allowed for a NULL state for DP-SST.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c            |  5 -----
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 --------------
 2 files changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f83128ac60756..0365fb1e77eae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2866,7 +2866,6 @@ static void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 		drm_connector_put(&connector->base);
 }
 
-/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
 void
 intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      struct intel_encoder *encoder,
@@ -2875,7 +2874,6 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 	struct intel_connector *connector;
 	struct intel_digital_connector_state *conn_state;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i;
 
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
@@ -2884,9 +2882,6 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (drm_WARN_ON(&i915->drm, !state))
-		return;
-
 	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
 		if (!conn_state->base.crtc)
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index af0b71bdf1fcf..58dea87a9fa28 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1234,12 +1234,10 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	return 0;
 }
 
-/* NOTE: @state is only valid for MST links and can be %NULL for SST. */
 static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
 						     struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
@@ -1255,11 +1253,6 @@ static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
 		return false;
 	}
 
-	if (drm_WARN_ON(&i915->drm,
-			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
-			!state))
-		return false;
-
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
 	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
 
@@ -1518,8 +1511,6 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
  * retraining with reduced link rate/lane parameters if the link training
  * fails.
  * After calling this function intel_dp_stop_link_train() must be called.
- *
- * NOTE: @state is only valid for MST links and can be %NULL for SST.
  */
 void intel_dp_start_link_train(struct intel_atomic_state *state,
 			       struct intel_dp *intel_dp,
@@ -1536,11 +1527,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 */
 	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
-	if (drm_WARN_ON(&i915->drm,
-			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
-			!state))
-		return;
-
 	if (lttpr_count < 0)
 		/* Still continue with enabling the port and link training. */
 		lttpr_count = 0;
-- 
2.44.2

