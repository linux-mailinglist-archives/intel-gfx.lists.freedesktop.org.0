Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 150C9433BEC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 18:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F7C6E192;
	Tue, 19 Oct 2021 16:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81AF6E192;
 Tue, 19 Oct 2021 16:18:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292025377"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="292025377"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 09:13:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="443951691"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 09:13:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Tue, 19 Oct 2021 19:13:22 +0300
Message-Id: <20211019161322.11037-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211019161322.11037-1-jani.nikula@intel.com>
References: <20211019161322.11037-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use drm_dp_phy_name() for
 logging
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

Drop the local intel_dp_phy_name() function, and replace with
drm_dp_phy_name(). This lets us drop a number of local buffers.

v2: Rebase

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 83 ++++++++-----------
 1 file changed, 36 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a72f2dc93718..81f93733fcc5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -37,17 +37,6 @@ static void intel_dp_reset_lttpr_count(struct intel_dp *intel_dp)
 				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = 0;
 }
 
-static const char *intel_dp_phy_name(enum drm_dp_phy dp_phy,
-				     char *buf, size_t buf_size)
-{
-	if (dp_phy == DP_PHY_DPRX)
-		snprintf(buf, buf_size, "DPRX");
-	else
-		snprintf(buf, buf_size, "LTTPR %d", dp_phy - DP_PHY_LTTPR1 + 1);
-
-	return buf;
-}
-
 static u8 *intel_dp_lttpr_phy_caps(struct intel_dp *intel_dp,
 				   enum drm_dp_phy dp_phy)
 {
@@ -59,20 +48,19 @@ static void intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	u8 *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
-	char phy_name[10];
-
-	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
 
 	if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dp_phy, phy_caps) < 0) {
 		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
 			    "[ENCODER:%d:%s][%s] failed to read the PHY caps\n",
-			    encoder->base.base.id, encoder->base.name, phy_name);
+			    encoder->base.base.id, encoder->base.name,
+			    drm_dp_phy_name(dp_phy));
 		return;
 	}
 
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
 		    "[ENCODER:%d:%s][%s] PHY capabilities: %*ph\n",
-		    encoder->base.base.id, encoder->base.name, phy_name,
+		    encoder->base.base.id, encoder->base.name,
+		    drm_dp_phy_name(dp_phy),
 		    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
 		    phy_caps);
 }
@@ -406,14 +394,13 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	char phy_name[10];
 	int lane;
 
 	if (intel_dp_is_uhbr(crtc_state)) {
 		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
 			    "TX FFE request: " TRAIN_REQ_FMT "\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    drm_dp_phy_name(dp_phy),
 			    crtc_state->lane_count,
 			    TRAIN_REQ_TX_FFE_ARGS(link_status));
 	} else {
@@ -421,7 +408,7 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			    "vswing request: " TRAIN_REQ_FMT ", "
 			    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    drm_dp_phy_name(dp_phy),
 			    crtc_state->lane_count,
 			    TRAIN_REQ_VSWING_ARGS(link_status),
 			    TRAIN_REQ_PREEMPH_ARGS(link_status));
@@ -486,13 +473,12 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 train_pat = intel_dp_training_pattern_symbol(dp_train_pat);
-	char phy_name[10];
 
 	if (train_pat != DP_TRAINING_PATTERN_DISABLE)
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s][%s] Using DP training pattern TPS%c\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    drm_dp_phy_name(dp_phy),
 			    dp_training_pattern_name(train_pat));
 
 	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
@@ -529,13 +515,12 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	char phy_name[10];
 
 	if (intel_dp_is_uhbr(crtc_state)) {
 		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
 			    "TX FFE presets: " TRAIN_SET_FMT "\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    drm_dp_phy_name(dp_phy),
 			    crtc_state->lane_count,
 			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
 	} else {
@@ -543,7 +528,7 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 			    "vswing levels: " TRAIN_SET_FMT ", "
 			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    drm_dp_phy_name(dp_phy),
 			    crtc_state->lane_count,
 			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
 			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
@@ -715,12 +700,11 @@ intel_dp_dump_link_status(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	char phy_name[10];
 
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s][%s] ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
 		    encoder->base.base.id, encoder->base.name,
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+		    drm_dp_phy_name(dp_phy),
 		    link_status[0], link_status[1], link_status[2],
 		    link_status[3], link_status[4], link_status[5]);
 }
@@ -740,21 +724,19 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	int voltage_tries, cr_tries, max_cr_tries;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool max_vswing_reached = false;
-	char phy_name[10];
 	int delay_us;
 
 	delay_us = drm_dp_read_clock_recovery_delay(&intel_dp->aux,
 						    intel_dp->dpcd, dp_phy,
 						    intel_dp_is_uhbr(crtc_state));
 
