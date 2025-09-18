Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E561B8492E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D72510E751;
	Thu, 18 Sep 2025 12:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ix1U505T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C825E10E143;
 Thu, 18 Sep 2025 12:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758198377; x=1789734377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kr1GcJZHa723Q5c4G4erXy54hlCWkbIeGgZCKprcgls=;
 b=Ix1U505T3SywUDyP99KEcn0EFEqFAYwNgOFs82ixMWMHLe3jg72tOxQT
 zxWWz+G/Wr+38q+hN45cdvnkoihMrmT5PZdet2Pn2fEZInL38b32alXlq
 KDaQAJof74SkNCgL0F2zPkCDOH3aKXBary+9xL5ExesH6s5WDCD78PnKZ
 wnX2yssf2iuKjioPdhpKTS4zdAl81BnxZRuzErq850DTcgugs27bkgeXX
 qzysefn6faLjmYUu+fvDSQdW1RFj1ajHKVqL8fhBYVJ4sOFFQY2hBrSP4
 VQKvAJ5acEgZ90tiZHhaXJvmbnx7nrVJFU3FzYbWthOaa8WVR1dPPO+RU A==;
X-CSE-ConnectionGUID: qCM+obbXQkGkrVMhUF/Htw==
X-CSE-MsgGUID: jW7T4ZLcSwKux1XOz365hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60674895"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60674895"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:17 -0700
X-CSE-ConnectionGUID: ILKgHp4wThWv9H8VCjZwPw==
X-CSE-MsgGUID: +TCkwm/uRzWY8I0Z9QRoVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179525188"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:26:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 5/5] drm/i915/irq: add ilk_display_irq_reset()
Date: Thu, 18 Sep 2025 15:25:48 +0300
Message-ID: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
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

Abstract ilk_display_irq_reset(), moving display related reset
there. This results in a slightly different order for the reset,
hopefully with no impact.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 ++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h    |  2 +-
 drivers/gpu/drm/i915/i915_irq.c                 | 11 +----------
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 93c2e42f98c9..91ca62d9f067 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1985,7 +1985,7 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 	spin_unlock_irq(&display->irq.lock);
 }
 
-void ibx_display_irq_reset(struct intel_display *display)
+static void ibx_display_irq_reset(struct intel_display *display)
 {
 	if (HAS_PCH_NOP(display))
 		return;
@@ -1996,6 +1996,21 @@ void ibx_display_irq_reset(struct intel_display *display)
 		intel_de_write(display, SERR_INT, 0xffffffff);
 }
 
+void ilk_display_irq_reset(struct intel_display *display)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	gen2_irq_reset(uncore, DE_IRQ_REGS);
+	display->irq.ilk_de_imr_mask = ~0u;
+
+	if (display->platform.haswell) {
+		intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
+		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
+	}
+
+	ibx_display_irq_reset(display);
+}
+
 void gen8_display_irq_reset(struct intel_display *display)
 {
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index c66db3851da4..cee120347064 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -56,7 +56,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
 void i9xx_display_irq_reset(struct intel_display *display);
-void ibx_display_irq_reset(struct intel_display *display);
+void ilk_display_irq_reset(struct intel_display *display);
 void vlv_display_irq_reset(struct intel_display *display);
 void gen8_display_irq_reset(struct intel_display *display);
 void gen11_display_irq_reset(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ab65402bc6bf..1571f9de3c71 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -658,20 +658,11 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	gen2_irq_reset(uncore, DE_IRQ_REGS);
-	display->irq.ilk_de_imr_mask = ~0u;
-
 	if (GRAPHICS_VER(dev_priv) == 7)
 		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
 
-	if (IS_HASWELL(dev_priv)) {
-		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
-	}
-
 	gen5_gt_irq_reset(to_gt(dev_priv));
-
-	ibx_display_irq_reset(display);
+	ilk_display_irq_reset(display);
 }
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.47.3

