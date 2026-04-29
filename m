Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEO3A7fc8WnKkwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99884492D1C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2386510EF63;
	Wed, 29 Apr 2026 10:25:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jx+8rKzO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010FF10EF66;
 Wed, 29 Apr 2026 10:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777458351; x=1808994351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D35mjxNP39rvvRMNvs8+1Vs1ovQphvighch9B0BzYKY=;
 b=Jx+8rKzOMjuq9xg2dzkz6OAWFPAO/mYyfz9tOHbAtzmqY4rUDAKuydWF
 DXiR8DkZ0ONAC6FGXtKb1C7rQNOLVWp2U/ywTvQsCz04eg8wQfjdi6BsJ
 yxD7/btP/nXtJfy83QQ+qHVnaARGCcZ8FmiIps1AvN2AbDMQlcsoLp44s
 APrEpLi/vr7l6CCWznpTNdE0DFj8+Qz7uhOFFV1tPLS1NKr7ugA0NSWuG
 5v6mG0NtbVK8ojs819IrihiOYDZT3gVZIdQax3K0uXDOVJxqK3lwlTaSm
 W8p5Wh5ZgRfx6XTF11dbRUlam64K704/UBY3TzBTAKVXkrqryOT71EZg5 w==;
X-CSE-ConnectionGUID: Cdi3g4kGQaaSlJVvxMargQ==
X-CSE-MsgGUID: hkdCO6UDTZqkSGQ7knEE5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103838203"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103838203"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:51 -0700
X-CSE-ConnectionGUID: NKz/l9GWS1aWAw+giyd+ig==
X-CSE-MsgGUID: rSqWdsU/QSWTwLiHwKt1AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257784223"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/15] drm/i915/irq: add display irq funcs,
 start with intel_display_irq_reset()
Date: Wed, 29 Apr 2026 13:24:52 +0300
Message-ID: <990673d0f94ebeed87a676b5b04b2eed0563d18a.1777458161.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777458161.git.jani.nikula@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 99884492D1C
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Introduce display irq hooks with struct intel_display_irq_funcs, and add
the ->reset hook as the first thing. Call the reset hooks from i915 and
xe core via intel_display_irq_reset().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../gpu/drm/i915/display/intel_display_irq.c  | 52 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_display_irq.h  |  6 +--
 drivers/gpu/drm/i915/i915_irq.c               | 16 +++---
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 5 files changed, 60 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 796517e7bc6c..7bc2ff11b658 100644
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
index d30b063714b0..7505652257d8 100644
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
@@ -2092,7 +2092,7 @@ void ilk_display_irq_reset(struct intel_display *display)
 	ibx_display_irq_reset(display);
 }
 
-void gen8_display_irq_reset(struct intel_display *display)
+static void gen8_display_irq_reset(struct intel_display *display)
 {
 	enum pipe pipe;
 
@@ -2114,7 +2114,7 @@ void gen8_display_irq_reset(struct intel_display *display)
 		ibx_display_irq_reset(display);
 }
 
-void gen11_display_irq_reset(struct intel_display *display)
+static void gen11_display_irq_reset(struct intel_display *display)
 {
 	enum pipe pipe;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
@@ -2453,6 +2453,35 @@ struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 };
 
+struct intel_display_irq_funcs gen11_display_irq_funcs = {
+	.reset = gen11_display_irq_reset,
+};
+
+struct intel_display_irq_funcs gen8_display_irq_funcs = {
+	.reset = gen8_display_irq_reset,
+};
+
+struct intel_display_irq_funcs vlv_display_irq_funcs = {
+	.reset = vlv_display_irq_reset,
+};
+
+struct intel_display_irq_funcs ilk_display_irq_funcs = {
+	.reset = ilk_display_irq_reset,
+};
+
+struct intel_display_irq_funcs i965_display_irq_funcs = {
+	.reset = i9xx_display_irq_reset,
+};
+
+struct intel_display_irq_funcs i915_display_irq_funcs = {
+	.reset = i9xx_display_irq_reset,
+};
+
+void intel_display_irq_reset(struct intel_display *display)
+{
+	display->irq.funcs->reset(display);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
@@ -2463,6 +2492,19 @@ void intel_display_irq_init(struct intel_display *display)
 
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
index 1c87f56d668d..7e0ec9294d70 100644
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
index 0747044f7c2a..d6a4546fbe94 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -235,7 +235,7 @@ void xe_display_irq_reset(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	gen11_display_irq_reset(display);
+	intel_display_irq_reset(display);
 }
 
 void xe_display_irq_postinstall(struct xe_device *xe)
-- 
2.47.3

