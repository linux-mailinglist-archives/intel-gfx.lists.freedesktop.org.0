Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E926FDBB0
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5478B10E47E;
	Wed, 10 May 2023 10:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A27110E479
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714666; x=1715250666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5vnb+cYA6zlyJfipCS4f0XxGEHXJh7Dle7XfkxujcK8=;
 b=VooObBX99TX6pSs1lhs0FxNwwJ/9AQlE1gGonrXlUVr53aKHW0MaCb4v
 WUIjvlB7mPYzug5aVomuCLxpH3nYyriQg3PwWiBrNcm2cTCtPDTHm1RhP
 409a70VyBFUkzLu1pvG2s/pZ8wOi+HVf2Y3/8HElFzh1FnyUCrEoGasSi
 fo8tMzFwzzB2A+ZFWrP2qgvTAsaPf8dqIER6DUUodPlT39OmSxz/Uqonp
 fupZLG80/XpJFl2EB0kHH8YY4lERLSZJs4yr2lUU7T4DcIE9TO5KW6B4Q
 RzSzNMJzAsAWPeQUY2D/51DXS3fyS9AtrzzxW7U/GyXYGVV/M35KnOLb8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214431"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214431"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796737"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796737"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:25 +0300
Message-Id: <20230510103131.1618266-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/14] drm/i915/dp: Add link training debug
 and error printing helpers
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add functions for printing link training debug and error messages, both
to prepare for the next patch, which downgrades an error to a debug
message if the sink is disconnected and to remove some code duplication.

v2: (Ville)
- Always print the connector prefix.
- Preserve the drm_dbg_kms() debug category.
v3:
- Keep printing the name of functions calling the helpers. (Jani)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v2)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 367 ++++++------------
 1 file changed, 120 insertions(+), 247 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e92c62bcc9b85..4f33b79b23db0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -26,6 +26,23 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 
+#define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
+#define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
+					(_intel_dp)->attached_connector->base.name, \
+					dp_to_dig_port(_intel_dp)->base.base.base.id, \
+					dp_to_dig_port(_intel_dp)->base.base.name, \
+					drm_dp_phy_name(_dp_phy)
+
+#define lt_dbg(_intel_dp, _dp_phy, _format, ...) \
+	drm_dbg_kms(&dp_to_i915(_intel_dp)->drm, \
+		    LT_MSG_PREFIX _format, \
+		    LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)
+
+#define lt_err(_intel_dp, _dp_phy, _format, ...) \
+	drm_err(&dp_to_i915(_intel_dp)->drm, \
+		LT_MSG_PREFIX _format, \
+		LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)
+
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
@@ -47,29 +64,21 @@ static void intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
 					 const u8 dpcd[DP_RECEIVER_CAP_SIZE],
 					 enum drm_dp_phy dp_phy)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	u8 *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
 
 	if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dpcd, dp_phy, phy_caps) < 0) {
-		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-			    "[ENCODER:%d:%s][%s] failed to read the PHY caps\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy));
+		lt_dbg(intel_dp, dp_phy, "failed to read the PHY caps\n");
 		return;
 	}
 
-	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[ENCODER:%d:%s][%s] PHY capabilities: %*ph\n",
-		    encoder->base.base.id, encoder->base.name,
-		    drm_dp_phy_name(dp_phy),
-		    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
-		    phy_caps);
+	lt_dbg(intel_dp, dp_phy, "PHY capabilities: %*ph\n",
+	       (int)sizeof(intel_dp->lttpr_phy_caps[0]),
+	       phy_caps);
 }
 
 static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
 					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int ret;
 
 	ret = drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
@@ -77,11 +86,9 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
 	if (ret < 0)
 		goto reset_caps;
 
