Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB79E5B5927
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D5810E3CA;
	Mon, 12 Sep 2022 11:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B747A10E3C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981529; x=1694517529;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=83sbV5vr7U3La5jBBgcs8Kssf2UxBCbES8WYb4m3+QI=;
 b=mlfn/w/mCZ56qPK8GltlYHQkT30r/OJysBoch1IKn/UgQBkq8DLkczjH
 Kv8UX1F9JVTtSADy3EJM86LT8hvtJx3q9/a0yCIZwfkKrR8UxKSc7XdCE
 MrlVpmpKptMXbuYLqkcPSeUPTKQq3Ap5+BY1mX4nhDrx8zhyAVdduq6hJ
 PDZPkB57EMaYYl0qMuyZ093iaMppfowVXwU50+1LebI97RACl/MPSIzqy
 QwEnZ6Q+l4GxPzCpvBcGFJKNjBUqOtrSafXs7STCFkvRRontGiGqCowS6
 LSl63xB+XFYmnVx36sbw/bDbhXJRawAAlA8mUb7URCXZaSbJojzInXN+7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="295424652"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="295424652"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="611727345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 12 Sep 2022 04:18:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:10 +0300
Message-Id: <20220912111814.17466-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915: Extract
 intel_attach_scaling_mode_property()
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

Consolidate the scaling_mode property setup into a single
place.

The one slight complicateion here is that GMCH platforms can't
do the CENTER mode except on the LVDS port. But we can deal with
that by just checking the connector type.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c         | 10 +---------
 drivers/gpu/drm/i915/display/intel_connector.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_connector.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 10 +---------
 drivers/gpu/drm/i915/display/intel_lvds.c      | 10 +---------
 drivers/gpu/drm/i915/display/vlv_dsi.c         | 11 +----------
 6 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ed4d93942dbd..59546cbcaeda 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1974,16 +1974,8 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 {
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
-	u32 allowed_scalers;
 
-	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
-			   BIT(DRM_MODE_SCALE_FULLSCREEN) |
-			   BIT(DRM_MODE_SCALE_CENTER);
-
-	drm_connector_attach_scaling_mode_property(&connector->base,
-						   allowed_scalers);
-
-	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+	intel_attach_scaling_mode_property(&connector->base);
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
 						       intel_dsi_get_panel_orientation(connector),
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 6d5cbeb8df4d..6205ddd3ded0 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -293,3 +293,21 @@ intel_attach_dp_colorspace_property(struct drm_connector *connector)
 	if (!drm_mode_create_dp_colorspace_property(connector))
 		drm_connector_attach_colorspace_property(connector);
 }
+
+void
+intel_attach_scaling_mode_property(struct drm_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	u32 scaling_modes;
+
+	scaling_modes = BIT(DRM_MODE_SCALE_ASPECT) |
+		BIT(DRM_MODE_SCALE_FULLSCREEN);
+
+	/* On GMCH platforms borders are only possible on the LVDS port */
+	if (!HAS_GMCH(i915) || connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
+		scaling_modes |= BIT(DRM_MODE_SCALE_CENTER);
+
+	drm_connector_attach_scaling_mode_property(connector, scaling_modes);
+
+	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 661a37a3c6d8..7d7b588d2286 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -32,5 +32,6 @@ void intel_attach_broadcast_rgb_property(struct drm_connector *connector);
 void intel_attach_aspect_ratio_property(struct drm_connector *connector);
 void intel_attach_hdmi_colorspace_property(struct drm_connector *connector);
 void intel_attach_dp_colorspace_property(struct drm_connector *connector);
+void intel_attach_scaling_mode_property(struct drm_connector *connector);
 
 #endif /* __INTEL_CONNECTOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 049228a09364..ce74f6695cab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5194,16 +5194,8 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
-	u32 allowed_scalers;
 
-	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
-		BIT(DRM_MODE_SCALE_FULLSCREEN);
-	if (!HAS_GMCH(i915))
-		allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
-
-	drm_connector_attach_scaling_mode_property(&connector->base, allowed_scalers);
-
-	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+	intel_attach_scaling_mode_property(&connector->base);
 
 	if (!fixed_mode)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7cadb548ad6c..951170af7bb3 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -816,15 +816,7 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 
 static void intel_lvds_add_properties(struct drm_connector *connector)
 {
-	u32 allowed_scalers;
-
-	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
-		BIT(DRM_MODE_SCALE_FULLSCREEN) |
-		BIT(DRM_MODE_SCALE_CENTER);
-
-	drm_connector_attach_scaling_mode_property(connector, allowed_scalers);
-
-	connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+	intel_attach_scaling_mode_property(connector);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b3f5ca280ef2..421ad02f8e9b 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1659,19 +1659,10 @@ static const struct drm_connector_funcs intel_dsi_connector_funcs = {
 
 static void vlv_dsi_add_properties(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
-	u32 allowed_scalers;
 
-	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
-	if (!HAS_GMCH(dev_priv))
-		allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
-
-	drm_connector_attach_scaling_mode_property(&connector->base,
-						   allowed_scalers);
-
-	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
+	intel_attach_scaling_mode_property(&connector->base);
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
 						       intel_dsi_get_panel_orientation(connector),
-- 
2.35.1

