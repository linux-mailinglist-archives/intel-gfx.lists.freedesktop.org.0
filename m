Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63AF9392CC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C154110E1DB;
	Mon, 22 Jul 2024 16:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7Bs9tej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E30E10E1F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667299; x=1753203299;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6/NDtJufNl7PxK6QQNBNhdxfwmN+LX17iwTy/Lc83IA=;
 b=G7Bs9tejdOzNIc3WT0F3HXEnluFcLq7si6LfmRr7qax80NaiN5olkldO
 XcKpw1F7ADtOqlNyKOWlYfAkQ9CecEKT5qaqQWYTgmxo544f8aejOf2WH
 ne3Jb/8ny9GjAIDkGQIS5V4B4dxjKyRrPVHWJkGjuC2asO08TL89tSSx0
 udRkWzG6RR1zH5z2yYWsziyMu3OUHGu10xBaEvZAZTLHawLlrjN+Z4anO
 5w/9C/nq4Hb+9tsXN+umwEmPM5f0VAMUhYSXFHFUmZu9otJZoRMmcCYf0
 lvtwUMnX7E8eEll1yEmsfGKCoeFJyyrtcMuukmmPnfy4+DEyuZejxX4y0 Q==;
X-CSE-ConnectionGUID: zLeUqvIxRd28gdv6gZ9Oyg==
X-CSE-MsgGUID: o/g2Wy7ZRz+vbrHPM0U3eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117315"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117315"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:59 -0700
X-CSE-ConnectionGUID: 72RlV1XdSjy1UimYU3rAAA==
X-CSE-MsgGUID: eINodMYWSr6QrXXMcF6weQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056234"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/14] drm/i915/dp: Add helpers to set link training mode,
 BW parameters
Date: Mon, 22 Jul 2024 19:54:57 +0300
Message-ID: <20240722165503.2084999-9-imre.deak@intel.com>
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

Add helpers to set the link mode and BW parameters. These are required
by a follow-up patch setting the parameters for a disabled link.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 34 +++++++++++++------
 .../drm/i915/display/intel_dp_link_training.h |  6 ++++
 2 files changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 57536ae200b77..214c8858b8a94 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,6 +21,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <drm/display/drm_dp_helper.h>
+
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -703,26 +705,28 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
-intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
-				const struct intel_crtc_state *crtc_state)
+void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
 {
 	u8 link_config[2];
 
-	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
-	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
+	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
 			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
 }
 
-static void
-intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *crtc_state,
-			    u8 link_bw, u8 rate_select)
+static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
+					    const struct intel_crtc_state *crtc_state)
 {
-	u8 lane_count = crtc_state->lane_count;
+	intel_dp_link_training_set_mode(intel_dp,
+					crtc_state->port_clock, crtc_state->vrr.flipline);
+}
 
-	if (crtc_state->enhanced_framing)
+void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
+				   int link_bw, int rate_select, int lane_count,
+				   bool enhanced_framing)
+{
+	if (enhanced_framing)
 		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
 
 	if (link_bw) {
@@ -746,6 +750,14 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
 	}
 }
 
+static void intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
+					const struct intel_crtc_state *crtc_state,
+					u8 link_bw, u8 rate_select)
+{
+	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, crtc_state->lane_count,
+				      crtc_state->enhanced_framing);
+}
+
 /*
  * Prepare link training by configuring the link parameters. On DDI platforms
  * also enable the port here.
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 42e7fc6cb171a..2066b91467622 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -16,6 +16,12 @@ struct intel_dp;
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
 
+void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
+				     int link_rate, bool is_vrr);
+void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
+				   int link_bw, int rate_select, int lane_count,
+				   bool enhanced_framing);
+
 void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state,
 			       enum drm_dp_phy dp_phy,
-- 
2.44.2

