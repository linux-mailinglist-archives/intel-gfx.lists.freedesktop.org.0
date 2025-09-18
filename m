Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABDAB849F0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB4D10E757;
	Thu, 18 Sep 2025 12:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HM4VE/kH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E61110E755;
 Thu, 18 Sep 2025 12:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758199290; x=1789735290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DJ35E5SWVnBsqKzAd5sWN+xpLwICt07pd8uZfCcOgp8=;
 b=HM4VE/kHc/QqUjgwFPNLSiFwE/yVlRLYYaNAwOMtqMLgdOU9K/IwpLz6
 Ro+kCB6Gs7dJVWF5IIfXwAqv9JYU3yb0Redk+MMJRb2Z5NFdBUiSJ+4V+
 D2++LxD9Cq6avQIBY5HmI3seBTCf9+mu1nnOhehi10wrYubQgKvd4zrr+
 L6YJFNuqLP3BNi0t2yuSxPvOJ870tdEjqS3HxQQnU8i7swmUrP0ZuLRkM
 yjT723HTliPsxdwq1ZOQjgoak7LH4xhJhq+RfD7bKw5C7PdlG2iS5VWMk
 /HmhBOMIG6PrxXmNPc7NfZ/LrhoaDT8Snv8KDlM8gZZW9af7Nqg6+Cda7 g==;
X-CSE-ConnectionGUID: wPL/93A+TR6XVMuCz3lxCg==
X-CSE-MsgGUID: gxQfIzwiT4OPYV9tyoglAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="63154684"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="63154684"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:41:30 -0700
X-CSE-ConnectionGUID: FRiM9vNVRI+gEBrD8OCmng==
X-CSE-MsgGUID: jdKgrlGARCi9mxBLIyEfFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175333710"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:41:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v2] drm/i915/irq: add ilk_display_irq_reset()
Date: Thu, 18 Sep 2025 15:41:24 +0300
Message-ID: <20250918124124.2400265-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
References: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
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

v2: Also move GEN7_ERR_INT (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 20 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 15 +-------------
 3 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 93c2e42f98c9..c6f367e6159e 100644
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
@@ -1996,6 +1996,24 @@ void ibx_display_irq_reset(struct intel_display *display)
 		intel_de_write(display, SERR_INT, 0xffffffff);
 }
 
+void ilk_display_irq_reset(struct intel_display *display)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	gen2_irq_reset(uncore, DE_IRQ_REGS);
+	display->irq.ilk_de_imr_mask = ~0u;
+
+	if (DISPLAY_VER(display) == 7)
+		intel_de_write(display, GEN7_ERR_INT, 0xffffffff);
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
index ab65402bc6bf..af2b43679b1b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -656,22 +656,9 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_display *display = dev_priv->display;
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	gen2_irq_reset(uncore, DE_IRQ_REGS);
-	display->irq.ilk_de_imr_mask = ~0u;
-
-	if (GRAPHICS_VER(dev_priv) == 7)
-		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
-
-	if (IS_HASWELL(dev_priv)) {
-		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
-		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
-	}
 
 	gen5_gt_irq_reset(to_gt(dev_priv));
-
-	ibx_display_irq_reset(display);
+	ilk_display_irq_reset(display);
 }
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.47.3

