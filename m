Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05555B84E00
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 15:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B12810E8B2;
	Thu, 18 Sep 2025 13:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="luQC75Sd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57B5210E8B2;
 Thu, 18 Sep 2025 13:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758202723; x=1789738723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eK3tK8GoP+Lz4qB9Qg901KRIuLQLZUIfEhTzPjEapxY=;
 b=luQC75Sdy/fqamlDkHYihjGIEQZJ/lH2bQgUAFJ18t30gJlGmVPBS41B
 xYjD4DGdsuw02ZoB1MRlH7SSIvtej5GX3bKUFdAJ5vo/C/5Qg0Ia5LmAd
 bs+rDam4ikxww2CurYsdriLCOBk2V69IP52x8pnoS4Y4Zo/tj+uTqTVWy
 Wng8yr6aZJnRrT42Dd8iIMCXGPMxMjfVfNei2GcRZIvMM46z/6wzhx07R
 C52U4vW6nWpdVELwvHJgvRjSYHhVjz+gFCqDSpcyf7zKtIRM5jeCu/MGZ
 ObfMbknh9txHDiNOKvFxwslu8ml3XwigD13RTwOatW7ycoI0wTZTrfoCQ w==;
X-CSE-ConnectionGUID: laPg4mDYTRSrlYgEtQ9OxQ==
X-CSE-MsgGUID: ZpWZOtQpRluZU89Rf0dXAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="71958305"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="71958305"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:38:42 -0700
X-CSE-ConnectionGUID: moyacTExQ8eZfh3FyaNQjQ==
X-CSE-MsgGUID: VzSj7EnvSLKpx7Z3QnBySg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="199260676"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:38:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v3] drm/i915/irq: add ilk_display_irq_reset()
Date: Thu, 18 Sep 2025 16:38:35 +0300
Message-ID: <20250918133835.2412980-1-jani.nikula@intel.com>
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
there. This results in a slightly different order between GT and PCH
reset, hopefully with no impact.

v3: Reset display first (Ville)

v2: Also move GEN7_ERR_INT (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 20 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  2 +-
 drivers/gpu/drm/i915/i915_irq.c               | 16 ++-------------
 3 files changed, 22 insertions(+), 16 deletions(-)

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
index ab65402bc6bf..7c7c6dcbce88 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -656,22 +656,10 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
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
 
+	/* The master interrupt enable is in DEIER, reset display irq first */
+	ilk_display_irq_reset(display);
 	gen5_gt_irq_reset(to_gt(dev_priv));
-
-	ibx_display_irq_reset(display);
 }
 
 static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.47.3

