Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D452D41F203
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 18:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B786EE44;
	Fri,  1 Oct 2021 16:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE526EE44
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 16:18:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="204965387"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="204965387"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 09:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="521174540"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2021 09:08:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 19:08:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri,  1 Oct 2021 19:08:26 +0300
Message-Id: <20211001160826.17080-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix DP clock recovery "voltage_tries"
 handling
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

The DP spec says:
"If the receiver keeps the same value in the ADJUST_REQUEST_LANEx_y
 register(s) while the LANEx_CR_DONE bits remain unset, the transmitter
 must loop four times with the same voltage swing. On the fifth time,
 the transmitter must down-shift to the lower bit rate and must repeat
 the CR-lock training sequence as described below."

Lets fix the code to follow that instead of terminating after five
times of transmitting the same signal levels. The text in spec feels
a little bit ambiguous still, but this is my best guess at its meaning.

As a bonus this also gets rid of the train_set[0] stuff which
would not work for per-lane drive settings anyway.

Cc: Imre Deak <imre.deak@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 29 +++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 053ed9302cda..73a823f1ec22 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -511,6 +511,25 @@ static void intel_dp_link_training_clock_recovery_delay(struct intel_dp *intel_d
 		drm_dp_lttpr_link_train_clock_recovery_delay();
 }
 
+static bool intel_dp_adjust_request_changed(int lane_count,
+					    const u8 old_link_status[DP_LINK_STATUS_SIZE],
+					    const u8 new_link_status[DP_LINK_STATUS_SIZE])
+{
+	int lane;
+
+	for (lane = 0; lane < lane_count; lane++) {
+		u8 old = drm_dp_get_adjust_request_voltage(old_link_status, lane) |
+			drm_dp_get_adjust_request_pre_emphasis(old_link_status, lane);
+		u8 new = drm_dp_get_adjust_request_voltage(new_link_status, lane) |
+			drm_dp_get_adjust_request_pre_emphasis(new_link_status, lane);
+
+		if (old != new)
+			return true;
+	}
+
+	return false;
+}
+
 /*
  * Perform the link training clock recovery phase on the given DP PHY using
  * training pattern 1.
@@ -521,7 +540,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 				      enum drm_dp_phy dp_phy)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 voltage;
+	u8 old_link_status[DP_LINK_STATUS_SIZE] = {};
 	int voltage_tries, cr_tries, max_cr_tries;
 	bool max_vswing_reached = false;
 
@@ -574,8 +593,6 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			return false;
 		}
 
-		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
-
 		/* Update training set as requested by target */
 		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
 					  link_status);
@@ -585,12 +602,14 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			return false;
 		}
 
-		if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) ==
-		    voltage)
+		if (!intel_dp_adjust_request_changed(crtc_state->lane_count,
+						     old_link_status, link_status))
 			++voltage_tries;
 		else
 			voltage_tries = 1;
 
+		memcpy(old_link_status, link_status, sizeof(link_status));
+
 		if (intel_dp_link_max_vswing_reached(intel_dp, crtc_state))
 			max_vswing_reached = true;
 
-- 
2.32.0