-	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[ENCODER:%d:%s] LTTPR common capabilities: %*ph\n",
-		    encoder->base.base.id, encoder->base.name,
-		    (int)sizeof(intel_dp->lttpr_common_caps),
-		    intel_dp->lttpr_common_caps);
+	lt_dbg(intel_dp, DP_PHY_DPRX, "LTTPR common capabilities: %*ph\n",
+	       (int)sizeof(intel_dp->lttpr_common_caps),
+	       intel_dp->lttpr_common_caps);
 
 	/* The minimum value of LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV is 1.4 */
 	if (intel_dp->lttpr_common_caps[0] < 0x14)
@@ -105,8 +112,6 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 
 static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int lttpr_count;
 	int i;
 
@@ -138,9 +143,8 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 		return 0;
 
 	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n",
-			    encoder->base.base.id, encoder->base.name);
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
 
 		intel_dp_set_lttpr_transparent_mode(intel_dp, true);
 		intel_dp_reset_lttpr_count(intel_dp);
@@ -409,26 +413,22 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			  enum drm_dp_phy dp_phy,
 			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int lane;
 
 	if (intel_dp_is_uhbr(crtc_state)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
-			    "TX FFE request: " TRAIN_REQ_FMT "\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy),
-			    crtc_state->lane_count,
-			    TRAIN_REQ_TX_FFE_ARGS(link_status));
+		lt_dbg(intel_dp, dp_phy,
+		       "128b/132b, lanes: %d, "
+		       "TX FFE request: " TRAIN_REQ_FMT "\n",
+		       crtc_state->lane_count,
+		       TRAIN_REQ_TX_FFE_ARGS(link_status));
 	} else {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
-			    "vswing request: " TRAIN_REQ_FMT ", "
-			    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy),
-			    crtc_state->lane_count,
-			    TRAIN_REQ_VSWING_ARGS(link_status),
-			    TRAIN_REQ_PREEMPH_ARGS(link_status));
+		lt_dbg(intel_dp, dp_phy,
+		       "8b/10b, lanes: %d, "
+		       "vswing request: " TRAIN_REQ_FMT ", "
+		       "pre-emphasis request: " TRAIN_REQ_FMT "\n",
+		       crtc_state->lane_count,
+		       TRAIN_REQ_VSWING_ARGS(link_status),
+		       TRAIN_REQ_PREEMPH_ARGS(link_status));
 	}
 
 	for (lane = 0; lane < 4; lane++)
@@ -487,16 +487,11 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       enum drm_dp_phy dp_phy,
 				       u8 dp_train_pat)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 train_pat = intel_dp_training_pattern_symbol(dp_train_pat);
 
 	if (train_pat != DP_TRAINING_PATTERN_DISABLE)
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s][%s] Using DP training pattern TPS%c\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy),
-			    dp_training_pattern_name(train_pat));
+		lt_dbg(intel_dp, dp_phy, "Using DP training pattern TPS%c\n",
+		       dp_training_pattern_name(train_pat));
 
 	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
 }
@@ -531,24 +526,21 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				enum drm_dp_phy dp_phy)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_dp_is_uhbr(crtc_state)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
-			    "TX FFE presets: " TRAIN_SET_FMT "\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy),
-			    crtc_state->lane_count,
-			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
+		lt_dbg(intel_dp, dp_phy,
+		       "128b/132b, lanes: %d, "
+		       "TX FFE presets: " TRAIN_SET_FMT "\n",
+		       crtc_state->lane_count,
+		       TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
 	} else {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
-			    "vswing levels: " TRAIN_SET_FMT ", "
-			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy),
-			    crtc_state->lane_count,
-			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
-			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
+		lt_dbg(intel_dp, dp_phy,
+		       "8b/10b, lanes: %d, "
+		       "vswing levels: " TRAIN_SET_FMT ", "
+		       "pre-emphasis levels: " TRAIN_SET_FMT "\n",
+		       crtc_state->lane_count,
+		       TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
+		       TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
 	}
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
@@ -677,8 +669,6 @@ static bool
 intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 link_bw, rate_select;
 
 	if (intel_dp->prepare_link_retrain)
