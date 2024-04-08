Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6386489CB7E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B9A011256C;
	Mon,  8 Apr 2024 18:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+8IaOp1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB11111292B;
 Mon,  8 Apr 2024 18:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599767; x=1744135767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ZIAlQzCbPYLRLb17dR3tOWHWgGd6Pm+ZJ1kfXS0AxI=;
 b=D+8IaOp1w7307GvVTFVCROLfJxziqB3OZ0Qh+tZHx6TbtijJP7pvdHz1
 tyF7IFlmROXHh65lUf7EG7Pk3k/lX/0KtqJt07QiDYXNwtUdrcL5H9OHQ
 9oJnBoNgMlUeaBRdUxVeRaEUPWkeRq8l31/TOEZy6jLzxcLtOfuvExBBq
 luIR1OUgX7ZA54nycttTbRnVsMl7dTRgdBxCqqU+K/srAerXnG3CJPG/j
 gcSEg8GlgdHusRezTVWD+54sgnpcdpFS5eIGUf8pRL2RGoPVtaJrxqwLV
 QHK19uca0LBxqW0xi6rn/QXcJ0ilfn7PiRCn2/hSNajOWlsJY67HdvqPe g==;
X-CSE-ConnectionGUID: 14OHlFh9QfCku3V1quU/iQ==
X-CSE-MsgGUID: Jelz1wG+QHiKkrxSECoW4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11730241"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11730241"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:26 -0700
X-CSE-ConnectionGUID: gwM0UHigT6Smf+eUilaDGQ==
X-CSE-MsgGUID: hzxi0+N/Rc2AqxuoWEqGDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19915292"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 7/8] drm/i915: move pipestat_irq_mask to display substruct
Date: Mon,  8 Apr 2024 21:08:42 +0300
Message-Id: <2e2f1c9576126927ea63a54639077c01d44ad5b6.1712599670.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display_core.h |  1 +
 drivers/gpu/drm/i915/display/intel_display_irq.c  | 14 +++++++-------
 drivers/gpu/drm/i915/i915_drv.h                   |  1 -
 drivers/gpu/drm/xe/xe_device_types.h              |  1 -
 4 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7a70b162b015..db9b6492758e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -454,6 +454,7 @@ struct intel_display {
 		u8 vblank_enabled;
 
 		u32 de_irq_mask[I915_MAX_PIPES];
+		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 9b9548ae9797..c337e0597541 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -180,7 +180,7 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits)
 u32 i915_pipestat_enable_mask(struct drm_i915_private *dev_priv,
 			      enum pipe pipe)
 {
-	u32 status_mask = dev_priv->pipestat_irq_mask[pipe];
+	u32 status_mask = dev_priv->display.irq.pipestat_irq_mask[pipe];
 	u32 enable_mask = status_mask << 16;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -234,10 +234,10 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == status_mask)
+	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
 		return;
 
-	dev_priv->pipestat_irq_mask[pipe] |= status_mask;
+	dev_priv->display.irq.pipestat_irq_mask[pipe] |= status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
 	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
@@ -257,10 +257,10 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->pipestat_irq_mask[pipe] & status_mask) == 0)
+	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == 0)
 		return;
 
-	dev_priv->pipestat_irq_mask[pipe] &= ~status_mask;
+	dev_priv->display.irq.pipestat_irq_mask[pipe] &= ~status_mask;
 	enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
 	intel_uncore_write(&dev_priv->uncore, reg, enable_mask | status_mask);
@@ -402,7 +402,7 @@ void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 				   PIPESTAT_INT_STATUS_MASK |
 				   PIPE_FIFO_UNDERRUN_STATUS);
 
-		dev_priv->pipestat_irq_mask[pipe] = 0;
+		dev_priv->display.irq.pipestat_irq_mask[pipe] = 0;
 	}
 }
 
@@ -446,7 +446,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			break;
 		}
 		if (iir & iir_bit)
-			status_mask |= dev_priv->pipestat_irq_mask[pipe];
+			status_mask |= dev_priv->display.irq.pipestat_irq_mask[pipe];
 
 		if (!status_mask)
 			continue;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 41add82ca369..ee0d7d5f135d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -241,7 +241,6 @@ struct drm_i915_private {
 
 	/** Cached value of IMR to avoid reads in updating the bitfield */
 	u32 irq_mask;
-	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	bool preserve_bios_swizzle;
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 359c912359fa..faa32407efa5 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -502,7 +502,6 @@ struct xe_device {
 
 	/* only to allow build, not used functionally */
 	u32 irq_mask;
-	u32 pipestat_irq_mask[I915_MAX_PIPES];
 
 	u32 enabled_irq_mask;
 
-- 
2.39.2

