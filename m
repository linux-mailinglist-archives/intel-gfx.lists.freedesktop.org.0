Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 564479392CB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508E410E1F2;
	Mon, 22 Jul 2024 16:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y0CqHwgf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A5410E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667298; x=1753203298;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WBPwzQOzOG6FOkRFxFUwKOcrkAyYgUMAhUW84hqm8eM=;
 b=Y0CqHwgfETRFz3HNV6gS4El2qOB8w4PuDQVtIo2dZ4XbERhoPjDe6Yvv
 87VwdMfXyPTv0eSSFq5j4UDfX2rtq+T8YYXeU+gGxLvhjR9bWoPMZQM7q
 wIGBPbuuJAeTd60yNDJ6Hl8HAXEXot1RBt3SlO3zLm+Up59PnO2jo3C7t
 YDA7NTSzPnHKyJlRhYZBeshYD0IxagtD6dYNjZptfU40mdl3deCV4l2hR
 r5yAU6VMYxSsngg75Dag7elPbX47LfLDi2XtEVhtLGPPrxD+EJDxim2Js
 N8NKjITmGmB0rKq+IetRMhrZO6nicnp8ZczWSCiZW4qzktlR/Pmp+ZzHn w==;
X-CSE-ConnectionGUID: sm01fXNUQRGkQc35K9DxSA==
X-CSE-MsgGUID: mRa7Ix15Qb20aXjs3FdZXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117314"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117314"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:58 -0700
X-CSE-ConnectionGUID: XW7BrC8CS+S9e4Fv5MLIRA==
X-CSE-MsgGUID: keO+6eJ0R06diNL1KqmUAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056230"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:57 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the link
 parameters
Date: Mon, 22 Jul 2024 19:54:56 +0300
Message-ID: <20240722165503.2084999-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

A follow-up patch will add an alternative way to reduce the link
parameters in BW order on MST links, prepare for that here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 39 +++++++++++++++----
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 58dea87a9fa28..57536ae200b77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1193,6 +1193,36 @@ static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 	return current_lane_count >> 1;
 }
 
+static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
+						  const struct intel_crtc_state *crtc_state,
+						  int *new_link_rate, int *new_lane_count)
+{
+	int link_rate;
+	int lane_count;
+
+	lane_count = crtc_state->lane_count;
+	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
+	if (link_rate < 0) {
+		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
+		link_rate = intel_dp_max_common_rate(intel_dp);
+	}
+
+	if (lane_count < 0)
+		return false;
+
+	*new_link_rate = link_rate;
+	*new_lane_count = lane_count;
+
+	return true;
+}
+
+static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state,
+			       int *new_link_rate, int *new_lane_count)
+{
+	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
+						     new_link_rate, new_lane_count);
+}
+
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
@@ -1206,14 +1236,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
-	new_lane_count = crtc_state->lane_count;
-	new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
-	if (new_link_rate < 0) {
-		new_lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		new_link_rate = intel_dp_max_common_rate(intel_dp);
-	}
-
-	if (new_lane_count < 0)
+	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
 		return -1;
 
 	if (intel_dp_is_edp(intel_dp) &&
-- 
2.44.2

