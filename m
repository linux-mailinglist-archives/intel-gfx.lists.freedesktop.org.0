Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E62510918
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94E410E588;
	Tue, 26 Apr 2022 19:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E75F10E5E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001579; x=1682537579;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zntlw98G0MY61r9+4DckX4wWi9jLoFJ2FkarVM5F01A=;
 b=Vda1SbRCZWsPUq4+oXas9g2beOo9uGMrMBZMwbrp0BL7mTsNAoAfzSVc
 KrjATlmmXYanKHM6cuuH/UKcrA0T8fq/2i/A7uGChVXPmEQcXfbrg55np
 Mfz/fnFElvxATrEIAjZhDfcSacg6gMlonyaHTDG+8GejzR9SmI1UsNZ3C
 5hDqaQV7rGzMqNiBC57zqyPzdxNrljiy7JmkxCP13ayONgrns+LRMSYb0
 acxORVjiWOhXEO/6yecKIN4geO8p04SaDyLsrtR0yv4ZCWMvtO9fQONCX
 Wp3i9cHc247vWoVv/EtHO3IkPOPe6Tiq4fz+nwcM7D5Ad5wpsFE1V/l3A g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245622291"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="245622291"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="532828190"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 26 Apr 2022 12:32:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:15 +0300
Message-Id: <20220426193222.3422-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/18] drm/i915/bios: Do panel specific VBT
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

v2: Do intel_bios_init_panel() a bit earlier for vlv_dsi

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
index 19bf717fd4cb..baef44cd137f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2049,6 +2049,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
+	intel_bios_init_panel(dev_priv);
+
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e33a70b980dc..0decf3d24237 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9579,7 +9579,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
-	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a83dbbfc914c..5d8f6f233684 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5185,6 +5185,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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
index d81855d57cdc..84ac0f2162a4 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2869,6 +2869,7 @@ static bool
 intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct drm_i915_private *i915 = to_i915(encoder->dev);
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2900,6 +2901,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
+	intel_bios_init_panel(i915);
+
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
 	 * SDVO->LVDS transcoders can't cope with the EDID mode.
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 1954f07f0d3e..08fb554ff7ad 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1929,6 +1929,8 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	else
 		intel_dsi->ports = BIT(port);
 
+	intel_bios_init_panel(dev_priv);
+
 	intel_dsi->dcs_backlight_ports = dev_priv->vbt.dsi.bl_ports;
 	intel_dsi->dcs_cabc_ports = dev_priv->vbt.dsi.cabc_ports;
 
-- 
2.35.1

