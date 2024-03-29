Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BC7891030
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9082D10ECD8;
	Fri, 29 Mar 2024 01:13:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQ3bgerY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3702F10E7A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674793; x=1743210793;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZI2hfCofviX1SSXNA7/JtHFSkyfJetejZEwQtcWGd8U=;
 b=EQ3bgerYzzv2uLktYOVHGquwc6Qcj/V0T6+MRJNEm7QWn7iO19Wd2fOh
 lqMulX3t8JR5FkMyeZYKuqxZ+ajITd7o8dzMUWkLkQPg5WhRbDdbV+Old
 PnEv2OCrIL7RvWkWY3jS4T+dCboBj1gAaDUNgk2vl3KJjIwz8QffI7PL8
 7yIOzcbWmgN43jMsAW1wkbNZYMn1boBpBPShNs7P4mkcHcMOy6DBJcmM1
 62x8y0M+dTwMOAaElQC+C3sBmNaC4EPD1P1H0VYjldIMbMs406EJCJ+/J
 g+HJtiXUF6hcuK1GXJMXzNtglo2HT7m0Gb3NZlT2dOd6qoUOZjWH1/PXs w==;
X-CSE-ConnectionGUID: eM1Ci1Z+SSS0z7RMvHkQ1Q==
X-CSE-MsgGUID: aXWyrq7OS4+svTenJTHB4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756291"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756291"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786769"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786769"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/22] drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from
 .mode_valid() hooks
Date: Fri, 29 Mar 2024 03:12:37 +0200
Message-ID: <20240329011254.24160-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

