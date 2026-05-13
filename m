Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNa5JUOjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4494E536D9D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514E010EF36;
	Wed, 13 May 2026 16:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PwstIx92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA28010EF36;
 Wed, 13 May 2026 16:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688833; x=1810224833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+lauioPuQ7ReVrMXza9jX9JsD+2hT8WJQ5/hd7ziNzI=;
 b=PwstIx9237Vw89Isnln+twffQheKU55U/T55lGJh5MSu6Uek6SLkc3g7
 idlSD0rwxtUh7/u/ruwqBcpa/jEX9HHaW4xeyEAE58YyMLJ+WAbt0t191
 DF7PufXdOMg0+Z888qfXAEAp1x31FJky0arWRekBtyWaZaAOnNawNwYcg
 xx1IjMCqpECxhTsp6txAme470mxO1FqL41yRxym+msJuJa6oAB5ErpBZK
 KS1POyuSGZa/4LzGtK2y/bKsQoiBXknHQ0lQ/5ULI2Rs4XdZAxF1t0eq7
 fd0T96NK8W/fYrjHdh5H913ieeoqGHEAvsjWfkgioR7RSCrBwER6Eu42M g==;
X-CSE-ConnectionGUID: 876ONWGWQXeLWBhZy9L+BQ==
X-CSE-MsgGUID: WAUMgGnpSCuav9SpYKmyPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79517159"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79517159"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:53 -0700
X-CSE-ConnectionGUID: KM6Kw88eQpmRvaGMdvp05w==
X-CSE-MsgGUID: Volt3GBaRvaWOvHoanu7nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="261631814"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v4 4/8] drm/i915/irq: add intel_display_irq_postinstall() to
 irq funcs
Date: Wed, 13 May 2026 19:13:27 +0300
Message-ID: <65f1ad73628fb6dbdf6e782493eaecb1d61abaf7.1778688699.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778688699.git.jani.nikula@intel.com>
References: <cover.1778688699.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 4494E536D9D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Call the platform specific display irq postinstall hooks via
intel_display_irq_postinstall().

Relocate the gen11 HAS_DISPLAY() check to
intel_display_irq_postinstall(), as the funcs pointer won't be
initialized for no display.

v2:
- relocate HAS_DISPLAY() (Sashiko)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 30 +++++++++++++------
 .../gpu/drm/i915/display/intel_display_irq.h  |  7 +----
 drivers/gpu/drm/i915/i915_irq.c               | 16 +++++-----
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 4 files changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 27599a303843..9d6596ad8b3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1981,7 +1981,7 @@ u32 i9xx_display_irq_enable_mask(struct intel_display *display)
 	return enable_mask;
 }
 
