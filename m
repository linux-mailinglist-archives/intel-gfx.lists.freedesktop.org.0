Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62B4988731
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B39C10EC78;
	Fri, 27 Sep 2024 14:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCdaAGPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD34310EC78
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727447756; x=1758983756;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z+k4ARbC6ARP+ohVcIfJHt173z/urbsxswxz0oVNoBk=;
 b=QCdaAGPf4QJKorN5623P6Moni1iP1ujl4TcsVO14EDJDzgj+fN7slvvj
 Q71EfEwBKIA0VNcH3eGgX7XyO4ecTpZ0Vl5N0aPNI9WTKpDrs5kh2BYy1
 ns7HhocneGChEtBtKnUp3NDOmmsAcIuAKT0aH4MWvzDOyVnqLA99zv3SW
 ENG7aqUAEmSug0/iadob1nCLm0e5qi8yh1fVNFyH9xwxIklV9cR2rVl71
 3nk0BUgD7Bz8mp8nXNsvoKPtBri34ltULhZD8T1UbA2aALD5vrz6/tAeq
 33yJYQ6CwPOzhrFvC6XJ+w2XGRe4IcL1SC6mA7RFp7wuUad7Dg9fyNS39 g==;
X-CSE-ConnectionGUID: GFlaEq0wSwexRh5XpeZ8dA==
X-CSE-MsgGUID: l4RE8+msQx6JZy9ItbKbkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26102300"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26102300"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:35:56 -0700
X-CSE-ConnectionGUID: tE7j++3PTJuTyneqhIzzCg==
X-CSE-MsgGUID: zqmPJATBS9S34RbPvq3OpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72712121"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:35:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:35:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915: Clean up some comments in gmch irq code
Date: Fri, 27 Sep 2024 17:35:44 +0300
Message-ID: <20240927143545.8665-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Clean up some comments in the gmch irq code:
- drop redundant comments
- s/iir/IIR/ to make it clear it's referring to the register

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ee7a2a49f08e..f02414dead8c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -298,7 +298,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
 		/* Call regardless, as some status bits might not be
-		 * signalled in iir */
+		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
 
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
@@ -380,7 +380,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
 		/* Call regardless, as some status bits might not be
-		 * signalled in iir */
+		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
 
 		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
@@ -1050,7 +1050,6 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	intel_uncore_write(uncore, EMR, i9xx_error_mask(dev_priv));
 
-	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
 		~(I915_ASLE_INTERRUPT |
 		  I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
@@ -1065,9 +1064,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_USER_INTERRUPT;
 
 	if (I915_HAS_HOTPLUG(dev_priv)) {
-		/* and unmask in IMR */
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
-		/* Enable in IER... */
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
 
@@ -1111,7 +1108,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
 		/* Call regardless, as some status bits might not be
-		 * signalled in iir */
+		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
@@ -1174,7 +1171,6 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	intel_uncore_write(uncore, EMR, i965_error_mask(dev_priv));
 
-	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
 		~(I915_ASLE_INTERRUPT |
 		  I915_DISPLAY_PORT_INTERRUPT |
@@ -1233,7 +1229,7 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
 
 		/* Call regardless, as some status bits might not be
-		 * signalled in iir */
+		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
-- 
2.45.2

