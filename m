Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810DF420A02
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9DF6E9D1;
	Mon,  4 Oct 2021 11:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FF76E9D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="222837343"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="222837343"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="523233588"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 04 Oct 2021 04:23:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:05 +0300
Message-Id: <20211004112306.28544-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
References: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Pimp link training debug prints
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Unify all debug prints during link training to include information
on both the encoder and the LTTPR. We unify the format to something
like "[ENCODER:1:FOO][LTTPR 1] Something something". Though not
sure if those brackets around the dp_phy just make it look like
line noise? I'll accept suggestions on better formatting.

I'm slightly on the fence about also including the connector,
but technically only the DPRX is the SST connector (ie.
intel_dp->attached_connector). I suppose you could think of it
as the branch device/whatever in the topology, and we're training
the link leading to it. So that could argue for its inclusion.
But it's all getting a bit long alrady, so not going to do it
I think.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 167 +++++++++++-------
 1 file changed, 106 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 5657be1461ec..18f4b469766e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -25,15 +25,6 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 
-static void
-intel_dp_dump_link_status(struct drm_device *drm,
-			  const u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	drm_dbg_kms(drm,
-		    "ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
-		    link_status[0], link_status[1], link_status[2],
-		    link_status[3], link_status[4], link_status[5]);
-}
 
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
@@ -66,6 +57,7 @@ static u8 *intel_dp_lttpr_phy_caps(struct intel_dp *intel_dp,
 static void intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
 					 enum drm_dp_phy dp_phy)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	u8 *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
 	char phy_name[10];
 
@@ -73,21 +65,22 @@ static void intel_dp_read_lttpr_phy_caps(struct intel_dp *intel_dp,
 
 	if (drm_dp_read_lttpr_phy_caps(&intel_dp->aux, dp_phy, phy_caps) < 0) {
 		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-			    "failed to read the PHY caps for %s\n",
-			    phy_name);
+			    "[ENCODER:%d:%s][%s] failed to read the PHY caps\n",
+			    encoder->base.base.id, encoder->base.name, phy_name);
 		return;
 	}
 
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "%s PHY capabilities: %*ph\n",
-		    phy_name,
+		    "[ENCODER:%d:%s][%s] PHY capabilities: %*ph\n",
+		    encoder->base.base.id, encoder->base.name, phy_name,
 		    (int)sizeof(intel_dp->lttpr_phy_caps[0]),
 		    phy_caps);
 }
 
 static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_dp_is_edp(intel_dp))
 		return false;
@@ -104,7 +97,8 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
 		goto reset_caps;
 
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "LTTPR common capabilities: %*ph\n",
+		    "[ENCODER:%d:%s] LTTPR common capabilities: %*ph\n",
+		    encoder->base.base.id, encoder->base.name,
 		    (int)sizeof(intel_dp->lttpr_common_caps),
 		    intel_dp->lttpr_common_caps);
 
@@ -130,6 +124,8 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 
 static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int lttpr_count;
 	int i;
 
@@ -161,8 +157,9 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
 		return 0;
 
 	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
-		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-			    "Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n",
+			    encoder->base.base.id, encoder->base.name);
 
 		intel_dp_set_lttpr_transparent_mode(intel_dp, true);
 		intel_dp_reset_lttpr_count(intel_dp);
@@ -366,17 +363,18 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	char phy_name[10];
 	int lane;
 
-	drm_dbg_kms(encoder->base.dev, "[ENCODER:%d:%s] lanes: %d, "
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
 		    "vswing request: " TRAIN_REQ_FMT ", "
-		    "pre-emphasis request: " TRAIN_REQ_FMT ", at %s\n",
+		    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
 		    crtc_state->lane_count,
 		    TRAIN_REQ_VSWING_ARGS(link_status),
-		    TRAIN_REQ_PREEMPH_ARGS(link_status),
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+		    TRAIN_REQ_PREEMPH_ARGS(link_status));
 
 	for (lane = 0; lane < 4; lane++)
 		intel_dp->train_set[lane] =
@@ -435,16 +433,16 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 				       u8 dp_train_pat)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 train_pat = intel_dp_training_pattern_symbol(dp_train_pat);
 	char phy_name[10];
 
 	if (train_pat != DP_TRAINING_PATTERN_DISABLE)
-		drm_dbg_kms(&dev_priv->drm,
-			    "[ENCODER:%d:%s] Using DP training pattern TPS%c, at %s\n",
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s][%s] Using DP training pattern TPS%c\n",
 			    encoder->base.base.id, encoder->base.name,
