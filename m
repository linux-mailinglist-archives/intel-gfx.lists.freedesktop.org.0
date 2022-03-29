Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943234EAFDA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC02A10EC26;
	Tue, 29 Mar 2022 15:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D849610EC01
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566475; x=1680102475;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3cK5KND+zLQXx7PcRTry7m9VZMbMZMOnGybWP3SYt/o=;
 b=cwDGbAUTxrEX/zVTQ6Qyl5cJVKcEpgKSo3G5JjbjiGriRNTfWZFf9rEc
 84t3qlJdbYAF+5eIL6RZElvI/C2O3QQu9coYhSqacB5dp8LH60A4cHqrf
 mZI1F52vCHLJooGqHnEWVuREuOFaUOf9KwfzUNZx07g1rjEBXQkvK44VX
 oNwtKBYwsgGEaSH+Xj+JqFWDvJC39Uk+Zb78jYrcG/4D0pT2XYr/w4g2J
 PoPdIivjqETsM4K5S7PEBhi828oTwaoAzMU2PQ/n+FkBM3SPxrK9SYJ0d
 MlXxtl1FqRy2oybbUlVDDKz4flkir0pAft71OfNF/qVtuehbtP6ke74n/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345707084"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345707084"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="546418626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 29 Mar 2022 08:07:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:07:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:34 +0300
Message-Id: <20220329150742.31783-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Refactor non-EDID fixed mode
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
 drivers/gpu/drm/i915/display/intel_panel.c | 70 ++++++++++------------
 1 file changed, 32 insertions(+), 38 deletions(-)

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
 
+void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct drm_display_mode *mode;
+
+	mode = i915->vbt.lfp_lvds_vbt_mode;
+	if (!mode)
+		return;
+
+	intel_panel_add_fixed_mode(connector,
+				   drm_mode_duplicate(&i915->drm, mode),
+				   "VBT LFP");
+}
+
 void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_display_mode *fixed_mode;
+	const struct drm_display_mode *mode;
 
-	if (!i915->vbt.sdvo_lvds_vbt_mode)
+	mode = i915->vbt.sdvo_lvds_vbt_mode;
+	if (!mode)
 		return;
 
-	fixed_mode = drm_mode_duplicate(&i915->drm,
-					i915->vbt.sdvo_lvds_vbt_mode);
-	if (!fixed_mode)
-		return;
-
-	/* Guarantee the mode is preferred */
-	fixed_mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
-
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+	intel_panel_add_fixed_mode(connector,
+				   drm_mode_duplicate(&i915->drm, mode),
+				   "VBT SDVO");
 }
 
 void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 					struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct drm_display_mode *fixed_mode;
-
-	fixed_mode = intel_encoder_current_mode(encoder);
-	if (!fixed_mode)
-		return;
-
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(fixed_mode));
-
-	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
-
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+	intel_panel_add_fixed_mode(connector,
+				   intel_encoder_current_mode(encoder),
+				   "current (BIOS)");
 }
 
 /* adjusted_mode has been preset to be the panel's fixed mode */
-- 
2.34.1

