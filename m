Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E9A416647
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22AD06EDA2;
	Thu, 23 Sep 2021 20:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00B46EDA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211171889"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="211171889"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="614157372"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 23 Sep 2021 13:01:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:05 +0300
Message-Id: <20210923200109.4459-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Use intel_panel_mode_valid() for
 DSI/LVDS/DVO
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

All fixed mode panels should behave the same way when it comes to mode
filtering. Reuse the intel_panel_mode_valid() for all of them.

This changes the behaviour to match what we do for eDP, ie.
reject anything that doesn't exactly match the fixed mode
dimensions. Users can still manually provide different
sized modes which will be handled by the panel fitter just
as before. The difference is that we can no longer report
funny modes in the connector's mode list.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.c  | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dvo.c  | 14 ++++++++------
 drivers/gpu/drm/i915/display/intel_lvds.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_sdvo.c | 12 ++++--------
 4 files changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index f453ceb8d149..6f1171112a3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_mipi_dsi.h>
 #include "intel_dsi.h"
+#include "intel_panel.h"
 
 int intel_dsi_bitrate(const struct intel_dsi *intel_dsi)
 {
@@ -67,10 +68,12 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 		return MODE_NO_DBLESCAN;
 
 	if (fixed_mode) {
-		if (mode->hdisplay > fixed_mode->hdisplay)
-			return MODE_PANEL;
-		if (mode->vdisplay > fixed_mode->vdisplay)
-			return MODE_PANEL;
+		enum drm_mode_status status;
+
+		status = intel_panel_mode_valid(intel_connector, mode);
+		if (status != MODE_OK)
+			return status;
+
 		if (fixed_mode->clock > max_dotclk)
 			return MODE_CLOCK_HIGH;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 86c903e9df60..f8fdc0386fd4 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -223,9 +223,10 @@ static enum drm_mode_status
 intel_dvo_mode_valid(struct drm_connector *connector,
 		     struct drm_display_mode *mode)
 {
-	struct intel_dvo *intel_dvo = intel_attached_dvo(to_intel_connector(connector));
+	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_dvo *intel_dvo = intel_attached_dvo(intel_connector);
 	const struct drm_display_mode *fixed_mode =
-		to_intel_connector(connector)->panel.fixed_mode;
+		intel_connector->panel.fixed_mode;
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 	int target_clock = mode->clock;
 
@@ -235,10 +236,11 @@ intel_dvo_mode_valid(struct drm_connector *connector,
 	/* XXX: Validate clock range */
 
 	if (fixed_mode) {
-		if (mode->hdisplay > fixed_mode->hdisplay)
-			return MODE_PANEL;
-		if (mode->vdisplay > fixed_mode->vdisplay)
-			return MODE_PANEL;
+		enum drm_mode_status status;
+
+		status = intel_panel_mode_valid(intel_connector, mode);
+		if (status != MODE_OK)
+			return status;
 
 		target_clock = fixed_mode->clock;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e9fb402708a7..37e81bc71f7c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -389,13 +389,15 @@ intel_lvds_mode_valid(struct drm_connector *connector,
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	int max_pixclk = to_i915(connector->dev)->max_dotclk_freq;
+	enum drm_mode_status status;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
-	if (mode->hdisplay > fixed_mode->hdisplay)
-		return MODE_PANEL;
-	if (mode->vdisplay > fixed_mode->vdisplay)
-		return MODE_PANEL;
+
+	status = intel_panel_mode_valid(intel_connector, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if (fixed_mode->clock > max_pixclk)
 		return MODE_CLOCK_HIGH;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6cb27599ea03..fe0ea1db4cf1 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1873,7 +1873,6 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
-
 	if (clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
@@ -1890,14 +1889,11 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 		return MODE_CLOCK_HIGH;
 
 	if (IS_LVDS(intel_sdvo_connector)) {
-		const struct drm_display_mode *fixed_mode =
-			intel_sdvo_connector->base.panel.fixed_mode;
+		enum drm_mode_status status;
 
-		if (mode->hdisplay > fixed_mode->hdisplay)
-			return MODE_PANEL;
-
-		if (mode->vdisplay > fixed_mode->vdisplay)
-			return MODE_PANEL;
+		status = intel_panel_mode_valid(&intel_sdvo_connector->base, mode);
+		if (status != MODE_OK)
+			return status;
 	}
 
 	return MODE_OK;
-- 
2.32.0

