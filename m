Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825594E586A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1B510E1CD;
	Wed, 23 Mar 2022 18:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6032610E171
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060200; x=1679596200;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0zJr+qYZ7Eo+cKl3WcDhvxsrL4UNymOWr+BGmF/T1LA=;
 b=JBuh7Wl1o99x+ITOpoXxrxhuvacTXeCYfxxTs1B3UTxe0KWh58LAHm7d
 bhN2cSFh8zup7N/MeZxZZOFob01GIk1Zq51XdxzUKqAgzf66HHLbsvo0D
 u6OPRcgIOn5eC4ODI0RspktzsV/VzG5d1xQrym9YEDQyL99eFIpPqAdA1
 8XwAO/3kAXOLOQ3+61Kdzrc/QEPPEt+hBBCFnSU/4CGUup0e3orGfJ9ZL
 4kRikpAtOMHlydeTAG19AY72FdlQk3fUpxiF3omkPn9IOS8/36Y6HmWSc
 hr7c3eDevoOK/OdQz8YWO+1U5+AxgmvD98YuzBej0cYRgXvy1LNU7B9QN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344631689"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="344631689"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="561034537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 23 Mar 2022 11:29:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:27 +0200
Message-Id: <20220323182935.4701-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Pass intel_connector to
 intel_panel_{init, fini}()
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

All the other intel_panel functions take struct intel_connector,
so might as well make init()/fini() take one as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_connector.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c     | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_panel.h     |  5 ++---
 drivers/gpu/drm/i915/display/intel_sdvo.c      |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c         |  2 +-
 9 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 00cae5d26637..c7a6c2cce297 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2057,7 +2057,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 		goto err;
 	}
 
-	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
+	intel_panel_init(intel_connector, fixed_mode, NULL);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	if (dev_priv->vbt.dsi.config->dual_link)
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index a5f5dd55b0cb..1dcc268927a2 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -102,7 +102,7 @@ void intel_connector_destroy(struct drm_connector *connector)
 	if (!IS_ERR_OR_NULL(intel_connector->edid))
 		kfree(intel_connector->edid);
 
-	intel_panel_fini(&intel_connector->panel);
+	intel_panel_fini(intel_connector);
 
 	drm_connector_cleanup(connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e19165fd175..3bf44f7909e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5060,7 +5060,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 			    pipe_name(pipe));
 	}
 
-	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
+	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
 	if (!(dev_priv->quirks & QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
 		intel_connector->panel.backlight.power = intel_pps_backlight_power;
 	intel_backlight_setup(intel_connector, pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d4670889d26c..d4dc16a9c0dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -549,7 +549,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			 * headers, likely), so for now, just get the current
 			 * mode being output through DVO.
 			 */
-			intel_panel_init(&intel_connector->panel,
+			intel_panel_init(intel_connector,
 					 intel_dvo_get_current_mode(intel_encoder),
 					 NULL);
 			intel_dvo->panel_wants_dither = true;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 5449d69fbae5..cd685dbf324b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -996,7 +996,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 out:
 	mutex_unlock(&dev->mode_config.mutex);
 
-	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
+	intel_panel_init(intel_connector, fixed_mode, downclock_mode);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder, fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f428d0457c17..8c9e26539cc5 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -599,10 +599,12 @@ intel_panel_mode_valid(struct intel_connector *connector,
 	return MODE_OK;
 }
 
-int intel_panel_init(struct intel_panel *panel,
+int intel_panel_init(struct intel_connector *connector,
 		     struct drm_display_mode *fixed_mode,
 		     struct drm_display_mode *downclock_mode)
 {
+	struct intel_panel *panel = &connector->panel;
+
 	intel_backlight_init_funcs(panel);
 
 	if (fixed_mode)
@@ -613,16 +615,15 @@ int intel_panel_init(struct intel_panel *panel,
 	return 0;
 }
 
-void intel_panel_fini(struct intel_panel *panel)
+void intel_panel_fini(struct intel_connector *connector)
 {
-	struct intel_connector *intel_connector =
-		container_of(panel, struct intel_connector, panel);
+	struct intel_panel *panel = &connector->panel;
 	struct drm_display_mode *fixed_mode, *next;
 
 	intel_backlight_destroy(panel);
 
 	list_for_each_entry_safe(fixed_mode, next, &panel->fixed_modes, head) {
 		list_del(&fixed_mode->head);
-		drm_mode_destroy(intel_connector->base.dev, fixed_mode);
+		drm_mode_destroy(connector->base.dev, fixed_mode);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index e86100903f9e..579200270825 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -16,12 +16,11 @@ struct drm_display_mode;
 struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc_state;
-struct intel_panel;
 
-int intel_panel_init(struct intel_panel *panel,
+int intel_panel_init(struct intel_connector *connector,
 		     struct drm_display_mode *fixed_mode,
 		     struct drm_display_mode *downclock_mode);
-void intel_panel_fini(struct intel_panel *panel);
+void intel_panel_fini(struct intel_connector *connector);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 328a8f20c63b..a2061b132107 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2928,7 +2928,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 			struct drm_display_mode *fixed_mode =
 				drm_mode_duplicate(connector->dev, mode);
 
-			intel_panel_init(&intel_connector->panel,
+			intel_panel_init(intel_connector,
 					 fixed_mode, NULL);
 			break;
 		}
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index c87a6e729a3c..32f5b115c2c2 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1987,7 +1987,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		goto err_cleanup_connector;
 	}
 
-	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
+	intel_panel_init(intel_connector, fixed_mode, NULL);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	vlv_dsi_add_properties(intel_connector, fixed_mode);
-- 
2.34.1

