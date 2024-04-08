Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0665C89CB7A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127D11127ED;
	Mon,  8 Apr 2024 18:09:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjTY9Jqw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4A310F9E5;
 Mon,  8 Apr 2024 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599758; x=1744135758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GRihfidmdBVc9iN7rJPx7EnCUrQOrdwk4hBMe1kE2pU=;
 b=QjTY9JqwTAqB5dBnS46cqYgKGZxmS26kmB3MbWxfPMRQoMEfgn52RVLd
 e0XrRWBaJcRQJJqqnNgT7bgl5TaN/+vIrgJPiDkBIdnCho6s4jdhffHWO
 8XP9g4JPvw7WYQ9BlNvmFt9+ZG/F0gy5cCC55ilJjXI98fE1N3l8oUq38
 WH0+EzGmvOQilv2UMmJBIONNwWEK9t03Q6LeNpZjqmXpd/OMC1kANhSMv
 9YaO4ucAhgaWEDSem3AoS5XoLq6NlGYQZ4ZePs44eGwX3dt/q2CHYhdij
 CptHRSV/kYGY3IiL5R0hxLNbsOlEQL35i6o0KP7785kVWxmIjQAadngay Q==;
X-CSE-ConnectionGUID: kzAkC5YYRkOR9cA2FA3UnQ==
X-CSE-MsgGUID: lecgvxGBRiq8e0Ov4KZpEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11730234"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11730234"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:18 -0700
X-CSE-ConnectionGUID: K6JylDemRFe4Zm+OGtfjAg==
X-CSE-MsgGUID: 2+Msl6OrSWWinK+nkKFLaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19915264"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 5/8] drm/i915: move display_irqs_enabled to display substruct
Date: Mon,  8 Apr 2024 21:08:40 +0300
Message-Id: <f6ac8e4c6ec8621bacf3db58a2bf156bd636f1d1.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The info is related to display, and should be placed under
i915->display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  2 ++
 drivers/gpu/drm/i915/display/intel_display_irq.c  | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c  |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                   |  2 --
 drivers/gpu/drm/i915/i915_irq.c                   |  8 ++++----
 drivers/gpu/drm/xe/xe_device_types.h              |  1 -
 6 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 52f7d6e0324f..68aee44b4822 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -448,6 +448,8 @@ struct intel_display {
 	} ips;
 
 	struct {
+		bool display_irqs_enabled;
+
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
 	} irq;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6219b1a62210..e9fcdac90efd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -412,7 +412,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 
 	spin_lock(&dev_priv->irq_lock);
 
-	if (!dev_priv->display_irqs_enabled) {
+	if (!dev_priv->display.irq.display_irqs_enabled) {
 		spin_unlock(&dev_priv->irq_lock);
 		return;
 	}
@@ -1558,10 +1558,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (dev_priv->display_irqs_enabled)
+	if (dev_priv->display.irq.display_irqs_enabled)
 		return;
 
-	dev_priv->display_irqs_enabled = true;
+	dev_priv->display.irq.display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
 		vlv_display_irq_reset(dev_priv);
@@ -1573,10 +1573,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (!dev_priv->display_irqs_enabled)
+	if (!dev_priv->display.irq.display_irqs_enabled)
 		return;
 
-	dev_priv->display_irqs_enabled = false;
+	dev_priv->display.irq.display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
 		vlv_display_irq_reset(dev_priv);
@@ -1770,9 +1770,9 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 	 * domain. We defer setting up the display irqs in this case to the
 	 * runtime pm.
 	 */
-	i915->display_irqs_enabled = true;
+	i915->display.irq.display_irqs_enabled = true;
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->display_irqs_enabled = false;
+		i915->display.irq.display_irqs_enabled = false;
 
 	intel_hotplug_irq_init(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 76076509f771..d270bb7b9462 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1444,7 +1444,7 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
 
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
+	if (i915->display.irq.display_irqs_enabled && i915->display.funcs.hotplug)
 		i915->display.funcs.hotplug->hpd_irq_setup(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a83553731538..b3daca57f32c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -235,8 +235,6 @@ struct drm_i915_private {
 	/* protects the irq masks */
 	spinlock_t irq_lock;
 
-	bool display_irqs_enabled;
-
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
 	struct pm_qos_request sb_qos;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 8130f043693b..678d632ed043 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -702,7 +702,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display_irqs_enabled)
+	if (dev_priv->display.irq.display_irqs_enabled)
 		vlv_display_irq_reset(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -767,7 +767,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display_irqs_enabled)
+	if (dev_priv->display.irq.display_irqs_enabled)
 		vlv_display_irq_reset(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -784,7 +784,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display_irqs_enabled)
+	if (dev_priv->display.irq.display_irqs_enabled)
 		vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
@@ -838,7 +838,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display_irqs_enabled)
+	if (dev_priv->display.irq.display_irqs_enabled)
 		vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index d6236133b143..956a5f5289bb 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -507,7 +507,6 @@ struct xe_device {
 	};
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
-	bool display_irqs_enabled;
 	u32 enabled_irq_mask;
 
 	struct intel_uncore {
-- 
2.39.2