-	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
-
 	/* clock recovery */
 	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
 				       DP_TRAINING_PATTERN_1 |
 				       DP_LINK_SCRAMBLING_DISABLE)) {
 		drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to enable link training\n",
-			encoder->base.base.id, encoder->base.name, phy_name);
+			encoder->base.base.id, encoder->base.name,
+			drm_dp_phy_name(dp_phy));
 		return false;
 	}
 
@@ -778,14 +760,16 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
 			drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to get link status\n",
-				encoder->base.base.id, encoder->base.name, phy_name);
+				encoder->base.base.id, encoder->base.name,
+				drm_dp_phy_name(dp_phy));
 			return false;
 		}
 
 		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Clock recovery OK\n",
-				    encoder->base.base.id, encoder->base.name, phy_name);
+				    encoder->base.base.id, encoder->base.name,
+				    drm_dp_phy_name(dp_phy));
 			return true;
 		}
 
@@ -793,7 +777,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
-				    encoder->base.base.id, encoder->base.name, phy_name);
+				    encoder->base.base.id, encoder->base.name,
+				    drm_dp_phy_name(dp_phy));
 			return false;
 		}
 
@@ -801,7 +786,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
-				    encoder->base.base.id, encoder->base.name, phy_name);
+				    encoder->base.base.id, encoder->base.name,
+				    drm_dp_phy_name(dp_phy));
 			return false;
 		}
 
@@ -811,7 +797,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
 			drm_err(&i915->drm,
 				"[ENCODER:%d:%s][%s] Failed to update link training\n",
-				encoder->base.base.id, encoder->base.name, phy_name);
+				encoder->base.base.id, encoder->base.name,
+				drm_dp_phy_name(dp_phy));
 			return false;
 		}
 
@@ -829,7 +816,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 	drm_err(&i915->drm,
 		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
-		encoder->base.base.id, encoder->base.name, phy_name, max_cr_tries);
+		encoder->base.base.id, encoder->base.name,
+		drm_dp_phy_name(dp_phy), max_cr_tries);
 
 	return false;
 }
@@ -907,15 +895,12 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	u32 training_pattern;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool channel_eq = false;
-	char phy_name[10];
 	int delay_us;
 
 	delay_us = drm_dp_read_channel_eq_delay(&intel_dp->aux,
 						intel_dp->dpcd, dp_phy,
 						intel_dp_is_uhbr(crtc_state));
 
-	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
-
 	training_pattern = intel_dp_training_pattern(intel_dp, crtc_state, dp_phy);
 	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
 	if (training_pattern != DP_TRAINING_PATTERN_4)
@@ -927,7 +912,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		drm_err(&i915->drm,
 			"[ENCODER:%d:%s][%s] Failed to start channel equalization\n",
 			encoder->base.base.id, encoder->base.name,
-			phy_name);
+			drm_dp_phy_name(dp_phy));
 		return false;
 	}
 
@@ -938,7 +923,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 						     link_status) < 0) {
 			drm_err(&i915->drm,
 				"[ENCODER:%d:%s][%s] Failed to get link status\n",
-				encoder->base.base.id, encoder->base.name, phy_name);
+				encoder->base.base.id, encoder->base.name,
+				drm_dp_phy_name(dp_phy));
 			break;
 		}
 
@@ -949,7 +935,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Clock recovery check failed, cannot "
 				    "continue channel equalization\n",
-				    encoder->base.base.id, encoder->base.name, phy_name);
+				    encoder->base.base.id, encoder->base.name,
+				    drm_dp_phy_name(dp_phy));
 			break;
 		}
 
@@ -958,7 +945,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 			channel_eq = true;
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Channel EQ done. DP Training successful\n",
-				    encoder->base.base.id, encoder->base.name, phy_name);
+				    encoder->base.base.id, encoder->base.name,
+				    drm_dp_phy_name(dp_phy));
 			break;
 		}
 
@@ -968,7 +956,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
 			drm_err(&i915->drm,
 				"[ENCODER:%d:%s][%s] Failed to update link training\n",
-				encoder->base.base.id, encoder->base.name, phy_name);
+				encoder->base.base.id, encoder->base.name,
+				drm_dp_phy_name(dp_phy));
 			break;
 		}
 	}
@@ -978,7 +967,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s][%s] Channel equalization failed 5 times\n",
-			    encoder->base.base.id, encoder->base.name, phy_name);
+			    encoder->base.base.id, encoder->base.name,
+			    drm_dp_phy_name(dp_phy));
 	}
 
 	return channel_eq;
@@ -1026,7 +1016,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	char phy_name[10];
 	bool ret = false;
 
 	if (!intel_dp_link_training_clock_recovery(intel_dp, crtc_state, dp_phy))
@@ -1042,7 +1031,7 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 		    "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] Link Training %s at link rate = %d, lane count = %d\n",
 		    connector->base.base.id, connector->base.name,
 		    encoder->base.base.id, encoder->base.name,
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+		    drm_dp_phy_name(dp_phy),
 		    ret ? "passed" : "failed",
 		    crtc_state->port_clock, crtc_state->lane_count);
 
-- 
2.30.2

