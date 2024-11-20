Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9C89D3985
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D333A10E711;
	Wed, 20 Nov 2024 11:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pjmgn/oY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC66810E717;
 Wed, 20 Nov 2024 11:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102259; x=1763638259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+LmBr05in48ovX01NQNKejaGXz1uQg3U5thYec7yVzw=;
 b=Pjmgn/oYiiZoUi39BqN2/slQeHOxfJkxywz0lS/SMJEum3MErjlJg2lz
 jY8L/Zfrb3Wac6y9joZA2vKiJNBSeRN/uEHALW8+5N+2yLm7aH7FENDdU
 BfmOFsfyIcrQJlp8mlRb5YTYwRUCyGbi+0irp08VUEp5TUJKkBifJGDSp
 TTBxsFVxMP4QOM6OlLHCuxQ//0UDfFFo/DSCfJy00/AO9D0PJ9qhHTJ5B
 zpqWy5SCqtAdM0BJJzZZE0PMvkCGw7ia0Gr+CvPDZuZ4jp3dhCcX/XEca
 +6IZWDs0lT4De6oiJiKCKzGkQtXVR+c75l/Z7VYloqd41xwbqXSwHCONS g==;
X-CSE-ConnectionGUID: xmbUqDv3QuCFIZOGVdYV6Q==
X-CSE-MsgGUID: EhNrLKCYRuWWyapbY4fc+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32266692"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32266692"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:59 -0800
X-CSE-ConnectionGUID: Z5VjzQFTTTeEirsWj+cj7Q==
X-CSE-MsgGUID: F772ud+IQwW2LA5P2o9ZrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94951533"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:30:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 4/5] drm/i915/irq: hide display_irqs_enabled access
Date: Wed, 20 Nov 2024 13:30:32 +0200
Message-Id: <ef43e26ebab7f84768391f5053c0eba44b647c89.1732102179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732102179.git.jani.nikula@intel.com>
References: <cover.1732102179.git.jani.nikula@intel.com>
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

Move the check for display_irqs_enabled within vlv_display_irq_reset()
and vlv_display_irq_postinstall() to avoid looking at struct
intel_display members within i915 core irq code.

Within display irq code, vlv_display_irq_reset() may need to be called
with !display_irqs_enabled, so add a small wrapper.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 15 ++++++++++++---
 drivers/gpu/drm/i915/i915_irq.c                  | 12 ++++--------
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f0d3bdb5fc60..6467a208184e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1481,7 +1481,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
-void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
+static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
@@ -1499,6 +1499,12 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 	dev_priv->irq_mask = ~0u;
 }
 
+void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
+{
+	if (dev_priv->display.irq.display_irqs_enabled)
+		_vlv_display_irq_reset(dev_priv);
+}
+
 void i9xx_display_irq_reset(struct drm_i915_private *i915)
 {
 	if (I915_HAS_HOTPLUG(i915)) {
@@ -1518,6 +1524,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 enable_mask;
 	enum pipe pipe;
 
+	if (!dev_priv->display.irq.display_irqs_enabled)
+		return;
+
 	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
 
 	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
@@ -1696,7 +1705,7 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 	dev_priv->display.irq.display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
-		vlv_display_irq_reset(dev_priv);
+		_vlv_display_irq_reset(dev_priv);
 		vlv_display_irq_postinstall(dev_priv);
 	}
 }
@@ -1711,7 +1720,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 	dev_priv->display.irq.display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
-		vlv_display_irq_reset(dev_priv);
+		_vlv_display_irq_reset(dev_priv);
 }
 
 void ilk_de_irq_postinstall(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index f75cbf5b8a1c..7920ad9585ae 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -658,8 +658,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display.irq.display_irqs_enabled)
-		vlv_display_irq_reset(dev_priv);
+	vlv_display_irq_reset(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
@@ -723,8 +722,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display.irq.display_irqs_enabled)
-		vlv_display_irq_reset(dev_priv);
+	vlv_display_irq_reset(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
@@ -740,8 +738,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display.irq.display_irqs_enabled)
-		vlv_display_irq_postinstall(dev_priv);
+	vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
@@ -794,8 +791,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	if (dev_priv->display.irq.display_irqs_enabled)
-		vlv_display_irq_postinstall(dev_priv);
+	vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
-- 
2.39.5

