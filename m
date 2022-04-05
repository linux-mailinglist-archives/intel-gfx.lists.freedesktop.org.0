Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DE84F3CEB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18FB10EDC4;
	Tue,  5 Apr 2022 17:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E80610EDC4
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180098; x=1680716098;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OnP3hmsVhoz+fhMlEbVM8gKczQvNRHbR/6QBgE4p+IY=;
 b=F/fff8DxVcot39gAzuY9etcxri8+GsicSl+whvDG8q8coOoqt/yleqQn
 SGfFpU5oKlj9ZjwjM0DCOtl1ojWJS4lNxK0saen0aURS/naAvzhncM3rt
 z73O2cNFBLsX6KNuCkml6fdDKzObccYI5fjqV4IFPI1wvkywQy9rYDvEK
 6oHLS2opmdQtSEEE6C1NMgbkO51zdZ4kpyw2STSJqFM8f1ffoNbPpFQxk
 DOkPYnE6RgTwZhX3SM/NvNS17+aSqvcii9/PHFkjPz24mjpivXjVsrcqX
 /ni/QkyWB2vwwqN5i3AT/3WmO2J3h/sTqEJEEw4560JWcCK6tV1qevTFO g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="323989874"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="323989874"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="524093956"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 05 Apr 2022 10:34:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:03 +0300
Message-Id: <20220405173410.11436-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/22] drm/i915/bios: Do panel specific VBT
 parsing later
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

Move the panel specific VBT parsing to happen during the
output probing stage. Needs to be done because the VBT
parsing will need to look at the EDID to determine
the correct panel_type on some machines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 ++
 drivers/gpu/drm/i915/display/intel_lvds.c    | 2 ++
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +++
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 2 ++
 6 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 084cc51d1c41..688176d4a54a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2048,6 +2048,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
+	intel_bios_init_panel(dev_priv);
+
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4ece4e7d0296..eee185ed41c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9650,7 +9650,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
-	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7249b988592d..a1b5d7f5388b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5179,6 +5179,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
+	intel_bios_init_panel(dev_priv);
+
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e8478161f8b9..554badf041f2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -967,6 +967,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->edid = edid;
 
+	intel_bios_init_panel(dev_priv);
+
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index ab88d8b783e6..661a1057a073 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2868,6 +2868,7 @@ static bool
 intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2899,6 +2900,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
+	intel_bios_init_panel(i915);
+
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
 	 * SDVO->LVDS transcoders can't cope with the EDID mode.
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 1954f07f0d3e..7849836355f9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1944,6 +1944,8 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		intel_dsi->dsi_hosts[port] = host;
 	}
 
+	intel_bios_init_panel(dev_priv);
+
 	if (!intel_dsi_vbt_init(intel_dsi, MIPI_DSI_GENERIC_PANEL_ID)) {
 		drm_dbg_kms(&dev_priv->drm, "no device found\n");
 		goto err;
-- 
2.35.1

