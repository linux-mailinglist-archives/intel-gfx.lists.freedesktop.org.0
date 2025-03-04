Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7FCA4DA5F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E62F10E26E;
	Tue,  4 Mar 2025 10:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiD4SxSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A60610E26E;
 Tue,  4 Mar 2025 10:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084064; x=1772620064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nZ2VwO6RVg1O9RA0xq8U8jBvyl8D8XUlHaRyt0bKbSc=;
 b=fiD4SxSZrQm6Wp0Z9ur3d7WN4yn6vIYBxl4xwiUTh19tpDP04XoaaH/B
 oKBejJlfFI8fS2pul/0nusJ+NTITaUWKfd2ugHgnDJHPQ5kVGkK8sGGTV
 k35qGgoMoxcsGCbjX+HSsVfncvXCKbFSB83sijFSqdcLN1sxO0ms2sLEw
 sh0GYgd1npX3MKfY0XYMdWSjj/lZtQbaiP4h1pLxQlJl5HiHl7Qk4im2V
 zQm6XuSTm9WkvT0tawRKd+YNC38wBvisPZ7H+JQJ/dn+28kdEOarqrUb3
 jIJlf/ZF2+hVRexEDxGp0YkLBIx6Pz6LOL/JwG+cLx+IXKMPqFOzTFaTj w==;
X-CSE-ConnectionGUID: xe89a0NnS7WpY423YJ9GSw==
X-CSE-MsgGUID: r8cXcWPXRBGS+S0i8ssang==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52632772"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52632772"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:44 -0800
X-CSE-ConnectionGUID: D9CskMcJSzuE3TGd6wi1eg==
X-CSE-MsgGUID: MDHut5WZQoWnlxdbp9fQGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321674"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/display: convert various port/phy helpers to
 struct intel_display
Date: Tue,  4 Mar 2025 12:27:30 +0200
Message-Id: <e28e53bad5014ba3ef17431557b517f1b8530963.1741084010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. The intel_display.[ch] files are too big to convert in one
go. Convert the various port/phy helpers to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  5 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +--
 drivers/gpu/drm/i915/display/intel_display.c  | 40 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++--
 .../i915/display/intel_display_power_well.c   |  9 ++---
 5 files changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e0e4e9b62d8d..a8d08d7d82b3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2902,7 +2902,6 @@ init_vbt_panel_defaults(struct intel_panel *panel)
 static void
 init_vbt_missing_defaults(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
 	enum port port;
 
@@ -2912,13 +2911,13 @@ init_vbt_missing_defaults(struct intel_display *display)
 	for_each_port_masked(port, ports) {
 		struct intel_bios_encoder_data *devdata;
 		struct child_device_config *child;
-		enum phy phy = intel_port_to_phy(i915, port);
+		enum phy phy = intel_port_to_phy(display, port);
 
 		/*
 		 * VBT has the TypeC mode (native,TBT/USB) and we don't want
 		 * to detect it.
 		 */
-		if (intel_phy_is_tc(i915, phy))
+		if (intel_phy_is_tc(display, phy))
 			continue;
 
 		/* Create fake child device config */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 20fc258a4d6d..3b7ec0be9011 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5100,7 +5100,7 @@ void intel_ddi_init(struct intel_display *display,
 		return;
 	}
 
-	phy = intel_port_to_phy(dev_priv, port);
+	phy = intel_port_to_phy(display, port);
 
 	/*
 	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
@@ -5160,7 +5160,7 @@ void intel_ddi_init(struct intel_display *display,
 				 port_name(port - PORT_D_XELPD + PORT_D),
 				 phy_name(phy));
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
+		enum tc_port tc_port = intel_port_to_tc(display, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
@@ -5170,7 +5170,7 @@ void intel_ddi_init(struct intel_display *display,
 				 tc_port != TC_PORT_NONE ? "TC" : "",
 				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		enum tc_port tc_port = intel_port_to_tc(dev_priv, port);
+		enum tc_port tc_port = intel_port_to_tc(display, port);
 
 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
 				 DRM_MODE_ENCODER_TMDS,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4b0ec60fded..9d4f2dacbbce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1834,20 +1834,20 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
 }
 
 /* Prefer intel_encoder_is_tc() */
-bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
+bool intel_phy_is_tc(struct intel_display *display, enum phy phy)
 {
 	/*
 	 * Discrete GPU phy's are not attached to FIA's to support TC
 	 * subsystem Legacy or non-legacy, and only support native DP/HDMI
 	 */
-	if (IS_DGFX(dev_priv))
+	if (display->platform.dgfx)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return phy >= PHY_F && phy <= PHY_I;
-	else if (IS_TIGERLAKE(dev_priv))
+	else if (display->platform.tigerlake)
 		return phy >= PHY_D && phy <= PHY_I;
-	else if (IS_ICELAKE(dev_priv))
+	else if (display->platform.icelake)
 		return phy >= PHY_C && phy <= PHY_F;
 
 	return false;
@@ -1864,17 +1864,17 @@ bool intel_phy_is_snps(struct intel_display *display, enum phy phy)
 }
 
 /* Prefer intel_encoder_to_phy() */
-enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
+enum phy intel_port_to_phy(struct intel_display *display, enum port port)
 {
-	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
+	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD)
 		return PHY_D + port - PORT_D_XELPD;
-	else if (DISPLAY_VER(i915) >= 13 && port >= PORT_TC1)
+	else if (DISPLAY_VER(display) >= 13 && port >= PORT_TC1)
 		return PHY_F + port - PORT_TC1;
-	else if (IS_ALDERLAKE_S(i915) && port >= PORT_TC1)
+	else if (display->platform.alderlake_s && port >= PORT_TC1)
 		return PHY_B + port - PORT_TC1;
-	else if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >= PORT_TC1)
+	else if ((display->platform.dg1 || display->platform.rocketlake) && port >= PORT_TC1)
 		return PHY_C + port - PORT_TC1;
-	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+	else if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		 port == PORT_D)
 		return PHY_A;
 