@@ -699,24 +689,21 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 	 * link rates are not stable.
 	 */
 	if (!link_bw) {
-		struct intel_connector *connector = intel_dp->attached_connector;
 		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
 
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Reloading eDP link rates\n",
-			    connector->base.base.id, connector->base.name);
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Reloading eDP link rates\n");
 
 		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
 				 sink_rates, sizeof(sink_rates));
 	}
 
 	if (link_bw)
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] Using LINK_BW_SET value %02x\n",
-			    encoder->base.base.id, encoder->base.name, link_bw);
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Using LINK_BW_SET value %02x\n",
+		       link_bw);
 	else
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
-			    encoder->base.base.id, encoder->base.name, rate_select);
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Using LINK_RATE_SET value %02x\n",
+		       rate_select);
 	/*
 	 * Spec DP2.1 Section 3.5.2.16
 	 * Prior to LT DPTX should set 128b/132b DP Channel coding and then set link rate
@@ -758,15 +745,10 @@ void
 intel_dp_dump_link_status(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	drm_dbg_kms(&i915->drm,
-		    "[ENCODER:%d:%s][%s] ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
-		    encoder->base.base.id, encoder->base.name,
-		    drm_dp_phy_name(dp_phy),
-		    link_status[0], link_status[1], link_status[2],
-		    link_status[3], link_status[4], link_status[5]);
+	lt_dbg(intel_dp, dp_phy,
+	       "ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
+	       link_status[0], link_status[1], link_status[2],
+	       link_status[3], link_status[4], link_status[5]);
 }
 
 /*
@@ -778,8 +760,6 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state,
 				      enum drm_dp_phy dp_phy)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 old_link_status[DP_LINK_STATUS_SIZE] = {};
 	int voltage_tries, cr_tries, max_cr_tries;
 	u8 link_status[DP_LINK_STATUS_SIZE];
@@ -794,9 +774,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
 				       DP_TRAINING_PATTERN_1 |
 				       DP_LINK_SCRAMBLING_DISABLE)) {
-		drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to enable link training\n",
-			encoder->base.base.id, encoder->base.name,
-			drm_dp_phy_name(dp_phy));
+		lt_err(intel_dp, dp_phy, "Failed to enable link training\n");
 		return false;
 	}
 
@@ -819,35 +797,24 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
-			drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to get link status\n",
-				encoder->base.base.id, encoder->base.name,
-				drm_dp_phy_name(dp_phy));
+			lt_err(intel_dp, dp_phy, "Failed to get link status\n");
 			return false;
 		}
 
 		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s][%s] Clock recovery OK\n",
-				    encoder->base.base.id, encoder->base.name,
-				    drm_dp_phy_name(dp_phy));
+			lt_dbg(intel_dp, dp_phy, "Clock recovery OK\n");
 			return true;
 		}
 
 		if (voltage_tries == 5) {
 			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
-				    encoder->base.base.id, encoder->base.name,
-				    drm_dp_phy_name(dp_phy));
+			lt_dbg(intel_dp, dp_phy, "Same voltage tried 5 times\n");
 			return false;
 		}
 
 		if (max_vswing_reached) {
 			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
-				    encoder->base.base.id, encoder->base.name,
-				    drm_dp_phy_name(dp_phy));
+			lt_dbg(intel_dp, dp_phy, "Max Voltage Swing reached\n");
 			return false;
 		}
 
@@ -855,10 +822,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
 					  link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s][%s] Failed to update link training\n",
-				encoder->base.base.id, encoder->base.name,
-				drm_dp_phy_name(dp_phy));
+			lt_err(intel_dp, dp_phy, "Failed to update link training\n");
 			return false;
 		}
 
@@ -874,10 +838,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	}
 
 	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
-	drm_err(&i915->drm,
-		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
-		encoder->base.base.id, encoder->base.name,
-		drm_dp_phy_name(dp_phy), max_cr_tries);
+	lt_err(intel_dp, dp_phy, "Failed clock recovery %d times, giving up!\n",
+	       max_cr_tries);
 
 	return false;
 }
@@ -911,11 +873,11 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 		return DP_TRAINING_PATTERN_4;
 	} else if (crtc_state->port_clock == 810000) {
 		if (!source_tps4)
-			drm_dbg_kms(&i915->drm,
-				    "8.1 Gbps link rate without source TPS4 support\n");
+			lt_dbg(intel_dp, dp_phy,
+			       "8.1 Gbps link rate without source TPS4 support\n");
 		if (!sink_tps4)
-			drm_dbg_kms(&i915->drm,
-				    "8.1 Gbps link rate without sink TPS4 support\n");
+			lt_dbg(intel_dp, dp_phy,
+			       "8.1 Gbps link rate without sink TPS4 support\n");
 	}
 
 	/*
@@ -929,11 +891,11 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 		return  DP_TRAINING_PATTERN_3;
 	} else if (crtc_state->port_clock >= 540000) {
 		if (!source_tps3)
-			drm_dbg_kms(&i915->drm,
-				    ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
+			lt_dbg(intel_dp, dp_phy,
+			       ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
 		if (!sink_tps3)
-			drm_dbg_kms(&i915->drm,
-				    ">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
+			lt_dbg(intel_dp, dp_phy,
+			       ">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
 	}
 
 	return DP_TRAINING_PATTERN_2;
@@ -949,8 +911,6 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state,
 					    enum drm_dp_phy dp_phy)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int tries;
 	u32 training_pattern;
 	u8 link_status[DP_LINK_STATUS_SIZE];
@@ -969,10 +929,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	/* channel equalization */
 	if (!intel_dp_set_link_train(intel_dp, crtc_state, dp_phy,
 				     training_pattern)) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s][%s] Failed to start channel equalization\n",
