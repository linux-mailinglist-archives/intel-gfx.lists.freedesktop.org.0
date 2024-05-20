Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8838CA257
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7735810E5A5;
	Mon, 20 May 2024 18:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLoXs0mI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3D110E31E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231502; x=1747767502;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x0DbNd6686fxzocvAXwRJe67ESlwWcg0fZradmzD2Bk=;
 b=hLoXs0mIJBLCveIHCg5Deij1DrrAKdxcQDw4hOvk7FdHJZuvgb0Funad
 DbhFMJQCVibZUctB71xZDTPNv8Mx9pFlAngnn8EDAR6z1oV1O0F1Agxvu
 tCvgbCoJyFjJzEsMrns0C6q/OynpP9erVlgCcD+RX+sI1YHmTYrNjwp7W
 IyHc9vbx5E1mKX8UsWGnoKR1EUGC/+BeMmBoUu7MAVhmkToiql/kvjYq7
 JpsGD0OFYVrAHkJa9jeZ0x6TgbWcIm9Nd9PTlvE0df4RQd2pbbMtqrMtL
 ZvRGBn/Zx05IxFozopixO/Kxhw+iyFEFe2gjWsubj8ZEtHDJU8To61R8M w==;
X-CSE-ConnectionGUID: B04njp9sTsWDqkqWknHX5A==
X-CSE-MsgGUID: pLXj8/ZWT1a8N5MWpkDC6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218513"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218513"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:22 -0700
X-CSE-ConnectionGUID: Wv2mT8SQQFuxWXVpgI7fRg==
X-CSE-MsgGUID: wVp4P31DQU6kIWBDXaLl2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213839"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 03/21] drm/i915/dp: Move link train fallback to
 intel_dp_link_training.c
Date: Mon, 20 May 2024 21:58:01 +0300
Message-ID: <20240520185822.3725844-4-imre.deak@intel.com>
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

Move the functions used to reduce the link parameters during link
training to intel_dp_link_training.c .

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 76 +------------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
 .../drm/i915/display/intel_dp_link_training.c | 73 ++++++++++++++++++
 3 files changed, 77 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ceedd3ef41946..81e620dd33bb7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -329,7 +329,7 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				       intel_dp->num_common_rates, max_rate);
 }
 
-static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
 	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
 			index < 0 || index >= intel_dp->num_common_rates))
@@ -604,7 +604,7 @@ static int intersect_rates(const int *source_rates, int source_len,
 }
 
 /* return index of rate in rates array, or -1 if not found */
-static int intel_dp_rate_index(const int *rates, int len, int rate)
+int intel_dp_rate_index(const int *rates, int len, int rate)
 {
 	int i;
 
@@ -654,78 +654,6 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
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

