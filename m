Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNwYLcDc8WnvkwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A94492D50
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97A210EF7F;
	Wed, 29 Apr 2026 10:26:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGhd1A41";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3E110EF66;
 Wed, 29 Apr 2026 10:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777458360; x=1808994360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2S7+B/9d6HCV8D9VWfirPzGmCPHD2RZxbTgdmIF2N0Y=;
 b=JGhd1A41xGGeSxmqBDP/DLOuGI4x6mE64u2/sGIpWW+4Umy9v6mDAih2
 cDafxVlsyBCKzjGQH9guOSZ6OigYVUXk2vKc2qbTwZ5L9U8qTcbW7razp
 g4rlY9iDjYEHItm5HQu+n6rDXK3P3xsLC9q0vdpRNQpvWDCDsdv8H5N0W
 UcRvb1N5XMIWSvyxBuGscYKj+sBvySMsMQ+hYpboltkTLCfhTrLRmDchX
 fFjdOOC+tWtl4u8O6Y1sG3twFiaA1zQ0oAnt2On4BO24nFxg9zC/K2Qt4
 VAspwI2po31/+psghLH1DX3FGIEuyfmGqgtjaES4X6K2GWUFd+Qtjfdpl w==;
X-CSE-ConnectionGUID: VVeMu3X3QWGNiESTyYGAyA==
X-CSE-MsgGUID: T689NyBhQ3utJQdUCRR8Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103838216"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103838216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:26:00 -0700
X-CSE-ConnectionGUID: 8W/B8r1DSAm1L95jkPNvVA==
X-CSE-MsgGUID: GPTW0rjTTJS84CU5w2bZ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257784446"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/15] drm/i915/irq: add intel_display_irq_ack() to irq funcs
Date: Wed, 29 Apr 2026 13:24:54 +0300
Message-ID: <c06db55ca3003fb92c5c0631e03253849863c188.1777458161.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 36A94492D50
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

Some platforms have a separate step for acking display irqs. Call the
platform specific display irq ack hooks, if any, via
intel_display_irq_ack().

Introduce struct intel_display_irq_state to group together all the data
the ack hooks need. In the follow-up, this state will be passed on to a
shared handler function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  42 ++++-
 .../gpu/drm/i915/display/intel_display_irq.h  |  12 +-
 drivers/gpu/drm/i915/i915_irq.c               | 144 +++++++-----------
 3 files changed, 102 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6ba094a0df66..662081e274bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -529,8 +529,8 @@ static void i9xx_pipestat_irq_reset(struct intel_display *display)
 	}
 }
 
