Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3984E5866
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B4610E154;
	Wed, 23 Mar 2022 18:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6C989F08
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060190; x=1679596190;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1dMmFOIr/wTVuIP/FqTowiWpeZI2OFDrkLVgK52k1cI=;
 b=cIk5joG+6E4DIYjOvJ6jZtkzMDDOztoDq8UxT3I0gMJBvc+S2S9UgQiI
 FFIQA330xox/dn9i6TOjqv5n7uF09gggphc65qCx+79ZJn1K/f0VzkL9k
 1TIXSYUjMUlyaXAibBO2MrTW0xWKEtwSJBtFtKqKxDlF4t/kjcHNpejyF
 FFboa2ocqtSgoihvTHuN9JBx4n+zlL1J25mavzJIz7WbqoAXGJYdVUN5z
 jifytoMizRwrYfOb/4zzRweawN37dHIUgjUeZnOkaLhwDiRT6RzXZEFRM
 PVcVb+VwAf7PqPJoDh+IQU0gqelGPzUbzjbZlT3EQvWLyou1bUR9U8wkz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258387747"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="258387747"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="583807501"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 23 Mar 2022 11:29:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:30 +0200
Message-Id: <20220323182935.4701-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Use
 intel_panel_preferred_fixed_mode() more
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

Use intel_panel_preferred_fixed_mode() for all the orientation
quirk setup and compute_is_dual_link_lvds()). All of these
happen after intel_panel_init() so the panel fixed_mode list
is already in place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++++---
 drivers/gpu/drm/i915/display/intel_lvds.c | 11 ++++++-----
 drivers/gpu/drm/i915/display/vlv_dsi.c    |  7 ++++---
 4 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c7a6c2cce297..b4fda29b04b5 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1965,9 +1965,10 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	intel_dsi_log_params(intel_dsi);
 }
 
-static void icl_dsi_add_properties(struct intel_connector *connector,
-				   const struct drm_display_mode *fixed_mode)
+static void icl_dsi_add_properties(struct intel_connector *connector)
 {
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_preferred_fixed_mode(connector);
 	u32 allowed_scalers;
 
 	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
@@ -2085,7 +2086,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	icl_dphy_param_init(intel_dsi);
 
-	icl_dsi_add_properties(intel_connector, fixed_mode);
+	icl_dsi_add_properties(intel_connector);
 	return;
 
 err:
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4bf13dbafbee..d62123b9d0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4962,11 +4962,12 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 }
 
 static void
-intel_edp_add_properties(struct intel_dp *intel_dp,
-			 const struct drm_display_mode *fixed_mode)
+intel_edp_add_properties(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_preferred_fixed_mode(connector);
 
 	if (!fixed_mode)
 		return;
@@ -5081,7 +5082,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_backlight_setup(intel_connector, pipe);
 
-	intel_edp_add_properties(intel_dp, fixed_mode);
+	intel_edp_add_properties(intel_dp);
 
 	return true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index b57e76b4ef04..d068e0607153 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -778,12 +778,13 @@ bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
 	return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
 }
 
-static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder,
-				      const struct drm_display_mode *fixed_mode)
+static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 {
-	struct drm_device *dev = lvds_encoder->base.base.dev;
+	struct drm_i915_private *dev_priv = to_i915(lvds_encoder->base.base.dev);
+	struct intel_connector *connector = lvds_encoder->attached_connector;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_preferred_fixed_mode(connector);
 	unsigned int val;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	/* use the module option value if specified */
 	if (dev_priv->params.lvds_channel_mode > 0)
@@ -999,7 +1000,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
-	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder, fixed_mode);
+	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
 	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
 		    lvds_encoder->is_dual_link ? "dual" : "single");
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 32f5b115c2c2..da0af425ed94 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1657,10 +1657,11 @@ static const struct drm_connector_funcs intel_dsi_connector_funcs = {
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
 
-static void vlv_dsi_add_properties(struct intel_connector *connector,
-				   const struct drm_display_mode *fixed_mode)
+static void vlv_dsi_add_properties(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_preferred_fixed_mode(connector);
 	u32 allowed_scalers;
 
 	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
@@ -1990,7 +1991,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_panel_init(intel_connector, fixed_mode, NULL);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
-	vlv_dsi_add_properties(intel_connector, fixed_mode);
+	vlv_dsi_add_properties(intel_connector);
 
 	return;
 
-- 
2.34.1

