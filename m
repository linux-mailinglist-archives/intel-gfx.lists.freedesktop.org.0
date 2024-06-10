Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A794902716
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD6110E4EC;
	Mon, 10 Jun 2024 16:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jm3oCheU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CDF510E417
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038184; x=1749574184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3im3MVM3a1w/SjIA6tmHHBVqHqN1dhskmLmbjdhlNL0=;
 b=Jm3oCheUsylRGEOhWwvjdcMT0tSb0o5UUDxa8+/pgl//gDLe3f9se/UY
 BrzkZYHU7gwm9ynSI+6TXvk3U+mKa0XhzX40jqjxVlIWNDeANJ96hiDq1
 Wq4NQLTlh4Uws1JpTESgEAKBZht7g+gtEpDlr8KGNpIsn7XD8LbD7sAe4
 /ynIxH66pwW1se5lbC6BlABG5BJNNgNQ9FAMPc1y/rSIjtPA2JiBvKGmb
 +lNmRdRbK0lM662XJT3I65ghxgh9ZQYROivuzrKmnW8xf1CqE3mSCJmT3
 8ANSA4bNJDDqcDkLih4jJpDcy4LfutDFk869wYGb9Cjpf2IsSXIjgy6c3 g==;
X-CSE-ConnectionGUID: 87PKMvU5RAS+xEbo4Oms1A==
X-CSE-MsgGUID: Hig92oPxSPOMu/U87WaHUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494010"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494010"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:43 -0700
X-CSE-ConnectionGUID: rSTKiaO8RrGgllGmNTD3uw==
X-CSE-MsgGUID: cDXyez1+R8encqIBbw431g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060600"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 14/21] drm/i915/dp: Disable link retraining after the last
 fallback step
Date: Mon, 10 Jun 2024 19:49:26 +0300
Message-ID: <20240610164933.2947366-15-imre.deak@intel.com>
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

After a link training failure if the link parameters can't be further
reduced, there is no point in trying to retrain the link in the driver.
This avoids excessive retrain attempts after detecting a bad link, for
instance while handling MST HPD IRQs, which is likely redundant as the
link training failed already twice with the same minimum link
parameters. Userspace can still try to retrain the link with these
parameters via a modeset.

While at it make the error message more accurate.

v2: Move converting the error to a debug message to the relevant
    follow-up patch. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++++
 .../drm/i915/display/intel_dp_link_training.c | 21 ++++++++++++-------
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d8e00cbfa8246..01e29b6d0b0dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1765,6 +1765,7 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		bool retrain_disabled;
 		/* Sequential link training failures after a passing LT */
 		int seq_train_failures;
 	} link;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1f4798be58eb5..f4fadb8ebf0d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2958,6 +2958,7 @@ static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link.retrain_disabled = false;
 	intel_dp->link.seq_train_failures = 0;
 }
 
@@ -5071,6 +5072,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
+	if (intel_dp->link.retrain_disabled)
+		return false;
+
 	if (intel_dp->link.seq_train_failures)
 		return true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index bb8680ac7f4da..e106a9e6ea3bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1164,10 +1164,8 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		new_link_rate = intel_dp_max_common_rate(intel_dp);
 	}
 
-	if (new_lane_count < 0) {
-		lt_err(intel_dp, DP_PHY_DPRX, "Link Training Unsuccessful\n");
+	if (new_lane_count < 0)
 		return -1;
-	}
 
 	if (intel_dp_is_edp(intel_dp) &&
 	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
@@ -1188,7 +1186,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 }
 
 /* NOTE: @state is only valid for MST links and can be %NULL for SST. */
-static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
+static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
 						     struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
@@ -1197,7 +1195,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
-		return;
+		return true;
 	}
 
 	if (intel_dp->hobl_active) {
@@ -1205,16 +1203,18 @@ static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
 		intel_dp->hobl_failed = true;
 	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
-		return;
+		return false;
 	}
 
 	if (drm_WARN_ON(&i915->drm,
 			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
 			!state))
-		return;
+		return false;
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
 	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+
+	return true;
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
@@ -1533,7 +1533,12 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state);
+	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
+		return;
+
+	intel_dp->link.retrain_disabled = true;
+
+	lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
-- 
2.43.3