-void i9xx_pipestat_irq_ack(struct intel_display *display,
-			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
+static void i9xx_pipestat_irq_ack(struct intel_display *display,
+				  u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
 	enum pipe pipe;
 
@@ -1898,8 +1898,8 @@ static void vlv_page_table_error_irq_handler(struct intel_display *display, u32
 	}
 }
 
-void vlv_display_error_irq_ack(struct intel_display *display,
-			       u32 *eir, u32 *dpinvgtt)
+static void vlv_display_error_irq_ack(struct intel_display *display,
+				      u32 *eir, u32 *dpinvgtt)
 {
 	u32 emr;
 
@@ -2010,6 +2010,16 @@ static void i965_display_irq_postinstall(struct intel_display *display)
 	i915_enable_asle_pipestat(display);
 }
 
+static void i9xx_display_irq_ack(struct intel_display *display,
+				 struct intel_display_irq_state *state)
+{
+	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
+		state->hotplug_status = i9xx_hpd_irq_ack(display);
+
+	/* Call regardless, as some status bits might not be signalled in IIR */
+	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
+}
+
 static u32 vlv_error_mask(void)
 {
 	/* TODO enable other errors too? */
@@ -2065,6 +2075,19 @@ static void vlv_display_irq_postinstall(struct intel_display *display)
 	spin_unlock_irq(&display->irq.lock);
 }
 
+static void vlv_display_irq_ack(struct intel_display *display,
+				struct intel_display_irq_state *state)
+{
+	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
+		state->hotplug_status = i9xx_hpd_irq_ack(display);
+
+	if (state->iir & I915_MASTER_ERROR_INTERRUPT)
+		vlv_display_error_irq_ack(display, &state->eir, &state->dpinvgtt);
+
+	/* Call regardless, as some status bits might not be signalled in IIR */
+	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
+}
+
 static void ibx_display_irq_reset(struct intel_display *display)
 {
 	if (HAS_PCH_NOP(display))
@@ -2452,6 +2475,7 @@ static void gen11_de_irq_postinstall(struct intel_display *display)
 struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 	void (*postinstall)(struct intel_display *display);
+	void (*ack)(struct intel_display *display, struct intel_display_irq_state *state);
 };
 
 struct intel_display_irq_funcs gen11_display_irq_funcs = {
@@ -2467,6 +2491,7 @@ struct intel_display_irq_funcs gen8_display_irq_funcs = {
 struct intel_display_irq_funcs vlv_display_irq_funcs = {
 	.reset = vlv_display_irq_reset,
 	.postinstall = vlv_display_irq_postinstall,
+	.ack = vlv_display_irq_ack,
 };
 
 struct intel_display_irq_funcs ilk_display_irq_funcs = {
@@ -2477,11 +2502,13 @@ struct intel_display_irq_funcs ilk_display_irq_funcs = {
 struct intel_display_irq_funcs i965_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i965_display_irq_postinstall,
+	.ack = i9xx_display_irq_ack,
 };
 
 struct intel_display_irq_funcs i915_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i915_display_irq_postinstall,
+	.ack = i9xx_display_irq_ack,
 };
 
 void intel_display_irq_reset(struct intel_display *display)
@@ -2494,6 +2521,13 @@ void intel_display_irq_postinstall(struct intel_display *display)
 	display->irq.funcs->postinstall(display);
 }
 
+void intel_display_irq_ack(struct intel_display *display,
+			   struct intel_display_irq_state *state)
+{
+	if (display->irq.funcs->ack)
+		display->irq.funcs->ack(display, state);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index fd9873ce9755..3773a31e48f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -58,8 +58,17 @@ void gen11_display_irq_handler(struct intel_display *display);
 u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
 void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
 
+struct intel_display_irq_state {
+	u32 iir;
+	u32 eir;
+	u32 hotplug_status;
+	u32 dpinvgtt;
+	u32 pipe_stats[I915_MAX_PIPES];
+};
+
 void intel_display_irq_reset(struct intel_display *display);
 void intel_display_irq_postinstall(struct intel_display *display);
+void intel_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
 
 u32 i9xx_display_irq_enable_mask(struct intel_display *display);
 
@@ -67,13 +76,10 @@ u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
 
-void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
-
 void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
 void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
 void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
 
-void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
 void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
 
 void intel_display_irq_init(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7ffa0e8c5608..bb65ce9d09b2 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -236,17 +236,15 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	do {
-		u32 iir, gt_iir, pm_iir;
-		u32 eir = 0, dpinvgtt = 0;
-		u32 pipe_stats[I915_MAX_PIPES] = {};
-		u32 hotplug_status = 0;
+		struct intel_display_irq_state state = {};
+		u32 gt_iir, pm_iir;
 		u32 ier = 0;
 
 		gt_iir = intel_uncore_read(&dev_priv->uncore, GTIIR);
 		pm_iir = intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR);
-		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
+		state.iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
 
-		if (gt_iir == 0 && pm_iir == 0 && iir == 0)
+		if (gt_iir == 0 && pm_iir == 0 && state.iir == 0)
 			break;
 
 		ret = IRQ_HANDLED;
@@ -272,22 +270,14 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR, pm_iir);
 
-		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(display);
-
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
-
-		/* Call regardless, as some status bits might not be
-		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
+		intel_display_irq_ack(display, &state);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
 		 */
-		if (iir)
-			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
+		if (state.iir)
+			intel_uncore_write(&dev_priv->uncore, VLV_IIR, state.iir);
 
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
 		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
@@ -297,17 +287,17 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
-		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
-			   I915_LPE_PIPE_B_INTERRUPT))
+		if (state.iir & (I915_LPE_PIPE_A_INTERRUPT |
+				 I915_LPE_PIPE_B_INTERRUPT))
 			intel_lpe_audio_irq_handler(display);
 
-		if (hotplug_status)
-			i9xx_hpd_irq_handler(display, hotplug_status);
+		if (state.hotplug_status)
+			i9xx_hpd_irq_handler(display, state.hotplug_status);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_handler(display, eir, dpinvgtt);
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
 
-		valleyview_pipestat_irq_handler(display, pipe_stats);
+		valleyview_pipestat_irq_handler(display, state.pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -330,16 +320,14 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	do {
-		u32 master_ctl, iir;
-		u32 eir = 0, dpinvgtt = 0;
-		u32 pipe_stats[I915_MAX_PIPES] = {};
-		u32 hotplug_status = 0;
+		struct intel_display_irq_state state = {};
+		u32 master_ctl;
 		u32 ier = 0;
 
 		master_ctl = intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ) & ~GEN8_MASTER_IRQ_CONTROL;
-		iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
+		state.iir = intel_uncore_read(&dev_priv->uncore, VLV_IIR);
 
-		if (master_ctl == 0 && iir == 0)
+		if (master_ctl == 0 && state.iir == 0)
 			break;
 
 		ret = IRQ_HANDLED;
@@ -362,38 +350,30 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 
 		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
-		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(display);
-
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
-
-		/* Call regardless, as some status bits might not be
-		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
+		intel_display_irq_ack(display, &state);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
 		 */
-		if (iir)
-			intel_uncore_write(&dev_priv->uncore, VLV_IIR, iir);
+		if (state.iir)
+			intel_uncore_write(&dev_priv->uncore, VLV_IIR, state.iir);
 
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
-		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
-			   I915_LPE_PIPE_B_INTERRUPT |
-			   I915_LPE_PIPE_C_INTERRUPT))
+		if (state.iir & (I915_LPE_PIPE_A_INTERRUPT |
+				 I915_LPE_PIPE_B_INTERRUPT |
+				 I915_LPE_PIPE_C_INTERRUPT))
 			intel_lpe_audio_irq_handler(display);
 
