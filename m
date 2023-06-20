Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3F773654F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 09:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C80210E280;
	Tue, 20 Jun 2023 07:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280AC10E280
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 07:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687247489; x=1718783489;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5tIbbWZgM9+PI4pAcZCM77mn5892OG+3svyXjG3mpJY=;
 b=fqY5eIzlnGnAAFNop8VyVDajsaF2+IBVXticN4XXEjg7y3esqXQwnAPu
 JK173hb3w+TdaRDkXfhOr/dwqaCLIymxvozUNxw64EM1riySAVLJOulz/
 +oJyJON1ixSGqWdi7Q4EToTKwAe9eyp2qCLVMbMjea0V/5WrSn7dSMTCG
 xMIQlkZZ5TfsCzLkTKCcIcl8uBfahHB40C2no7xxxzIiFiOVHNbbOcuMe
 ZRlDBQFrw+nfFKuik1TRBjopsqsoXdI3mdFFhoghsKL22xdrzMxfoATU2
 l7XdyGCXfYq2qyXcdjoHHjNUM+m/XvZW/WZiQFwkYGy0TmJitP8jigNKi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="349524630"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="349524630"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 00:51:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="888161334"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="888161334"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga005.jf.intel.com with ESMTP; 20 Jun 2023 00:51:27 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 13:14:00 +0530
Message-Id: <20230620074400.1054530-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT failure
 for DP2.0
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

For DP2.0 as per the Spec on LT failure we need to reduce the lane count
if the lane count is not equal to 1. If lane count is 1 then need to
retry with reducing the link rate.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54ddc953e5bc..2b12ca45596d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -657,8 +657,20 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 				    "Retrying Link training for eDP with same parameters\n");
 			return 0;
 		}
-		intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
-		intel_dp->max_link_lane_count = lane_count;
+		if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {
+			if (lane_count > 1) {
+				/* Reduce the lane count */
+				intel_dp->max_link_lane_count = lane_count >> 1;
+				intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index);
+			} else {
+				/* Reduce the link rate */
+				intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
+				intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);
+			}
+		} else {
+			intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
+			intel_dp->max_link_lane_count = lane_count;
+		}
 	} else if (lane_count > 1) {
 		if (intel_dp_is_edp(intel_dp) &&
 		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
@@ -675,6 +687,10 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return -1;
 	}
 
+	drm_dbg_kms(&i915->drm,
+		    "Retrying Link training with link rate %d and lane count %d\n",
+		    intel_dp->max_link_rate, intel_dp->max_link_lane_count);
+
 	return 0;
 }
 
-- 
2.25.1

