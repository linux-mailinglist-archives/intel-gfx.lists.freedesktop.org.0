Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F6784B2EB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 11:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F1D10EB4A;
	Tue,  6 Feb 2024 10:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Advk7DXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C6E10EB82
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 10:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707217099; x=1738753099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GHwUiREu8QnT4iF10j3UtcfgSKBeYL36SxBJWMDnt+w=;
 b=Advk7DXQ/45LfuNakZ8Irwt77ZT5QYVQj2z8FawR7uLGqH5Wb8Vc3u2z
 x/gFEZueCj4giEZtaWqoHynKnoGfZXocCrQv1EHuJXpbsjflk9dMYruNN
 UelocU9E0gUu9WiJFghNvMNZAbhlrmd2xSNHiue428kD3lnIOAE5m1XMO
 73LXymjc/SrFKp79gOJYUDqyTHQmtnVuk0seD1NOPvVzKY6ZcG1DF675I
 W66olNW87uJW9mQQ/yveCFIDfEzyfMrn1rXr8lBLHB3dU7DLVGbZWTi2z
 tDdUx/oLl1+RRjh2ut7/ysFR8J5PGHcO/QzzCiKHIGS7NKFoZ9DjoTsD6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="26164521"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="26164521"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 02:58:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1019172"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 06 Feb 2024 02:58:17 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Date: Tue,  6 Feb 2024 16:17:56 +0530
Message-Id: <20240206104759.2079133-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206104759.2079133-1-arun.r.murthy@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
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

Fallback mandates on DP link training failure. This patch just covers
the DP2.0 fallback sequence.

TODO: Need to implement the DP1.4 fallback.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 92 ++++++++++++++++++++++---
 1 file changed, 82 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 10ec231acd98..82d354a6b0cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
  */
 static const u8 valid_dsc_slicecount[] = {1, 2, 4};
 
+/* DL Link Rates */
+#define UHBR20		2000000
+#define UHBR13P5	1350000
+#define UHBR10		1000000
+#define HBR3		810000
+#define HBR2		540000
+#define HBR		270000
+#define RBR		162000
+
+/* DP Lane Count */
+#define LANE_COUNT_4	4
+#define LANE_COUNT_2	2
+#define LANE_COUNT_1	1
+
+/* DP2.0 fallback values */
+struct dp_fallback {
+	u32 link_rate;
+	u8 lane_count;
+};
+
+struct dp_fallback dp2dot0_fallback[] = {
+	{UHBR20, LANE_COUNT_4},
+	{UHBR13P5, LANE_COUNT_4},
+	{UHBR20, LANE_COUNT_2},
+	{UHBR10, LANE_COUNT_4},
+	{UHBR13P5, LANE_COUNT_2},
+	{HBR3, LANE_COUNT_4},
+	{UHBR20, LANE_COUNT_1},
+	{UHBR10, LANE_COUNT_2},
+	{HBR2, LANE_COUNT_4},
+	{UHBR13P5, LANE_COUNT_1},
+	{HBR3, LANE_COUNT_2},
+	{UHBR10, LANE_COUNT_1},
+	{HBR2, LANE_COUNT_2},
+	{HBR, LANE_COUNT_4},
+	{HBR3, LANE_COUNT_1},
+	{RBR, LANE_COUNT_4},
+	{HBR2, LANE_COUNT_1},
+	{HBR, LANE_COUNT_2},
+	{RBR, LANE_COUNT_2},
+	{HBR, LANE_COUNT_1},
+	{RBR, LANE_COUNT_1},
+};
+
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
  * @intel_dp: DP struct
@@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				       intel_dp->num_common_rates, max_rate);
 }
 
+static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp, u32 link_rate)
+{
+	u8 i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
+		if (intel_dp->common_rates[i] == link_rate)
+			return true;
+		else
+			continue;
+	}
+	return false;
+}
+
 static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
 	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
@@ -671,15 +728,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int index;
 
-	/*
-	 * TODO: Enable fallback on MST links once MST link compute can handle
-	 * the fallback params.
-	 */
-	if (intel_dp->is_mst) {
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
-	}
-
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		drm_dbg_kms(&i915->drm,
 			    "Retrying Link training for eDP with max parameters\n");
@@ -687,6 +735,31 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
+	/* DP fallback values */
+	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {
+		for(index = 0; index < ARRAY_SIZE(dp2dot0_fallback); index++) {
+			if (link_rate == dp2dot0_fallback[index].link_rate &&
+				lane_count == dp2dot0_fallback[index].lane_count) {
+				for(index += 1; index < ARRAY_SIZE(dp2dot0_fallback); index++) {
+					if (intel_dp_link_rate_supported(intel_dp,
+							dp2dot0_fallback[index].link_rate)) {
+						intel_dp_set_link_params(intel_dp,
+								      dp2dot0_fallback[index].link_rate,
+								      dp2dot0_fallback[index].lane_count);
+						drm_dbg_kms(&i915->drm,
+							    "Retrying Link training with link rate %d and lane count %d\n",
+							    dp2dot0_fallback[index].link_rate,
+							    dp2dot0_fallback[index].lane_count);
+						return 0;
+					}
+				}
+			}
+		}
+		/* Report failure and fail link training */
+		drm_err(&i915->drm, "Link Training Unsuccessful\n");
+		return -1;
+	}
+
 	index = intel_dp_rate_index(intel_dp->common_rates,
 				    intel_dp->num_common_rates,
 				    link_rate);
@@ -716,7 +789,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
 		return -1;
 	}
-
 	return 0;
 }
 
-- 
2.25.1

