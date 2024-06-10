Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61238902708
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F202A10E2A8;
	Mon, 10 Jun 2024 16:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8XWM4TG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDA489343
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038170; x=1749574170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dyfnfz7CZQdSkMqU/+zPGgNa0hGVou1b7Ld2DGRjbCY=;
 b=N8XWM4TGhZor8iC5a4mMj5BF4Bkot7NlmvjGmy6ZKfaoqbRlz/TvJhDe
 V0QQ+htsbmmqq4987PKEv7MuAZ2svsBTLTBVVFwqApL1e0T4BJafemVJ8
 1AZh2WvkzbNhooGILEShziCLtYVX8re9A+M3TPzcqxq7rRGEJzf4sSEJb
 qX+zwn6IbwcXPU6N0LyEz5YygaKBWSGnCX4ucjfHUo5PGbGqsAYCHmIG4
 QNDAqizybTuRwTAChKq71s2se2NG9Pl610q1vCIF9hCLWcnYm3OlcHMA0
 A1UMWXEaq37NB8ZFbZCuU9824iTXTf2CUfHN4VTBLkb4LgnBfZZzIvlil w==;
X-CSE-ConnectionGUID: 7AAgyKi3TzWztlcLSduH+g==
X-CSE-MsgGUID: +hk1I236TCuNwsj2oot6hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493960"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493960"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:29 -0700
X-CSE-ConnectionGUID: OKIEdMQ0Ree211Qbcq1DbQ==
X-CSE-MsgGUID: 6cXBAXqVRKiAd4KnO7D0Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060568"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 02/21] drm/i915/dp: Move link train params to a substruct
 in intel_dp
Date: Mon, 10 Jun 2024 19:49:14 +0300
Message-ID: <20240610164933.2947366-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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
index 83d6a3d901fd7..a725c2c9bdfc5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1733,7 +1733,6 @@ struct intel_dp {
 	u8 lane_count;
 	u8 sink_count;
 	bool link_trained;
-	bool reset_link_params;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
@@ -1755,10 +1754,14 @@ struct intel_dp {
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
index fd054e16850da..f93c98ac97b05 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -373,13 +373,13 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 
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
@@ -645,7 +645,7 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * boot-up.
 	 */
 	if (link_rate == 0 ||
-	    link_rate > intel_dp->max_link_rate)
+	    link_rate > intel_dp->link.max_rate)
 		return false;
 
 	if (lane_count == 0 ||
@@ -706,8 +706,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
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
@@ -717,8 +717,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
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
@@ -1383,7 +1383,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	int len;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
@@ -3019,10 +3019,10 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
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
@@ -3357,7 +3357,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
 
 	if (crtc_state)
-		intel_dp_reset_max_link_params(intel_dp);
+		intel_dp_reset_link_params(intel_dp);
 }
 
 bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
@@ -5892,7 +5892,7 @@ intel_dp_detect(struct drm_connector *connector,
 	 * supports link training fallback params.
 	 */
 	if (intel_dp->reset_link_params || intel_dp->is_mst) {
-		intel_dp_reset_max_link_params(intel_dp);
+		intel_dp_reset_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
 
@@ -6746,7 +6746,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_dp_set_source_rates(intel_dp);
 	intel_dp_set_common_rates(intel_dp);
-	intel_dp_reset_max_link_params(intel_dp);
+	intel_dp_reset_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
 	intel_dp_mst_encoder_init(dig_port,
-- 
2.43.3