-			encoder->base.base.id, encoder->base.name,
-			drm_dp_phy_name(dp_phy));
+		lt_err(intel_dp, dp_phy, "Failed to start channel equalization\n");
 		return false;
 	}
 
@@ -981,10 +938,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s][%s] Failed to get link status\n",
-				encoder->base.base.id, encoder->base.name,
-				drm_dp_phy_name(dp_phy));
+			lt_err(intel_dp, dp_phy, "Failed to get link status\n");
 			break;
 		}
 
@@ -992,21 +946,15 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		if (!drm_dp_clock_recovery_ok(link_status,
 					      crtc_state->lane_count)) {
 			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s][%s] Clock recovery check failed, cannot "
-				    "continue channel equalization\n",
-				    encoder->base.base.id, encoder->base.name,
-				    drm_dp_phy_name(dp_phy));
+			lt_dbg(intel_dp, dp_phy,
+			       "Clock recovery check failed, cannot continue channel equalization\n");
 			break;
 		}
 
 		if (drm_dp_channel_eq_ok(link_status,
 					 crtc_state->lane_count)) {
 			channel_eq = true;
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s][%s] Channel EQ done. DP Training successful\n",
-				    encoder->base.base.id, encoder->base.name,
-				    drm_dp_phy_name(dp_phy));
+			lt_dbg(intel_dp, dp_phy, "Channel EQ done. DP Training successful\n");
 			break;
 		}
 
@@ -1014,10 +962,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
 					  link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s][%s] Failed to update link training\n",
-				encoder->base.base.id, encoder->base.name,
-				drm_dp_phy_name(dp_phy));
+			lt_err(intel_dp, dp_phy, "Failed to update link training\n");
 			break;
 		}
 	}
@@ -1025,10 +970,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	/* Try 5 times, else fail and try at lower BW */
 	if (tries == 5) {
 		intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s][%s] Channel equalization failed 5 times\n",
-			    encoder->base.base.id, encoder->base.name,
-			    drm_dp_phy_name(dp_phy));
+		lt_dbg(intel_dp, dp_phy, "Channel equalization failed 5 times\n");
 	}
 
 	return channel_eq;
@@ -1047,13 +989,12 @@ static int
 intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 sink_status;
 	int ret;
 
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SINK_STATUS, &sink_status);
 	if (ret != 1) {
-		drm_dbg_kms(&i915->drm, "Failed to read sink status\n");
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Failed to read sink status\n");
 		return ret < 0 ? ret : -EIO;
 	}
 
