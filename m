Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DDA5FA17E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 17:59:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8503310E648;
	Mon, 10 Oct 2022 15:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEF710E648
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 15:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665417542; x=1696953542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q38o8Up9gC4FRo8taxRCuuT92bF3nSts0uZDvGynLv0=;
 b=htW88AXLmKlUMhdfnpq7MaKCTolntxR+AD0WY3Een+ZgW6Jiph83d5O5
 vx3WeJIomM+QxpygSzPs6XqEZPQz79ChXdwYWohi23MAmxd4Uw2CuuwRF
 NOEKu0hbyKBqskIVXOAFcRQM5HMrRe2rdQyHYCQARWubxDxBw7ThT2zDo
 JQRQjIerj/sjNZiEvRCUhkT2ngMRbfcSd0fLpnYqcKW8q+KfoWnjSP650
 evgLYHnTFqwEARBH7m5nsxkOMrw5wuSc27YyAiL/YTaqk3H0zQ4pwYTOF
 pSEIwe90tivloYtUiXEt2AHrzKhfnFdbVW/EzXvbJFML7S3pfnUynoUC7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="305860262"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
 d="scan'208,223";a="305860262"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 08:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768433524"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
 d="scan'208,223";a="768433524"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2022 08:58:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 21:24:27 +0530
Message-Id: <20221010155427.15735-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221010155427.15735-1-animesh.manna@intel.com>
References: <20221010155427.15735-1-animesh.manna@intel.com>
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
for a specific panel. Currently dual PPS support is broken. This patch fixes
it and enables for display 12+.

v1: Iniital revision.
v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
v3: Set pps_id to -1 for pnpid type of panel which will be used by
bxt_power_sequencer_idx() to set 2nd pps instance as default for
2nd EDP panel. [Jani]
v4: Early return for PANEL_TYPE_FALLBACK. [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.h          |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_pps.c           | 12 +++++++++++-
 5 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c2987f2c2b2e..dd3cd2ca815d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3183,15 +3183,22 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
-void intel_bios_init_panel(struct drm_i915_private *i915,
+bool intel_bios_init_panel(struct drm_i915_private *i915,
 			   struct intel_panel *panel,
 			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid)
 {
 	init_vbt_panel_defaults(panel);
-
 	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
 
+	if (panel->vbt.panel_type == PANEL_TYPE_PNPID ||
+	    panel->vbt.panel_type == PANEL_TYPE_FALLBACK) {
+		panel->vbt.edp.pps_id = -1;
+
+		if (!edid && intel_bios_encoder_supports_edp(devdata))
+			return true;
+	}
+
 	parse_panel_options(i915, panel);
 	parse_generic_dtd(i915, panel);
 	parse_lfp_data(i915, panel);
@@ -3203,6 +3210,8 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 44ab296c1f04..37e8309207bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -307,6 +307,7 @@ struct intel_vbt_panel_data {
 		int preemphasis;
 		int vswing;
 		int bpp;
+		int pps_id;
 		struct edp_power_seq pps;
 		u8 drrs_msa_timing_delay;
 		bool low_vswing;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..50d9223562e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5235,6 +5235,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
 	struct edid *edid;
+	bool retry;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5254,6 +5255,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	retry = intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, NULL);
+
 	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
@@ -5288,9 +5292,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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
index b972fa6ec00d..da98b180639a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -218,6 +218,16 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	/* We should never land here with regular DP ports */
 	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
 
+	if (connector->panel.vbt.edp.pps_id == -1) {
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
 
@@ -1430,7 +1440,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
 		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
-- 
2.29.0

