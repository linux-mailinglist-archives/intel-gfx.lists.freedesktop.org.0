Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0A84296BC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C747F6E921;
	Mon, 11 Oct 2021 18:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4036E921
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Oct 2021 18:22:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="290431116"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="290431116"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="490579386"
Received: from veckl-mobl.ger.corp.intel.com (HELO localhost) ([10.249.41.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 11:21:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Mon, 11 Oct 2021 21:21:43 +0300
Message-Id: <20211011182144.22074-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: abstract
 intel_dp_lane_max_vswing_reached()
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

Add per-lane abstraction for max vswing reached to make follow-up
cleaner, as this one reverses the conditions.

v2: both conditions need to be true, reverse (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 42 +++++++++++--------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1a943ae38a6b..1d4bcb91cd3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -515,29 +515,37 @@ intel_dp_update_link_train(struct intel_dp *intel_dp,
 	return ret == crtc_state->lane_count;
 }
 
+/*
+ * FIXME: The DP spec is very confusing here, also the Link CTS spec seems to
+ * have self contradicting tests around this area.
+ *
+ * In lieu of better ideas let's just stop when we've reached the max supported
+ * vswing with its max pre-emphasis, which is either 2+1 or 3+0 depending on
+ * whether vswing level 3 is supported or not.
+ */
+static bool intel_dp_lane_max_vswing_reached(u8 train_set_lane)
+{
+	u8 v = (train_set_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
+		DP_TRAIN_VOLTAGE_SWING_SHIFT;
+	u8 p = (train_set_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+		DP_TRAIN_PRE_EMPHASIS_SHIFT;
+
+	if ((train_set_lane & DP_TRAIN_MAX_SWING_REACHED) == 0)
+		return false;
+
+	if (v + p != 3)
+		return false;
+
+	return true;
+}
+
 static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 					     const struct intel_crtc_state *crtc_state)
 {
 	int lane;
 
-	/*
-	 * FIXME: The DP spec is very confusing here, also the Link CTS
-	 * spec seems to have self contradicting tests around this area.
-	 *
-	 * In lieu of better ideas let's just stop when we've reached the
-	 * max supported vswing with its max pre-emphasis, which is either
-	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
-	 */
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
+		if (!intel_dp_lane_max_vswing_reached(intel_dp->train_set[lane]))
 			return false;
 	}
 
-- 
2.30.2

