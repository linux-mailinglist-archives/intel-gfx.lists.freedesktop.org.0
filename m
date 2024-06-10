Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3642190270D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B63110E378;
	Mon, 10 Jun 2024 16:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/uyq8jf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F83310E4E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038172; x=1749574172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzsqQfcszazPYdAxkMF+pbbw39Aaw6P+fDFarhExy+s=;
 b=m/uyq8jfZSk9uP4GC9JwVIl8gQhgoutGc0OJV1f/z946rxhJAQVLKGlq
 D1uCpihVG8M83Y/pn8dfWvRq42lp0Grjr0U7E5r/sndlMquxaSBFNHVA6
 9NLWLgwZtd1Q1HrqP1Z1qnXtpybMmjmnt9lsg2uTho8PClQovUf/mgsZY
 X0D+6q8nlwuX/5ZauQj4/gUcy5yB7u5X+sSzSMBbYTl3KDu/Htg1mVkwH
 UIuDpMUH5HGTvl4HiE2oDa7VjZari8UtP7Esq1BgENa1N8gsG0RuSXYV6
 g/rzdIIQGL7g55fjt6h5MEe8ETLylDu430LYwe9T1cJ+CfoW57BzEIpsx g==;
X-CSE-ConnectionGUID: 2b1JnAVLRb67EYmNJFx0KQ==
X-CSE-MsgGUID: N7mUMX+NQU6Jsm9OH65pNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493965"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493965"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:31 -0700
X-CSE-ConnectionGUID: rlmZ3Qg6QLmrQ5IXCBvfMA==
X-CSE-MsgGUID: wnJD/4IcQvGMnlrxL5MwDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060569"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 03/21] drm/i915/dp: Move link train fallback to
 intel_dp_link_training.c
Date: Mon, 10 Jun 2024 19:49:15 +0300
Message-ID: <20240610164933.2947366-4-imre.deak@intel.com>
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

Move the functions used to reduce the link parameters during link
training to intel_dp_link_training.c .

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 76 +------------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
 .../drm/i915/display/intel_dp_link_training.c | 73 ++++++++++++++++++
 3 files changed, 77 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f93c98ac97b05..825116ea31bb8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -330,7 +330,7 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				       intel_dp->num_common_rates, max_rate);
 }
 
-static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
 	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
 			index < 0 || index >= intel_dp->num_common_rates))
@@ -605,7 +605,7 @@ static int intersect_rates(const int *source_rates, int source_len,
 }
 
 /* return index of rate in rates array, or -1 if not found */
-static int intel_dp_rate_index(const int *rates, int len, int rate)
+int intel_dp_rate_index(const int *rates, int len, int rate)
 {
 	int i;
 
@@ -655,78 +655,6 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	return true;
 }
 
-static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
-						     int link_rate,
-						     u8 lane_count)
-{
-	/* FIXME figure out what we actually want here */
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
-	int mode_rate, max_rate;
-
-	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
-	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
-	if (mode_rate > max_rate)
-		return false;
-
-	return true;
-}
-
-int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-					    int link_rate, u8 lane_count)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int index;
-
-	/*
-	 * TODO: Enable fallback on MST links once MST link compute can handle
-	 * the fallback params.
-	 */
-	if (intel_dp->is_mst) {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
-	}
-
-	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
-		drm_dbg_kms(&i915->drm,
-			    "Retrying Link training for eDP with max parameters\n");
-		intel_dp->use_max_params = true;
-		return 0;
-	}
-
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
-		return -1;
-	}
-
-	return 0;
-}
-
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 {
 	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index aad2223df2a35..e7b47e7bcd98b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -55,8 +55,6 @@ void intel_dp_connector_sync_state(struct intel_connector *connector,
 				   const struct intel_crtc_state *crtc_state);
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, int lane_count);
-int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-					    int link_rate, u8 lane_count);
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
@@ -107,6 +105,8 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 947575140059d..4db293f256896 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -25,6 +25,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "intel_panel.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
@@ -1091,6 +1092,78 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 	return ret;
 }
 
+static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
+						     int link_rate,
+						     u8 lane_count)
+{
+	/* FIXME figure out what we actually want here */
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
+	int mode_rate, max_rate;
+
+	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
+	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
+	if (mode_rate > max_rate)
+		return false;
+
+	return true;
+}
+
+static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
+						   int link_rate, u8 lane_count)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int index;
+
+	/*
+	 * TODO: Enable fallback on MST links once MST link compute can handle
+	 * the fallback params.
+	 */
+	if (intel_dp->is_mst) {
+		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+		return -1;
+	}
+
+	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
+		drm_dbg_kms(&i915->drm,
+			    "Retrying Link training for eDP with max parameters\n");
+		intel_dp->use_max_params = true;
+		return 0;
+	}
+
+	index = intel_dp_rate_index(intel_dp->common_rates,
+				    intel_dp->num_common_rates,
+				    link_rate);
+	if (index > 0) {
+		if (intel_dp_is_edp(intel_dp) &&
+		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
+							      intel_dp_common_rate(intel_dp, index - 1),
+							      lane_count)) {
+			drm_dbg_kms(&i915->drm,
+				    "Retrying Link training for eDP with same parameters\n");
+			return 0;
+		}
+		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, index - 1);
+		intel_dp->link.max_lane_count = lane_count;
+	} else if (lane_count > 1) {
+		if (intel_dp_is_edp(intel_dp) &&
+		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
+							      intel_dp_max_common_rate(intel_dp),
+							      lane_count >> 1)) {
+			drm_dbg_kms(&i915->drm,
+				    "Retrying Link training for eDP with same parameters\n");
+			return 0;
+		}
+		intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+		intel_dp->link.max_lane_count = lane_count >> 1;
+	} else {
+		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+		return -1;
+	}
+
+	return 0;
+}
+
 static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-- 
2.43.3

