Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38855416646
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF3C6ED9F;
	Thu, 23 Sep 2021 20:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E4CD6ED9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223961635"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223961635"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="475714804"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 23 Sep 2021 13:01:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:04 +0300
Message-Id: <20210923200109.4459-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Extract intel_panel_mode_valid()
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

Extract intel_panel_mode_valid() from the eDP code to a generic helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  8 +++-----
 drivers/gpu/drm/i915/display/intel_panel.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +++
 3 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 378008873e03..2b8b495fc2a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -845,11 +845,9 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		return MODE_H_ILLEGAL;
 
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		if (mode->hdisplay != fixed_mode->hdisplay)
-			return MODE_PANEL;
-
-		if (mode->vdisplay != fixed_mode->vdisplay)
-			return MODE_PANEL;
+		status = intel_panel_mode_valid(intel_connector, mode);
+		if (status != MODE_OK)
+			return status;
 
 		target_clock = fixed_mode->clock;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 4804b6b86798..8a364bb1ce41 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -482,6 +482,24 @@ intel_panel_detect(struct drm_connector *connector, bool force)
 	return connector_status_connected;
 }
 
+enum drm_mode_status
+intel_panel_mode_valid(struct intel_connector *connector,
+		       const struct drm_display_mode *mode)
+{
+	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+
+	if (!fixed_mode)
+		return MODE_OK;
+
+	if (mode->hdisplay != fixed_mode->hdisplay)
+		return MODE_PANEL;
+
+	if (mode->vdisplay != fixed_mode->vdisplay)
+		return MODE_PANEL;
+
+	return MODE_OK;
+}
+
 int intel_panel_init(struct intel_panel *panel,
 		     struct drm_display_mode *fixed_mode,
 		     struct drm_display_mode *downclock_mode)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index f6af1a98290c..71bad6d546fa 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -26,6 +26,9 @@ intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
 void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
 			    struct drm_display_mode *adjusted_mode);
+enum drm_mode_status
+intel_panel_mode_valid(struct intel_connector *connector,
+		       const struct drm_display_mode *mode);
 int intel_panel_fitting(struct intel_crtc_state *crtc_state,
 			const struct drm_connector_state *conn_state);
 struct drm_display_mode *
-- 
2.32.0