-void i915_display_irq_postinstall(struct intel_display *display)
+static void i915_display_irq_postinstall(struct intel_display *display)
 {
 	/*
 	 * Interrupt setup is already guaranteed to be single-threaded, this is
@@ -1995,7 +1995,7 @@ void i915_display_irq_postinstall(struct intel_display *display)
 	i915_enable_asle_pipestat(display);
 }
 
-void i965_display_irq_postinstall(struct intel_display *display)
+static void i965_display_irq_postinstall(struct intel_display *display)
 {
 	/*
 	 * Interrupt setup is already guaranteed to be single-threaded, this is
@@ -2057,7 +2057,7 @@ static void _vlv_display_irq_postinstall(struct intel_display *display)
 	irq_init(display, VLV_IRQ_REGS, display->irq.vlv_imr_mask, enable_mask);
 }
 
-void vlv_display_irq_postinstall(struct intel_display *display)
+static void vlv_display_irq_postinstall(struct intel_display *display)
 {
 	spin_lock_irq(&display->irq.lock);
 	if (display->irq.vlv_display_irqs_enabled)
@@ -2262,7 +2262,7 @@ void valleyview_disable_display_irqs(struct intel_display *display)
 	spin_unlock_irq(&display->irq.lock);
 }
 
-void ilk_de_irq_postinstall(struct intel_display *display)
+static void ilk_de_irq_postinstall(struct intel_display *display)
 {
 	u32 display_mask, extra_mask;
 
@@ -2306,7 +2306,7 @@ void ilk_de_irq_postinstall(struct intel_display *display)
 static void mtp_irq_postinstall(struct intel_display *display);
 static void icp_irq_postinstall(struct intel_display *display);
 
-void gen8_de_irq_postinstall(struct intel_display *display)
+static void gen8_de_irq_postinstall(struct intel_display *display)
 {
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(display) |
 		GEN8_PIPE_CDCLK_CRC_DONE;
@@ -2433,11 +2433,8 @@ static void icp_irq_postinstall(struct intel_display *display)
 	irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
 }
 
-void gen11_de_irq_postinstall(struct intel_display *display)
+static void gen11_de_irq_postinstall(struct intel_display *display)
 {
-	if (!HAS_DISPLAY(display))
-		return;
-
 	gen8_de_irq_postinstall(display);
 
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
@@ -2445,30 +2442,37 @@ void gen11_de_irq_postinstall(struct intel_display *display)
 
 struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
+	void (*postinstall)(struct intel_display *display);
 };
 
 static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
 	.reset = gen11_display_irq_reset,
+	.postinstall = gen11_de_irq_postinstall,
 };
 
 static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
 	.reset = gen8_display_irq_reset,
+	.postinstall = gen8_de_irq_postinstall,
 };
 
 static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
 	.reset = vlv_display_irq_reset,
+	.postinstall = vlv_display_irq_postinstall,
 };
 
 static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
 	.reset = ilk_display_irq_reset,
+	.postinstall = ilk_de_irq_postinstall,
 };
 
 static const struct intel_display_irq_funcs i965_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
+	.postinstall = i965_display_irq_postinstall,
 };
 
 static const struct intel_display_irq_funcs i915_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
+	.postinstall = i915_display_irq_postinstall,
 };
 
 void intel_display_irq_reset(struct intel_display *display)
@@ -2479,6 +2483,14 @@ void intel_display_irq_reset(struct intel_display *display)
 	display->irq.funcs->reset(display);
 }
 
+void intel_display_irq_postinstall(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	display->irq.funcs->postinstall(display);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 21b2145656cd..fd9873ce9755 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -59,14 +59,9 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
 void intel_display_irq_reset(struct intel_display *display);
+void intel_display_irq_postinstall(struct intel_display *display);
 
 u32 i9xx_display_irq_enable_mask(struct intel_display *display);
-void i915_display_irq_postinstall(struct intel_display *display);
-void i965_display_irq_postinstall(struct intel_display *display);
-void vlv_display_irq_postinstall(struct intel_display *display);
-void ilk_de_irq_postinstall(struct intel_display *display);
-void gen8_de_irq_postinstall(struct intel_display *display);
-void gen11_de_irq_postinstall(struct intel_display *display);
 
 u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c4f56a869910..c21b289b8007 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -724,7 +724,7 @@ static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
-	ilk_de_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 }
 
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -733,7 +733,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
-	vlv_display_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
@@ -744,7 +744,7 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
-	gen8_de_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 
 	gen8_master_intr_enable(intel_uncore_regs(&dev_priv->uncore));
 }
@@ -757,7 +757,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 
 	gen11_gt_irq_postinstall(gt);
-	gen11_de_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 
 	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
@@ -778,7 +778,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
-	gen11_de_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 
 	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
@@ -790,7 +790,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
-	vlv_display_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
@@ -888,7 +888,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
 
-	i915_display_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 }
 
 static irqreturn_t i915_irq_handler(int irq, void *arg)
@@ -997,7 +997,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->gen2_imr_mask, enable_mask);
 
-	i965_display_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 }
 
 static irqreturn_t i965_irq_handler(int irq, void *arg)
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ba3225878c61..62e5d38938eb 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -246,7 +246,7 @@ void xe_display_irq_postinstall(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	gen11_de_irq_postinstall(display);
+	intel_display_irq_postinstall(display);
 }
 
 static bool suspend_to_idle(void)
-- 
2.47.3