@@ -1079,9 +1020,6 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-
 	intel_dp->link_trained = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
@@ -1090,9 +1028,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	if (intel_dp_is_uhbr(crtc_state) &&
 	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
-		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] 128b/132b intra-hop not clearing\n",
-			    encoder->base.base.id, encoder->base.name);
+		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
 }
 
@@ -1101,8 +1037,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 			const struct intel_crtc_state *crtc_state,
 			enum drm_dp_phy dp_phy)
 {
-	struct intel_connector *connector = intel_dp->attached_connector;
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool ret = false;
 
 	if (!intel_dp_link_training_clock_recovery(intel_dp, crtc_state, dp_phy))
@@ -1114,13 +1048,10 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 	ret = true;
 
 out:
-	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] Link Training %s at link rate = %d, lane count = %d\n",
-		    connector->base.base.id, connector->base.name,
-		    encoder->base.base.id, encoder->base.name,
-		    drm_dp_phy_name(dp_phy),
-		    ret ? "passed" : "failed",
-		    crtc_state->port_clock, crtc_state->lane_count);
+	lt_dbg(intel_dp, dp_phy,
+	       "Link Training %s at link rate = %d, lane count = %d\n",
+	       ret ? "passed" : "failed",
+	       crtc_state->port_clock, crtc_state->lane_count);
 
 	return ret;
 }
@@ -1129,13 +1060,10 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (intel_dp->hobl_active) {
-		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-			    "[ENCODER:%d:%s] Link Training failed with HOBL active, "
-			    "not enabling it from now on",
-			    encoder->base.base.id, encoder->base.name);
+		lt_dbg(intel_dp, DP_PHY_DPRX,
+		       "Link Training failed with HOBL active, not enabling it from now on\n");
 		intel_dp->hobl_failed = true;
 	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
 							   crtc_state->port_clock,
@@ -1182,8 +1110,6 @@ static bool
 intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	int delay_us;
 	int try, max_tries = 20;
@@ -1198,9 +1124,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	 */
 	if (!intel_dp_reset_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
 				       DP_TRAINING_PATTERN_1)) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Failed to start 128b/132b TPS1\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS1\n");
 		return false;
 	}
 
@@ -1208,27 +1132,21 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 
 	/* Read the initial TX FFE settings. */
 	if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Failed to read TX FFE presets\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to read TX FFE presets\n");
 		return false;
 	}
 
 	/* Update signal levels and training set as requested. */
 	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
 	if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Failed to set initial TX FFE settings\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to set initial TX FFE settings\n");
 		return false;
 	}
 
 	/* Start transmitting 128b/132b TPS2. */
 	if (!intel_dp_set_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
 				     DP_TRAINING_PATTERN_2)) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS2\n");
 		return false;
 	}
 
@@ -1245,32 +1163,25 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
 
 		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Failed to read link status\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
 			return false;
 		}
 
 		if (drm_dp_128b132b_link_training_failed(link_status)) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Downstream link training failure\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX,
+			       "Downstream link training failure\n");
 			return false;
 		}
 
 		if (drm_dp_128b132b_lane_channel_eq_done(link_status, crtc_state->lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s] Lane channel eq done\n",
-				    encoder->base.base.id, encoder->base.name);
+			lt_dbg(intel_dp, DP_PHY_DPRX, "Lane channel eq done\n");
 			break;
 		}
 
 		if (timeout) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Lane channel eq timeout\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Lane channel eq timeout\n");
 			return false;
 		}
 
@@ -1280,18 +1191,14 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 		/* Update signal levels and training set as requested. */
 		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Failed to update TX FFE settings\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
 			return false;
 		}
 	}
 
 	if (try == max_tries) {
 		intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Max loop count reached\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Max loop count reached\n");
 		return false;
 	}
 
