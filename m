Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4C989CB7D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFFA01127F7;
	Mon,  8 Apr 2024 18:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRGlvv9F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 807201127F3;
 Mon,  8 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599762; x=1744135762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uuchuP1FGDJu77ocjZD3I05keeUwbn6mcs8NW+Dvh+Q=;
 b=HRGlvv9FonycGgMGtam3YbUt/PK1qO7IN9lYsS41LK8NA2OqEOJtIBLT
 Ynu35+T8oJrhWjK4G+kb+ohFOMndNIilEHu/VIbiLzMhOYwXteQoCQIaY
 3rbrlpU3xWz65fAoMvvcPOtKEpbTZLOJ+QDU8zcrDkmKrzPa5327hHy3X
 Q3pKGB+x6bM2PKH0haBXXcxBjEw9pPU1dE9vTsVEV//lclM9OSe2CiDmU
 ATOoQCBkvMxatSNuaOL53M4ftRE6dih7TP4EDdtT8kfdBgn9MYsIM+scu
 YwLTlHul2q59wSKTWzR+hVPP+G0NfXko7Av0hTfxnjARryFKtbJJuwdlD g==;
X-CSE-ConnectionGUID: +JFXpmyhRkOwuFFZqP3SOg==
X-CSE-MsgGUID: j7axvTBxQQ2ycQFmuIz/Tw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11730236"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11730236"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:22 -0700
X-CSE-ConnectionGUID: 5hHS3PVnSUGXD7vXAQKVww==
X-CSE-MsgGUID: ciBiL7tYS9OwIjXPS5KMow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19915284"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 6/8] drm/i915: move de_irq_mask to display substruct
Date: Mon,  8 Apr 2024 21:08:41 +0300
Message-Id: <733fc96df9153c6af8979d9b23d3aa3734937b56.1712599670.git.jani.nikula@intel.com>
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
 .../gpu/drm/i915/display/intel_display_core.h   |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++--------
 drivers/gpu/drm/i915/i915_drv.h                 |  5 +----
 drivers/gpu/drm/xe/xe_device_types.h            |  7 ++-----
 4 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 68aee44b4822..7a70b162b015 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -452,6 +452,8 @@ struct intel_display {
 
 		/* For i915gm/i945gm vblank irq workaround */
 		u8 vblank_enabled;
+
+		u32 de_irq_mask[I915_MAX_PIPES];
 	} irq;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index e9fcdac90efd..9b9548ae9797 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -117,13 +117,14 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	new_val = dev_priv->de_irq_mask[pipe];
+	new_val = dev_priv->display.irq.de_irq_mask[pipe];
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
-	if (new_val != dev_priv->de_irq_mask[pipe]) {
-		dev_priv->de_irq_mask[pipe] = new_val;
-		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
+	if (new_val != dev_priv->display.irq.de_irq_mask[pipe]) {
+		dev_priv->display.irq.de_irq_mask[pipe] = new_val;
+		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe),
+				   dev_priv->display.irq.de_irq_mask[pipe]);
 		intel_uncore_posting_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe));
 	}
 }
@@ -1497,8 +1498,8 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
 		GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-				  dev_priv->de_irq_mask[pipe],
-				  ~dev_priv->de_irq_mask[pipe] | extra_ier);
+				  dev_priv->display.irq.de_irq_mask[pipe],
+				  ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -1694,12 +1695,12 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 
 	for_each_pipe(dev_priv, pipe) {
-		dev_priv->de_irq_mask[pipe] = ~de_pipe_masked;
+		dev_priv->display.irq.de_irq_mask[pipe] = ~de_pipe_masked;
 
 		if (intel_display_power_is_enabled(dev_priv,
 						   POWER_DOMAIN_PIPE(pipe)))
 			GEN8_IRQ_INIT_NDX(uncore, DE_PIPE, pipe,
-					  dev_priv->de_irq_mask[pipe],
+					  dev_priv->display.irq.de_irq_mask[pipe],
 					  de_pipe_enables);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b3daca57f32c..41add82ca369 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -240,10 +240,7 @@ struct drm_i915_private {
 	struct pm_qos_request sb_qos;
 
 	/** Cached value of IMR to avoid reads in updating the bitfield */
-	union {
-		u32 irq_mask;
-		u32 de_irq_mask[I915_MAX_PIPES];
-	};
+	u32 irq_mask;
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	bool preserve_bios_swizzle;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 956a5f5289bb..359c912359fa 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -500,11 +500,8 @@ struct xe_device {
 	/* For pcode */
 	struct mutex sb_lock;
 
-	union {
-		/* only to allow build, not used functionally */
-		u32 irq_mask;
-		u32 de_irq_mask[I915_MAX_PIPES];
-	};
+	/* only to allow build, not used functionally */
+	u32 irq_mask;
 	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	u32 enabled_irq_mask;
-- 
2.39.2