@@ -1882,12 +1882,12 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 }
 
 /* Prefer intel_encoder_to_tc() */
-enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
+enum tc_port intel_port_to_tc(struct intel_display *display, enum port port)
 {
-	if (!intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv, port)))
+	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
 		return TC_PORT_NONE;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return TC_PORT_1 + port - PORT_TC1;
 	else
 		return TC_PORT_1 + port - PORT_C;
@@ -1895,9 +1895,9 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
 
 enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_port_to_phy(i915, encoder->port);
+	return intel_port_to_phy(display, encoder->port);
 }
 
 bool intel_encoder_is_combo(struct intel_encoder *encoder)
@@ -1916,16 +1916,16 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder)
 
 bool intel_encoder_is_tc(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_phy_is_tc(i915, intel_encoder_to_phy(encoder));
+	return intel_phy_is_tc(display, intel_encoder_to_phy(encoder));
 }
 
 enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_port_to_tc(i915, encoder->port);
+	return intel_port_to_tc(display, encoder->port);
 }
 
 enum intel_display_power_domain
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index bc9a5a14ca6a..45d70d3e1041 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -426,7 +426,7 @@ intel_mode_valid_max_plane_size(struct intel_display *display,
 enum drm_mode_status
 intel_cpu_transcoder_mode_valid(struct intel_display *display,
 				const struct drm_display_mode *mode);
-enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
+enum phy intel_port_to_phy(struct intel_display *display, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
@@ -465,10 +465,9 @@ intel_encoder_current_mode(struct intel_encoder *encoder);
 void intel_encoder_get_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *crtc_state);
 bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
-bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
+bool intel_phy_is_tc(struct intel_display *display, enum phy phy);
 bool intel_phy_is_snps(struct intel_display *display, enum phy phy);
-enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
-			      enum port port);
+enum tc_port intel_port_to_tc(struct intel_display *display, enum port port);
 
 enum phy intel_encoder_to_phy(struct intel_encoder *encoder);
 bool intel_encoder_is_combo(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 5b60db597329..8ec87ffd87d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -549,10 +549,9 @@ static void
 icl_aux_power_well_enable(struct intel_display *display,
 			  struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(dev_priv, phy))
+	if (intel_phy_is_tc(display, phy))
 		return icl_tc_phy_aux_power_well_enable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_enable(display,
@@ -565,10 +564,9 @@ static void
 icl_aux_power_well_disable(struct intel_display *display,
 			   struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(dev_priv, phy))
+	if (intel_phy_is_tc(display, phy))
 		return hsw_power_well_disable(display, power_well);
 	else if (display->platform.icelake)
 		return icl_combo_phy_aux_power_well_disable(display,
@@ -1829,11 +1827,10 @@ tgl_tc_cold_off_power_well_is_enabled(struct intel_display *display,
 static void xelpdp_aux_power_well_enable(struct intel_display *display,
 					 struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
 	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
-	if (intel_phy_is_tc(dev_priv, phy))
+	if (intel_phy_is_tc(display, phy))
 		icl_tc_port_assert_ref_held(display, power_well,
 					    aux_ch_to_digital_port(display, aux_ch));
 
-- 
2.39.5

