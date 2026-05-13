Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFQzHBdOBGrNGgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228165312DB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 12:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADCB10EDDA;
	Wed, 13 May 2026 10:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I87UPP3l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF23910EDD6;
 Wed, 13 May 2026 10:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778667028; x=1810203028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ubmjgsp9a/c/JnWlrpxsfRWW6UDf4DgNiRAmcyM+y7Y=;
 b=I87UPP3lR8tqw2DfFbQd9Eckxo84qQ3n1fE/qLYb30ZRqENpPNx5BGOw
 aYiCTVKjk3jgPsFEksD/fLkpsOsrUwBQNfngM7/aDBHUi6vve0JWfJiNV
 lg26y8moFXzEVjQiHutRpKmqL50eOHy/cyGH6KXh5JSFQCoNvj87Swtja
 LsPcCUoVsUaMoTRBqhEE5KeVHWUy5MaQK7UyAjqbPmECbpFktrl72CMRa
 vomm1djNWcsU4UKLmUCTJW52ttcOAjCrStHqkYxy2cnVGE5ynzi/I3w4q
 rP5FQXUD399uEChhrko1wh/chLTsH9xcZc6ZdirooJXd7yehsSqrxGwtN g==;
X-CSE-ConnectionGUID: CYyfIXYoRHOkTSH4UJrK6g==
X-CSE-MsgGUID: zl7Z+Zz5TVmtiFnwC3zwlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90973163"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90973163"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 03:10:27 -0700
X-CSE-ConnectionGUID: b4iHTzUqTOOil7xxZ00k6A==
X-CSE-MsgGUID: r+5DY1mjTHW53cnB9d+fgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233770370"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.102])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 03:10:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v3 3/6] drm/i915/irq: add display irq funcs,
 start with intel_display_irq_reset()
Date: Wed, 13 May 2026 13:10:08 +0300
Message-ID: <8cf49ccdb19c7263ac832714577d1a5cf2e20f00.1778666967.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778666967.git.jani.nikula@intel.com>
References: <cover.1778666967.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 228165312DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Introduce display irq hooks with struct intel_display_irq_funcs, and add
the ->reset hook as the first thing. Call the reset hooks from i915 and
xe core via intel_display_irq_reset().

Relocate the gen8 and gen11 HAS_DISPLAY() check to
intel_display_irq_reset(), as the funcs pointer won't be initialized for
no display.

Note: We're increasingly moving to the territory of not touching display
at all if there's no display or it has been fused off. Which is good,
but care must be taken to not have hardware setup required also for no
display cases in display code. Also note that the line is fuzzy for
older platforms, but there we also don't have fusing.

v2:
- make the structs static const (Sashiko)
- relocate HAS_DISPLAY() (Sashiko)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../gpu/drm/i915/display/intel_display_irq.c  | 61 +++++++++++++++----
 .../gpu/drm/i915/display/intel_display_irq.h  |  6 +-
 drivers/gpu/drm/i915/i915_irq.c               | 16 ++---
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 5 files changed, 63 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 76745ce6a716..3dc5ac75a98b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -475,6 +475,9 @@ struct intel_display {
 	} ips;
 
 	struct {
+		/* internal display irq functions */
+		const struct intel_display_irq_funcs *funcs;
+
 		/* protects the irq masks */
 		spinlock_t lock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d30b063714b0..62a849673454 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1947,7 +1947,7 @@ static void _vlv_display_irq_reset(struct intel_display *display)
 	display->irq.vlv_imr_mask = ~0u;
 }
 
-void vlv_display_irq_reset(struct intel_display *display)
+static void vlv_display_irq_reset(struct intel_display *display)
 {
 	spin_lock_irq(&display->irq.lock);
 	if (display->irq.vlv_display_irqs_enabled)
@@ -1955,7 +1955,7 @@ void vlv_display_irq_reset(struct intel_display *display)
 	spin_unlock_irq(&display->irq.lock);
 }
 
