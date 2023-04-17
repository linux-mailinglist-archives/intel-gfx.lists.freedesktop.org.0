Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC6E6E44C7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA7E10E3DA;
	Mon, 17 Apr 2023 10:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E99C10E3D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681725935; x=1713261935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z0UFI08TyKgUjyV92lux2okPMFPMXKtCEwqe5lWgcmw=;
 b=AsDVPbDp29BlNc8+3oRib+O0jkvOU/cVTxcSrTQUSzi70+VU+D6y7RzW
 Yp4MxGaHdXVDzs0zPZdw2KFep02veKzYs45DJUwqrMygfYOVZseUhNNev
 mGj+8MwleYJbAORIOXIR563a7gVpy244hpmMGOOYC4EolF9Zxsw+O/Au8
 ChJnIU4zuQeF9FDSkQiZRtEjjulBSAG37oZAVlr/tpYFbI0C54gy4hC0R
 V0FnnZPbh3f/myoWorw6ZMkpCoYOhoHo7xeLvrUX+gbSTvbANT1nThGy5
 9PtILj97AdQhGjqHIuM7g03oF7YrT36GTZqzO/Uv/0hdPAJjLuJYi5FnN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="325197747"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="325197747"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="684101625"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="684101625"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga007.jf.intel.com with ESMTP; 17 Apr 2023 03:05:31 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 15:30:21 +0530
Message-Id: <20230417100021.3205172-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/dp: 128/132b LT requirement
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++++++------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6aa4ae5e7ebe..83ea9ece0157 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -686,23 +686,41 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
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
+		link_config[0] = crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+		link_config[1] = intel_dp_is_uhbr(crtc_state) ?
+			DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
+		drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
+		/* Write the link configuration data */
+		link_config[0] = link_bw;
+		link_config[1] = crtc_state->lane_count;
+		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+			link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
+		/* eDP 1.4 rate select method. */
+		if (!link_bw)
+			drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
+					  &rate_select, 1);
+	} else {
+		/* Write the link configuration data */
+		link_config[0] = link_bw;
+		link_config[1] = crtc_state->lane_count;
+		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+			link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
+		/* eDP 1.4 rate select method. */
+		if (!link_bw)
+			drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
+					  &rate_select, 1);
+		link_config[0] = crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+		link_config[1] = intel_dp_is_uhbr(crtc_state) ?
+			DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
+		drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
+	}
 
 	return true;
 }
-- 
2.25.1