@@ -1300,32 +1207,24 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 			timeout = true; /* try one last time after deadline */
 
 		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Failed to read link status\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
 			return false;
 		}
 
 		if (drm_dp_128b132b_link_training_failed(link_status)) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Downstream link training failure\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Downstream link training failure\n");
 			return false;
 		}
 
 		if (drm_dp_128b132b_eq_interlane_align_done(link_status)) {
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s] Interlane align done\n",
-				    encoder->base.base.id, encoder->base.name);
+			lt_dbg(intel_dp, DP_PHY_DPRX, "Interlane align done\n");
 			break;
 		}
 
 		if (timeout) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Interlane align timeout\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Interlane align timeout\n");
 			return false;
 		}
 
@@ -1343,16 +1242,12 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state,
 			   int lttpr_count)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	unsigned long deadline;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
 			       DP_TRAINING_PATTERN_2_CDS) != 1) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2 CDS\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to start 128b/132b TPS2 CDS\n");
 		return false;
 	}
 
@@ -1368,34 +1263,26 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
 		usleep_range(2000, 3000);
 
 		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Failed to read link status\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
 			return false;
 		}
 
 		if (drm_dp_128b132b_eq_interlane_align_done(link_status) &&
 		    drm_dp_128b132b_cds_interlane_align_done(link_status) &&
 		    drm_dp_128b132b_lane_symbol_locked(link_status, crtc_state->lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "[ENCODER:%d:%s] CDS interlane align done\n",
-				    encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "CDS interlane align done\n");
 			break;
 		}
 
 		if (drm_dp_128b132b_link_training_failed(link_status)) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] Downstream link training failure\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "Downstream link training failure\n");
 			return false;
 		}
 
 		if (timeout) {
 			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-			drm_err(&i915->drm,
-				"[ENCODER:%d:%s] CDS timeout\n",
-				encoder->base.base.id, encoder->base.name);
+			lt_err(intel_dp, DP_PHY_DPRX, "CDS timeout\n");
 			return false;
 		}
 	}
@@ -1411,15 +1298,10 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 			     const struct intel_crtc_state *crtc_state,
 			     int lttpr_count)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool passed = false;
 
 	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
-		drm_err(&i915->drm,
-			"[ENCODER:%d:%s] 128b/132b intra-hop not clear\n",
-			encoder->base.base.id, encoder->base.name);
+		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
 		return false;
 	}
 
@@ -1427,12 +1309,10 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 	    intel_dp_128b132b_lane_cds(intel_dp, crtc_state, lttpr_count))
 		passed = true;
 
-	drm_dbg_kms(&i915->drm,
-		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] 128b/132b Link Training %s at link rate = %d, lane count = %d\n",
-		    connector->base.base.id, connector->base.name,
-		    encoder->base.base.id, encoder->base.name,
-		    passed ? "passed" : "failed",
-		    crtc_state->port_clock, crtc_state->lane_count);
+	lt_dbg(intel_dp, DP_PHY_DPRX,
+	       "128b/132b Link Training %s at link rate = %d, lane count = %d\n",
+	       passed ? "passed" : "failed",
+	       crtc_state->port_clock, crtc_state->lane_count);
 
 	return passed;
 }
@@ -1451,8 +1331,6 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool passed;
 
 	/*
@@ -1485,10 +1363,7 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	 * ignore_long_hpd flag can unset from the testcase.
 	 */
 	if (!passed && i915->display.hotplug.ignore_long_hpd) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Ignore the link failure\n",
-			    connector->base.base.id, connector->base.name,
-			    encoder->base.base.id, encoder->base.name);
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
 		return;
 	}
 
@@ -1499,8 +1374,6 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
 	/*
 	 * VIDEO_DIP_CTL register bit 31 should be set to '0' to not
 	 * disable SDP CRC. This is applicable for Display version 13.
@@ -1513,5 +1386,5 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 				   DP_SDP_ERROR_DETECTION_CONFIGURATION,
 				   DP_SDP_CRC16_128B132B_EN);
 
-	drm_dbg_kms(&i915->drm, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
+	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
-- 
2.37.2

