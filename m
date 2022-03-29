Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10734EAFDE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5375D10EC01;
	Tue, 29 Mar 2022 15:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D2B10EAFC
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566480; x=1680102480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BuEGigUdvCbjXyLL4wcbjuU5kvrpnU+8A7xDZP221EA=;
 b=bdVvDuYd816hpjem5LxDHm0YokH5ZlddaejntKHiZOv1vVXX0H75UXP4
 B9xhQUdry1aSWjKcvFpCA96Gu1Jl0SDc/p5Vuh/q8paQ4ds3u2+8eWEyb
 90s7zZqZTY053ybZ2MLMrd6qfy8hz9vwR6UUKSur+0G406g+FRKfI6T8p
 P56I39/5sVbf5/zKSYclNorbN4v1MbvcDbv4Yp2cfFI2fcaeSS2zrJyuS
 PbdCY/Mukv8YEjh6eJMKxrI8kGYx/8G0kT0MnuBgoN5UM1scIeSoqE3Hi
 6azUlyp0xGSYtdbzRkivxYRpXJ21zCp85d9qtPq5YxAy/w5QujFaZFqH8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345707121"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345707121"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="585607659"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 29 Mar 2022 08:07:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:07:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:36 +0300
Message-Id: <20220329150742.31783-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Combine the EDID
 fixed_mode+downclock_mode lookup into one
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

The intel_panel_add_edid_fixed_mode() vs.
intel_panel_add_edid_downclock_mode() split is not really
helpful. Let's just roll those into a single function so
that the connector init code doesn't have to care too much
about this. All we need to know is whether DRRS should be
allowed or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++----
 drivers/gpu/drm/i915/display/intel_lvds.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +--
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  2 +-
 5 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e734ef42671c..d57ef123ded5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5067,10 +5067,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 	intel_connector->edid = edid;
 
-	intel_panel_add_edid_fixed_mode(intel_connector);
-	if (intel_panel_preferred_fixed_mode(intel_connector) &&
-	    intel_edp_has_drrs(intel_dp))
-		intel_panel_add_edid_downclock_mode(intel_connector);
+	intel_panel_add_edid_fixed_modes(intel_connector,
+					 intel_edp_has_drrs(intel_dp));
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 193daffadc90..73129d21f5e5 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -968,7 +968,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_connector->edid = edid;
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_mode(intel_connector);
+	intel_panel_add_edid_fixed_modes(intel_connector, false);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 5ecc6fc80588..3b1da9aa023f 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -159,7 +159,7 @@ static bool is_downclock_mode(const struct drm_display_mode *downclock_mode,
 		downclock_mode->clock < fixed_mode->clock;
 }
 
-void intel_panel_add_edid_downclock_mode(struct intel_connector *connector)
+static void intel_panel_add_edid_downclock_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
@@ -202,7 +202,7 @@ void intel_panel_add_edid_downclock_mode(struct intel_connector *connector)
 	list_add_tail(&downclock_mode->head, &connector->panel.fixed_modes);
 }
 
-void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
+static void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *scan;
@@ -244,6 +244,13 @@ void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
 	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
 }
 
+void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs)
+{
+	intel_panel_add_edid_fixed_mode(connector);
+	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
+		intel_panel_add_edid_downclock_mode(connector);
+}
+
 static void intel_panel_add_fixed_mode(struct intel_connector *connector,
 				       struct drm_display_mode *fixed_mode,
 				       const char *type)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 5eaa2a1c2337..2e32bb728beb 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -40,8 +40,7 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_state,
 			const struct drm_connector_state *conn_state);
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
-void intel_panel_add_edid_fixed_mode(struct intel_connector *connector);
-void intel_panel_add_edid_downclock_mode(struct intel_connector *connector);
+void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs);
 void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 866e05c1a49d..ab88d8b783e6 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2907,7 +2907,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
 		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
-		intel_panel_add_edid_fixed_mode(intel_connector);
+		intel_panel_add_edid_fixed_modes(intel_connector, false);
 	}
 
 	intel_panel_init(intel_connector);
-- 
2.34.1