-			    dp_training_pattern_name(train_pat),
-			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    dp_training_pattern_name(train_pat));
 
 	intel_dp->set_link_train(intel_dp, crtc_state, dp_train_pat);
 }
@@ -472,17 +470,17 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				enum drm_dp_phy dp_phy)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	char phy_name[10];
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] lanes: %d, "
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
 		    "vswing levels: " TRAIN_SET_FMT ", "
-		    "pre-emphasis levels: " TRAIN_SET_FMT ", at %s\n",
+		    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
 		    crtc_state->lane_count,
 		    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
-		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set),
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
 		encoder->set_signal_levels(encoder, crtc_state);
@@ -554,7 +552,8 @@ static bool
 intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 link_config[2];
 	u8 link_bw, rate_select;
 
@@ -566,10 +565,12 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 
 	if (link_bw)
 		drm_dbg_kms(&i915->drm,
-			    "Using LINK_BW_SET value %02x\n", link_bw);
+			    "[ENCODER:%d:%s] Using LINK_BW_SET value %02x\n",
+			    encoder->base.base.id, encoder->base.name, link_bw);
 	else
 		drm_dbg_kms(&i915->drm,
-			    "Using LINK_RATE_SET value %02x\n", rate_select);
+			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
+			    encoder->base.base.id, encoder->base.name, rate_select);
 
 	/* Write the link configuration data */
 	link_config[0] = link_bw;
@@ -619,6 +620,22 @@ static bool intel_dp_adjust_request_changed(int lane_count,
 	return false;
 }
 
+static void
+intel_dp_dump_link_status(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
+			  const u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	char phy_name[10];
+
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s][%s] ln0_1:0x%x ln2_3:0x%x align:0x%x sink:0x%x adj_req0_1:0x%x adj_req2_3:0x%x\n",
+		    encoder->base.base.id, encoder->base.name,
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+		    link_status[0], link_status[1], link_status[2],
+		    link_status[3], link_status[4], link_status[5]);
+}
+
 /*
  * Perform the link training clock recovery phase on the given DP PHY using
  * training pattern 1.
@@ -628,16 +645,21 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state,
 				      enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 old_link_status[DP_LINK_STATUS_SIZE] = {};
 	int voltage_tries, cr_tries, max_cr_tries;
 	bool max_vswing_reached = false;
+	char phy_name[10];
+
+	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
 
 	/* clock recovery */
 	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
 				       DP_TRAINING_PATTERN_1 |
 				       DP_LINK_SCRAMBLING_DISABLE)) {
-		drm_err(&i915->drm, "failed to enable link training\n");
+		drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to enable link training\n",
+			encoder->base.base.id, encoder->base.name, phy_name);
 		return false;
 	}
 
@@ -662,23 +684,29 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
-			drm_err(&i915->drm, "failed to get link status\n");
+			drm_err(&i915->drm, "[ENCODER:%d:%s][%s] Failed to get link status\n",
+				encoder->base.base.id, encoder->base.name, phy_name);
 			return false;
 		}
 
 		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
-			drm_dbg_kms(&i915->drm, "clock recovery OK\n");
+			drm_dbg_kms(&i915->drm,
+				    "[ENCODER:%d:%s][%s] Clock recovery OK\n",
+				    encoder->base.base.id, encoder->base.name, phy_name);
 			return true;
 		}
 
 		if (voltage_tries == 5) {
 			drm_dbg_kms(&i915->drm,
-				    "Same voltage tried 5 times\n");
+				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
+				    encoder->base.base.id, encoder->base.name, phy_name);
 			return false;
 		}
 
 		if (max_vswing_reached) {
-			drm_dbg_kms(&i915->drm, "Max Voltage Swing reached\n");
+			drm_dbg_kms(&i915->drm,
+				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
+				    encoder->base.base.id, encoder->base.name, phy_name);
 			return false;
 		}
 
@@ -687,7 +715,8 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 					  link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
 			drm_err(&i915->drm,
-				"failed to update link training\n");
+				"[ENCODER:%d:%s][%s] Failed to update link training\n",
+				encoder->base.base.id, encoder->base.name, phy_name);
 			return false;
 		}
 
@@ -701,10 +730,12 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 		if (intel_dp_link_max_vswing_reached(intel_dp, crtc_state))
 			max_vswing_reached = true;
-
 	}
