Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7394E5867
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3352A10E121;
	Wed, 23 Mar 2022 18:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA9F10E121
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060196; x=1679596196;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CIizBU2VU4xjoL8zwQXrXTmvh8yjblvM85aYBUy9Czo=;
 b=U2pqWGZBp7WYJGYf7ldHhsmzANd0JyLb8fXlhXRbp2SVHzVn+nDOBFYP
 WZazAqto698i6J55FpfE+OerFG6dqR/h+I3UdSqayzbDeb5xQqEsVqa1I
 clfOUPmGqhr3KadnoCCVL0vCcp4FFKwIn4IgeytQWYgbWgJuA2MLTTnAW
 VUbyF2LkY6diD5eJ4Vo6W0g/XWBVNQKR2Qs+dFJ8/R9ZxffKxc818AXxx
 k3v9CYCOwk3PRP+dedWvDf6OGDnyjmSq8wal5U5ZhN2hBAO4tqh3xyVjd
 uoONEnFqAxO94GPsCOCmwGnyy4VoxApkuwcp9wJUBsnhAO70KVMH6WV3j g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="255761447"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="255761447"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="637577668"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 23 Mar 2022 11:29:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:53 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:32 +0200
Message-Id: <20220323182935.4701-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Extract
 intel_panel_vbt_sdvo_fixed_mode()
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

We have a function for duplicating the VBT LFP mode. Add the same
for the VBT SDVO mode.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 14 ++++----------
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index bd606d0b1c24..7f59db8b9ede 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -272,6 +272,26 @@ intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector)
 	return fixed_mode;
 }
 
+struct drm_display_mode *
+intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_display_mode *fixed_mode;
+
+	if (!i915->vbt.sdvo_lvds_vbt_mode)
+		return NULL;
+
+	fixed_mode = drm_mode_duplicate(&i915->drm,
+					i915->vbt.sdvo_lvds_vbt_mode);
+	if (!fixed_mode)
+		return NULL;
+
+	/* Guarantee the mode is preferred */
+	fixed_mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;
+
+	return fixed_mode;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 9704ac81fe3e..7e32c903a1e6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -48,5 +48,7 @@ struct drm_display_mode *
 intel_panel_edid_fixed_mode(struct intel_connector *connector);
 struct drm_display_mode *
 intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
+struct drm_display_mode *
+intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector);
 
 #endif /* __INTEL_PANEL_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index a2061b132107..27b3d3a79989 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2301,16 +2301,10 @@ static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
 	 * SDVO->LVDS transcoders can't cope with the EDID mode.
 	 */
-	if (dev_priv->vbt.sdvo_lvds_vbt_mode != NULL) {
-		newmode = drm_mode_duplicate(connector->dev,
-					     dev_priv->vbt.sdvo_lvds_vbt_mode);
-		if (newmode != NULL) {
-			/* Guarantee the mode is preferred */
-			newmode->type = (DRM_MODE_TYPE_PREFERRED |
-					 DRM_MODE_TYPE_DRIVER);
-			drm_mode_probed_add(connector, newmode);
-			num_modes++;
-		}
+	newmode = intel_panel_vbt_sdvo_fixed_mode(to_intel_connector(connector));
+	if (newmode) {
+		drm_mode_probed_add(connector, newmode);
+		num_modes++;
 	}
 
 	/*
-- 
2.34.1

