Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A36275BA84A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 10:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EAC10ECE9;
	Fri, 16 Sep 2022 08:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D0510E3EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 08:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663317294; x=1694853294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Di7ypZeBVbDjhNeYz1jTFhYS4g4NelmGn1SkepsNMoA=;
 b=lmD0QlZhIdVXzTH1pEqfWdidZPNo8VDJsUL2gvoLxDZyqszeHyMqHxGQ
 pPolKU3PNFJ7LD+3dh3neUoo35N3MrBiCCNMgjFcK8WH+HX78IRlZDWdS
 lfd5yQjVS35/rNryALtwXbDt3XyddpR/vjchg4iXE0WQ15JLTmQs4x0B7
 ZGJ2RgYIHiI5SRKP71yY9pebvuPBLIwcZJePerV9tU1/kU5xVqgWo0Kut
 1iPW7Srlkpb8crIRG1xBlpS2JUCWpoBMEa0MSiDQ0dXOq+CyGycMkcEv6
 o1v/usmiY4Gs8pZwdk8QldYHBziaW5lIJPG3DdA/TrP5qOsQriY6G8lY8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="279326153"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; 
 d="scan'208,223";a="279326153"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; 
 d="scan'208,223";a="679879371"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2022 01:34:52 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 14:01:02 +0530
Message-Id: <20220916083102.18559-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220916083102.18559-1-animesh.manna@intel.com>
References: <20220916083102.18559-1-animesh.manna@intel.com>
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
index 28bdb936cd1f..5fd4c09dfa96 100644
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
index c19e99ee06b6..6f7afa75ec4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5222,6 +5222,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+			      encoder->devdata, NULL);
+
 	intel_pps_init(intel_dp);
 
 	/* Cache DPCD and EDID for edp. */
@@ -5255,9 +5258,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		edid = ERR_PTR(-ENOENT);
 	}
 	intel_connector->edid = edid;
-
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
-			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
+	if (intel_connector->panel.vbt.panel_type == PANEL_TYPE_FALLBACK)
+		intel_bios_init_panel(dev_priv, &intel_connector->panel,
+				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
 					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b972fa6ec00d..4b8413382c5d 100644
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

