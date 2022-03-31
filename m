Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C844ED87A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB2310F2D1;
	Thu, 31 Mar 2022 11:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF6C10F2D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726114; x=1680262114;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EvaNx+67G87hdP0B4MDhBDYD+2pMeGVb2nSAPlihW9w=;
 b=WZBd9m9bcNFd6ufzQ2b50mKmr6UGulKn/B6n2NSQ7b1mqm7U3J5ouZK7
 a88h4z6BKBQ3zBe3MgBGA8QU0kdt/tEwnYo2/ysSGqNbp+iVkkJc/IN6y
 sF76pAySi11g8LTzaNG3MErnQJO8Bze5KIt0Ty0yl1voeDgV9bi1gAY5+
 V9Lw+IG6I7rALVloRhfHbYWreRVO2ao0moiVWJEtEUnnutXDIXn0RC+6c
 KniBMpsAIKMOQnTwU2m/RoKVjz0DSM/KItP37mgAacuxBxsY6gRIaLt4g
 FmQ4O+NsMit63VbmvjtgYcGytRdpFjJWpDck/70fdxMYJjrHTp5zpOudF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247301720"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="247301720"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="650252790"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 31 Mar 2022 04:28:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:14 +0300
Message-Id: <20220331112822.11462-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915: Refactor non-EDID fixed mode
 duplication
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

All the non-EDID fixed mode functions basically do the exact
same thing. Let's refactor the common bits into a shared
function.

There are minor differences on how the mode types are populated,
whether the display info physical size is updated, and the debug
print. The differences are purely accidental, so unifying them is
actually a good thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 66 ++++++++++------------
 1 file changed, 30 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 415aa381f732..1e56ca9033e0 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -243,68 +243,62 @@ void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
 	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
 }
 
-void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector)
+static void intel_panel_add_fixed_mode(struct intel_connector *connector,
+				       struct drm_display_mode *fixed_mode,
+				       const char *type)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct drm_display_info *info = &connector->base.display_info;
-	struct drm_display_mode *fixed_mode;
 
-	if (!dev_priv->vbt.lfp_lvds_vbt_mode)
-		return;
-
-	fixed_mode = drm_mode_duplicate(&dev_priv->drm,
-					dev_priv->vbt.lfp_lvds_vbt_mode);
 	if (!fixed_mode)
 		return;
 
-	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
-
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(fixed_mode));
+	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
 
 	info->width_mm = fixed_mode->width_mm;
 	info->height_mm = fixed_mode->height_mm;
 
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s fixed mode: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name, type,
+		    DRM_MODE_ARG(fixed_mode));
+
 	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
 }
 
-void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector)
+void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_display_mode *fixed_mode;
-
-	if (!i915->vbt.sdvo_lvds_vbt_mode)
-		return;
+	const struct drm_display_mode *mode;
 
-	fixed_mode = drm_mode_duplicate(&i915->drm,
-					i915->vbt.sdvo_lvds_vbt_mode);
-	if (!fixed_mode)
+	mode = i915->vbt.lfp_lvds_vbt_mode;
+	if (!mode)
 		return;
 
-	/* Guarantee the mode is preferred */
-	fixed_mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
-
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+	intel_panel_add_fixed_mode(connector,
+				   drm_mode_duplicate(&i915->drm, mode),
+				   "VBT LFP");
 }
 
-void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
-					struct intel_encoder *encoder)
+void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_display_mode *fixed_mode;
+	const struct drm_display_mode *mode;
 
-	fixed_mode = intel_encoder_current_mode(encoder);
-	if (!fixed_mode)
+	mode = i915->vbt.sdvo_lvds_vbt_mode;
+	if (!mode)
 		return;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(fixed_mode));
-
-	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
+	intel_panel_add_fixed_mode(connector,
+				   drm_mode_duplicate(&i915->drm, mode),
+				   "VBT SDVO");
+}
 
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
+					struct intel_encoder *encoder)
+{
+	intel_panel_add_fixed_mode(connector,
+				   intel_encoder_current_mode(encoder),
+				   "current (BIOS)");
 }
 
 /* adjusted_mode has been preset to be the panel's fixed mode */
-- 
2.34.1

