Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 681085B5930
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6FE10E3D1;
	Mon, 12 Sep 2022 11:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C351810E3C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981532; x=1694517532;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/XdP/cXujAqp9sYYfbJmeJN5xZaEgT1od/h2cr4KUL0=;
 b=StO55cFGtdrS/NVDF4CdRFoTen0Y7QYdSz7AYWazgTwTspUCsMmRttti
 U9r06vLhF86DJLV5LGqtthcVz6n7jhKvM5rlBcxeOk5dCfC0+CdjvN/Vo
 y7cAF7fYApFampZKifN0OVdWrYCysb3kbZmIPBydiSriCj2JQ+M3NfDvB
 XAAFcm6PnCuug62sKj+L0mZmAONEGrfTMe5jgpnhKLQ/mNscesFU1T47S
 xEFq1XKdMZwUDM9lpVOKim2LflzEatgSRojZp2/gp4NgyAEBYdAgPdYgA
 PxQP8GrxExl+e9DpKaPjtsfc6B90Sk1C6EySzGpYTYnVL7jomwiV5AzLl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="361792173"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="361792173"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678044343"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 12 Sep 2022 04:18:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:11 +0300
Message-Id: <20220912111814.17466-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915: Clean up connector->*_allowed
 setup
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

All the connectors are zero initialized so no need to clear
the *_allowed flags we don't support. Only leave the ones we want
to set. And while at it switch to booleans instead of ints.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 2 --
 drivers/gpu/drm/i915/display/intel_crt.c  | 7 ++-----
 drivers/gpu/drm/i915/display/intel_dp.c   | 1 -
 drivers/gpu/drm/i915/display/intel_dvo.c  | 2 --
 drivers/gpu/drm/i915/display/intel_hdmi.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_lvds.c | 2 --
 drivers/gpu/drm/i915/display/intel_sdvo.c | 3 +--
 drivers/gpu/drm/i915/display/intel_tv.c   | 2 --
 drivers/gpu/drm/i915/display/vlv_dsi.c    | 2 --
 9 files changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 59546cbcaeda..47f13750f6fa 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2038,8 +2038,6 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 			   DRM_MODE_CONNECTOR_DSI);
 	drm_connector_helper_add(connector, &gen11_dsi_connector_helper_funcs);
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
-	connector->interlace_allowed = false;
-	connector->doublescan_allowed = false;
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
 	/* attach connector to encoder */
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index eba58345619a..94d0a5e1dd03 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1050,11 +1050,8 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	else
 		crt->base.pipe_mask = ~0;
 
-	if (DISPLAY_VER(dev_priv) == 2)
-		connector->interlace_allowed = 0;
-	else
-		connector->interlace_allowed = 1;
-	connector->doublescan_allowed = 0;
+	if (DISPLAY_VER(dev_priv) != 2)
+		connector->interlace_allowed = true;
 
 	crt->adpa_reg = adpa_reg;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ce74f6695cab..7b4ffb74c94c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5422,7 +5422,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (!HAS_GMCH(dev_priv))
 		connector->interlace_allowed = true;
-	connector->doublescan_allowed = 0;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 167c9b7318f8..595087288922 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -515,8 +515,6 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		drm_connector_helper_add(connector,
 					 &intel_dvo_connector_helper_funcs);
 		connector->display_info.subpixel_order = SubPixelHorizontalRGB;
-		connector->interlace_allowed = false;
-		connector->doublescan_allowed = false;
 
 		intel_connector_attach_encoder(intel_connector, intel_encoder);
 		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7816b2a33fee..93519fb23d9d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2956,9 +2956,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 				    ddc);
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
-	connector->interlace_allowed = 1;
-	connector->doublescan_allowed = 0;
-	connector->stereo_allowed = 1;
+	connector->interlace_allowed = true;
+	connector->stereo_allowed = true;
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		connector->ycbcr_420_allowed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 951170af7bb3..270368b43729 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -924,8 +924,6 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	drm_connector_helper_add(connector, &intel_lvds_connector_helper_funcs);
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
-	connector->interlace_allowed = false;
-	connector->doublescan_allowed = false;
 
 	lvds_encoder->reg = lvds_reg;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index f5b744bef18f..2a99ec7ff737 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2689,9 +2689,8 @@ intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
 	drm_connector_helper_add(drm_connector,
 				 &intel_sdvo_connector_helper_funcs);
 
-	connector->base.base.interlace_allowed = 1;
-	connector->base.base.doublescan_allowed = 0;
 	connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
+	connector->base.base.interlace_allowed = true;
 	connector->base.get_hw_state = intel_sdvo_connector_get_hw_state;
 
 	intel_connector_attach_encoder(&connector->base, &encoder->base);
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 306d08482855..b1c74eca4fe7 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -2002,8 +2002,6 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	intel_tv->type = DRM_MODE_CONNECTOR_Unknown;
 
 	drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
-	connector->interlace_allowed = false;
-	connector->doublescan_allowed = false;
 
 	intel_tv_add_properties(connector);
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 421ad02f8e9b..dee0147a316c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1971,8 +1971,6 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	drm_connector_helper_add(connector, &intel_dsi_connector_helper_funcs);
 
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
-	connector->interlace_allowed = false;
-	connector->doublescan_allowed = false;
 
 	intel_connector_attach_encoder(intel_connector, intel_encoder);
 
-- 
2.35.1

