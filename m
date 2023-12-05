Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150E805CDB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 19:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A831810E5E8;
	Tue,  5 Dec 2023 18:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00FB910E5EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 18:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701799557; x=1733335557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3/ulAu3jl0LX9xF3BtJiG2z3JnY9lrd1811G8rZVCZw=;
 b=lWrqmwJPKR6+PqEVWYW9tbo8yxBv9Eac4PM7oaeGLGxNB+ZViKKdPQdb
 Ip5MZdOuxKg+j0x2fmqBOhoaN6DhgqwhU0le+jrGxmDxygBuklI1/lpSq
 pfVyckZ5N7U1f+i9S9ntXDO8joO/9JNNtIWu7GxPvOsBxrHW8dGlvlTna
 8FxFF6FEt+X3l4iCXbVqvfyv0MQwEbrJlDMSOS371XQn/7q70oJebFNTx
 F3p1jFnLT0ke5WfCAT48TEukebLXc/WNlSwZb+p3zMtrKjgj9IG7NGgSO
 in0g1wijuDuRgcH5jTD9lNUIDqpk7Oo6J/h0d1zc7VSts/IBqAkX4ewI1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="391100703"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="391100703"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 10:05:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1102535654"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="1102535654"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 10:05:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 20:05:51 +0200
Message-Id: <20231205180551.2476228-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/edp: don't write to DP_LINK_BW_SET
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

Moreover, 0 is a reserved value for DP_LINK_BW_SET, and should not be
used.

v2: Improve the comments (Ville)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
Tested-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 31 +++++++++++++------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index dbc1b66c8ee4..1abfafbbfa75 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -650,19 +650,30 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
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
+		/* DP and eDP v1.3 and earlier link bw set method. */
+		u8 link_config[] = { link_bw, lane_count };
 
-	/* eDP 1.4 rate select method. */
-	if (!link_bw)
-		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
-				  &rate_select, 1);
+		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
+				  ARRAY_SIZE(link_config));
+	} else {
+		/*
+		 * eDP v1.4 and later link rate set method.
+		 *
+		 * eDP v1.4x sinks shall ignore DP_LINK_RATE_SET if
+		 * DP_LINK_BW_SET is set. Avoid writing DP_LINK_BW_SET.
+		 *
+		 * eDP v1.5 sinks allow choosing either, and the last choice
+		 * shall be active.
+		 */
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);
+	}
 }
 
 /*
-- 
2.39.2

