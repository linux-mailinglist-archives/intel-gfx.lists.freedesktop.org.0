Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3AE42A787
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 16:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6AE6E9B0;
	Tue, 12 Oct 2021 14:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B439B6E9B0;
 Tue, 12 Oct 2021 14:43:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="313363486"
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="313363486"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 07:43:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,367,1624345200"; d="scan'208";a="480380860"
Received: from annahenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.209.214])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 07:43:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Date: Tue, 12 Oct 2021 17:43:21 +0300
Message-Id: <20211012144321.5990-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012144321.5990-1-jani.nikula@intel.com>
References: <20211012144321.5990-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use new link training delay
 helpers
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

Use the new link training delay helpers, fixing the delays for
128b/132b.

For existing 8b/10b functionality, this will cause additional 1-byte
DPCD reads for LTTPR delays instead of using the cached values. It's
just too complicated to combine generic helpers with local caching in a
sensible way.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 38 +++++++------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 85676c953e0a..a72f2dc93718 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -683,15 +683,6 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void intel_dp_link_training_clock_recovery_delay(struct intel_dp *intel_dp,
-							enum drm_dp_phy dp_phy)
-{
-	if (dp_phy == DP_PHY_DPRX)
-		drm_dp_link_train_clock_recovery_delay(&intel_dp->aux, intel_dp->dpcd);
-	else
-		drm_dp_lttpr_link_train_clock_recovery_delay();
-}
-
 static bool intel_dp_adjust_request_changed(const struct intel_crtc_state *crtc_state,
 					    const u8 old_link_status[DP_LINK_STATUS_SIZE],
 					    const u8 new_link_status[DP_LINK_STATUS_SIZE])
@@ -750,6 +741,11 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool max_vswing_reached = false;
 	char phy_name[10];
+	int delay_us;
+
+	delay_us = drm_dp_read_clock_recovery_delay(&intel_dp->aux,
+						    intel_dp->dpcd, dp_phy,
+						    intel_dp_is_uhbr(crtc_state));
 
 	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
 
@@ -777,7 +773,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 	voltage_tries = 1;
 	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
-		intel_dp_link_training_clock_recovery_delay(intel_dp, dp_phy);
+		usleep_range(delay_us, 2 * delay_us);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
@@ -895,19 +891,6 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 	return DP_TRAINING_PATTERN_2;
 }
 
-static void
-intel_dp_link_training_channel_equalization_delay(struct intel_dp *intel_dp,
-						  enum drm_dp_phy dp_phy)
-{
-	if (dp_phy == DP_PHY_DPRX) {
-		drm_dp_link_train_channel_eq_delay(&intel_dp->aux, intel_dp->dpcd);
-	} else {
-		const u8 *phy_caps = intel_dp_lttpr_phy_caps(intel_dp, dp_phy);
-
-		drm_dp_lttpr_link_train_channel_eq_delay(&intel_dp->aux, phy_caps);
-	}
-}
-
 /*
  * Perform the link training channel equalization phase on the given DP PHY
  * using one of training pattern 2, 3 or 4 depending on the source and
@@ -925,6 +908,11 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool channel_eq = false;
 	char phy_name[10];
+	int delay_us;
+
+	delay_us = drm_dp_read_channel_eq_delay(&intel_dp->aux,
+						intel_dp->dpcd, dp_phy,
+						intel_dp_is_uhbr(crtc_state));
 
 	intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name));
 
@@ -944,8 +932,8 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	}
 
 	for (tries = 0; tries < 5; tries++) {
-		intel_dp_link_training_channel_equalization_delay(intel_dp,
-								  dp_phy);
+		usleep_range(delay_us, 2 * delay_us);
+
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
 						     link_status) < 0) {
 			drm_err(&i915->drm,
-- 
2.30.2