+
 	drm_err(&i915->drm,
-		"Failed clock recovery %d times, giving up!\n", max_cr_tries);
+		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
+		encoder->base.base.id, encoder->base.name, phy_name, max_cr_tries);
+
 	return false;
 }
 
@@ -788,11 +819,15 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state,
 					    enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int tries;
 	u32 training_pattern;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool channel_eq = false;
+	char phy_name[10];
+
+	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
 
 	training_pattern = intel_dp_training_pattern(intel_dp, crtc_state, dp_phy);
 	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
@@ -802,7 +837,10 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	/* channel equalization */
 	if (!intel_dp_set_link_train(intel_dp, crtc_state, dp_phy,
 				     training_pattern)) {
-		drm_err(&i915->drm, "failed to start channel equalization\n");
+		drm_err(&i915->drm,
+			"[ENCODER:%d:%s][%s] Failed to start channel equalization\n",
+			encoder->base.base.id, encoder->base.name,
+			phy_name);
 		return false;
 	}
 
@@ -812,25 +850,28 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
 			drm_err(&i915->drm,
-				"failed to get link status\n");
+				"[ENCODER:%d:%s][%s] Failed to get link status\n",
+				encoder->base.base.id, encoder->base.name, phy_name);
 			break;
 		}
 
 		/* Make sure clock is still ok */
 		if (!drm_dp_clock_recovery_ok(link_status,
 					      crtc_state->lane_count)) {
-			intel_dp_dump_link_status(&i915->drm, link_status);
+			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 			drm_dbg_kms(&i915->drm,
-				    "Clock recovery check failed, cannot "
-				    "continue channel equalization\n");
+				    "[ENCODER:%d:%s][%s] Clock recovery check failed, cannot "
+				    "continue channel equalization\n",
+				    encoder->base.base.id, encoder->base.name, phy_name);
 			break;
 		}
 
 		if (drm_dp_channel_eq_ok(link_status,
 					 crtc_state->lane_count)) {
 			channel_eq = true;
-			drm_dbg_kms(&i915->drm, "Channel EQ done. DP Training "
-				    "successful\n");
+			drm_dbg_kms(&i915->drm,
+				    "[ENCODER:%d:%s][%s] Channel EQ done. DP Training successful\n",
+				    encoder->base.base.id, encoder->base.name, phy_name);
 			break;
 		}
 
@@ -839,16 +880,18 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 					  link_status);
 		if (!intel_dp_update_link_train(intel_dp, crtc_state, dp_phy)) {
 			drm_err(&i915->drm,
-				"failed to update link training\n");
+				"[ENCODER:%d:%s][%s] Failed to update link training\n",
+				encoder->base.base.id, encoder->base.name, phy_name);
 			break;
 		}
 	}
 
 	/* Try 5 times, else fail and try at lower BW */
 	if (tries == 5) {
-		intel_dp_dump_link_status(&i915->drm, link_status);
+		intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 		drm_dbg_kms(&i915->drm,
-			    "Channel equalization failed 5 times\n");
+			    "[ENCODER:%d:%s][%s] Channel equalization failed 5 times\n",
+			    encoder->base.base.id, encoder->base.name, phy_name);
 	}
 
 	return channel_eq;
@@ -894,7 +937,7 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 			const struct intel_crtc_state *crtc_state,
 			enum drm_dp_phy dp_phy)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	char phy_name[10];
 	bool ret = false;
 
@@ -908,12 +951,11 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 
 out:
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[CONNECTOR:%d:%s] Link Training %s at link rate = %d, lane count = %d, at %s\n",
-		    intel_connector->base.base.id,
-		    intel_connector->base.name,
+		    "[ENCODER:%d:%s][%s] Link Training %s at link rate = %d, lane count = %d\n",
+		    encoder->base.base.id, encoder->base.name,
+		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
 		    ret ? "passed" : "failed",
-		    crtc_state->port_clock, crtc_state->lane_count,
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+		    crtc_state->port_clock, crtc_state->lane_count);
 
 	return ret;
 }
@@ -922,10 +964,13 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (intel_dp->hobl_active) {
 		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-			    "Link Training failed with HOBL active, not enabling it from now on");
+			    "[ENCODER:%d:%s] Link Training failed with HOBL active, "
+			    "not enabling it from now on",
+			    encoder->base.base.id, encoder->base.name);
 		intel_dp->hobl_failed = true;
 	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
 							   crtc_state->port_clock,
-- 
2.32.0

