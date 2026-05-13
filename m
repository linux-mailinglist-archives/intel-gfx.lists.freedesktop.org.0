Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIk9BUyjBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E10A536DB5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7781810EF34;
	Wed, 13 May 2026 16:14:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRFz6pfi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26AED10EF34;
 Wed, 13 May 2026 16:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688840; x=1810224840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u6zvixudLUQ6hWKL2UCuMJhx96BBcKAEhEhZOyVDlN0=;
 b=kRFz6pfiqe/8oMNa+K7YuiGH6wQHSwoJ/3oJL4rsvHxznoipLkK8ba2A
 EdZGFH3gz/tRg7Ny6pYC7Wb1urEJE+feU5Slz/lYGLm63ETG7OltPfaRr
 M2/XrQPkKfaCB3XZCTu+YQQUQo+novWzJSp7dKRBZOYePnP+fCw3pOp55
 cYKK36tgoOWlicl+9/Udx96ROVyIn2gUFLGserBKbYucuvXjG3k/3FvH+
 zzvlvYMMgKY/gZj63W9gqGFkcEdHNK3pNouAnQ5V57ARRqpaupwK1VuxE
 BY+6zC60uWFk+gWeZjy/l97L0ry6Rg1liFJdQb3rri9ThQStiZsQv5nb/ g==;
X-CSE-ConnectionGUID: Z8zMQvOnSVybPkqTgXew9Q==
X-CSE-MsgGUID: hcE9jV/ZQJeZdw8KxlvSAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79517162"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79517162"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:14:00 -0700
X-CSE-ConnectionGUID: lcJJd2WaQ/aLCp/Gxuf+bg==
X-CSE-MsgGUID: 7RzXrg4MSlOG8+ZXKoU6ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="261631905"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:13:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v4 6/8] drm/i915/irq: add platform specific display irq
 handler functions
Date: Wed, 13 May 2026 19:13:29 +0300
Message-ID: <5088a9a658ce9a57049c999ee2ebababd7536b6c.1778688699.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 7E10A536DB5
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

Add a number of *_display_irq_handler() functions to group together the
various display irq handler parts for the platforms, to declutter the
core i915 irq code from the details.

Add master_ctl to struct intel_display_irq_state, and pass the state
pointer to the handlers where necessary. The handler function signatures
are intentionally the same to allow for more refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 70 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_display_irq.h  | 17 +++--
 drivers/gpu/drm/i915/i915_irq.c               | 38 +++-------
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +-
 4 files changed, 79 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5eefb7e093c4..672fd4f245ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -597,8 +597,8 @@ static void i9xx_pipestat_irq_ack(struct intel_display *display,
 	spin_unlock(&display->irq.lock);
 }
 
