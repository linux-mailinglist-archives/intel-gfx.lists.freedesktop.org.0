Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC36425114
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2666F3ED;
	Thu,  7 Oct 2021 10:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761A76F3ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 10:31:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="249533260"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="249533260"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:31:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488918948"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:31:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu,  7 Oct 2021 13:31:08 +0300
Message-Id: <20211007103108.7707-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: update link training for 128b/132b
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

The 128b/132b channel coding link training uses more straightforward TX
FFE preset values. Reuse voltage tries and max vswing for retry logic.

The delays for 128b/132b are still all wrong, but this is regardless a
step forward.

v2: Fix UHBR rate checks, use intel_dp_is_uhbr() helper

v3:
- Rebase
- Modify intel_dp_adjust_request_changed() and
  intel_dp_link_max_vswing_reached() to take 128b/132b into
  account. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  18 ++-
 .../drm/i915/display/intel_dp_link_training.c | 124 +++++++++++++-----
 2 files changed, 106 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3f7bbeb3e3cd..59428ce4f8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1338,13 +1338,20 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int intel_ddi_dp_level(struct intel_dp *intel_dp, int lane)
+static int intel_ddi_dp_level(struct intel_dp *intel_dp,
+			      const struct intel_crtc_state *crtc_state,
+			      int lane)
 {
 	u8 train_set = intel_dp->train_set[lane];
-	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
-					DP_TRAIN_PRE_EMPHASIS_MASK);
 
-	return translate_signal_level(intel_dp, signal_levels);
+	if (intel_dp_is_uhbr(crtc_state)) {
+		return train_set & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {
+		u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
+						DP_TRAIN_PRE_EMPHASIS_MASK);
+
+		return translate_signal_level(intel_dp, signal_levels);
+	}
 }
 
 int intel_ddi_level(struct intel_encoder *encoder,
@@ -1362,7 +1369,8 @@ int intel_ddi_level(struct intel_encoder *encoder,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		level = intel_ddi_hdmi_level(encoder, trans);
 	else
-		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), lane);
+		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), crtc_state,
+					   lane);
 
 	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
 		level = n_entries - 1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1a943ae38a6b..c54b7df56c9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -304,11 +304,31 @@ static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
 	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy);
 }
 
-static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
-					 const struct intel_crtc_state *crtc_state,
-					 enum drm_dp_phy dp_phy,
-					 const u8 link_status[DP_LINK_STATUS_SIZE],
-					 int lane)
+
+static u8 intel_dp_get_lane_adjust_train_128b132b(struct intel_dp *intel_dp,
+						  const struct intel_crtc_state *crtc_state,
+						  enum drm_dp_phy dp_phy,
+						  const u8 link_status[DP_LINK_STATUS_SIZE],
+						  int lane)
+{
+	u8 tx_ffe = 0;
+
+	if (has_per_lane_signal_levels(intel_dp, dp_phy)) {
+		lane = min(lane, crtc_state->lane_count - 1);
+		tx_ffe = drm_dp_get_adjust_tx_ffe_preset(link_status, lane);
+	} else {
+		for (lane = 0; lane < crtc_state->lane_count; lane++)
+			tx_ffe = max(tx_ffe, drm_dp_get_adjust_tx_ffe_preset(link_status, lane));
+	}
+
+	return tx_ffe;
+}
+
+static u8 intel_dp_get_lane_adjust_train_8b10b(struct intel_dp *intel_dp,
+					       const struct intel_crtc_state *crtc_state,
+					       enum drm_dp_phy dp_phy,
+					       const u8 link_status[DP_LINK_STATUS_SIZE],
+					       int lane)
 {
 	u8 v = 0;
 	u8 p = 0;
@@ -340,6 +360,20 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
 	return v | p;
 }
 
+static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
+					 const struct intel_crtc_state *crtc_state,
+					 enum drm_dp_phy dp_phy,
+					 const u8 link_status[DP_LINK_STATUS_SIZE],
+					 int lane)
+{
+	if (intel_dp_is_uhbr(crtc_state))
+		return intel_dp_get_lane_adjust_train_128b132b(intel_dp, crtc_state,
+							       dp_phy, link_status, lane);
+	else
+		return intel_dp_get_lane_adjust_train_8b10b(intel_dp, crtc_state,
+							    dp_phy, link_status, lane);
+}
+
 #define TRAIN_REQ_FMT "%d/%d/%d/%d"
 #define _TRAIN_REQ_VSWING_ARGS(link_status, lane) \
 	(drm_dp_get_adjust_request_voltage((link_status), (lane)) >> DP_TRAIN_VOLTAGE_SWING_SHIFT)
