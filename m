Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D565ECBA3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 19:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75DC10E023;
	Tue, 27 Sep 2022 17:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E55410E021
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 17:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664300969; x=1695836969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BCkZ5UnJrqzm8UYDJdYerDHgM1KlFLDHXzf3bzm+Eu4=;
 b=Zttg8S5Z0Ms779pd8SOVp/O1+nJssYHoTq8VOP/Hjlq0U/Ymhl7cWSvt
 swTKSpCn2sLhCsxjr6Q+qdD7tDrUjE8oGcr1PUmdQXvwUZxMwnfeebBem
 8f1EmZv9F7gqEZ2o6ZXePaFgFPv/vpMHNJMlipWH7gPMU1LVKBj9jiy36
 9iK2ZBuuLw0zCR6VAyJVXqzEHVY4vk/3dTbmK3LGO8Jypto3dgFuTD6qm
 pqw/OWGQuQ2wjxkvsz4DDW5QAyGHc7KjrjhpFGc/NF/Abgqa3fbuiCXA8
 IJeluClXT/rqHmTsUtNtbaFt4F4YKv6Q89H4awgFnW2xeKro5GRyNnIOl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="301362638"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; 
 d="scan'208,223";a="301362638"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 10:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="747126001"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; 
 d="scan'208,223";a="747126001"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 27 Sep 2022 10:49:26 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 23:15:18 +0530
Message-Id: <20220927174518.30230-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220927174518.30230-1-animesh.manna@intel.com>
References: <20220927174518.30230-1-animesh.manna@intel.com>
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
for a specific panel. Extended support for gen12 for dual EDP usage.

v1: Iniital revision.
v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
v3: Set pps_id to -1 for pnpid type of panel which will be used by
bxt_power_sequencer_idx() to set 2nd pps instance as default for
2nd EDP panel. [Jani]

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
index 28bdb936cd1f..2015b6592754 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3175,13 +3175,14 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
-void intel_bios_init_panel(struct drm_i915_private *i915,
+bool intel_bios_init_panel(struct drm_i915_private *i915,
 			   struct intel_panel *panel,
 			   const struct intel_bios_encoder_data *devdata,
 			   const struct edid *edid)
 {
-	init_vbt_panel_defaults(panel);
+	bool retry = false;
 
+	init_vbt_panel_defaults(panel);
 	panel->vbt.panel_type = get_panel_type(i915, devdata, edid);
 
 	parse_panel_options(i915, panel);
@@ -3195,6 +3196,14 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
 	parse_psr(i915, panel);
 	parse_mipi_config(i915, panel);
 	parse_mipi_sequence(i915, panel);
+
+	if (panel->vbt.panel_type == PANEL_TYPE_PNPID ||
+	    panel->vbt.panel_type == PANEL_TYPE_FALLBACK) {
+		panel->vbt.edp.pps_id = -1;
+		retry = true;
+	}
+
+	return retry;
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
index b78b29951241..0edc0b8f3743 100644
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
index c19e99ee06b6..a94fc947cdb3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5203,6 +5203,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	bool has_dpcd;
 	enum pipe pipe = INVALID_PIPE;
 	struct edid *edid;
+	bool retry;
 
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
@@ -5222,6 +5223,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	retry = intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, NULL);
+
 	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
@@ -5255,9 +5259,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		edid = ERR_PTR(-ENOENT);
 	}
 	intel_connector->edid = edid;
-
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	if (retry)
+		intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
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

