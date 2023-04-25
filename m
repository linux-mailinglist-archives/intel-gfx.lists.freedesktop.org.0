Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17AD6EDA73
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 05:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5790410E00F;
	Tue, 25 Apr 2023 03:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5F710E00F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 03:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682392024; x=1713928024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gtdCFQec3b5zGEZuSeKs5VNnKeWqlebwmuXyPp5TMP8=;
 b=GVUORkaX/hJwZpdAk7Mk5/9gVo8BFHYhHQDjX1+8W9Pxe3k2Zo01g0rZ
 DGuSr+wAEsSa/kq3kRZA7Q30kt5ojrP0zmzY6ow7wEL3DXSGeRSI/tnqE
 eHHbMYu9AQ0i0E3Qr60Y/Ac1vXUNskEVzb6UUMcOY+iETKOcQhWIU2KIk
 i9D4qo6tyA/JqWlS1jq0pzRC2XJaDIdGvk7of8VKY+V+qyLiDY1IB6ba1
 4V5FRC2dFJeuZ8Ri0UfWpV4uh14OMEoXEfszs/V4DvYuvWdhTeIwljslI
 ZUMFEbTGUWtV7/HWjI5V3JJ7EUn4LQruMhIkIMvTpB8OWBdPKHR1LYWBE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="326240755"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="326240755"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 20:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="670724153"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="670724153"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga006.jf.intel.com with ESMTP; 24 Apr 2023 20:06:49 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 08:29:44 +0530
Message-Id: <20230425025944.151744-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417100021.3205172-1-arun.r.murthy@intel.com>
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/display/dp: 128/132b LT requirement
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
v3: DP2.1 section 3.5.2.16 is ordered, 3.5.1.2 is unordered and hence
    discarding <Ville>

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 56 +++++++++++++------
 1 file changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6aa4ae5e7ebe..27eb41499d7e 100644
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
@@ -686,23 +716,13 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
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
+	/*
+	 * Spec DP2.1 Section 3.5.2.16
+	 * Prior to LT DPTX should set 128b/132b DP Channel coding and then set link rate
+	 */
+	intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
+	intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
+				    rate_select);
 
 	return true;
 }
-- 
2.25.1

