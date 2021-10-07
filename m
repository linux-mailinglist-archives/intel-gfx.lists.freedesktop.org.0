Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5787342546B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 15:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6599A6E530;
	Thu,  7 Oct 2021 13:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05996E530
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 13:39:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="312460344"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="312460344"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 06:39:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488993164"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 06:39:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu,  7 Oct 2021 16:39:07 +0300
Message-Id: <20211007133908.6188-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/dp: abstract
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 42 +++++++++++--------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1a943ae38a6b..d239d72bfcf2 100644
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
+	if (train_set_lane & DP_TRAIN_MAX_SWING_REACHED)
+		return true;
+
+	if (v + p == 3)
+		return true;
+
+	return false;
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

