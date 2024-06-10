Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC4290271B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D7710E4F7;
	Mon, 10 Jun 2024 16:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hHmzAk+4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4415A10E417
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038182; x=1749574182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oylYWMikVtldDRahwKyMZvj0KSdwn2+r5ToEgOOs4Vk=;
 b=hHmzAk+4IaPwgwzrtYH9Ela6WuEt6PNeTnSWqr5R7SWBi3MpYLV0QlCc
 FzrNb8zvYyAySd5TUd37aDT8SApGyj6M7JycO5+uJWeK5El42C+Jzwg2p
 f3gryMh8s4MeR/lHE1JsuEwbq/1PRNHPdqh8lbW7Mu6KN9VboB6ATDny2
 s+BdsZUoY5uNva+3pMqsEloDBqdr6bmaxGkIE+paKfYOLj40DP/HPaUe3
 Dl6WlsGGQIi1akKCU0HJ4B4qWPSh/grbqfVirPuzHlSNTqqHwg1FEJ/h9
 KI8olB2Yt+ecc8asK9R8Qg8NrkHvQ7ipb39vGs4KHrlXwQsR5NY8sNHxo g==;
X-CSE-ConnectionGUID: yKXqzydcQpqv4LMvM+5irg==
X-CSE-MsgGUID: lE+xzJTWSWOoPa/8KRxqYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494005"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494005"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:41 -0700
X-CSE-ConnectionGUID: LlS2qgQ7T8GKgu/AahrHpQ==
X-CSE-MsgGUID: sJwuV90ORWCoJ7d9cTQupA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060598"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 12/21] drm/i915/dp: Use check link state work in the detect
 handler
Date: Mon, 10 Jun 2024 19:49:24 +0300
Message-ID: <20240610164933.2947366-13-imre.deak@intel.com>
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

Simplify things by retraining a DP link if a bad link is detected in the
connector detect handler from the encoder's check link state work,
similarly to how this is done after a modeset link training failure.

v2: Add TODO: comment to remove the detect-time link state check.
    (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h |  2 --
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e770f1bfbcd2..6e9c85a94d27e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5154,8 +5154,8 @@ static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 		intel_dp->is_mst;
 }
 
-int intel_dp_retrain_link(struct intel_encoder *encoder,
-			  struct drm_modeset_acquire_ctx *ctx)
+static int intel_dp_retrain_link(struct intel_encoder *encoder,
+				 struct drm_modeset_acquire_ctx *ctx)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -5889,12 +5889,13 @@ intel_dp_detect(struct drm_connector *connector,
 	/*
 	 * Some external monitors do not signal loss of link synchronization
 	 * with an IRQ_HPD, so force a link status check.
+	 *
+	 * TODO: this probably became redundant, so remove it: the link state
+	 * is rechecked/recovered now after modesets, where the loss of
+	 * synchronization tends to occur.
 	 */
-	if (!intel_dp_is_edp(intel_dp)) {
-		ret = intel_dp_retrain_link(encoder, ctx);
-		if (ret)
-			return ret;
-	}
+	if (!intel_dp_is_edp(intel_dp))
+		intel_dp_check_link_state(intel_dp);
 
 	/*
 	 * Clearing NACK and defer counts to get their exact values
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3bb8189b9698d..5b0e66e22cd8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -57,8 +57,6 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
-int intel_dp_retrain_link(struct intel_encoder *encoder,
-			  struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_link_check(struct intel_encoder *encoder);
 void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
-- 
2.43.3

