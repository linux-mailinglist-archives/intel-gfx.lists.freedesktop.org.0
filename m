Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8B04E5868
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:30:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916C910E171;
	Wed, 23 Mar 2022 18:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EECA10E171
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060199; x=1679596199;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n2oBsx5W9Vq2VFCoYelCyeaNZjaYQdPH385hmE2zws0=;
 b=eAQqDF6JqGl1auLpipnLtImqZkJ8mS+IraK9yQhxflWmAuqoqSCfScg8
 nxN8oVXEi0pFPnq6F3j2n7wvuZWj0mVoGlowmA/oUz984pBc8n8mVFJFQ
 8/dBb3hE56DmIYHkobDEFjYeDNavxYBrw8uJOzt2eM1k8ApbvqZoGojz/
 zuxsub925gl19BDiIunK2DBBBIVLsZMdBmRW94HW863DtdnCFsArflZlx
 Muu79O60GBNORK+oGc0tqas1DHQiCtALjnCCpRf/BXGmXyLOoUaJ2ZN1K
 rqKQBcAEd+7pqsV08hOJU5WZ3ZJR8PHs/g/1bcxPZcl9blBQaP1FX2SF9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238802066"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238802066"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="601412270"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 23 Mar 2022 11:29:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:33 +0200
Message-Id: <20220323182935.4701-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Extract
 intel_panel_encoder_fixed_mode()
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

Apart from the EDID and VBT based mechanism we also sometimes
use the encoder's current mode as the panel fixed mode. We
currently have the same code for that duplicated in two places.
Let's unify.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c   | 30 +++++-----------------
 drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +----
 drivers/gpu/drm/i915/display/intel_panel.c | 20 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  4 +++
 4 files changed, 31 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 90e026cef6ee..8c98897d8313 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -378,27 +378,6 @@ static const struct drm_encoder_funcs intel_dvo_enc_funcs = {
 	.destroy = intel_dvo_enc_destroy,
 };
 
-/*
- * Attempts to get a fixed panel timing for LVDS (currently only the i830).
- *
- * Other chips with DVO LVDS will need to extend this to deal with the LVDS
- * chip being on DVOB/C and having multiple pipes.
- */
-static struct drm_display_mode *
-intel_dvo_get_current_mode(struct intel_encoder *encoder)
-{
-	struct drm_display_mode *mode;
-
-	mode = intel_encoder_current_mode(encoder);
-	if (mode) {
-		DRM_DEBUG_KMS("using current (BIOS) mode: " DRM_MODE_FMT "\n",
-			      DRM_MODE_ARG(mode));
-		mode->type |= DRM_MODE_TYPE_PREFERRED;
-	}
-
-	return mode;
-}
-
 static enum port intel_dvo_port(i915_reg_t dvo_reg)
 {
 	if (i915_mmio_reg_equal(dvo_reg, DVOA))
@@ -541,6 +520,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 
 		intel_connector_attach_encoder(intel_connector, intel_encoder);
 		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
+			struct drm_display_mode *fixed_mode;
+
 			/*
 			 * For our LVDS chipsets, we should hopefully be able
 			 * to dig the fixed panel mode out of the BIOS data.
@@ -549,9 +530,10 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			 * headers, likely), so for now, just get the current
 			 * mode being output through DVO.
 			 */
-			intel_panel_init(intel_connector,
-					 intel_dvo_get_current_mode(intel_encoder),
-					 NULL);
+			fixed_mode = intel_panel_encoder_fixed_mode(intel_connector,
+								    intel_encoder);
+
+			intel_panel_init(intel_connector, fixed_mode, NULL);
 			intel_dvo->panel_wants_dither = true;
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c3f017c3740c..5b2367bc3cd2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -983,12 +983,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 * on.  If so, assume that whatever is currently programmed is the
 	 * correct mode.
 	 */
-	fixed_mode = intel_encoder_current_mode(intel_encoder);
-	if (fixed_mode) {
-		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: " DRM_MODE_FMT "\n",
-			    DRM_MODE_ARG(fixed_mode));
-		fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
-	}
+	fixed_mode = intel_panel_encoder_fixed_mode(intel_connector, intel_encoder);
 
 	/* If we still don't have a mode after all that, give up. */
 	if (!fixed_mode)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7f59db8b9ede..882e424973d4 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -292,6 +292,26 @@ intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector)
 	return fixed_mode;
 }
 
+struct drm_display_mode *
+intel_panel_encoder_fixed_mode(struct intel_connector *connector,
+			       struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_display_mode *fixed_mode;
+
+	fixed_mode = intel_encoder_current_mode(encoder);
+	if (!fixed_mode)
+		return NULL;
+
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    DRM_MODE_ARG(fixed_mode));
+
+	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
+
+	return fixed_mode;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 7e32c903a1e6..6a6ac338e9aa 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -16,6 +16,7 @@ struct drm_display_mode;
 struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_encoder;
 
 int intel_panel_init(struct intel_connector *connector,
 		     struct drm_display_mode *fixed_mode,
@@ -50,5 +51,8 @@ struct drm_display_mode *
 intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
 struct drm_display_mode *
 intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector);
+struct drm_display_mode *
+intel_panel_encoder_fixed_mode(struct intel_connector *connector,
+			       struct intel_encoder *encoder);
 
 #endif /* __INTEL_PANEL_H__ */
-- 
2.34.1

