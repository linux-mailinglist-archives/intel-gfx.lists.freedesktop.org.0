Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8858955C6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6486110FD41;
	Tue,  2 Apr 2024 13:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lz9G7NxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B489410FD41
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065914; x=1743601914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PXZYFKTut9ruqtA8w2OetdKQr9ZdLd/CPIdiac7yS48=;
 b=Lz9G7NxMJ7/A5qipzRKHOPTA7YiRSlMJlFdelVig8jElVYRyI7kpFg6h
 9X9MazFUEnYLjenPa0q0kRoevpEbN50bS+iiXkH1APSYejcq1+rkaBEvJ
 HrqcT+p3YP63o3cEISrOx1X6lE44wFQRggITLrIv/k2g98IO1lhFJN3hL
 /3avsAmqixh0U47URfTJCWRkOL07BmcxoBAANQlZ3Qb8H3KKpRy0NB4PF
 7zGEyhcuTN3dTnVHhiKJnkuRSxJB4AbKMF9/eHEPop6fortJROzfBS5AX
 EujadTnYIZoLRXnvBHskejAOl5pIH/4Qrujk2+oSRJLzZJaXCUMkTC9db A==;
X-CSE-ConnectionGUID: /jaBjGBOSQ2l0c3yQFzu8A==
X-CSE-MsgGUID: 3HjZ/ZGpQgu4YILJ6jWcxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804634"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789383"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:51:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:51:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH 1/7] drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from
 .mode_valid() hooks
Date: Tue,  2 Apr 2024 16:51:42 +0300
Message-ID: <20240402135148.23011-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We never set connector->doublescan_allowed, so the probe helper
already filters out all doublescan modes for us.

Sadly we still need to keep the explicit doublescan checks
in .compute_config as outlined in commit e4dd27aadd20
("drm/i915: Allow DBLSCAN user modes with eDP/LVDS/DSI")

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 -----
 drivers/gpu/drm/i915/display/intel_dsi.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_dvo.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_lvds.c   | 3 ---
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 3 ---
 drivers/gpu/drm/i915/display/intel_tv.c     | 3 ---
 7 files changed, 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 93479db0f89f..2e95093aa4d4 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -356,9 +356,6 @@ intel_crt_mode_valid(struct drm_connector *connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	if (mode->clock < 25000)
 		return MODE_CLOCK_LOW;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 53aec023ce92..9a7c75039989 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1302,11 +1302,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (*status != MODE_OK)
 		return 0;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN) {
-		*status = MODE_NO_DBLESCAN;
-		return 0;
-	}
-
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index d3cf6a652221..2dfc60e4b615 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -69,9 +69,6 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	status = intel_panel_mode_valid(intel_connector, mode);
 	if (status != MODE_OK)
 		return status;
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c076da75b066..060328c0df7e 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -231,9 +231,6 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	/* XXX: Validate clock range */
 
 	if (fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 221f5c6c871b..24860945f2e4 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -399,9 +399,6 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	status = intel_panel_mode_valid(connector, mode);
 	if (status != MODE_OK)
 		return status;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 50f0557d9ca2..df76044a739a 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1952,9 +1952,6 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	if (clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index ba5d2b7174b7..79d35c1b3c81 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -969,9 +969,6 @@ intel_tv_mode_valid(struct drm_connector *connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
-		return MODE_NO_DBLESCAN;
-
 	if (mode->clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-- 
2.43.2

