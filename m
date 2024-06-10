Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 921D690270A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD4A89343;
	Mon, 10 Jun 2024 16:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhks2H61";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB33010E378
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038172; x=1749574172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=veadgiQsBuDC8qvoz5mDojk9q1irEFAcKwSRCvj0VOg=;
 b=bhks2H618LqHuq9ViIl4ysYXqtKoG10fQ9KtFqX5hw3/SoIjVtUfTuUF
 P7AaMz8tM+55mXimdvI1hLw2AL4DSVuseDpXPz29SISHRjADsn2ZsNpTQ
 qbKLGGPS2n/f/z6n5EkcIeBwzyoLld4Xk8u9pQxak/TxPRkSkr6m7zQUh
 bk9P7RKm7AwxLbQXq9UvAmQt0tZvK/MTy/gA/LWkqCYZCnpYfFs5eCmkY
 d4sPGjrcwzbeGIz3C0jNZ6U3YZbOMklOhBIJfVZ9oDJCqqFVfRYR2ZFkt
 E3WcDeX4TOFW+89pGPskDEb1ffIpw79ZTbfbKCjQRhQkzs5nbFNfDxhhh A==;
X-CSE-ConnectionGUID: I78Uz7BAQo2j/TDG03O0Og==
X-CSE-MsgGUID: eaQyCYH9QiGkyGgT2ieA3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493967"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493967"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:32 -0700
X-CSE-ConnectionGUID: 1NK2DoOqR8+TrbP8wcxsAg==
X-CSE-MsgGUID: ZwpL69EKTmGUu7Iqx6x8gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060574"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 04/21] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
Date: Mon, 10 Jun 2024 19:49:16 +0300
Message-ID: <20240610164933.2947366-5-imre.deak@intel.com>
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

Reduce the indentation in intel_dp_get_link_train_fallback_values() by
adding separate helpers to reduce the link rate and lane count. Also
simplify things by passing crtc_state to the function.

This also prepares for later patches in the patchset adding a limitation
on how the link params are reduced.

While at it use lt_dbg()/lt_err() for debug/error prints in the function
which will also print the connector/encoder prefix and add a debug print
about reducing the link parameters.

v2:
- Align reduce_lane_count()'s error handling flow with
  reduce_link_rate(). (Ville, Jani)
- Use lt_dbg()/lt_err() in the function.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 92 +++++++++++--------
 1 file changed, 56 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 4db293f256896..190372cf76e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1109,58 +1109,80 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 	return true;
 }
 
+static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
+{
+	int rate_index;
+	int new_rate;
+
+	rate_index = intel_dp_rate_index(intel_dp->common_rates,
+					 intel_dp->num_common_rates,
+					 current_rate);
+
+	if (rate_index <= 0)
+		return -1;
+
+	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
+
+	return new_rate;
+}
+
+static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
+{
+	if (current_lane_count == 1)
+		return -1;
+
+	return current_lane_count >> 1;
+}
+
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-						   int link_rate, u8 lane_count)
+						   const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int index;
+	int new_link_rate;
+	int new_lane_count;
 
 	/*
 	 * TODO: Enable fallback on MST links once MST link compute can handle
 	 * the fallback params.
 	 */
 	if (intel_dp->is_mst) {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+		lt_err(intel_dp, DP_PHY_DPRX, "Link Training Unsuccessful\n");
 		return -1;
 	}
 
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
-		drm_dbg_kms(&i915->drm,
-			    "Retrying Link training for eDP with max parameters\n");
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Retrying Link training for eDP with max parameters\n");
 		intel_dp->use_max_params = true;
 		return 0;
 	}
 
-	index = intel_dp_rate_index(intel_dp->common_rates,
-				    intel_dp->num_common_rates,
-				    link_rate);
-	if (index > 0) {
-		if (intel_dp_is_edp(intel_dp) &&
-		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
-							      intel_dp_common_rate(intel_dp, index - 1),
-							      lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "Retrying Link training for eDP with same parameters\n");
-			return 0;
-		}
-		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, index - 1);
-		intel_dp->link.max_lane_count = lane_count;
-	} else if (lane_count > 1) {
-		if (intel_dp_is_edp(intel_dp) &&
-		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
-							      intel_dp_max_common_rate(intel_dp),
-							      lane_count >> 1)) {
-			drm_dbg_kms(&i915->drm,
-				    "Retrying Link training for eDP with same parameters\n");
-			return 0;
-		}
-		intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
-		intel_dp->link.max_lane_count = lane_count >> 1;
-	} else {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+	new_lane_count = crtc_state->lane_count;
+	new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
+	if (new_link_rate < 0) {
+		new_lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
+		new_link_rate = intel_dp_max_common_rate(intel_dp);
+	}
+
+	if (new_lane_count < 0) {
+		lt_err(intel_dp, DP_PHY_DPRX, "Link Training Unsuccessful\n");
 		return -1;
 	}
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Retrying Link training for eDP with same parameters\n");
+		return 0;
+	}
+
+	lt_dbg(intel_dp, DP_PHY_DPRX,
+	       "Reducing link parameters from %dx%d to %dx%d\n",
+	       crtc_state->lane_count, crtc_state->port_clock,
+	       new_lane_count, new_link_rate);
+
+	intel_dp->link.max_rate = new_link_rate;
+	intel_dp->link.max_lane_count = new_lane_count;
+
 	return 0;
 }
 
@@ -1178,9 +1200,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
 		intel_dp->hobl_failed = true;
-	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
-							   crtc_state->port_clock,
-							   crtc_state->lane_count)) {
+	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
 		return;
 	}
 
-- 
2.43.3

