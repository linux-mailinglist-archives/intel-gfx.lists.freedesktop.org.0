Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F15B83F0AE5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6016E8B5;
	Wed, 18 Aug 2021 18:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377096E8B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:12:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="203540315"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="203540315"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:54 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="488833236"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:52 +0300
Message-Id: <208014fe1c9b9bf6a563896ac9d77cee7dae4be3.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/17] drm/i915/dg2: update link training for
 128b/132b
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
FFE preset values.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 13 ++-
 .../drm/i915/display/intel_dp_link_training.c | 86 +++++++++++++------
 2 files changed, 70 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1ee817348bf5..e32d2e39f4d5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1397,11 +1397,16 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 static int intel_ddi_dp_level(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
-	u8 train_set = intel_dp->train_set[0];
-	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
-					DP_TRAIN_PRE_EMPHASIS_MASK);
+	if (crtc_state->port_clock >= 1000000) {
+		/* FIXME: We'll want independent presets for each lane. */
+		return intel_dp->train_set[0] & DP_TX_FFE_PRESET_VALUE_MASK;
+	} else {
+		u8 train_set = intel_dp->train_set[0];
+		u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
+						DP_TRAIN_PRE_EMPHASIS_MASK);
 
-	return translate_signal_level(intel_dp, signal_levels);
+		return translate_signal_level(intel_dp, signal_levels);
+	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 01f0adc585d0..1a83ec03ac67 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -301,6 +301,24 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
 	return preemph_max;
 }
 
+static void intel_dp_128b132b_adjust_train(struct intel_dp* intel_dp,
+					   const struct intel_crtc_state *crtc_state,
+					   const u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	int lane;
+	u8 tx_ffe = 0;
+
+	/*
+	 * FIXME: We'll want independent presets for each lane. See also
+	 * intel_ddi_dp_level() and intel_snps_phy_ddi_vswing_sequence().
+	 */
+	for (lane = 0; lane < crtc_state->lane_count; lane++)
+		tx_ffe = max(tx_ffe, drm_dp_get_adjust_tx_ffe_preset(link_status, lane));
+
+	for (lane = 0; lane < crtc_state->lane_count; lane++)
+		intel_dp->train_set[lane] = tx_ffe;
+}
+
 void
 intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state,
@@ -313,6 +331,11 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 	u8 voltage_max;
 	u8 preemph_max;
 
+	if (crtc_state->port_clock > 1000000) {
+		intel_dp_128b132b_adjust_train(intel_dp, crtc_state, link_status);
+		return;
+	}
+
 	for (lane = 0; lane < crtc_state->lane_count; lane++) {
 		v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
 		p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
@@ -402,14 +425,21 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 	u8 train_set = intel_dp->train_set[0];
 	char phy_name[10];
 
-	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis level %d%s, at %s\n",
-		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
-		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
-		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
-		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
-		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
-		    " (max)" : "",
-		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
+	if (crtc_state->port_clock > 1000000) {
+		/* FIXME: We'll want independent presets for each lane. */
+		drm_dbg_kms(&dev_priv->drm, "%s: Using 128b/132b TX FFE preset %u\n",
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    train_set & DP_TX_FFE_PRESET_VALUE_MASK);
+	} else {
+		drm_dbg_kms(&dev_priv->drm, "%s: Using 8b/10b vswing level %d%s, pre-emphasis level %d%s\n",
+			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
+			    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
+			    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
+			    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+			    DP_TRAIN_PRE_EMPHASIS_SHIFT,
+			    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
+			    " (max)" : "");
+	}
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
 		intel_dp->set_signal_levels(intel_dp, crtc_state);
@@ -565,18 +595,21 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			return true;
 		}
 
-		if (voltage_tries == 5) {
-			drm_dbg_kms(&i915->drm,
-				    "Same voltage tried 5 times\n");
-			return false;
-		}
+		/* FIXME: 128b/132b needs better abstractions here. */
+		if (crtc_state->port_clock < 1000000) {
+			if (voltage_tries == 5) {
+				drm_dbg_kms(&i915->drm,
+					    "Same voltage tried 5 times\n");
+				return false;
+			}
 
-		if (max_vswing_reached) {
-			drm_dbg_kms(&i915->drm, "Max Voltage Swing reached\n");
-			return false;
-		}
+			if (max_vswing_reached) {
+				drm_dbg_kms(&i915->drm, "Max Voltage Swing reached\n");
+				return false;
+			}
 
-		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
+			voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
+		}
 
 		/* Update training set as requested by target */
 		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
@@ -587,14 +620,17 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			return false;
 		}
 
-		if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) ==
-		    voltage)
-			++voltage_tries;
-		else
-			voltage_tries = 1;
+		/* FIXME: 128b/132b needs better abstractions here. */
+		if (crtc_state->port_clock < 1000000) {
+			if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) ==
+			    voltage)
+				++voltage_tries;
+			else
+				voltage_tries = 1;
 
-		if (intel_dp_link_max_vswing_reached(intel_dp, crtc_state))
-			max_vswing_reached = true;
+			if (intel_dp_link_max_vswing_reached(intel_dp, crtc_state))
+				max_vswing_reached = true;
+		}
 
 	}
 	drm_err(&i915->drm,
-- 
2.20.1

