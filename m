Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C258A7C71C
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Apr 2025 02:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F188610E2EA;
	Sat,  5 Apr 2025 00:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJmC74Kc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC8C10E291
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Apr 2025 00:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743813277; x=1775349277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KPHUAZ4nsFtOVddwTeGgdEG7XGkQc9fY05wabv32lGg=;
 b=dJmC74KccubnybMvLF5nCplzmD19eh4//zylx1t5AYTHyXrzXgSKehvY
 +TpRrRpQj8nBvQ6QNZlH2BAzHePpMK2JHAio64iHeJMd77AwGxep3N4Jd
 ScDlhZl2Gk71gnXbMJpVRbqoyuebxEH4c3TXeTF/703m50qY01njSmGR2
 kel6+gsGSkyG3avvGrs2Sbo82YwRjYX7mWAZiuArHKYcOAPGak/z2xb3s
 piuXeJqJY9O+xzjVVwL/tcUS+kT3tLpBElvVjqV0rB88UxqM15HvYgjqJ
 TnnT2yMjMLD7TcBfHvmUpGTKPN4u3vyQWu8JvK3811Ue4il5jOeKv7JUy w==;
X-CSE-ConnectionGUID: OkM+/v2FQXuHZdvvnG7uMg==
X-CSE-MsgGUID: dMCP43rsTgmHY+NPl4Xy2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="62812764"
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="62812764"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 17:34:36 -0700
X-CSE-ConnectionGUID: /ZBm8hTMTji7Ptv9r9k4jQ==
X-CSE-MsgGUID: KLpJzAPHRzqs3NubBbwvNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,189,1739865600"; d="scan'208";a="158429490"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa002.jf.intel.com with ESMTP; 04 Apr 2025 17:34:36 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Charlton Lin <charlton.lin@intel.com>
Subject: [PATCH v2 1/2] drm/i915/dp: Enable SST LT fallback between UHBR and
 non-UHBR link rates
Date: Fri,  4 Apr 2025 17:34:33 -0700
Message-ID: <20250405003434.641638-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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

With all the pieces for UHBR SST LT implemented, we can now enable LT
fallback switching between SST UHBR and non-UHBR link rates.

Testing with an Asus DP2.1 monitor confirms it follows the specs [1].

> ./kms_dp_linktrain_fallback --run-subtest dp-fallback

Mode 3840x2160@160 on output DP-3
Current link rate: 1000000, Current lane count: 4
Current link rate: 810000, Current lane count: 4
Current link rate: 1000000, Current lane count: 2
Current link rate: 540000, Current lane count: 4
Current link rate: 810000, Current lane count: 2
Current link rate: 1000000, Current lane count: 1
Current link rate: 540000, Current lane count: 2
Current link rate: 270000, Current lane count: 4
Current link rate: 810000, Current lane count: 1
Current link rate: 162000, Current lane count: 4
Current link rate: 540000, Current lane count: 1
Current link rate: 270000, Current lane count: 2
Current link rate: 162000, Current lane count: 2
Current link rate: 270000, Current lane count: 1
Current link rate: 162000, Current lane count: 1

Testing by intentionally hacking the LT code to send incorrect training
patterns to cause LT failures seems to confirm that this approach
is working:

128b/132b Link Training failed at link rate = 1000000, lane count = 4
128b/132b Link Training failed at link rate = 1000000, lane count = 4
Link Training failed at link rate = 810000, lane count = 4
128b/132b Link Training failed at link rate = 1000000, lane count = 2
Link Training failed at link rate = 540000, lane count = 4
Link Training failed at link rate = 810000, lane count = 2
128b/132b Link Training failed at link rate = 1000000, lane count = 1
Link Training failed at link rate = 540000, lane count = 2
Link Training failed at link rate = 270000, lane count = 4
Link Training failed at link rate = 810000, lane count = 1
Link Training failed at link rate = 162000, lane count = 4
Link Training failed at link rate = 540000, lane count = 1
Link Training failed at link rate = 270000, lane count = 2
Link Training failed at link rate = 162000, lane count = 2
Link Training failed at link rate = 270000, lane count = 1
Link Training passed at link rate = 162000, lane count = 1

[1]: DP2.1 Specs - Table 3-31: DPTX Fallback Mandates

v2: Modify commit message

Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Charlton Lin <charlton.lin@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 72 +------------------
 1 file changed, 1 insertion(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6fc76c424f46..26db4c49deec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1220,76 +1220,6 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 	return true;
 }
 
-static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
-{
-	int rate_index;
-	int new_rate;
-
-	if (intel_dp->link.force_rate)
-		return -1;
-
-	rate_index = intel_dp_rate_index(intel_dp->common_rates,
-					 intel_dp->num_common_rates,
-					 current_rate);
-
-	if (rate_index <= 0)
-		return -1;
-
-	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
-
-	/* TODO: Make switching from UHBR to non-UHBR rates work. */
-	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
-		return -1;
-
-	return new_rate;
-}
-
-static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
-{
-	if (intel_dp->link.force_lane_count)
-		return -1;
-
-	if (current_lane_count == 1)
-		return -1;
-
-	return current_lane_count >> 1;
-}
-
-static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
-						  const struct intel_crtc_state *crtc_state,
-						  int *new_link_rate, int *new_lane_count)
-{
-	int link_rate;
-	int lane_count;
-
-	lane_count = crtc_state->lane_count;
-	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
-	if (link_rate < 0) {
-		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(intel_dp);
-	}
-
-	if (lane_count < 0)
-		return false;
-
-	*new_link_rate = link_rate;
-	*new_lane_count = lane_count;
-
-	return true;
-}
-
-static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state,
-			       int *new_link_rate, int *new_lane_count)
-{
-	/* TODO: Use the same fallback logic on SST as on MST. */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
-		return reduce_link_params_in_bw_order(intel_dp, crtc_state,
-						      new_link_rate, new_lane_count);
-	else
-		return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
-							     new_link_rate, new_lane_count);
-}
-
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
@@ -1303,7 +1233,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
-	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
+	if (!reduce_link_params_in_bw_order(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
 		return -1;
 
 	if (intel_dp_is_edp(intel_dp) &&
-- 
2.43.0

