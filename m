Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBB5ECBDF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1816110E044;
	Tue, 27 Sep 2022 18:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F16C10E04E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664301982; x=1695837982;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HERkROSXe+2lUodmLjXeBMj9R1cFhjvFQqLkl2hxnK8=;
 b=d18HBXLUsRTWBb1vGDoYvMkfmAj7Wvg08TxWjmSamPL7pOZrSpYJnh0R
 /Qrej0/UV/bG4T2DwljjS4tTbLcf7G6HPdUCdAASqihAq4wSnja3vkJXk
 2ijLd6ofIqP4t8hF9VlvvXn9Qe6w7ePWW8aXMgPlHoP50rK+wzPWMqO4A
 keRF6obFB+R0xeGBlIjOT/zrOUCabMDeQNHdKXzfjdoSK77HRlXflvu3R
 C0Zgibv8WQ1udvb5ch5IPvb0U+N96PDTw9IZlifHhZm6rj090zPTUBG5i
 7bnlChCEh4nNUBAZGpvdn28Eann5tj2YD7OvE8uswRnkqoUkhSICtFOYQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288543257"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288543257"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599270034"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599270034"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:06:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:06:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 21:06:13 +0300
Message-Id: <20220927180615.25476-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
References: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Simplify
 intel_panel_add_edid_alt_fixed_modes()
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

Since commit a5810f551d0a ("drm/i915: Allow more varied alternate
fixed modes for panels") intel_panel_add_edid_alt_fixed_modes()
no longer considers vrr vs. drrs separately. So no reason to
pass them as separate parameters either.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  | 3 +--
 drivers/gpu/drm/i915/display/intel_panel.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_panel.h | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
 5 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ebd6e104b2c..c368caa23291 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5293,7 +5293,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE ||
 					 intel_vrr_is_capable(intel_connector));
 
 	/* MSO requires information from the EDID */
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 270368b43729..e6600d2f369b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -969,8 +969,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
-					 false);
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index a3a3f9fe4342..41cec9dc4223 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -254,10 +254,10 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
 }
 
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
-				      bool has_drrs, bool has_vrr)
+				      bool use_alt_fixed_modes)
 {
 	intel_panel_add_edid_preferred_mode(connector);
-	if (intel_panel_preferred_fixed_mode(connector) && (has_drrs || has_vrr))
+	if (intel_panel_preferred_fixed_mode(connector) && use_alt_fixed_modes)
 		intel_panel_add_edid_alt_fixed_modes(connector);
 	intel_panel_destroy_probed_modes(connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index eff3ffd3d082..5c5b5b7f95b6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -44,7 +44,7 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_state,
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
-				      bool has_drrs, bool has_vrr);
+				      bool use_alt_fixed_modes);
 void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2a99ec7ff737..cf8e80936d8e 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2910,7 +2910,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
 		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
-		intel_panel_add_edid_fixed_modes(intel_connector, false, false);
+		intel_panel_add_edid_fixed_modes(intel_connector, false);
 	}
 
 	intel_panel_init(intel_connector);
-- 
2.35.1