@@ -464,6 +498,13 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
 	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
 	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])
+#define _TRAIN_SET_TX_FFE_ARGS(train_set) \
+	((train_set) & DP_TX_FFE_PRESET_VALUE_MASK), ""
+#define TRAIN_SET_TX_FFE_ARGS(train_set) \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
+	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])
 
 void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state,
@@ -473,14 +514,23 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	char phy_name[10];
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
-		    "vswing levels: " TRAIN_SET_FMT ", "
-		    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
-		    encoder->base.base.id, encoder->base.name,
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
-		    crtc_state->lane_count,
-		    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
-		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
+	if (intel_dp_is_uhbr(crtc_state)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
+			    "128b/132b TX FFE presets: " TRAIN_SET_FMT "\n",
+			    encoder->base.base.id, encoder->base.name,
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    crtc_state->lane_count,
+			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
+	} else {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
+			    "vswing levels: " TRAIN_SET_FMT ", "
+			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
+			    encoder->base.base.id, encoder->base.name,
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    crtc_state->lane_count,
+			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
+			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
+	}
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
 		encoder->set_signal_levels(encoder, crtc_state);
@@ -529,16 +579,22 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
 	 */
 	for (lane = 0; lane < crtc_state->lane_count; lane++) {
-		u8 v = (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
-			DP_TRAIN_VOLTAGE_SWING_SHIFT;
-		u8 p = (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
-			DP_TRAIN_PRE_EMPHASIS_SHIFT;
-
-		if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) == 0)
-			return false;
-
-		if (v + p != 3)
-			return false;
+		if (intel_dp_is_uhbr(crtc_state)) {
+			if ((intel_dp->train_set[lane] & DP_TX_FFE_PRESET_VALUE_MASK) !=
+			    DP_TX_FFE_PRESET_VALUE_MASK)
+				return false;
+		} else {
+			u8 v = (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
+				DP_TRAIN_VOLTAGE_SWING_SHIFT;
+			u8 p = (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+				DP_TRAIN_PRE_EMPHASIS_SHIFT;
+
+			if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) == 0)
+				return false;
+
+			if (v + p != 3)
+				return false;
+		}
 	}
 
 	return true;
@@ -601,17 +657,24 @@ static void intel_dp_link_training_clock_recovery_delay(struct intel_dp *intel_d
 		drm_dp_lttpr_link_train_clock_recovery_delay();
 }
 
-static bool intel_dp_adjust_request_changed(int lane_count,
+static bool intel_dp_adjust_request_changed(const struct intel_crtc_state *crtc_state,
 					    const u8 old_link_status[DP_LINK_STATUS_SIZE],
 					    const u8 new_link_status[DP_LINK_STATUS_SIZE])
 {
 	int lane;
 
-	for (lane = 0; lane < lane_count; lane++) {
-		u8 old = drm_dp_get_adjust_request_voltage(old_link_status, lane) |
-			drm_dp_get_adjust_request_pre_emphasis(old_link_status, lane);
-		u8 new = drm_dp_get_adjust_request_voltage(new_link_status, lane) |
-			drm_dp_get_adjust_request_pre_emphasis(new_link_status, lane);
+	for (lane = 0; lane < crtc_state->lane_count; lane++) {
+		u8 old, new;
+
+		if (intel_dp_is_uhbr(crtc_state)) {
+			old = drm_dp_get_adjust_tx_ffe_preset(old_link_status, lane);
+			new = drm_dp_get_adjust_tx_ffe_preset(new_link_status, lane);
+		} else {
+			old = drm_dp_get_adjust_request_voltage(old_link_status, lane) |
+				drm_dp_get_adjust_request_pre_emphasis(old_link_status, lane);
+			new = drm_dp_get_adjust_request_voltage(new_link_status, lane) |
+				drm_dp_get_adjust_request_pre_emphasis(new_link_status, lane);
+		}
 
 		if (old != new)
 			return true;
@@ -721,8 +784,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			return false;
 		}
 
-		if (!intel_dp_adjust_request_changed(crtc_state->lane_count,
-						     old_link_status, link_status))
+		if (!intel_dp_adjust_request_changed(crtc_state, old_link_status, link_status))
 			++voltage_tries;
 		else
 			voltage_tries = 1;
-- 
2.30.2