-		if (hotplug_status)
-			i9xx_hpd_irq_handler(display, hotplug_status);
+		if (state.hotplug_status)
+			i9xx_hpd_irq_handler(display, state.hotplug_status);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			vlv_display_error_irq_handler(display, eir, dpinvgtt);
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
+			vlv_display_error_irq_handler(display, state.eir, state.dpinvgtt);
 
-		valleyview_pipestat_irq_handler(display, pipe_stats);
+		valleyview_pipestat_irq_handler(display, state.pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -904,39 +884,32 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	do {
-		u32 pipe_stats[I915_MAX_PIPES] = {};
+		struct intel_display_irq_state state = {};
 		u32 eir = 0, eir_stuck = 0;
-		u32 hotplug_status = 0;
-		u32 iir;
 
-		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
-		if (iir == 0)
+		state.iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
+		if (state.iir == 0)
 			break;
 
 		ret = IRQ_HANDLED;
 
-		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(display);
-
-		/* Call regardless, as some status bits might not be
-		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
+		intel_display_irq_ack(display, &state);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
 
-		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
+		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, state.iir);
 
-		if (iir & I915_USER_INTERRUPT)
-			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], iir);
+		if (state.iir & I915_USER_INTERRUPT)
+			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], state.iir);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		if (hotplug_status)
-			i9xx_hpd_irq_handler(display, hotplug_status);
+		if (state.hotplug_status)
+			i9xx_hpd_irq_handler(display, state.hotplug_status);
 
-		i915_pipestat_irq_handler(display, iir, pipe_stats);
+		i915_pipestat_irq_handler(display, state.iir, state.pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, ret);
@@ -1013,44 +986,37 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	do {
-		u32 pipe_stats[I915_MAX_PIPES] = {};
+		struct intel_display_irq_state state = {};
 		u32 eir = 0, eir_stuck = 0;
-		u32 hotplug_status = 0;
-		u32 iir;
 
-		iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
-		if (iir == 0)
+		state.iir = intel_uncore_read(&dev_priv->uncore, GEN2_IIR);
+		if (state.iir == 0)
 			break;
 
 		ret = IRQ_HANDLED;
 
-		if (iir & I915_DISPLAY_PORT_INTERRUPT)
-			hotplug_status = i9xx_hpd_irq_ack(display);
-
-		/* Call regardless, as some status bits might not be
-		 * signalled in IIR */
-		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
+		intel_display_irq_ack(display, &state);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
 
-		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
+		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, state.iir);
 
-		if (iir & I915_USER_INTERRUPT)
+		if (state.iir & I915_USER_INTERRUPT)
 			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0],
-					    iir);
+					    state.iir);
 
-		if (iir & I915_BSD_USER_INTERRUPT)
+		if (state.iir & I915_BSD_USER_INTERRUPT)
 			intel_engine_cs_irq(to_gt(dev_priv)->engine[VCS0],
-					    iir >> 25);
+					    state.iir >> 25);
 
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
+		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
 
-		if (hotplug_status)
-			i9xx_hpd_irq_handler(display, hotplug_status);
+		if (state.hotplug_status)
+			i9xx_hpd_irq_handler(display, state.hotplug_status);
 
-		i965_pipestat_irq_handler(display, iir, pipe_stats);
+		i965_pipestat_irq_handler(display, state.iir, state.pipe_stats);
 	} while (0);
 
 	pmu_irq_stats(dev_priv, IRQ_HANDLED);
-- 
2.47.3