-void i9xx_display_irq_reset(struct intel_display *display)
+static void i9xx_display_irq_reset(struct intel_display *display)
 {
 	if (HAS_HOTPLUG(display)) {
 		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
@@ -2076,7 +2076,7 @@ static void ibx_display_irq_reset(struct intel_display *display)
 		intel_de_write(display, SERR_INT, 0xffffffff);
 }
 
-void ilk_display_irq_reset(struct intel_display *display)
+static void ilk_display_irq_reset(struct intel_display *display)
 {
 	irq_reset(display, DE_IRQ_REGS);
 	display->irq.ilk_de_imr_mask = ~0u;
@@ -2092,13 +2092,10 @@ void ilk_display_irq_reset(struct intel_display *display)
 	ibx_display_irq_reset(display);
 }
 
-void gen8_display_irq_reset(struct intel_display *display)
+static void gen8_display_irq_reset(struct intel_display *display)
 {
 	enum pipe pipe;
 
-	if (!HAS_DISPLAY(display))
-		return;
-
 	intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
 	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 
@@ -2114,15 +2111,12 @@ void gen8_display_irq_reset(struct intel_display *display)
 		ibx_display_irq_reset(display);
 }
 
-void gen11_display_irq_reset(struct intel_display *display)
+static void gen11_display_irq_reset(struct intel_display *display)
 {
 	enum pipe pipe;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
 
-	if (!HAS_DISPLAY(display))
-		return;
-
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, 0);
 
 	if (DISPLAY_VER(display) >= 12) {
@@ -2453,6 +2447,38 @@ struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 };
 
+static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
+	.reset = gen11_display_irq_reset,
+};
+
+static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
+	.reset = gen8_display_irq_reset,
+};
+
+static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
+	.reset = vlv_display_irq_reset,
+};
+
+static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
+	.reset = ilk_display_irq_reset,
+};
+
+static const struct intel_display_irq_funcs i965_display_irq_funcs = {
+	.reset = i9xx_display_irq_reset,
+};
+
+static const struct intel_display_irq_funcs i915_display_irq_funcs = {
+	.reset = i9xx_display_irq_reset,
+};
+
+void intel_display_irq_reset(struct intel_display *display)
+{
+	if (!HAS_DISPLAY(display))
+		return;
+
+	display->irq.funcs->reset(display);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
@@ -2463,6 +2489,19 @@ void intel_display_irq_init(struct intel_display *display)
 
 	INIT_WORK(&display->irq.vblank_notify_work,
 		  intel_display_vblank_notify_work);
+
+	if (DISPLAY_VER(display) >= 11)
+		display->irq.funcs = &gen11_display_irq_funcs;
+	else if (display->platform.cherryview || display->platform.valleyview)
+		display->irq.funcs = &vlv_display_irq_funcs;
+	else if (DISPLAY_VER(display) >= 8)
+		display->irq.funcs = &gen8_display_irq_funcs;
+	else if (DISPLAY_VER(display) >= 5)
+		display->irq.funcs = &ilk_display_irq_funcs;
+	else if (DISPLAY_VER(display) == 4)
+		display->irq.funcs = &i965_display_irq_funcs;
+	else
+		display->irq.funcs = &i915_display_irq_funcs;
 }
 
 struct intel_display_irq_snapshot {
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index d25b9ea4272b..21b2145656cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -58,11 +58,7 @@ void gen11_display_irq_handler(struct intel_display *display);
 u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
-void i9xx_display_irq_reset(struct intel_display *display);
-void ilk_display_irq_reset(struct intel_display *display);
-void vlv_display_irq_reset(struct intel_display *display);
-void gen8_display_irq_reset(struct intel_display *display);
-void gen11_display_irq_reset(struct intel_display *display);
+void intel_display_irq_reset(struct intel_display *display);
 
 u32 i9xx_display_irq_enable_mask(struct intel_display *display);
 void i915_display_irq_postinstall(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ef9eadf38a53..c4f56a869910 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -640,7 +640,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 
 	/* The master interrupt enable is in DEIER, reset display irq first */
-	ilk_display_irq_reset(display);
+	intel_display_irq_reset(display);
 	gen5_gt_irq_reset(to_gt(dev_priv));
 }
 
@@ -653,7 +653,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_reset(to_gt(dev_priv));
 
-	vlv_display_irq_reset(display);
+	intel_display_irq_reset(display);
 }
 
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
@@ -664,7 +664,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 	gen8_master_intr_disable(intel_uncore_regs(uncore));
 
 	gen8_gt_irq_reset(to_gt(dev_priv));
-	gen8_display_irq_reset(display);
+	intel_display_irq_reset(display);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 }
 
@@ -677,7 +677,7 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 	gen11_master_intr_disable(intel_uncore_regs(&dev_priv->uncore));
 
 	gen11_gt_irq_reset(gt);
-	gen11_display_irq_reset(display);
+	intel_display_irq_reset(display);
 
 	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
@@ -695,7 +695,7 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		gen11_gt_irq_reset(gt);
 
-	gen11_display_irq_reset(display);
+	intel_display_irq_reset(display);
 
 	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
@@ -715,7 +715,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
 
-	vlv_display_irq_reset(display);
+	intel_display_irq_reset(display);
 }
 
 static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
@@ -864,7 +864,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i9xx_display_irq_reset(display);
+	intel_display_irq_reset(display);
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
@@ -951,7 +951,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	struct intel_display *display = dev_priv->display;
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
-	i9xx_display_irq_reset(display);
+	intel_display_irq_reset(display);
 
 	gen2_error_reset(uncore, GEN2_ERROR_REGS);
 	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index aa73023b7398..ba3225878c61 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -236,7 +236,7 @@ void xe_display_irq_reset(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	gen11_display_irq_reset(display);
+	intel_display_irq_reset(display);
 }
 
 void xe_display_irq_postinstall(struct xe_device *xe)
-- 
2.47.3

