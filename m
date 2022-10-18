Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2D1602755
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E44410E98D;
	Tue, 18 Oct 2022 08:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5749D10EB80
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 08:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666082631; x=1697618631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WWMAJkLpGy9MUvG++ADNWnJaWxADb/l1Z7QbX6tqHpo=;
 b=T4xhfxBp9txsUgVbyLMT/O8SGUvIq0LCvnAQ+ZunYnn8zIpFhljxeyL9
 bySaOhN0fo2Z3uwZD9nbVdETCQEyUzEjEqijd716Oy/kKhYM1bJtn4vyo
 c9mAYqU8ybKPrHYznSvaMwmG92yIdds+cG94cxsmXB/MVJD1U+ftSXJbK
 A9ALiz3RwuJZzfhRz99bAH74R/i9wT47vlEzXs9xxHAvD9LKha2nVioqI
 P+xQlGka5jA1S6fVfTR1FCUkCz/bm8rE+3SgEt16mfOmE1mwM884InpNm
 iy9H7aT1RVzBu4dHnQ4HUtWOiyHceX6eZbpMaHwzVP9ZEEnZo5dK0wdmc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="304779386"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
 d="scan'208,223";a="304779386"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="873802462"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; 
 d="scan'208,223";a="873802462"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 18 Oct 2022 01:43:47 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 14:09:21 +0530
Message-Id: <20221018083921.23239-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221018083921.23239-1-animesh.manna@intel.com>
References: <20221018083921.23239-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP
 scenario
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From display gen12 onwards to support dual EDP two instances of pps added.
Currently backlight controller and pps instance can be mapped together
for a specific panel. Currently dual PPS support is broken. This patch
fixes it and enables for display 12+.

v1: Iniital revision.
v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
v3: Set pps_id to -1 for pnpid type of panel which will be used by
bxt_power_sequencer_idx() to set 2nd pps instance as default for
2nd EDP panel. [Jani]
v4: Early return for PANEL_TYPE_FALLBACK. [Jani]
v5: Removed additional pps_id variable and reused backlight
controller. [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c |  9 ++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_pps.c  | 12 +++++++++++-
 4 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c2987f2c2b2e..1c1eea061fbb 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3183,7 +3183,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
-void intel_bios_init_panel(struct drm_i915_private *i915,
+bool intel_bios_init_panel(struct drm_i915_private *i915,
 			   struct intel_panel *panel,
 			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid)
@@ -3192,6 +3192,11 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
 
 	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
 
+	if (panel->vbt.panel_type == PANEL_TYPE_FALLBACK && !edid) {
+		panel->vbt.backlight.controller = -1;
+		return true;
+	}
+
 	parse_panel_options(i915, panel);
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
@@ -3203,6 +3208,8 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
 	parse_psr(i915, panel);
 	parse_mipi_config(i915, panel);
 	parse_mipi_sequence(i915, panel);
+
+	return false;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index e375405a7828..f8ef0274f3ee 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -232,7 +232,7 @@ struct mipi_pps_data {
 } __packed;
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
-void intel_bios_init_panel(struct drm_i915_private *dev_priv,
+bool intel_bios_init_panel(struct drm_i915_private *dev_priv,
 			   struct intel_panel *panel,
 			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a060903891b2..6d3a0fe06359 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5234,6 +5234,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
 	struct edid *edid;
+	bool retry;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5253,6 +5254,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	retry = intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, NULL);
+
 	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
@@ -5287,9 +5291,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		edid = ERR_PTR(-ENOENT);
 	}
 	intel_connector->edid = edid;
-
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	if (retry)
+		intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9ed62c891b8c..f9899305d6e0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -218,6 +218,16 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
+	if (backlight_controller == -1) {
+		/*
+		 * Use 2nd PPS instance as default for 2nd EDP panel.
+		 */
+		if (connector->encoder->port == PORT_A)
+			return 0;
+		else
+			return 1;
+	}
+
 	if (!intel_dp->pps.pps_reset)
 		return backlight_controller;
 
@@ -1429,7 +1439,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
 		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
-- 
2.29.0

