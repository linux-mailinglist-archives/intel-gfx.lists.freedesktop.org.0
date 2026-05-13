Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNUYJ1OjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0B8536DC3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF95310EF5D;
	Wed, 13 May 2026 16:14:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QenXDBEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD0E10EF58;
 Wed, 13 May 2026 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688848; x=1810224848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=45nXNdHCKegK/PcxgFqDTUWbV7uSveJEHrgCtGaJKAE=;
 b=QenXDBEEMig7NeOG1gaGUgBNYWmKIWGKsl7VWP1G2yvNDkAIuT1u7KM1
 KSrr2EO5Gja+rRUsFvfOtQ3oEGLT9Z7NemC1ybkBxX57OnLDSb0vn05de
 rysv8DAsxgSLcRxHJTinYJNW3PCfeAB+97+Sw2sGLWSjH5TihIo6AFG7K
 gKm22fwhZJJcbfFmnO5x/X0WWb1vwL6LDDF7YHHwcWeogCa3G/TK+7G5y
 E0j23T4n6wnUp+44TObzVeUU3Gub7NE451PwchsDB2Lk3uaDojyVTZKHz
 I1RvJ5jooETKiphGkTP1jdKNQ5igdijyJF3VyIqa8GseNXR6ERydVAC4h A==;
X-CSE-ConnectionGUID: FnG0forlQaGYrSqLcewZFQ==
X-CSE-MsgGUID: EoZgibO1TvmV/wCO/iSWFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="89928499"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="89928499"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:14:08 -0700
X-CSE-ConnectionGUID: bnMiTjoSSaSsfodOp7LtfQ==
X-CSE-MsgGUID: zKYPU8THTsWo/gqglB/VWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="233860879"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:14:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v4 8/8] drm/i915/irq: add intel_display_irq_handler() to irq
 funcs
Date: Wed, 13 May 2026 19:13:31 +0300
Message-ID: <d728f04a47532898c278ef208692ea173b446106.1778688699.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778688699.git.jani.nikula@intel.com>
References: <cover.1778688699.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 4F0B8536DC3
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

Call the platform specific display irq handler hooks via
intel_display_irq_handler().

v3: Pure vfunc change (Ville)

v2: Rebase, handle LPE audio in ack (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 40 +++++++++++++------
 .../gpu/drm/i915/display/intel_display_irq.h  |  8 +---
 drivers/gpu/drm/i915/i915_irq.c               | 16 ++++----
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 4 files changed, 38 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index c777b7f249c8..899a38c0a7b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1021,8 +1021,8 @@ void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u3
 		intel_de_write_fw(display, SDEIER, sde_ier);
 }
 
-bool ilk_display_irq_handler(struct intel_display *display,
-			     const struct intel_display_irq_state *state)
+static bool ilk_display_irq_handler(struct intel_display *display,
+				    const struct intel_display_irq_state *state)
 {
 	u32 de_iir;
 	bool handled = false;
@@ -1567,8 +1567,8 @@ static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 	}
 }
 
-bool gen8_display_irq_handler(struct intel_display *display,
-			      const struct intel_display_irq_state *state)
+static bool gen8_display_irq_handler(struct intel_display *display,
+				     const struct intel_display_irq_state *state)
 {
 	gen8_de_irq_handler(display, state->master_ctl);
 
@@ -1599,8 +1599,8 @@ void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir)
 		intel_opregion_asle_intr(display);
 }
 
