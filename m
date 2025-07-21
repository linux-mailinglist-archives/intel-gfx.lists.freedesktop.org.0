Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B52B0C03C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E141910E4BC;
	Mon, 21 Jul 2025 09:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLJdtyeF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFE710E4BB;
 Mon, 21 Jul 2025 09:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089955; x=1784625955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=viQ0t7/bSEj2PlpaGxgCfkmlKJM388bQHfMrKY5ycNQ=;
 b=BLJdtyeFBPdYvTNDgnIEegrZFRFovwB7Sg+KC3l8Dvz3q+UVLfOkZ1TA
 UCzTIoiqmkoz+flbNB0DrPOW3dFmk1vSwhwq4cav5A6ULy4kvR8i4GIwf
 EAahQO6XHVEgI981Ho7wUyFeqJPVjltqotBiWYvEv5820gMueXyodpQD4
 P33oHOZ34/L5IeOaF6fywvakxeBNfepzu3zVg1y+2sifBUU2b8ZjNqO12
 xEL8jn3Ere+fr6iLVwFoPPnSyXijxs9p3/RKXo8V2Y584HEk5+imfiS0K
 whd2YqVp7Gw95piofnxpB7tkvUGsAfywLNeoec5d5Mr25XNHSpLoWDDRC A==;
X-CSE-ConnectionGUID: TVpA7d4ZS3SwDwR/8xByig==
X-CSE-MsgGUID: zxgKko8ORS+hyMmrVikTag==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455371"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455371"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:55 -0700
X-CSE-ConnectionGUID: ekqwwTwNQIOIgJBC3Y5W7g==
X-CSE-MsgGUID: 64CISDNBRE69nHK64+9oqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335142"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/9] drm/i915/dp: Limit m/n ratio to 10 for DP SST
Date: Mon, 21 Jul 2025 14:45:22 +0530
Message-ID: <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

The hardware cannot support DisplayPort configurations where the
ceiling of the Link M/Link N ratio exceeds 10. This limitation has
always existed, but it typically wasn't encountered without the use of
joiners and DSC.

With higher resolutions and combinations involving joiners and DSC,
this constraint can now be hit in certain scenarios.

Introduce a check during link rate configuration to ensure
the computed M/N ratio does not exceed the hardware limit. If no valid
link rate satisfies this constraint, the mode will be rejected.

Note: This change applies the check only for SST. Support for MST will
be added in a subsequent commit.

v2:
-Move the M/N ratio check to the link rate configuration phase instead
of during M/N computation. (Ville)
-Prune modes that cannot be supported even with highest link rate due to
M/N ratio restriction.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 33 +++++++++++++++++++-
 3 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 671491a2a3b6..f32a4956c926 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2506,7 +2506,6 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
-static
 void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
 				u32 pixel_clock,
 				u32 link_clock)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80..bfa3db219b9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -559,5 +559,8 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
+				u32 pixel_clock,
+				u32 link_clock);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b689..4245dd65b2af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1407,6 +1407,28 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static int
+intel_dp_get_max_m_n_ratio(void)
+{
+	return 10;
+}
+
+static bool
+intel_dp_can_support_m_n(int pixel_clock,
+			 int link_rate)
+{
+	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
+	u32 link_m, link_n;
+	int m_n_ratio;
+
+	intel_display_get_link_m_n(&link_m, &link_n,
+				   pixel_clock, link_rate);
+
+	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
+
+	return m_n_ratio <= max_m_n_ratio;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1518,6 +1540,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
+	if (!intel_dp_can_support_m_n(target_clock, max_rate))
+		return MODE_CLOCK_HIGH;
+
 	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
 }
 
@@ -1789,6 +1814,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			    link_rate > limits->max_rate)
 				continue;
 
+			if (!intel_dp_can_support_m_n(clock, link_rate))
+				continue;
+
 			for (lane_count = limits->min_lane_count;
 			     lane_count <= limits->max_lane_count;
 			     lane_count <<= 1) {
@@ -1796,7 +1824,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 									 link_rate,
 									 lane_count);
 
-
 				if (mode_rate <= link_avail) {
 					pipe_config->lane_count = lane_count;
 					pipe_config->pipe_bpp = bpp;
@@ -1983,6 +2010,10 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
+		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
+					      link_rate))
+			continue;
+
 		for (lane_count = limits->min_lane_count;
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
-- 
2.45.2

