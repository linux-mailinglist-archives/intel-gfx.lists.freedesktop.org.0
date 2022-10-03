Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4D85F391D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 00:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EF710E4F9;
	Mon,  3 Oct 2022 22:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDB210E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 22:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664836400; x=1696372400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=urXlWVy6YHwQrAKs2syimwGO1pheCi27KZ1Uo5l9TJc=;
 b=Xw6RwsM+q4CselPLTxLdOzW7F+J3SxlMYKWdkVC2jlHGx5w184vvt799
 LHHBiXAT2OX6/XisBa/OyEW4+SjxhwfLHujLSF5THYLiwXCBxM6ynbBpR
 g8dfN2n77EPjhBmch7WyPMUSu5e6qW6QJZRBlvvrwd9HAvvZbP0p+uPsS
 xZgTeejiQHwzj1z+kTiT5K4m3eHzzpA7VroRi/jCjzR+c4a/6UaCp+xEx
 4Hf/Fs9c1L+NeOT9lrVKpZ9YYUS+/C/kp9gTVByu0Ncs1BMcX37wbZ/cM
 gA6o4Sdq53hA+hUc9WOqkdx0+v+ektTzyu4f39w8VsG3pM12Ev0+YG4l2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285967342"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285967342"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692262834"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692262834"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:17 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 00:32:55 +0200
Message-Id: <20221003223258.2650934-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003223258.2650934-1-andrzej.hajda@intel.com>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Use drm_device alias if
 defined
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Alias is shorter and more readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c               |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c            | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c        |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c               |  2 +-
 7 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 47f13750f6fa66..bdf874c9f66b00 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2050,7 +2050,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev->mode_config.mutex);
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
-		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
+		drm_err(dev, "DSI fixed mode info missing\n");
 		goto err;
 	}
 
@@ -2063,7 +2063,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+	if (drm_WARN_ON(dev, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
 	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3ffd8fc0b05c10..22248422b2a98c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8708,7 +8708,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 
 	intel_gmbus_setup(i915);
 
-	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
+	drm_dbg_kms(dev, "%d display pipe%s available.\n",
 		    INTEL_NUM_PIPES(i915),
 		    INTEL_NUM_PIPES(i915) > 1 ? "s" : "");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c5f47df0f3622b..8c7d775af5d9e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -998,7 +998,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 
 	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(dev, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 352a1b53b63ed6..6bad2e7543c427 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -378,7 +378,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	u32 hpd_retry_bits;
 
 	mutex_lock(&dev->mode_config.mutex);
-	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
+	drm_dbg_kms(dev, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e97e24f690a9f8..2d07e2a13b1faa 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (!dev_priv->display.vbt.int_lvds_support) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(dev,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
 	}
@@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	pin = GMBUS_PIN_PANEL;
 	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
 		if ((lvds & LVDS_PORT_EN) == 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(dev,
 				    "LVDS is not present in VBT\n");
 			return;
 		}
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(dev,
 			    "LVDS is not present in VBT, but enabled anyway\n");
 	}
 
@@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
-	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
+	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
 		    lvds_encoder->is_dual_link ? "dual" : "single");
 
 	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
@@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	return;
 
 failed:
-	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
+	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(connector);
 	drm_encoder_cleanup(encoder);
 	kfree(lvds_encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index caa07ef34f21ef..ba3666e94fc48d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
 	struct opregion_asle *asle = dev_priv->display.opregion.asle;
 	struct drm_device *dev = &dev_priv->drm;
 
-	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
+	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
 
 	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
 		drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index dee0147a316ce7..fdfe3611e74a76 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	enum port port;
 	enum pipe pipe;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(dev, "\n");
 
 	/* There is no detection method for MIPI so rely on VBT */
 	if (!intel_bios_is_dsi_present(dev_priv, &port))
-- 
2.34.1