-bool gen11_display_irq_handler(struct intel_display *display,
-			       const struct intel_display_irq_state *state)
+static bool gen11_display_irq_handler(struct intel_display *display,
+				      const struct intel_display_irq_state *state)
 {
 	u32 disp_ctl;
 
@@ -2033,8 +2033,8 @@ static void i9xx_display_irq_ack(struct intel_display *display,
 	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
 }
 
-bool i965_display_irq_handler(struct intel_display *display,
-			      const struct intel_display_irq_state *state)
+static bool i965_display_irq_handler(struct intel_display *display,
+				     const struct intel_display_irq_state *state)
 {
 	if (state->hotplug_status)
 		i9xx_hpd_irq_handler(display, state->hotplug_status);
@@ -2044,8 +2044,8 @@ bool i965_display_irq_handler(struct intel_display *display,
 	return true;
 }
 
-bool i915_display_irq_handler(struct intel_display *display,
-			      const struct intel_display_irq_state *state)
+static bool i915_display_irq_handler(struct intel_display *display,
+				     const struct intel_display_irq_state *state)
 {
 	if (state->hotplug_status)
 		i9xx_hpd_irq_handler(display, state->hotplug_status);
@@ -2136,8 +2136,8 @@ static void vlv_display_irq_ack(struct intel_display *display,
 		intel_lpe_audio_irq_handler(display);
 }
 
-bool vlv_display_irq_handler(struct intel_display *display,
-			     const struct intel_display_irq_state *state)
+static bool vlv_display_irq_handler(struct intel_display *display,
+				    const struct intel_display_irq_state *state)
 {
 	if (state->hotplug_status)
 		i9xx_hpd_irq_handler(display, state->hotplug_status);
@@ -2529,39 +2529,46 @@ struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 	void (*postinstall)(struct intel_display *display);
 	void (*ack)(struct intel_display *display, struct intel_display_irq_state *state);
+	bool (*handler)(struct intel_display *display, const struct intel_display_irq_state *state);
 };
 
 static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
 	.reset = gen11_display_irq_reset,
 	.postinstall = gen11_de_irq_postinstall,
+	.handler = gen11_display_irq_handler,
 };
 
 static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
 	.reset = gen8_display_irq_reset,
 	.postinstall = gen8_de_irq_postinstall,
+	.handler = gen8_display_irq_handler,
 };
 
 static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
 	.reset = vlv_display_irq_reset,
 	.postinstall = vlv_display_irq_postinstall,
 	.ack = vlv_display_irq_ack,
+	.handler = vlv_display_irq_handler,
 };
 
 static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
 	.reset = ilk_display_irq_reset,
 	.postinstall = ilk_de_irq_postinstall,
+	.handler = ilk_display_irq_handler,
 };
 
 static const struct intel_display_irq_funcs i965_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i965_display_irq_postinstall,
 	.ack = i9xx_display_irq_ack,
+	.handler = i965_display_irq_handler,
 };
 
 static const struct intel_display_irq_funcs i915_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i915_display_irq_postinstall,
 	.ack = i9xx_display_irq_ack,
+	.handler = i915_display_irq_handler,
 };
 
 void intel_display_irq_reset(struct intel_display *display)
@@ -2589,6 +2596,15 @@ void intel_display_irq_ack(struct intel_display *display,
 	display->irq.funcs->ack(display, state);
 }
 
+bool intel_display_irq_handler(struct intel_display *display,
+			       const struct intel_display_irq_state *state)
+{
+	if (!HAS_DISPLAY(display) || !display->irq.funcs->handler)
+		return true;
+
+	return display->irq.funcs->handler(display, state);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 876ee171d74a..a1227cee885a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -67,13 +67,7 @@ struct intel_display_irq_state {
 void intel_display_irq_reset(struct intel_display *display);
 void intel_display_irq_postinstall(struct intel_display *display);
 void intel_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
-
-bool ilk_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
-bool gen8_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
-bool gen11_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
-bool i965_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
-bool i915_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
-bool vlv_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool intel_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
 
 u32 i9xx_display_irq_enable_mask(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 321dc1e573cc..30ce462e92ab 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -285,7 +285,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
-		vlv_display_irq_handler(display, &state);
+		intel_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -350,7 +350,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
-		vlv_display_irq_handler(display, &state);
+		intel_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -397,7 +397,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
-	if (ilk_display_irq_handler(display, NULL))
+	if (intel_display_irq_handler(display, NULL))
 		ret = IRQ_HANDLED;
 
 	if (GRAPHICS_VER(i915) >= 6) {
@@ -463,7 +463,7 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 			.master_ctl = master_ctl,
 		};
 		disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-		gen8_display_irq_handler(display, &state);
+		intel_display_irq_handler(display, &state);
 		enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 	}
 
@@ -515,7 +515,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(display, NULL);
+		intel_display_irq_handler(display, NULL);
 
 	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
@@ -582,7 +582,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	gen11_gt_irq_handler(gt, master_ctl);
 
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(display, NULL);
+		intel_display_irq_handler(display, NULL);
 
 	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
@@ -886,7 +886,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		i915_display_irq_handler(display, &state);
+		intel_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -990,7 +990,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		i965_display_irq_handler(display, &state);
+		intel_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, IRQ_HANDLED);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c26e2f62542b..796164e9bc20 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -215,7 +215,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 		return;
 
 	if (master_ctl & DISPLAY_IRQ)
-		gen11_display_irq_handler(display, NULL);
+		intel_display_irq_handler(display, NULL);
 }
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
-- 
2.47.3

