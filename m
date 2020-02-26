Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B6516FBBF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86AB6E45D;
	Wed, 26 Feb 2020 10:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A766E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:12:13 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id y17so2214586wrn.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1WOVepM1Uf2vh7KtDZ4wgsszkBZH4kiU6Km+guJGG3o=;
 b=rdj3GWv+byLwxkJ80jU8ejeTVJqxelCMUdtaIvesMcNAW4dlEfO+TJ/ts6Xu8z3CrQ
 eyok/dQmNveT2i0bB7y00ug0N03A8qm88UfBkDldERKa0UkdRl63L8UL161kCDpTrhte
 eJR66dACWfvuM6dJWuZSM6RHgZZdukXDhfFiJpdgMAj4OH4G2GjLgfmgywuFR7VjmGPF
 qzOU3RUYo8qrPOJ0bPhPI/Qrf6+hQpRrfQ5F+wtc0rbvnHMEZlc23PKgxipI5VwoOABU
 3T/Zl7u+Qg5c1gymiNgXJIY7CHfiqRPLt11WBjRMTL17I+RM1odXh5CVfTyBJWAL3sXQ
 Vgiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1WOVepM1Uf2vh7KtDZ4wgsszkBZH4kiU6Km+guJGG3o=;
 b=ixfRv7+xl20K5/+tEdcpJYWFZrmDIPilphmx7eTlITkm8nDkESXlQL/0T+tRvz6LvA
 raSRcI2TTQDYVakJHmglbFyNaNU4YdNvu+QiFmRytjklMgHDBEEd0eWCyifhtoR2RpiY
 wIcwJrEPZi/NjKVCHdWIWPycWVngfXPSYafXZkODp9/aXtO551Sf/YtsOSr7b0qU8tLq
 gf3pElVAQhX7fP/tOBhYrOsHzf8n1bmmINIeebQSpdYIIdTc/GONHpIRM5IpMGNbL3x2
 M3xm1vED1GGkZ30jV+2Bhx9FE3uXV5uM35QRdsKSa7uSYPGlMefMJhlY3lEDUD4YAsPQ
 MKgQ==
X-Gm-Message-State: APjAAAX0/T2ZBf3Y0M/h1o1rBWZcIw1iA/wFuibSH7353/kbGWmX05Wa
 ACAxPkrixp++AGn5PdEsNUk=
X-Google-Smtp-Source: APXvYqxI16oKjFD32STkd77ftx2UqKMMXay7iqRMWqnfGjlRNf3y21B+UV6kdiBlQCsx3LjRwLJnkA==
X-Received: by 2002:a5d:4481:: with SMTP id j1mr4601757wrq.348.1582711932435; 
 Wed, 26 Feb 2020 02:12:12 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:12:11 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:35 +0300
Message-Id: <20200226101138.15435-8-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Converts various instances of the printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_hotplug.c.
In some cases, this involves extracting the drm_i915_private pointer from
the drm_device struct to be used in the logging macros.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 40 ++++++++++++--------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 8af0ae61e1bb..585a6b1a0d7b 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -185,10 +185,13 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
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
 
@@ -217,7 +220,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 		    dev_priv->hotplug.stats[pin].state != HPD_MARK_DISABLED)
 			continue;
 
-		DRM_INFO("HPD interrupt storm detected on connector %s: "
+		drm_info(&dev_priv->drm,
+			 "HPD interrupt storm detected on connector %s: "
 			 "switching from hotplug detection to polling\n",
 			 connector->base.name);
 
@@ -259,8 +263,9 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
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
@@ -295,11 +300,12 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
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
@@ -373,7 +379,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	u32 hpd_retry_bits;
 
 	mutex_lock(&dev->mode_config.mutex);
-	DRM_DEBUG_KMS("running encoder hotplug functions\n");
+	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
@@ -401,8 +407,9 @@ static void i915_hotplug_work_func(struct work_struct *work)
 			struct intel_encoder *encoder =
 				intel_attached_encoder(connector);
 
-			DRM_DEBUG_KMS("Connector %s (pin %i) received hotplug event.\n",
-				      connector->base.name, pin);
+			drm_dbg_kms(&dev_priv->drm,
+				    "Connector %s (pin %i) received hotplug event.\n",
+				    connector->base.name, pin);
 
 			switch (encoder->hotplug(encoder, connector,
 						 hpd_event_bits & hpd_bit)) {
@@ -487,9 +494,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
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
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
