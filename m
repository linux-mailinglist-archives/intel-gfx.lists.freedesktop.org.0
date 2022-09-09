Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8752C5B3807
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 14:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CA710ED18;
	Fri,  9 Sep 2022 12:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA7B10ED18
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 12:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662727362; x=1694263362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uhhZm5MDFNPHt4uePf40YK1N/dAae/Z1qLA60pUZ7ag=;
 b=lPRzxKDDlYlKO1Kv1EwHJ1nt2cPsA2Lbn/ohF+up2SfaNW5wh63ZGYem
 9s6qTdN/ohySZQV80ebRBV9dLtowZ/TX87A3U7eP0tQf0FSVwsPCF0s+1
 bs082TeD8fG5pPZ3vS4bFZnL7YNIzXArh/QMFdIdZmc0UmPPwT0B62fXj
 T40WfSr14T6NWVVrjy0BNmOiAWpVwBnMe0X/hops8yCotiGJPlFRrSQTa
 Ddp0eu0bXLxL9eAM4lqFQnRYlqF3/6ywjvPcYVTN+P3FBc9dh3FjzyZ4/
 scb5i6tNdDEcyerfbYAfiUmGVhV3mGa7FVVoel+2oiseHQIhlCSi2xQqP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298267554"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="298267554"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 05:42:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="677145706"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 05:42:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 15:42:34 +0300
Message-Id: <20220909124234.2124050-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909124234.2124050-1-jani.nikula@intel.com>
References: <20220909124234.2124050-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hotplug: refactor hotplug init
 slightly
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename intel_hpd_init_work() to the more generic intel_hpd_init_early(),
and move the hotplug storm initialization there. This lets us move the
HPD_STORM_DEFAULT_THRESHOLD macro to intel_hotplug.c too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 22 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_hotplug.h |  2 +-
 drivers/gpu/drm/i915/i915_drv.h              |  3 ---
 drivers/gpu/drm/i915/i915_irq.c              | 11 +---------
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 4faae25d76c0..352a1b53b63e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -90,6 +90,9 @@ enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
 	return HPD_PORT_A + port - PORT_A;
 }
 
+/* Threshold == 5 for long IRQs, 50 for short */
+#define HPD_STORM_DEFAULT_THRESHOLD	50
+
 #define HPD_STORM_DETECT_PERIOD		1000
 #define HPD_STORM_REENABLE_DELAY	(2 * 60 * 1000)
 #define HPD_RETRY_DELAY			1000
@@ -711,14 +714,23 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 	schedule_work(&dev_priv->display.hotplug.poll_init_work);
 }
 
-void intel_hpd_init_work(struct drm_i915_private *dev_priv)
+void intel_hpd_init_early(struct drm_i915_private *i915)
 {
-	INIT_DELAYED_WORK(&dev_priv->display.hotplug.hotplug_work,
+	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
 			  i915_hotplug_work_func);
-	INIT_WORK(&dev_priv->display.hotplug.dig_port_work, i915_digport_work_func);
-	INIT_WORK(&dev_priv->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
-	INIT_DELAYED_WORK(&dev_priv->display.hotplug.reenable_work,
+	INIT_WORK(&i915->display.hotplug.dig_port_work, i915_digport_work_func);
+	INIT_WORK(&i915->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
+	INIT_DELAYED_WORK(&i915->display.hotplug.reenable_work,
 			  intel_hpd_irq_storm_reenable_work);
+
+	i915->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
+	/* If we have MST support, we want to avoid doing short HPD IRQ storm
+	 * detection, as short HPD storms will occur as a natural part of
+	 * sideband messaging with MST.
+	 * On older platforms however, IRQ storms can occur with both long and
+	 * short pulses, as seen on some G4x systems.
+	 */
+	i915->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
 }
 
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index aa84e381d6c3..424ae5dbf5a0 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -22,7 +22,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			   u32 pin_mask, u32 long_mask);
 void intel_hpd_trigger_irq(struct intel_digital_port *dig_port);
 void intel_hpd_init(struct drm_i915_private *dev_priv);
-void intel_hpd_init_work(struct drm_i915_private *dev_priv);
+void intel_hpd_init_early(struct drm_i915_private *i915);
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
 enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
 				   enum port port);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index be201ba5e9ab..c91cccb2b8c7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -75,9 +75,6 @@ struct intel_limit;
 struct intel_overlay_error_state;
 struct vlv_s0ix_state;
 
-/* Threshold == 5 for long IRQs, 50 for short */
-#define HPD_STORM_DEFAULT_THRESHOLD 50
-
 #define I915_GEM_GPU_DOMAINS \
 	(I915_GEM_DOMAIN_RENDER | \
 	 I915_GEM_DOMAIN_SAMPLER | \
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 515648cd1233..8ffd81243a19 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4399,7 +4399,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	intel_hpd_init_pins(dev_priv);
 
-	intel_hpd_init_work(dev_priv);
+	intel_hpd_init_early(dev_priv);
 
 	dev->vblank_disable_immediate = true;
 
@@ -4413,15 +4413,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		dev_priv->display_irqs_enabled = false;
 
-	dev_priv->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
-	/* If we have MST support, we want to avoid doing short HPD IRQ storm
-	 * detection, as short HPD storms will occur as a natural part of
-	 * sideband messaging with MST.
-	 * On older platforms however, IRQ storms can occur with both long and
-	 * short pulses, as seen on some G4x systems.
-	 */
-	dev_priv->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(dev_priv);
-
 	if (HAS_GMCH(dev_priv)) {
 		if (I915_HAS_HOTPLUG(dev_priv))
 			dev_priv->display.funcs.hotplug = &i915_hpd_funcs;
-- 
2.34.1

