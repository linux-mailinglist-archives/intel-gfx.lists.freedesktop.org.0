Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5232E8C5B98
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1598710EB27;
	Tue, 14 May 2024 19:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyhkmBvT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2295210E8CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714069; x=1747250069;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=X3nTdg/G/fGtUCgK3L+WMzVbjg/n7J8u+b2jp8PUfh4=;
 b=AyhkmBvTDyFbfHbKcAL9wQzhH2TlUO5n2DYim6dSjBizRssT4gxpVB/C
 WGhy5Fm68MAWE49NOy65wV7FejY56KtkpI9zJJa0GRUlFhZ3W1mQuIwvE
 VHgFQtPnRWDG1q26kfhIA7b5972O6AHxLc0PeQyXqNc2e6iSoHqNyUHX0
 LdIaGUwVSgNDTrIKx7ZlOweW5tXLhCUjs91RmhRbroXXmxNTd7e6N7Zpr
 PjebW0MGI+ckY9pQL+9UL5b5wtNHs39IyBgBQ0HO6qjl6ez+xceFGSGTm
 n+eE+Q6p6cJcfQUmX4FFrfLj23NYbr/TtmSv+M8iZ2iV6l862tSwcAuHP A==;
X-CSE-ConnectionGUID: 6mqcPXKySKenEHU3WiZ9SA==
X-CSE-MsgGUID: BuXnoSxNSeOaWia1n7RHJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124998"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124998"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:29 -0700
X-CSE-ConnectionGUID: 5z+pKnUaQWO2MvjHpN2DHA==
X-CSE-MsgGUID: hw1ayoWxSnWHCQZhaMrt+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724627"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/20] drm/i915/dp: Disable link retraining after the last
 fallback step
Date: Tue, 14 May 2024 22:14:12 +0300
Message-ID: <20240514191418.2863344-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

After a link training failure if the link parameters can't be further
reduced, there is no point in trying to retrain the link in the driver.
This avoids excessive retrain attempts after detecting a bad link, for
instance while handling MST HPD IRQs, which is likely redundant as the
link training failed already twice with the same minimum link
parameters. Userspace can still try to retrain the link with these
parameters via a modeset.

While at it make the error message more accurate and emit instead a
debug message if the link training failure was only forced for testing
purposes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++++
 .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++------
 3 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a173b9c105981..fb71bc7eb3d9a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1763,6 +1763,7 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		bool retrain_disabled;
 		/* Sequential failures after a passing LT */
 		int seq_failures;
 	} link_train;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e5bd2bbcc8d89..fedc0afaf99d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2951,6 +2951,7 @@ static void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link_train.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link_train.retrain_disabled = false;
 	intel_dp->link_train.seq_failures = 0;
 }
 
@@ -5061,6 +5062,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
+	if (intel_dp->link_train.retrain_disabled)
+		return false;
+
 	if (intel_dp->link_train.seq_failures)
 		return true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 769ad93f615e8..bc3a653e4ce4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1164,10 +1164,8 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		new_link_rate = intel_dp_max_common_rate(intel_dp);
 	}
 
-	if (new_lane_count < 0) {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+	if (new_lane_count < 0)
 		return -1;
-	}
 
 	if (intel_dp_is_edp(intel_dp) &&
 	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
@@ -1186,14 +1184,14 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
+static bool intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
-		return;
+		return true;
 	}
 
 	if (intel_dp->hobl_active) {
@@ -1201,11 +1199,13 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
 		intel_dp->hobl_failed = true;
 	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
-		return;
+		return false;
 	}
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
 	intel_dp_queue_modeset_retry_for_link(encoder);
+
+	return true;
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
@@ -1513,7 +1513,15 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
-	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+	if (intel_dp_schedule_fallback_link_training(intel_dp, crtc_state))
+		return;
+
+	intel_dp->link_train.retrain_disabled = true;
+
+	if (!passed)
+		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
+	else
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after forced failure\n");
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
-- 
2.43.3

