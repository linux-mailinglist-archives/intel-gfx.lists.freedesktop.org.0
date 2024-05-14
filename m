Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C47648C5B8E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AAA10E6CE;
	Tue, 14 May 2024 19:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KfTdUmly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864AE10E53F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714061; x=1747250061;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XSvmmfphqUadUtPCrnaaj0gGfq64wkft5vMMcyRPoTA=;
 b=KfTdUmlyBb9NllD/AdrlV3qPU7uYZABF9oXvuKdQDCvmaw1kJeFGrcKg
 KeqoHcBTCNMoaSR+dOFtKh4rA13VmW8Oi0FDPobA9KgMIKEpKsTHig8tx
 WqU8g+nSp32b+7eOdPx3cMLQ80hY6GK+6f9tQtB+qW59Esp1sfvMaxT6+
 PWRFnHmS0kaA0+6+eyv+aCVtaYKRXiNgPucC45FklZyGqNo3xeyvL862W
 C1mGU3OPsyOVyR+cO2bDA9QEjAVMzowduiXSf2LtA5AoeskGYchRvgsw1
 PlecuoJDZ4xojldbNIpIfANOEgYji6jM1au00BKZQfqg46+OZTEZXDVN/ w==;
X-CSE-ConnectionGUID: U671hX/hT7i4cRia2v1EtA==
X-CSE-MsgGUID: GFEYsZVtTGadOInErCaAlg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124986"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124986"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:20 -0700
X-CSE-ConnectionGUID: auoG7QByQCqYefYAiEZa+Q==
X-CSE-MsgGUID: Dv6NcwXtQLysrE0OrCGvQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724599"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/20] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
Date: Tue, 14 May 2024 22:14:02 +0300
Message-ID: <20240514191418.2863344-5-imre.deak@intel.com>
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

Reduce the indentation in intel_dp_get_link_train_fallback_values() by
adding separate helpers to reduce the link rate and lane count. Also
simplify things by passing crtc_state to the function.

This also prepares for later patches in the patchset adding a limitation
on how the link params are reduced.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 82 ++++++++++++-------
 1 file changed, 51 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1b4694b46cea7..1ea4aaf9592f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1109,11 +1109,37 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
 	return true;
 }
 
+static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
+{
+	int rate_index;
+	int new_rate;
+
+	rate_index = intel_dp_rate_index(intel_dp->common_rates,
+					 intel_dp->num_common_rates,
+					 current_rate);
+
+	if (rate_index <= 0)
+		return -1;
+
+	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
+
+	return new_rate;
+}
+
+static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
+{
+	if (current_lane_count > 1)
+		return current_lane_count >> 1;
+
+	return -1;
+}
+
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-						   int link_rate, u8 lane_count)
+						   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int index;
+	int new_link_rate;
+	int new_lane_count;
 
 	/*
 	 * TODO: Enable fallback on MST links once MST link compute can handle
@@ -1131,36 +1157,32 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
-	index = intel_dp_rate_index(intel_dp->common_rates,
-				    intel_dp->num_common_rates,
-				    link_rate);
-	if (index > 0) {
-		if (intel_dp_is_edp(intel_dp) &&
-		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
-							      intel_dp_common_rate(intel_dp, index - 1),
-							      lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "Retrying Link training for eDP with same parameters\n");
-			return 0;
-		}
-		intel_dp->link_train.max_rate = intel_dp_common_rate(intel_dp, index - 1);
-		intel_dp->link_train.max_lane_count = lane_count;
-	} else if (lane_count > 1) {
-		if (intel_dp_is_edp(intel_dp) &&
-		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
-							      intel_dp_max_common_rate(intel_dp),
-							      lane_count >> 1)) {
-			drm_dbg_kms(&i915->drm,
-				    "Retrying Link training for eDP with same parameters\n");
-			return 0;
-		}
-		intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
-		intel_dp->link_train.max_lane_count = lane_count >> 1;
-	} else {
+	new_lane_count = crtc_state->lane_count;
+	new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
+	if (new_link_rate < 0) {
+		new_lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
+		new_link_rate = intel_dp_max_common_rate(intel_dp);
+	}
+
+	if (new_lane_count < 0) {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
 		return -1;
 	}
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
+		drm_dbg_kms(&i915->drm,
+			    "Retrying Link training for eDP with same parameters\n");
+		return 0;
+	}
+
+	drm_dbg_kms(&i915->drm, "Reducing link parameters from %dx%d to %dx%d\n",
+		    crtc_state->port_clock, crtc_state->lane_count,
+		    new_link_rate, new_lane_count);
+
+	intel_dp->link_train.max_rate = new_link_rate;
+	intel_dp->link_train.max_lane_count = new_lane_count;
+
 	return 0;
 }
 
@@ -1178,9 +1200,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Link Training failed with HOBL active, not enabling it from now on\n");
 		intel_dp->hobl_failed = true;
-	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
-							   crtc_state->port_clock,
-							   crtc_state->lane_count)) {
+	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
 		return;
 	}
 
-- 
2.43.3

