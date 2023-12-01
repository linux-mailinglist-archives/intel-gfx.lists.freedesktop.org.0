Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E50AE800C62
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 14:41:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C78B10E8AD;
	Fri,  1 Dec 2023 13:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E7310E8AB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 13:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701438110; x=1732974110;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QyDoYG3qUG8h2BbVwqpYP3uHD80ZORLOKxpf9WUP3IM=;
 b=ZEheQ+o+5uLSpdMMpH4ruCZW7nrKSXFr1baBVIMo8yjP4W4x0+iZ81EA
 msXjx5EPmmENBkuUOdTGft5X5OFembB6h8kMZ+WsS0g2T4A4pdz0LhocZ
 se2leA8j5rzMlkB1lSxtfDIB3H2RQ3WpH1buVGwd9roa8C1juRXFgpgoB
 7k6/hu6Fzpiows4OsdyW2h+YGkSi52qJMzYhhotS8aNIa5YW5GSLk3A+I
 txEg4vHzz2YRsqOEMt9G1sNju/fDvFkQgdyZDeUWx1WIiqIpdVQrf5UOq
 CZwZ2F6NFTRJT01On0L02spwfriayML9iv+1ZcLCh8fQRLw+ky26yio1t g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="390665750"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="390665750"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 05:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="719529342"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="719529342"
Received: from vlubart-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.207])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 05:41:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Dec 2023 15:41:41 +0200
Message-Id: <20231201134141.1569265-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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

The eDP 1.5 spec adds a clarification for eDP 1.4x:

> For eDP v1.4x, if the Source device chooses the Main-Link rate by way
> of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].

We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the panel
to ignore the rate set method.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
Tested-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++--------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index dbc1b66c8ee4..6336a39030a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -650,19 +650,22 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state,
 			    u8 link_bw, u8 rate_select)
 {
-	u8 link_config[2];
+	u8 lane_count = crtc_state->lane_count;
 
-	/* Write the link configuration data */
-	link_config[0] = link_bw;
-	link_config[1] = crtc_state->lane_count;
 	if (crtc_state->enhanced_framing)
-		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
-	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
+		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+
+	if (link_bw) {
+		/* eDP 1.3 and earlier link bw set method. */
+		u8 link_config[] = { link_bw, lane_count };
 
-	/* eDP 1.4 rate select method. */
-	if (!link_bw)
-		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
-				  &rate_select, 1);
+		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
+				  ARRAY_SIZE(link_config));
+	} else {
+		/* eDP 1.4 rate select method. */
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);
+	}
 }
 
 /*
-- 
2.39.2

