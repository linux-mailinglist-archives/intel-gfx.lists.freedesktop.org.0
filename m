Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAD1B84927
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB41D10E11E;
	Thu, 18 Sep 2025 12:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A708v7DG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCBF810E11E;
 Thu, 18 Sep 2025 12:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758198368; x=1789734368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EAYFF+YVB1FkNns0vrTfM5wVXBb/VSIInRRkgtDiUvU=;
 b=A708v7DGS96h2WwU0YujBYj6ejisUFrW2RZnDMz+F0CVa8sQMu6aGxfy
 ry0mQFssd+/xmpGwrPSDgoxiINsEDmiG77B1kL/siLF9nUBHGKWkub5DE
 rj9ENLjIOd4A0OvVFqF44sGXrL8qkBHUutnkXTgvQP7Wk9x/a+BFS2Lko
 L/z3ws+BTYPBWIlYyYnl58uwN264PLgwCrqvunMv5aX5QTIHuKCoXaieR
 3kCMv4IL2Ysyn1OPXEMuWXhwVj7Mtpyfz2rIcPXeclY+pX/SsdlmECb+I
 mS7eg+pZoVS+w82sMPRfwVKTvJhLC4hPln4xBcmUTQ1ZJwlBLyDI1IVIQ w==;
X-CSE-ConnectionGUID: y+XzEziISCaEB4Sx+uuxYQ==
X-CSE-MsgGUID: g3HzpwW2TCKv1ZLWglpwsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60674879"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60674879"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:08 -0700
X-CSE-ConnectionGUID: oSlwKT3sQ8qkos4Mpsi4Yw==
X-CSE-MsgGUID: nfXzOTvuQwCUvYqQ61/q/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179525131"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/5] drm/i915/irq: rename irq_mask to gen2_imr_mask
Date: Thu, 18 Sep 2025 15:25:46 +0300
Message-ID: <2c193663cd3ae524d8159b4216e45462017042fa.1758198300.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758198300.git.jani.nikula@intel.com>
References: <cover.1758198300.git.jani.nikula@intel.com>
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

Rename the struct drm_i915_private irq_mask member to gen2_imr_mask to
reflect its usage more accurately.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c |  8 ++++----
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++--
 drivers/gpu/drm/i915/i915_irq.c          | 16 ++++++++--------
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 8116fd5987e2..8c01fb6d4e7b 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -292,15 +292,15 @@ int gen4_emit_bb_start(struct i915_request *rq,
 
 void gen2_irq_enable(struct intel_engine_cs *engine)
 {
-	engine->i915->irq_mask &= ~engine->irq_enable_mask;
-	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
+	engine->i915->gen2_imr_mask &= ~engine->irq_enable_mask;
+	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->gen2_imr_mask);
 	intel_uncore_posting_read_fw(engine->uncore, GEN2_IMR);
 }
 
 void gen2_irq_disable(struct intel_engine_cs *engine)
 {
-	engine->i915->irq_mask |= engine->irq_enable_mask;
-	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->irq_mask);
+	engine->i915->gen2_imr_mask |= engine->irq_enable_mask;
+	intel_uncore_write(engine->uncore, GEN2_IMR, engine->i915->gen2_imr_mask);
 }
 
 void gen5_irq_enable(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 37970d8db255..03e497d2081e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -234,8 +234,8 @@ struct drm_i915_private {
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
 
-	/** Cached value of IMR to avoid reads in updating the bitfield */
-	u32 irq_mask;
+	/* Cached value of gen 2-4 IMR to avoid reads in updating the bitfield */
+	u32 gen2_imr_mask;
 
 	bool preserve_bios_swizzle;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e5fdfd51b549..ab65402bc6bf 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -897,7 +897,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
-	dev_priv->irq_mask = ~0u;
+	dev_priv->gen2_imr_mask = ~0u;
 }
 
 static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -908,7 +908,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i9xx_error_mask(dev_priv));
 
-	dev_priv->irq_mask =
+	dev_priv->gen2_imr_mask =
 		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
 		  I915_MASTER_ERROR_INTERRUPT);
@@ -920,16 +920,16 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_USER_INTERRUPT;
 
 	if (DISPLAY_VER(display) >= 3) {
-		dev_priv->irq_mask &= ~I915_ASLE_INTERRUPT;
+		dev_priv->gen2_imr_mask &= ~I915_ASLE_INTERRUPT;
 		enable_mask |= I915_ASLE_INTERRUPT;
 	}
 
 	if (HAS_HOTPLUG(display)) {
-		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
+		dev_priv->gen2_imr_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
 
-	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
 
 	i915_display_irq_postinstall(display);
 }
@@ -999,7 +999,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
-	dev_priv->irq_mask = ~0u;
+	dev_priv->gen2_imr_mask = ~0u;
 }
 
 static u32 i965_error_mask(struct drm_i915_private *i915)
@@ -1029,7 +1029,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_error_init(uncore, GEN2_ERROR_REGS, ~i965_error_mask(dev_priv));
 
-	dev_priv->irq_mask =
+	dev_priv->gen2_imr_mask =
 		~(I915_ASLE_INTERRUPT |
 		  I915_DISPLAY_PORT_INTERRUPT |
 		  I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
@@ -1047,7 +1047,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	if (IS_G4X(dev_priv))
 		enable_mask |= I915_BSD_USER_INTERRUPT;
 
-	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
+	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
 
 	i965_display_irq_postinstall(display);
 }
-- 
2.47.3

