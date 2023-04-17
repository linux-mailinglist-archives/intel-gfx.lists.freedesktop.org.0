Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F006E45D2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BF410E417;
	Mon, 17 Apr 2023 10:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB9310E407
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729006; x=1713265006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j//SYlFP2eKlVpWNT/eTJJFsU98tnGqiJvjz+WJKm/o=;
 b=FVjjLBjB961eKJYKg1TQ7CjEQLLCLZy/y12qr2KKNLco5P/no7gnFFNC
 sLerSUxNdJoohARsxROUrAh0rZzkBiGmxgbkAoOIkCBW0z3xRAmf/zbjN
 1JSa0XkAlqKUi/b+ocfdyQc2Il75l9Xyp6zGZH19XerWPoenDTRYCn+z3
 L0boEiCWpP+ChD9z3i90B+Yl4EXsUT+NsjO4ZSDy2AeOkViEUA+Zonk1M
 7bt7+Y30Eu/bTlFQCaDdMcs/OLAbBiBn0BggcdidE1vOjWSQLrgWLhSlC
 Bv9bc4O+kgQt/rxPEFsmvoMFuq/Bn35nwLchJ7vmtVXG1aSL+042V8Hm/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333656090"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333656090"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="864963596"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="864963596"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga005.jf.intel.com with ESMTP; 17 Apr 2023 03:56:44 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:21:13 +0530
Message-Id: <20230417105113.3211480-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417100021.3205172-1-arun.r.murthy@intel.com>
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/display/dp: 128/132b LT requirement
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For 128b/132b LT prior to LT DPTX should set power state, DP channel
coding and then link rate.

v2: added separate function to avoid code duplication(Jani N)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 62 +++++++++++++------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6aa4ae5e7ebe..3418cf43e555 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -637,6 +637,37 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 	return true;
 }
 
+static void
+intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
+				const struct intel_crtc_state *crtc_state)
+{
+	u8 link_config[2];
+
+	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
+			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
+	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
+}
+
+static void
+intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state,
+			    u8 link_bw, u8 rate_select)
+{
+	u8 link_config[2];
+
+	/* Write the link configuration data */
+	link_config[0] = link_bw;
+	link_config[1] = crtc_state->lane_count;
+	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
+	/* eDP 1.4 rate select method. */
+	if (!link_bw)
+		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
+				  &rate_select, 1);
+}
+
 /*
  * Prepare link training by configuring the link parameters. On DDI platforms
  * also enable the port here.
@@ -647,7 +678,6 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	u8 link_config[2];
 	u8 link_bw, rate_select;
 
 	if (intel_dp->prepare_link_retrain)
@@ -686,23 +716,19 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] Using LINK_RATE_SET value %02x\n",
 			    encoder->base.base.id, encoder->base.name, rate_select);
-
-	/* Write the link configuration data */
-	link_config[0] = link_bw;
-	link_config[1] = crtc_state->lane_count;
-	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
-		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
-	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
-
-	/* eDP 1.4 rate select method. */
-	if (!link_bw)
-		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
-				  &rate_select, 1);
-
-	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
-	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
-		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
-	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
+	if (intel_dp_is_uhbr(crtc_state)) {
+		/*
+		 * Spec DP2.1 Section 3.5.2.16
+		 * Prior to LT DPTX should set 128/132 DP Channel coding and then set link rate
+		 */
+		intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
+		intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
+					    rate_select);
+	} else {
+		intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
+					    rate_select);
+		intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
+	}
 
 	return true;
 }
-- 
2.25.1

