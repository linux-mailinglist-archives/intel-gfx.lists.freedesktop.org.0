Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4B621E7B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 22:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F0C10E51B;
	Tue,  8 Nov 2022 21:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B93610E51E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 21:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667942595; x=1699478595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uD7UCPTcwPHT5K8gMbfuspoqunrWfKn5j197NAlAb3I=;
 b=VRbMTTTXu6qbL5cSz1kqtaWQ1MaTwdG4egZdDKpGFv8aqys5Nywy6KXi
 RrmD2HzSt9o5Ja5lKO66y3ZtE9EGtRrGWR3iGvglKraFa5RDh/vulB3Nt
 NvdIkp3CLWD12Gyc8jZMOS1ceyHADoMiZ4Y2BUVMX50vkFMAvv0VCxSr3
 MQ8YuxBxuTcRzW266y1jUg6AmhpurG5aZ/E2KkaYPw2hEN/rs+Yt3uD7T
 EBOXGFlRAOwY07obxu6Yz8ZVmVZPJbHIhjrHwt4+IsNvVlo8kZFGZbJJq
 rg4lkySoSzGk0Jw7lquZKr6W0FlImPOyCgdUZ4SmCfEeXym297aoZh9v/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298330720"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; 
 d="scan'208,223";a="298330720"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 13:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="761638517"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; 
 d="scan'208,223";a="761638517"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2022 13:23:13 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 02:48:21 +0530
Message-Id: <20221108211822.28048-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221108211822.28048-1-animesh.manna@intel.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual EDP
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

v1: Iniital revision
v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
 drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c2987f2c2b2e..fca44be9bab8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct drm_i915_private *i915,
 	return 0;
 }
 
-enum panel_type {
-	PANEL_TYPE_OPREGION,
-	PANEL_TYPE_VBT,
-	PANEL_TYPE_PNPID,
-	PANEL_TYPE_FALLBACK,
-};
-
 static int get_panel_type(struct drm_i915_private *i915,
 			  const struct intel_bios_encoder_data *devdata,
 			  const struct edid *edid)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index e375405a7828..da01b13260ae 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -231,6 +231,13 @@ struct mipi_pps_data {
 	u16 panel_power_cycle_delay;
 } __packed;
 
+enum panel_type {
+	PANEL_TYPE_OPREGION,
+	PANEL_TYPE_VBT,
+	PANEL_TYPE_PNPID,
+	PANEL_TYPE_FALLBACK,
+};
+
 void intel_bios_init(struct drm_i915_private *dev_priv);
 void intel_bios_init_panel(struct drm_i915_private *dev_priv,
 			   struct intel_panel *panel,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..08ece347f7cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5254,6 +5254,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+			      encoder->devdata, NULL);
+
 	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
@@ -5288,9 +5291,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		edid = ERR_PTR(-ENOENT);
 	}
 	intel_connector->edid = edid;
-
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	if (intel_connector->panel.vbt.panel_type == PANEL_TYPE_FALLBACK)
+		intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3949fb449353..0975e49f8d03 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
 		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
-- 
2.29.0

