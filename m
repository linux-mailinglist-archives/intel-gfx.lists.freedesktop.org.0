Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AB68CA260
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E6010E572;
	Mon, 20 May 2024 18:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQ7VYida";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA7310E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231501; x=1747767501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oVett7KAVddwcUgqcAHAIt6FOAMlH0D3DcshV0XP2+U=;
 b=AQ7VYidaeIKSGyMx2HutcZGqjQkfCXMulRP0HCvfmFIPQSie6clE+Yx4
 IKOhx4/h1zbEsUq0EM2bl5WGHbk3tT8qjWtxZz+WqOFTWzzhSY2mggND8
 kzNq6/5o4GFlqAPDz2JnayGVT7N5NauHGEegpyRjDcjzg6Iw+TO9dbeOW
 +5STOxEkzpNUHMy8n98DWKvmSsARBNsAcprqtR5ZuSX0GRHwKNM0tJQjN
 KvEyuj0kXEK6y/iwj4Glp8uyYjQlHFcsxg1rCpZ1ZAzMmNxzfMy5szuMQ
 EPMFCpfZ56mw6z9RepnSYGN/uNc4Bw1VPazTb6rYnxdfMqfggW+K0gMWh Q==;
X-CSE-ConnectionGUID: 0te1wnkhQIeJo1YDGdk4yg==
X-CSE-MsgGUID: Wa/Cb0hxTSCpWQMeNa0Bag==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218509"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:21 -0700
X-CSE-ConnectionGUID: IQuDkE5sSuywEWsYVxRXXw==
X-CSE-MsgGUID: oHbE2K/UQc6Bh6hYPUITYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213837"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/21] drm/i915/dp: Move link train params to a substruct
 in intel_dp
Date: Mon, 20 May 2024 21:58:00 +0300
Message-ID: <20240520185822.3725844-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

For clarity move the link training parameters updated during link
training based on the pass/fail LT result under a substruct in intel_dp.
This prepares for later patches in this patchset adding similar params
here. Rename intel_dp_reset_max_link_params() to
intel_dp_reset_link_params() to better reflect what state gets reset.

v2: Add the parameters to a more generic link substruct. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 13 ++++----
 drivers/gpu/drm/i915/display/intel_dp.c       | 30 +++++++++----------
 2 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6f..1e44a23ca2125 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1739,7 +1739,6 @@ struct intel_dp {
 	u8 lane_count;
 	u8 sink_count;
 	bool link_trained;
-	bool reset_link_params;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
@@ -1760,10 +1759,14 @@ struct intel_dp {
 	/* intersection of source and sink rates */
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
-	/* Max lane count for the current link */
-	int max_link_lane_count;
-	/* Max rate for the current link */
-	int max_link_rate;
+	struct {
+		/* TODO: move the rest of link specific fields to here */
+		/* Max lane count for the current link */
+		int max_lane_count;
+		/* Max rate for the current link */
+		int max_rate;
+	} link;
+	bool reset_link_params;
 	int mso_link_count;
 	int mso_pixel_overlap;
 	/* sink or branch descriptor */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a3b6d506817..ceedd3ef41946 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -372,13 +372,13 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
-	switch (intel_dp->max_link_lane_count) {
+	switch (intel_dp->link.max_lane_count) {
 	case 1:
 	case 2:
 	case 4:
-		return intel_dp->max_link_lane_count;
+		return intel_dp->link.max_lane_count;
 	default:
-		MISSING_CASE(intel_dp->max_link_lane_count);
+		MISSING_CASE(intel_dp->link.max_lane_count);
 		return 1;
 	}
 }
@@ -644,7 +644,7 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * boot-up.
 	 */
 	if (link_rate == 0 ||
-	    link_rate > intel_dp->max_link_rate)
+	    link_rate > intel_dp->link.max_rate)
 		return false;
 
 	if (lane_count == 0 ||
@@ -705,8 +705,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 				    "Retrying Link training for eDP with same parameters\n");
 			return 0;
 		}
-		intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
-		intel_dp->max_link_lane_count = lane_count;
+		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, index - 1);
+		intel_dp->link.max_lane_count = lane_count;
 	} else if (lane_count > 1) {
 		if (intel_dp_is_edp(intel_dp) &&
 		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
@@ -716,8 +716,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 				    "Retrying Link training for eDP with same parameters\n");
 			return 0;
 		}
-		intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
-		intel_dp->max_link_lane_count = lane_count >> 1;
+		intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+		intel_dp->link.max_lane_count = lane_count >> 1;
 	} else {
 		drm_err(&i915->drm, "Link Training Unsuccessful\n");
 		return -1;
@@ -1382,7 +1382,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	int len;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
@@ -3017,10 +3017,10 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 	intel_dp->lane_count = lane_count;
 }
 
-static void intel_dp_reset_max_link_params(struct intel_dp *intel_dp)
+static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);
-	intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 }
 
 /* Enable backlight PWM and backlight PP control. */
@@ -3355,7 +3355,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
 
 	if (crtc_state)
-		intel_dp_reset_max_link_params(intel_dp);
+		intel_dp_reset_link_params(intel_dp);
 }
 
 bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
@@ -5889,7 +5889,7 @@ intel_dp_detect(struct drm_connector *connector,
 	 * supports link training fallback params.
 	 */
 	if (intel_dp->reset_link_params || intel_dp->is_mst) {
-		intel_dp_reset_max_link_params(intel_dp);
+		intel_dp_reset_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
 
@@ -6741,7 +6741,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_dp_set_source_rates(intel_dp);
 	intel_dp_set_common_rates(intel_dp);
-	intel_dp_reset_max_link_params(intel_dp);
+	intel_dp_reset_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
 	intel_dp_mst_encoder_init(dig_port,
-- 
2.43.3