-void i915_pipestat_irq_handler(struct intel_display *display,
-			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
+static void i915_pipestat_irq_handler(struct intel_display *display,
+				      u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
 {
 	bool blc_event = false;
 	enum pipe pipe;
@@ -621,8 +621,8 @@ void i915_pipestat_irq_handler(struct intel_display *display,
 		intel_opregion_asle_intr(display);
 }
 
-void i965_pipestat_irq_handler(struct intel_display *display,
-			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
+static void i965_pipestat_irq_handler(struct intel_display *display,
+				      u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
 {
 	bool blc_event = false;
 	enum pipe pipe;
@@ -648,8 +648,8 @@ void i965_pipestat_irq_handler(struct intel_display *display,
 		intel_gmbus_irq_handler(display);
 }
 
-void valleyview_pipestat_irq_handler(struct intel_display *display,
-				     const u32 pipe_stats[I915_MAX_PIPES])
+static void valleyview_pipestat_irq_handler(struct intel_display *display,
+					    const u32 pipe_stats[I915_MAX_PIPES])
 {
 	enum pipe pipe;
 
@@ -1021,7 +1021,8 @@ void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u3
 		intel_de_write_fw(display, SDEIER, sde_ier);
 }
 
-bool ilk_display_irq_handler(struct intel_display *display)
+bool ilk_display_irq_handler(struct intel_display *display,
+			     const struct intel_display_irq_state *state)
 {
 	u32 de_iir;
 	bool handled = false;
@@ -1405,7 +1406,7 @@ static void gen8_read_and_ack_pch_irqs(struct intel_display *display, u32 *pch_i
 		intel_de_write(display, PICAINTERRUPT_IER, pica_ier);
 }
 
-void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
+static void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 {
 	u32 iir;
 	enum pipe pipe;
@@ -1566,6 +1567,14 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 	}
 }
 
+bool gen8_display_irq_handler(struct intel_display *display,
+			      const struct intel_display_irq_state *state)
+{
+	gen8_de_irq_handler(display, state->master_ctl);
+
+	return true;
+}
+
 u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl)
 {
 	u32 iir;
@@ -1590,7 +1599,8 @@ void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir)
 		intel_opregion_asle_intr(display);
 }
 
-void gen11_display_irq_handler(struct intel_display *display)
+bool gen11_display_irq_handler(struct intel_display *display,
+			       const struct intel_display_irq_state *state)
 {
 	u32 disp_ctl;
 
@@ -1606,6 +1616,8 @@ void gen11_display_irq_handler(struct intel_display *display)
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 
 	intel_display_rpm_assert_unblock(display);
+
+	return true;
 }
 
 static void i915gm_irq_cstate_wa_enable(struct intel_display *display)
@@ -1921,8 +1933,8 @@ static void vlv_display_error_irq_ack(struct intel_display *display,
 	intel_de_write(display, VLV_EMR, emr);
 }
 
-void vlv_display_error_irq_handler(struct intel_display *display,
-				   u32 eir, u32 dpinvgtt)
+static void vlv_display_error_irq_handler(struct intel_display *display,
+					  u32 eir, u32 dpinvgtt)
 {
 	drm_dbg(display->drm, "Master Error, EIR 0x%08x\n", eir);
 
@@ -2021,6 +2033,28 @@ void i9xx_display_irq_ack(struct intel_display *display,
 	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
 }
 
+bool i965_display_irq_handler(struct intel_display *display,
+			      const struct intel_display_irq_state *state)
+{
+	if (state->hotplug_status)
+		i9xx_hpd_irq_handler(display, state->hotplug_status);
+
+	i965_pipestat_irq_handler(display, state->iir, state->pipe_stats);
+
+	return true;
+}
+
+bool i915_display_irq_handler(struct intel_display *display,
+			      const struct intel_display_irq_state *state)
+{
+	if (state->hotplug_status)
+		i9xx_hpd_irq_handler(display, state->hotplug_status);
+
+	i915_pipestat_irq_handler(display, state->iir, state->pipe_stats);
+
+	return true;
+}
+
 static u32 vlv_error_mask(void)
 {
 	/* TODO enable other errors too? */
@@ -2102,6 +2136,20 @@ void vlv_display_irq_ack(struct intel_display *display,
 		intel_lpe_audio_irq_handler(display);
 }
 
+bool vlv_display_irq_handler(struct intel_display *display,
+			     const struct intel_display_irq_state *state)
+{
+	if (state->hotplug_status)
+		i9xx_hpd_irq_handler(display, state->hotplug_status);
+
+	if (state->iir & I915_MASTER_ERROR_INTERRUPT)
+		vlv_display_error_irq_handler(display, state->eir, state->dpinvgtt);
+
+	valleyview_pipestat_irq_handler(display, state->pipe_stats);
+
+	return true;
+}
+
 static void ibx_display_irq_reset(struct intel_display *display)
 {
 	if (HAS_PCH_NOP(display))
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 8d4ea53bb9db..59ec673ffc9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -51,14 +51,12 @@ void bdw_disable_vblank(struct drm_crtc *crtc);
 
 void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
 void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier);
-bool ilk_display_irq_handler(struct intel_display *display);
-void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
-void gen11_display_irq_handler(struct intel_display *display);
 
 u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
 struct intel_display_irq_state {
+	u32 master_ctl;
 	u32 iir;
 	u32 eir;
 	u32 hotplug_status;
@@ -72,18 +70,19 @@ void intel_display_irq_postinstall(struct intel_display *display);
 void vlv_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
 void i9xx_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
 
+bool ilk_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool gen8_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool gen11_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool i965_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool i915_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+bool vlv_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
+
 u32 i9xx_display_irq_enable_mask(struct intel_display *display);
 
 u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
 
-void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
-void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
-void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
-
-void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
-
 void intel_display_irq_init(struct intel_display *display);
 
 void i915gm_irq_cstate_wa(struct intel_display *display, bool enable);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 9022e32156a5..0d0ee2c43f00 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -38,7 +38,6 @@
 
 #include "display/intel_display_irq.h"
 #include "display/intel_hotplug.h"
-#include "display/intel_hotplug_irq.h"
 
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_gt.h"
@@ -286,13 +285,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
-		if (state.hotplug_status)
-			i9xx_hpd_irq_handler(display, state.hotplug_status);
-
-		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
-
-		valleyview_pipestat_irq_handler(display, state.pipe_stats);
+		vlv_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -357,13 +350,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
-		if (state.hotplug_status)
-			i9xx_hpd_irq_handler(display, state.hotplug_status);
-
-		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
-
-		valleyview_pipestat_irq_handler(display, state.pipe_stats);
+		vlv_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -410,7 +397,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		ret = IRQ_HANDLED;
 	}
 
-	if (ilk_display_irq_handler(display))
+	if (ilk_display_irq_handler(display, NULL))
 		ret = IRQ_HANDLED;
 
 	if (GRAPHICS_VER(i915) >= 6) {
@@ -472,8 +459,11 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & ~GEN8_GT_IRQS) {
+		const struct intel_display_irq_state state = {
+			.master_ctl = master_ctl,
+		};
 		disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-		gen8_de_irq_handler(display, master_ctl);
+		gen8_display_irq_handler(display, &state);
 		enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 	}
 
@@ -525,7 +515,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(display);
+		gen11_display_irq_handler(display, NULL);
 
 	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
@@ -592,7 +582,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
 	gen11_gt_irq_handler(gt, master_ctl);
 
 	if (master_ctl & GEN11_DISPLAY_IRQ)
-		gen11_display_irq_handler(display);
+		gen11_display_irq_handler(display, NULL);
 
 	gu_misc_iir = gen11_gu_misc_irq_ack(display, master_ctl);
 
@@ -896,10 +886,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		if (state.hotplug_status)
-			i9xx_hpd_irq_handler(display, state.hotplug_status);
-
-		i915_pipestat_irq_handler(display, state.iir, state.pipe_stats);
+		i915_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -1003,10 +990,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		if (state.hotplug_status)
-			i9xx_hpd_irq_handler(display, state.hotplug_status);
-
-		i965_pipestat_irq_handler(display, state.iir, state.pipe_stats);
+		i965_display_irq_handler(display, &state);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, IRQ_HANDLED);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 62e5d38938eb..c26e2f62542b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -215,7 +215,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 		return;
 
 	if (master_ctl & DISPLAY_IRQ)
-		gen11_display_irq_handler(display);
+		gen11_display_irq_handler(display, NULL);
 }
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
-- 
2.47.3

