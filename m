Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 950084D677F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BA510E5A0;
	Fri, 11 Mar 2022 17:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6AA610E5A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019474; x=1678555474;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LRBzP9WlwV/QBzQfza1GnScm8D/x08YZO8dskICnUMs=;
 b=fZEu1yaLkHRjGM9ofoolAOeuOFql5KenNb60NZH3HqcB/oUoFQjz8z1D
 SeMowQxl6JDTJq1cXSLJ+s0VP3qrogNokvcicYJEyPcce0sohC/E+hc9l
 WElepSnyY26ogN1+HDXue0DyLtvlZxz0P6BkL9j46+yuBJBURFFc/VOCm
 7A2cUeJcagi1cS+lfB8gAgtSdOpcEgjek3VqvJjupIoFtsSBkqgmozmK+
 +mve+c6NbAnYbOG6AFJU5zkQ2rdfmErhD1y7gUoTjz5rJc3eNawewW+Ov
 JN0/nyXmDFeJGidJfZ9P1tNE+k9HJawoWaqg+G102XwuKNikzGNqnHBaL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255803756"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255803756"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="689119368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 11 Mar 2022 09:24:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:13 +0200
Message-Id: <20220311172428.14685-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/16] drm/i915/dsi: Pass fixed_mode to
 *_dsi_add_properties()
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

We want to eventually get rid of the connector->panel.fixed_mode
pointer so avoid using it during DSI property setup. Since this
all happens during the encoder init we already have the fixed_mode
around, just pass that in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 11 ++++++-----
 drivers/gpu/drm/i915/display/vlv_dsi.c |  9 +++++----
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 13b07c6fd6be..00cae5d26637 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1965,7 +1965,8 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	intel_dsi_log_params(intel_dsi);
 }
 
-static void icl_dsi_add_properties(struct intel_connector *connector)
+static void icl_dsi_add_properties(struct intel_connector *connector,
+				   const struct drm_display_mode *fixed_mode)
 {
 	u32 allowed_scalers;
 
@@ -1979,9 +1980,9 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
-				intel_dsi_get_panel_orientation(connector),
-				connector->panel.fixed_mode->hdisplay,
-				connector->panel.fixed_mode->vdisplay);
+						       intel_dsi_get_panel_orientation(connector),
+						       fixed_mode->hdisplay,
+						       fixed_mode->vdisplay);
 }
 
 void icl_dsi_init(struct drm_i915_private *dev_priv)
@@ -2084,7 +2085,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	icl_dphy_param_init(intel_dsi);
 
-	icl_dsi_add_properties(intel_connector);
+	icl_dsi_add_properties(intel_connector, fixed_mode);
 	return;
 
 err:
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 0d936f658b3f..c87a6e729a3c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1657,7 +1657,8 @@ static const struct drm_connector_funcs intel_dsi_connector_funcs = {
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
 
-static void vlv_dsi_add_properties(struct intel_connector *connector)
+static void vlv_dsi_add_properties(struct intel_connector *connector,
+				   const struct drm_display_mode *fixed_mode)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u32 allowed_scalers;
@@ -1673,8 +1674,8 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
 						       intel_dsi_get_panel_orientation(connector),
-						       connector->panel.fixed_mode->hdisplay,
-						       connector->panel.fixed_mode->vdisplay);
+						       fixed_mode->hdisplay,
+						       fixed_mode->vdisplay);
 }
 
 #define NS_KHZ_RATIO		1000000
@@ -1989,7 +1990,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
-	vlv_dsi_add_properties(intel_connector);
+	vlv_dsi_add_properties(intel_connector, fixed_mode);
 
 	return;
 
-- 
2.34.1

