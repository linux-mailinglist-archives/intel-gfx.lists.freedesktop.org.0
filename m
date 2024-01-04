Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06011823D77
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1C210E3DC;
	Thu,  4 Jan 2024 08:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0C410E3DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357008; x=1735893008;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t6wC9687mrGOGVVsuy1lM1RYkZB7gi0QgA0+E1UGU4k=;
 b=AwiFRuFKe7xSxulpL48gtMWI9mlhE06SHPjLO/xh7PbF6dm/x0F23sOW
 1LTuLo7jeTa9ENfmoN+nwOFPXNVQIYgX16lytDRKq1owrH8QqkPIKnFpD
 DmckwFY+0w3sx5DAzhbnquaWGCzwGBcYjwcVcHP9CNONhcwR5BS4OBErA
 xt+OfBE7o4DiVnyGilpfijwQMwHEfXKhSBll2k9DaYdJVIJlAcQc92/Tq
 aQ4joazSLdQda2QvgTiKI429k0OAKO9DYrCzGzR7TFxAKgkKzlEJT+ruq
 GiMCkp+B6eX+F120J7/qlFXi2ZOLidmntMspJMVgEuRsE2QRh7flVDSdA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624547"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624547"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422692"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422692"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915: Disable hotplug detection handlers during
 driver init/shutdown
Date: Thu,  4 Jan 2024 10:30:05 +0200
Message-Id: <20240104083008.2715733-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

As described in the previous two patches an unexpected connector
detection can happen during the init/shutdown sequences. Prevent these
by returning the connector's current status from the detection handlers.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp.c     | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dvo.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 7 +++++++
 drivers/gpu/drm/i915/display/intel_panel.c  | 4 ++++
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 4 ++++
 drivers/gpu/drm/i915/display/intel_tv.c     | 4 ++++
 8 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b330337b842a4..b9733a73e21d4 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -42,6 +42,7 @@
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
@@ -846,6 +847,9 @@ intel_crt_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(dev_priv))
+		return connector->status;
+
 	if (dev_priv->display.params.load_detect_test) {
 		wakeref = intel_display_power_get(dev_priv,
 						  intel_encoder->power_domain);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 96ec6f1554c60..61c11f475f54a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -56,6 +56,7 @@
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
@@ -5642,6 +5643,9 @@ intel_dp_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(dev_priv))
+		return connector->status;
+
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
@@ -5742,6 +5746,10 @@ intel_dp_force(struct drm_connector *connector)
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
+
+	if (!intel_display_driver_check_access(dev_priv))
+		return;
+
 	intel_dp_unset_edid(intel_dp);
 
 	if (connector->status != connector_status_connected)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8a94323350303..5fa25a5a36b55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -37,6 +37,7 @@
 #include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
@@ -1410,6 +1411,9 @@ intel_dp_mst_detect(struct drm_connector *connector,
 	if (drm_connector_is_unregistered(connector))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(i915))
+		return connector->status;
+
 	return drm_dp_mst_detect_port(connector, ctx, &intel_dp->mst_mgr,
 				      intel_connector->port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 83898ba493d16..8ca9ae4798a89 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -35,6 +35,7 @@
 #include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dvo.h"
 #include "intel_dvo_dev.h"
@@ -328,6 +329,9 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(i915))
+		return connector->base.status;
+
 	return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 55048c56bc527..7020e58061092 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -49,6 +49,7 @@
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_gmbus.h"
@@ -2505,6 +2506,9 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_device_enabled(dev_priv))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(dev_priv))
+		return connector->status;
+
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
 	if (DISPLAY_VER(dev_priv) >= 11 &&
@@ -2533,6 +2537,9 @@ intel_hdmi_force(struct drm_connector *connector)
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return;
+
 	intel_hdmi_unset_edid(connector);
 
 	if (connector->status != connector_status_connected)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 0d8e5320a4f88..073ea3166c360 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -37,6 +37,7 @@
 #include "intel_backlight.h"
 #include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
 #include "intel_lvds_regs.h"
@@ -683,6 +684,9 @@ intel_panel_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(i915))
+		return connector->status;
+
 	return connector_status_connected;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 4e4a87f841787..a086d5f51e612 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -44,6 +44,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
@@ -2140,6 +2141,9 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(i915))
+		return connector->status;
+
 	if (!intel_sdvo_set_target_output(intel_sdvo,
 					  intel_sdvo_connector->output_flag))
 		return connector_status_unknown;
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index f3598fe39fda5..af99b22332adf 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -40,6 +40,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
+#include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_hotplug.h"
@@ -1723,6 +1724,9 @@ intel_tv_detect(struct drm_connector *connector,
 	if (!intel_display_device_enabled(i915))
 		return connector_status_disconnected;
 
+	if (!intel_display_driver_check_access(i915))
+		return connector->status;
+
 	if (force) {
 		struct drm_atomic_state *state;
 
-- 
2.39.2

