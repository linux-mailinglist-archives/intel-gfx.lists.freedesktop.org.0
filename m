Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE10D97D507
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B0D10E822;
	Fri, 20 Sep 2024 11:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Robv/8zR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB8C510E81E;
 Fri, 20 Sep 2024 11:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833431; x=1758369431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wsW451/FDh+yMvMH2biFGFM9kvPo05dPzLz1J+c3ZxU=;
 b=Robv/8zRg3YZ9hd6Y7gnbQU95qxS2Wjlu9l60zWT0g6kZEMnvPJIZZHE
 DUAASOqtsexAAx6qzjauPVJnJbv99sDVeFcr7Hb2G39ZnvOBA8IH8t1SL
 Kxz3IZn1FdTMkRCOK5t/A4CHsjVsVMmbaTgj4W3dzn0EQdOZiem6FY2PE
 23KYkJZW4FwvHfwE5JC0vF05D+nZ0aDREQuMOYAaKXIgYLOalzGP4fls3
 JXwgvefHnEJ/c6S+SqozVye9o/U7FJkHzpopRSxJ4MoLI/7ZMTDNRFNOO
 a+ofpUPUYbSfNapsFQvgf7FQ/oqypmdzGXl3nXYHYNYoBRUodpgZx8S9q Q==;
X-CSE-ConnectionGUID: b2thSVW4TWOLYRyVWBO9tQ==
X-CSE-MsgGUID: j+Eh2V/ES7yyucDuOel6gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984549"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984549"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:11 -0700
X-CSE-ConnectionGUID: SAmU73T/TIC89AsE87YK2A==
X-CSE-MsgGUID: ujq5y/cURXGUDqoCaCVNzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519154"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/9] drm/i915/dp: fix style issues in intel_dp_test.c
Date: Fri, 20 Sep 2024 14:56:44 +0300
Message-Id: <330f918a3b4fe6dd156dd89ee26c56cf8ae8ec31.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Apply some style fixes on top of the previous code movement.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_test.c | 26 ++++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 41cb05f44670..0a49b15f99e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -29,7 +29,8 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 	if (intel_dp->compliance.test_data.bpc != 0) {
 		int bpp = 3 * intel_dp->compliance.test_data.bpc;
 
-		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
+		limits->pipe.min_bpp = bpp;
+		limits->pipe.max_bpp = bpp;
 		pipe_config->dither_force_disable = bpp == 6 * 3;
 
 		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
@@ -47,20 +48,20 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 			index = intel_dp_rate_index(intel_dp->common_rates,
 						    intel_dp->num_common_rates,
 						    intel_dp->compliance.test_link_rate);
-			if (index >= 0)
-				limits->min_rate = limits->max_rate =
-					intel_dp->compliance.test_link_rate;
-			limits->min_lane_count = limits->max_lane_count =
-				intel_dp->compliance.test_lane_count;
+			if (index >= 0) {
+				limits->min_rate = intel_dp->compliance.test_link_rate;
+				limits->max_rate = intel_dp->compliance.test_link_rate;
+			}
+			limits->min_lane_count = intel_dp->compliance.test_lane_count;
+			limits->max_lane_count = intel_dp->compliance.test_lane_count;
 		}
 	}
 }
 
 /* Compliance test status bits  */
-#define INTEL_DP_RESOLUTION_SHIFT_MASK	0
-#define INTEL_DP_RESOLUTION_PREFERRED	(1 << INTEL_DP_RESOLUTION_SHIFT_MASK)
-#define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
-#define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
+#define INTEL_DP_RESOLUTION_PREFERRED	1
+#define INTEL_DP_RESOLUTION_STANDARD	2
+#define INTEL_DP_RESOLUTION_FAILSAFE	3
 
 static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 {
@@ -169,8 +170,7 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct drm_connector *connector = &intel_connector->base;
 
-	if (intel_connector->detect_edid == NULL ||
-	    connector->edid_corrupt ||
+	if (!intel_connector->detect_edid || connector->edid_corrupt ||
 	    intel_dp->aux.i2c_defer_count > 6) {
 		/* Check EDID read for NACKs, DEFERs and corruption
 		 * (DP CTS 1.2 Core r1.1)
@@ -180,7 +180,7 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 		 * Use failsafe mode for all cases
 		 */
 		if (intel_dp->aux.i2c_nack_count > 0 ||
-			intel_dp->aux.i2c_defer_count > 0)
+		    intel_dp->aux.i2c_defer_count > 0)
 			drm_dbg_kms(&i915->drm,
 				    "EDID read had %d NACKs, %d DEFERs\n",
 				    intel_dp->aux.i2c_nack_count,
-- 
2.39.2

