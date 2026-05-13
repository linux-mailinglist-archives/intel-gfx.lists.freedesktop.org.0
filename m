Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGgJGU6jBGogMQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F62536DBC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 18:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94BC010EF57;
	Wed, 13 May 2026 16:14:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dqvCXxw2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEA010EF57;
 Wed, 13 May 2026 16:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778688844; x=1810224844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tq8JWwADxUPjdkljFyCoIQwXky0NA5W08c0YLuDpFAY=;
 b=dqvCXxw2cjBzwWPUR9AWFTzgRn44MbTBO1E4gnBD1bWU4dhA036pzza/
 GBP1TVUnn27GrOtSuw1oCHqZGNzpIx0lkMbFJ/3ahyV9Va+YAWo5vz8kR
 O9wEj+g03cpz2zKeux7hIHVc31V3EnvjpRt2iK2sigzjYnv6OGiA4XlXI
 Bpgs5TAIkyFT7W6ILW18wr2jUdwbdSniJFTaweU9V3MpM66nYL+7mS9m+
 Iuz8D/kURqJMczZcI1uClWpD7ghLEScLXdoeDcifXtltCN8KkOHu3Va1J
 Z85twlv02uBp7qD6sPrf8eyk8wik5QM+p5wDC4eC2iQachrpE+Z2C/QI6 g==;
X-CSE-ConnectionGUID: iF8fT4nIRdazmxZpWPT+5A==
X-CSE-MsgGUID: Yu9Q27dHS1Cq4MNy81fOGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79517169"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="79517169"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:14:04 -0700
X-CSE-ConnectionGUID: PkXHOSmtTmaltQhdVOxcSQ==
X-CSE-MsgGUID: 8IdzdtfoQ/67wEW7VGQP9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="261631951"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.124])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 09:14:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v4 7/8] drm/i915/irq: add intel_display_irq_ack() to irq funcs
Date: Wed, 13 May 2026 19:13:30 +0300
Message-ID: <a72974d66f7696ca35380b44f13f938b2d4d690d.1778688699.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 13F62536DBC
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

Call the platform specific display irq ack hooks, if any, via
intel_display_irq_ack().

Check for HAS_DISPLAY() in intel_display_irq_ack() for completeness even
though fusing is not possible on the platforms in question.

v3:
- Pure vfunc change (Ville)

v2:
- Include LPE audio in the ack part
- Check for HAS_DISPLAY()

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 21 +++++++++++++++----
 .../gpu/drm/i915/display/intel_display_irq.h  |  4 +---
 drivers/gpu/drm/i915/i915_irq.c               |  8 +++----
 3 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 672fd4f245ff..c777b7f249c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2023,8 +2023,8 @@ static void i965_display_irq_postinstall(struct intel_display *display)
 	i915_enable_asle_pipestat(display);
 }
 
-void i9xx_display_irq_ack(struct intel_display *display,
-			  struct intel_display_irq_state *state)
+static void i9xx_display_irq_ack(struct intel_display *display,
+				 struct intel_display_irq_state *state)
 {
 	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
 		state->hotplug_status = i9xx_hpd_irq_ack(display);
@@ -2119,8 +2119,8 @@ static u32 vlv_lpe_irq_mask(struct intel_display *display)
 		return I915_LPE_PIPE_A_INTERRUPT | I915_LPE_PIPE_B_INTERRUPT;
 }
 
-void vlv_display_irq_ack(struct intel_display *display,
-			 struct intel_display_irq_state *state)
+static void vlv_display_irq_ack(struct intel_display *display,
+				struct intel_display_irq_state *state)
 {
 	if (state->iir & I915_DISPLAY_PORT_INTERRUPT)
 		state->hotplug_status = i9xx_hpd_irq_ack(display);
@@ -2528,6 +2528,7 @@ static void gen11_de_irq_postinstall(struct intel_display *display)
 struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 	void (*postinstall)(struct intel_display *display);
+	void (*ack)(struct intel_display *display, struct intel_display_irq_state *state);
 };
 
 static const struct intel_display_irq_funcs gen11_display_irq_funcs = {
@@ -2543,6 +2544,7 @@ static const struct intel_display_irq_funcs gen8_display_irq_funcs = {
 static const struct intel_display_irq_funcs vlv_display_irq_funcs = {
 	.reset = vlv_display_irq_reset,
 	.postinstall = vlv_display_irq_postinstall,
+	.ack = vlv_display_irq_ack,
 };
 
 static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
@@ -2553,11 +2555,13 @@ static const struct intel_display_irq_funcs ilk_display_irq_funcs = {
 static const struct intel_display_irq_funcs i965_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i965_display_irq_postinstall,
+	.ack = i9xx_display_irq_ack,
 };
 
 static const struct intel_display_irq_funcs i915_display_irq_funcs = {
 	.reset = i9xx_display_irq_reset,
 	.postinstall = i915_display_irq_postinstall,
+	.ack = i9xx_display_irq_ack,
 };
 
 void intel_display_irq_reset(struct intel_display *display)
@@ -2576,6 +2580,15 @@ void intel_display_irq_postinstall(struct intel_display *display)
 	display->irq.funcs->postinstall(display);
 }
 
+void intel_display_irq_ack(struct intel_display *display,
+			   struct intel_display_irq_state *state)
+{
+	if (!HAS_DISPLAY(display) || !display->irq.funcs->ack)
+		return;
+
+	display->irq.funcs->ack(display, state);
+}
+
 void intel_display_irq_init(struct intel_display *display)
 {
 	spin_lock_init(&display->irq.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 59ec673ffc9b..876ee171d74a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -66,9 +66,7 @@ struct intel_display_irq_state {
 
 void intel_display_irq_reset(struct intel_display *display);
 void intel_display_irq_postinstall(struct intel_display *display);
-
-void vlv_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
-void i9xx_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
+void intel_display_irq_ack(struct intel_display *display, struct intel_display_irq_state *state);
 
 bool ilk_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
 bool gen8_display_irq_handler(struct intel_display *display, const struct intel_display_irq_state *state);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 0d0ee2c43f00..321dc1e573cc 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -268,7 +268,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR, pm_iir);
 
-		vlv_display_irq_ack(display, &state);
+		intel_display_irq_ack(display, &state);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
@@ -338,7 +338,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 
 		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
-		vlv_display_irq_ack(display, &state);
+		intel_display_irq_ack(display, &state);
 
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
@@ -873,7 +873,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 
 		ret = IRQ_HANDLED;
 
-		i9xx_display_irq_ack(display, &state);
+		intel_display_irq_ack(display, &state);
 
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
@@ -972,7 +972,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 
 		ret = IRQ_HANDLED;
 
-		i9xx_display_irq_ack(display, &state);
+		intel_display_irq_ack(display, &state);
 
 		if (state.iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
-- 
2.47.3

