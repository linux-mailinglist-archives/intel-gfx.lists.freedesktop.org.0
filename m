Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA094D6785
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6279C10E67B;
	Fri, 11 Mar 2022 17:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D230A10E67B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019492; x=1678555492;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Wxb3+rexwf2b12GihQocdI/slElvj6UDRZo6B9RaOfA=;
 b=Q85hXTqj3hflh23qj1MFr9flXc45QZLbZe7rCJIG8/iDv+d83OfouS9/
 6cg9RYXL+zAJPeIMo8TTChVWIWBaaWEDxa/Uxsha5RJd6KrLiN81Ymbjq
 oky6wMOnrJ/DnUYy9rtNhtUn32k4oLF5okswlMc2b6jlfI0OnKtDTukOr
 2jLBmUY+gLspGILdKnsLqFUObkv9HnOmOpzNb6TYDZmGmaOHeauW12t8j
 t4UlkngmD0YRxH32MdXfL2kIS0Iue8MaJiMqenUObWzoPetdkDK9gsqMp
 U7nc+hx1vecLBaKMRPf4xJbda6M+4r8y7SjdJB9sBt/Trmm6sWDsNhDGu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255349235"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255349235"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="633478061"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2022 09:24:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:19 +0200
Message-Id: <20220311172428.14685-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/16] drm/i915: Introduce
 intel_panel_get_modes()
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

Several connectors want to return the fixed_mode from .get_modes(),
add a helper to do that (and hide the details inside intel_panel.c).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 13 ++-----------
 drivers/gpu/drm/i915/display/intel_dsi.c   | 21 +--------------------
 drivers/gpu/drm/i915/display/intel_dvo.c   | 14 +-------------
 drivers/gpu/drm/i915/display/intel_lvds.c  |  9 +--------
 drivers/gpu/drm/i915/display/intel_panel.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  1 +
 6 files changed, 24 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 92a2651a71a7..3c97cd5853cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4588,17 +4588,8 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 	}
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
-	    intel_connector->panel.fixed_mode) {
-		struct drm_display_mode *mode;
-
-		mode = drm_mode_duplicate(connector->dev,
-					  intel_connector->panel.fixed_mode);
-		if (mode) {
-			drm_mode_probed_add(connector, mode);
-			num_modes++;
-		}
-	}
+	if (intel_dp_is_edp(intel_attached_dp(intel_connector)))
+		num_modes += intel_panel_get_modes(intel_connector);
 
 	if (num_modes)
 		return num_modes;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 37f280b1f179..389a8c24cdc1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -34,26 +34,7 @@ int intel_dsi_tlpx_ns(const struct intel_dsi *intel_dsi)
 
 int intel_dsi_get_modes(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_display_mode *mode;
-
-	drm_dbg_kms(&i915->drm, "\n");
-
-	if (!intel_connector->panel.fixed_mode) {
-		drm_dbg_kms(&i915->drm, "no fixed mode\n");
-		return 0;
-	}
-
-	mode = drm_mode_duplicate(connector->dev,
-				  intel_connector->panel.fixed_mode);
-	if (!mode) {
-		drm_dbg_kms(&i915->drm, "drm_mode_duplicate failed\n");
-		return 0;
-	}
-
-	drm_mode_probed_add(connector, mode);
-	return 1;
+	return intel_panel_get_modes(to_intel_connector(connector));
 }
 
 enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 0367e6a1bac7..d4670889d26c 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -333,8 +333,6 @@ intel_dvo_detect(struct drm_connector *connector, bool force)
 static int intel_dvo_get_modes(struct drm_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	const struct drm_display_mode *fixed_mode =
-		to_intel_connector(connector)->panel.fixed_mode;
 	int num_modes;
 
 	/*
@@ -348,17 +346,7 @@ static int intel_dvo_get_modes(struct drm_connector *connector)
 	if (num_modes)
 		return num_modes;
 
-	if (fixed_mode) {
-		struct drm_display_mode *mode;
-
-		mode = drm_mode_duplicate(connector->dev, fixed_mode);
-		if (mode) {
-			drm_mode_probed_add(connector, mode);
-			num_modes++;
-		}
-	}
-
-	return num_modes;
+	return intel_panel_get_modes(to_intel_connector(connector));
 }
 
 static const struct drm_connector_funcs intel_dvo_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 3842417e06b0..5449d69fbae5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -476,19 +476,12 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 static int intel_lvds_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_device *dev = connector->dev;
-	struct drm_display_mode *mode;
 
 	/* use cached edid if we have one */
 	if (!IS_ERR_OR_NULL(intel_connector->edid))
 		return drm_add_edid_modes(connector, intel_connector->edid);
 
-	mode = drm_mode_duplicate(dev, intel_connector->panel.fixed_mode);
-	if (mode == NULL)
-		return 0;
-
-	drm_mode_probed_add(connector, mode);
-	return 1;
+	return intel_panel_get_modes(intel_connector);
 }
 
 static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 3ad246791da5..222328d4e7a1 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -59,6 +59,24 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 	return connector->panel.downclock_mode;
 }
 
+int intel_panel_get_modes(struct intel_connector *connector)
+{
+	int num_modes = 0;
+
+	if (connector->panel.fixed_mode) {
+		struct drm_display_mode *mode;
+
+		mode = drm_mode_duplicate(connector->base.dev,
+					  connector->panel.fixed_mode);
+		if (mode) {
+			drm_mode_probed_add(&connector->base, mode);
+			num_modes++;
+		}
+	}
+
+	return num_modes;
+}
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 7ce7e995853f..051b86450156 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -30,6 +30,7 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
+int intel_panel_get_modes(struct intel_connector *connector);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
-- 
2.34.1

