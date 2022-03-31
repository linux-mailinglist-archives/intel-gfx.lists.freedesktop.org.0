Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F834ED87F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 752EA10F314;
	Thu, 31 Mar 2022 11:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D787910F30B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726126; x=1680262126;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eJXUeGSuw3KfA6HEZmt3G9dXIpmmfWxhXS7UAtFwEj8=;
 b=UwPtXj1MbCWAK6fwlvdnLH9KDhpEdBoXgI7ZtEJHksUbY27WH682dVy5
 QrJTDqICOHAWqKeppotWL3CVfWIo0ekmMwOa3BiNdki3kNuM2IsDhRNBh
 5qLea4xQlYNx12RKfg423GhmCrQGeNGBN4XPzuxqHifgpFvPvWMRmGLto
 Lzofv2/E3yl4SFtSfI995dgSv+fmwIe8/imbUv/M1KUG3g0yHzjIZqioX
 APXkx0rZLDvtA8oHTI7SiDKCS3IrSh7VpZxjHJQRl7wNediUrPNWaD4ip
 eEtHD9iMduDuDckQv4XtNa22ZliSOYtVjOrp+dzmQq7avF9OrBKBWSU70 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="240394804"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="240394804"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="695454130"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 31 Mar 2022 04:28:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:16 +0300
Message-Id: <20220331112822.11462-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915: Combine the EDID
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
index e539bc315d7b..abfdaa0c7382 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5072,10 +5072,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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

