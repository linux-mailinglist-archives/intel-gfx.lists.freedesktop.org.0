Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB4C4E586C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DE289E57;
	Wed, 23 Mar 2022 18:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513A410E1B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060208; x=1679596208;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VaFV28L+/PtVNuQXzmc7RQDPlu7Dw0OOgccCLD6xtXw=;
 b=gtWU9HFKeb42xcjm9guNBCleppusPTF1BANfD2biN0/ZCao1feAuq7gU
 TlQ/IYmzTRu1arCMfZDPRZwpC9wtKyxT5zG8YNJqbmSSlSi8V3pYbuANI
 BQ2knTFvtjAru/bn56WkL7fZXdKkG4VZ36mqMq2fsnMtP4rkgy3snU94E
 5C/Z/Uaw6DA6a8h7ZszU3SzFsVxAe5N4+2Bd96PRuG0EBG1r9KhKGXqMG
 lqplyoWYrz7dgkwUKYWsldJ64qMk3v73y4KN9zlWFQ6CDJYt1gMTZdS2C
 1i23p0GIxYO5rcfDYGxNYpfv5dGUSikIakZ9UoG08A0kltWfflDRh52XP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283046349"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="283046349"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="515888466"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 23 Mar 2022 11:29:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:31 +0200
Message-Id: <20220323182935.4701-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Rename
 intel_panel_vbt_fixed_mode()
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

Rename intel_panel_vbt_fixed_mode() to
intel_panel_vbt_lfp_fixed_mode() to be more descriptive.
We'll have another VBT fixed mode function soon and we
don't want to confuse the two.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 2 +-
 drivers/gpu/drm/i915/display/intel_panel.h | 2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c     | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b4fda29b04b5..44f4c65522b9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	intel_connector_attach_encoder(intel_connector, encoder);
 
 	mutex_lock(&dev->mode_config.mutex);
-	fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
+	fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
 
 	if (!fixed_mode) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d62123b9d0d3..e882a04a4cb1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5055,7 +5055,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	/* fallback to VBT if available for eDP */
 	if (!fixed_mode)
-		fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
+		fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index d068e0607153..c3f017c3740c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -974,7 +974,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 		goto out;
 
 	/* Failed to get EDID, what about VBT? */
-	fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
+	fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
 	if (fixed_mode)
 		goto out;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2ba51222d156..bd606d0b1c24 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -246,7 +246,7 @@ intel_panel_edid_fixed_mode(struct intel_connector *connector)
 }
 
 struct drm_display_mode *
-intel_panel_vbt_fixed_mode(struct intel_connector *connector)
+intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct drm_display_info *info = &connector->base.display_info;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 579200270825..9704ac81fe3e 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -47,6 +47,6 @@ intel_panel_edid_downclock_mode(struct intel_connector *connector,
 struct drm_display_mode *
 intel_panel_edid_fixed_mode(struct intel_connector *connector);
 struct drm_display_mode *
-intel_panel_vbt_fixed_mode(struct intel_connector *connector);
+intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
 
 #endif /* __INTEL_PANEL_H__ */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index da0af425ed94..dc43cb8ecb86 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1980,7 +1980,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_connector_attach_encoder(intel_connector, intel_encoder);
 
 	mutex_lock(&dev->mode_config.mutex);
-	fixed_mode = intel_panel_vbt_fixed_mode(intel_connector);
+	fixed_mode = intel_panel_vbt_lfp_fixed_mode(intel_connector);
 	mutex_unlock(&dev->mode_config.mutex);
 
 	if (!fixed_mode) {
-- 
2.34.1

