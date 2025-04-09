Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8BDA82F38
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0EB10E172;
	Wed,  9 Apr 2025 18:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+4EGsrz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8600A10E172
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 18:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744224430; x=1775760430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PYAr1MK2+kT7Du3wlywlgycveiXfAjFW/Bvlc/+5dig=;
 b=l+4EGsrzSPOC3Hjl5lOzGIlqaLYVBVzKT/+S5uAEJzipXaUU1lo+SNJr
 F5qnIQNEfN6BVvHjJ7XrjvV4as1sFUE2gOrt47pZmFgk3FieILTviCAaO
 1oOUH9SMaKqOsm8N0LIYh/u6UBCFvnGOzeQ3B6I6iNMyyYybT70iyQPvd
 mssMNN1MEeDytPkJbvqlTrfn04SCl+/QPFUx4ILeDADISaMCv9R/zMOaZ
 XxHT3r16buV7lHHoD63jXRabOCKDXj5kZsdiOp7nvBrwnz4Azl0pI6h+v
 Hxc+FwLgiHVHLXbGpp1SRFsupiIP9DHyuQGSG8jvF89rqzmgAVLbP7JZh Q==;
X-CSE-ConnectionGUID: /C2HldbmTH+giagVjhFOIg==
X-CSE-MsgGUID: 12Qc1XscQ72GI95cEm8YvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="44963246"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="44963246"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:47:09 -0700
X-CSE-ConnectionGUID: 8A6umpvyQ/yF0VCUvKvZxw==
X-CSE-MsgGUID: DfWGkDqrSyeAg34cvwlflg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="129200048"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:47:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/irq: convert ibx_irq_reset() into
 ibx_display_irq_reset()
Date: Wed,  9 Apr 2025 21:47:02 +0300
Message-Id: <20250409184702.3790548-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Observe that ibx_irq_reset() is really ibx_display_irq_reset(). Make it
so. Move to display, and call it directly from gen8_display_irq_reset()
instead of gen8_irq_reset().

Remove a nearby ancient stale comment while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h  |  1 +
 drivers/gpu/drm/i915/i915_irq.c               | 22 ++-----------------
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d2a35e3630b1..0acb3b46d909 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1960,8 +1960,22 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 }
 
+void ibx_display_irq_reset(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (HAS_PCH_NOP(i915))
+		return;
+
+	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
+
+	if (HAS_PCH_CPT(i915) || HAS_PCH_LPT(i915))
+		intel_de_write(display, SERR_INT, 0xffffffff);
+}
+
 void gen8_display_irq_reset(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum pipe pipe;
 
 	if (!HAS_DISPLAY(display))
@@ -1977,6 +1991,9 @@ void gen8_display_irq_reset(struct intel_display *display)
 
 	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
 	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
+
+	if (HAS_PCH_SPLIT(i915))
+		ibx_display_irq_reset(display);
 }
 
 void gen11_display_irq_reset(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index f72727768351..c0efda1c949c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -54,6 +54,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
 void i9xx_display_irq_reset(struct intel_display *display);
+void ibx_display_irq_reset(struct intel_display *display);
 void vlv_display_irq_reset(struct intel_display *display);
 void gen8_display_irq_reset(struct intel_display *display);
 void gen11_display_irq_reset(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c1f938a1da44..d06694d6531e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -658,23 +658,9 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
-static void ibx_irq_reset(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	if (HAS_PCH_NOP(dev_priv))
-		return;
-
-	gen2_irq_reset(uncore, SDE_IRQ_REGS);
-
-	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
-}
-
-/* drm_dma.h hooks
-*/
 static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	gen2_irq_reset(uncore, DE_IRQ_REGS);
@@ -690,7 +676,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
-	ibx_irq_reset(dev_priv);
+	ibx_display_irq_reset(display);
 }
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
@@ -717,10 +703,6 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(display);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
-
-	if (HAS_PCH_SPLIT(dev_priv))
-		ibx_irq_reset(dev_priv);
-
 }
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.39.5

