Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPjPFUCjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6CF536D8F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A6010EF4D;
	Wed, 13 May 2026 16:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hjc87X7s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FA910EF34;
 Wed, 13 May 2026 16:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688829; x=1810224829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aGIMefdqtkFSUOo7rRjx3BYhEzTI0X2IOzpxVAep0C4=;
 b=Hjc87X7slB6vHx8YgHarqtLZhPdbd2hWUGF6/q9GQhYoGhxCS/oiFM72
 fPMS3SZxM73wkrOoFVKAFxSJbv/oMm5bmDN9tzvsmpz48B2piYd0tOvjj
 KHjxncPPxVkL36PJgGKK3M2hX77pPiQIHJYByJdOgoXzqAbyekw4SJBZ8
 49W7eCM6VYoviUMMrjYD33HfuG8W5RNO06/WVTvk5sNnA+QYJbkxoIDcS
 UiBSY/byYk7vH+Obn0UYeScXrkk3/vi9IdWB+41tH6RiSE+W7UIcPe0/b
 LugtDh1OodqN062JlKSbzxmmXsYOahlBtDfEh9+od3wKy/qjswwFxqsN6 Q==;
X-CSE-ConnectionGUID: HKFzfnCQQLWfN8leZ7Jgow==
X-CSE-MsgGUID: fT3Ds+x9QemjjBCJI/pmzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79517157"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79517157"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:49 -0700
X-CSE-ConnectionGUID: yw78Q2mRTWa0hnT92XdskA==
X-CSE-MsgGUID: IIREJ6JfRtO3Ni8hxbMTJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="261631773"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v4 3/8] drm/i915/irq: add display irq funcs,
 start with intel_display_irq_reset()
Date: Wed, 13 May 2026 19:13:26 +0300
Message-ID: <f9d75e8af92b5550a9d07f29491be5313b7c866b.1778688699.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: CD6CF536D8F
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
index c656d59c7571..27599a303843 100644
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

