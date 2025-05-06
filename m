Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0822AAAC52A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E8F10E68D;
	Tue,  6 May 2025 13:07:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGsjySRs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F5510E68D;
 Tue,  6 May 2025 13:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536831; x=1778072831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=grbzgkX+mebpkMmyy9JJixpXA1bonr6IKY384faVM0w=;
 b=JGsjySRsodqnELof1dgm933uJhRQ+7BkGGrtr94S9JfhwPUmkvXVoj4n
 u0CHxlqnMfZSSCn7Ht10fWRnJr6pj1LDhEfQ3rSKNLZZYVLAov3M3AGi3
 sPl+8gwgak7NeQmrygcx+oJG1uDXfUFgV+wG26VU2KLRgRoenJ6Us0ACJ
 SJ59paoSCjuP45lnbag4s3li5ArH42RH2XZmjkhdgenlokOEK+7xTaBwO
 hdqfnakjeSoIz2lG9xQtVopeGOfcYArVM+NyAn9suMLuKOpwJNI+1qMXG
 ycMnTfKuYWocdEIfJr3fw6i5UeZEEtrn2mYKSAcG1heQ3KjFPAkizJAoE A==;
X-CSE-ConnectionGUID: Ztk+C7noQa6Gl1ioAtOm/w==
X-CSE-MsgGUID: cSKPsTdnTs2Bkzt/FztMQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112348"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112348"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:11 -0700
X-CSE-ConnectionGUID: C06n7VhQTXeOo2sA2/idzw==
X-CSE-MsgGUID: BKZR2HECR4ilF8rEQDv69A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588334"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/8] drm/i915/irq: split out i915_display_irq_postinstall()
Date: Tue,  6 May 2025 16:06:46 +0300
Message-Id: <11de06206ff10c27104b0ac3efda085bf4c1f1a6.1746536745.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
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

Split out i915_display_irq_postinstall() similar to other platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display_irq.h |  1 +
 drivers/gpu/drm/i915/i915_irq.c                  |  9 +--------
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a0e08b8752e7..77cdd1ea5d00 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1902,6 +1902,22 @@ void i9xx_display_irq_reset(struct intel_display *display)
 	i9xx_pipestat_irq_reset(display);
 }
 
+void i915_display_irq_postinstall(struct intel_display *display)
+{
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	/*
+	 * Interrupt setup is already guaranteed to be single-threaded, this is
+	 * just to make the assert_spin_locked check happy.
+	 */
+	spin_lock_irq(&dev_priv->irq_lock);
+	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
+	spin_unlock_irq(&dev_priv->irq_lock);
+
+	i915_enable_asle_pipestat(display);
+}
+
 static u32 vlv_error_mask(void)
 {
 	/* TODO enable other errors too? */
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 5422426c6843..8fdce804c9d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -61,6 +61,7 @@ void vlv_display_irq_reset(struct intel_display *display);
 void gen8_display_irq_reset(struct intel_display *display);
 void gen11_display_irq_reset(struct intel_display *display);
 
+void i915_display_irq_postinstall(struct intel_display *display);
 void vlv_display_irq_postinstall(struct intel_display *display);
 void ilk_de_irq_postinstall(struct intel_display *display);
 void gen8_de_irq_postinstall(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 19d8a7c29eac..30c78177ae0d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -935,14 +935,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
-	/* Interrupt setup is already guaranteed to be single-threaded, this is
-	 * just to make the assert_spin_locked check happy. */
-	spin_lock_irq(&dev_priv->irq_lock);
-	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	i915_enable_asle_pipestat(display);
+	i915_display_irq_postinstall(display);
 }
 
 static irqreturn_t i915_irq_handler(int irq, void *arg)
-- 
2.39.5

