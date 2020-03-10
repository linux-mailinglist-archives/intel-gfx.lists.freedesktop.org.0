Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A6C17F257
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804AC6E851;
	Tue, 10 Mar 2020 08:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE516E84D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:53:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:32 -0700
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260710182"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:53:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:46 +0200
Message-Id: <3dfda89ab4a234f299ada77abd14163cef3f8bd4.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
References: <cover.1583766715.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/hotplug: convert to drm_device
 based logging.
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Wambui Karuga <wambui.karugax@gmail.com>

Converts various instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_hotplug.c.
In some cases, this involves extracting the drm_i915_private pointer from
the drm_device struct to be used in the logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 40 ++++++++++++--------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 562227d54ccc..a091442efba4 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -170,10 +170,13 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	hpd->stats[pin].count += increment;
 	if (hpd->stats[pin].count > threshold) {
 		hpd->stats[pin].state = HPD_MARK_DISABLED;
-		DRM_DEBUG_KMS("HPD interrupt storm detected on PIN %d\n", pin);
+		drm_dbg_kms(&dev_priv->drm,
+			    "HPD interrupt storm detected on PIN %d\n", pin);
 		storm = true;
 	} else {
-		DRM_DEBUG_KMS("Received HPD interrupt on PIN %d - cnt: %d\n", pin,
+		drm_dbg_kms(&dev_priv->drm,
+			    "Received HPD interrupt on PIN %d - cnt: %d\n",
+			      pin,
 			      hpd->stats[pin].count);
 	}
 
@@ -202,7 +205,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 		    dev_priv->hotplug.stats[pin].state != HPD_MARK_DISABLED)
 			continue;
 
-		DRM_INFO("HPD interrupt storm detected on connector %s: "
+		drm_info(&dev_priv->drm,
+			 "HPD interrupt storm detected on connector %s: "
 			 "switching from hotplug detection to polling\n",
 			 connector->base.name);
 
@@ -244,8 +248,9 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 			continue;
 
 		if (connector->base.polled != connector->polled)
-			DRM_DEBUG_DRIVER("Reenabling HPD on connector %s\n",
-					 connector->base.name);
+			drm_dbg(&dev_priv->drm,
+				"Reenabling HPD on connector %s\n",
+				connector->base.name);
 		connector->base.polled = connector->polled;
 	}
 	drm_connector_list_iter_end(&conn_iter);
@@ -280,11 +285,12 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 	if (old_status == connector->base.status)
 		return INTEL_HOTPLUG_UNCHANGED;
 
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s\n",
-		      connector->base.base.id,
-		      connector->base.name,
-		      drm_get_connector_status_name(old_status),
-		      drm_get_connector_status_name(connector->base.status));
+	drm_dbg_kms(&to_i915(dev)->drm,
+		    "[CONNECTOR:%d:%s] status updated from %s to %s\n",
+		    connector->base.base.id,
+		    connector->base.name,
+		    drm_get_connector_status_name(old_status),
+		    drm_get_connector_status_name(connector->base.status));
 
 	return INTEL_HOTPLUG_CHANGED;
 }
@@ -358,7 +364,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	u32 hpd_retry_bits;
 
 	mutex_lock(&dev->mode_config.mutex);
-	DRM_DEBUG_KMS("running encoder hotplug functions\n");
+	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
@@ -386,8 +392,9 @@ static void i915_hotplug_work_func(struct work_struct *work)
 			struct intel_encoder *encoder =
 				intel_attached_encoder(connector);
 
-			DRM_DEBUG_KMS("Connector %s (pin %i) received hotplug event.\n",
-				      connector->base.name, pin);
+			drm_dbg_kms(&dev_priv->drm,
+				    "Connector %s (pin %i) received hotplug event.\n",
+				    connector->base.name, pin);
 
 			switch (encoder->hotplug(encoder, connector,
 						 hpd_event_bits & hpd_bit)) {
@@ -472,9 +479,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		long_hpd = long_mask & BIT(pin);
 
-		DRM_DEBUG_DRIVER("digital hpd on [ENCODER:%d:%s] - %s\n",
-				 encoder->base.base.id, encoder->base.name,
-				 long_hpd ? "long" : "short");
+		drm_dbg(&dev_priv->drm,
+			"digital hpd on [ENCODER:%d:%s] - %s\n",
+			encoder->base.base.id, encoder->base.name,
+			long_hpd ? "long" : "short");
 		queue_dig = true;
 
 		if (long_hpd) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
