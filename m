Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF5AAC52B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650A310E69A;
	Tue,  6 May 2025 13:07:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lI1JVTWZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6684E10E69A;
 Tue,  6 May 2025 13:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536836; x=1778072836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3syB5T6mXURDewOqE/HCDpsaJmPYWN8/pqnM+OaUOVo=;
 b=lI1JVTWZ9lUwH+8F/Hb6yadGqBVe/4Vce1as9EOKXo06CNeocffyNvOr
 nJo+UjXkDD5nI96RBPHC5/TPYxQDWwIESwx23o7haGQPyXE1Se1UzxCVm
 vyUWHy1ZbH4+VEi93BbTJCiIwiwFOAblb4NfM1gMaAnH8vxrP7TEAnbUO
 CFm4PZz4O2pB2OXcnE195eG1qsoPTLPWMG9FwrPSIXRPh+FejLaHohEEV
 OBoGTcAtmR5+Z2r2L2YzthmKDuUvWXapUg1tka9QssYY28+/6pdDJGJ8i
 ImcOVBz917HqAUB5e3FgGl76fcOwqzAYzhHEu5TjOQ28+ILId+/um7KX0 g==;
X-CSE-ConnectionGUID: QSiSwaghRJiVqaPgLvDIEA==
X-CSE-MsgGUID: 6dmH9fPPRtqW2YhkaePdRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112368"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112368"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:15 -0700
X-CSE-ConnectionGUID: YwgtmQL4Sty+WYaH5uFIeg==
X-CSE-MsgGUID: LdKI17XWTR+Nb5tbO0TlhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588357"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 5/8] drm/i915/irq: split out i965_display_irq_postinstall()
Date: Tue,  6 May 2025 16:06:47 +0300
Message-Id: <5d404dcd0c606d1cb11f2e09c45e151a75b5b2c6.1746536745.git.jani.nikula@intel.com>
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

Split out i965_display_irq_postinstall() similar to other platforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h    |  1 +
 drivers/gpu/drm/i915/i915_irq.c                 | 10 +---------
 3 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 77cdd1ea5d00..989b78339aa4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1918,6 +1918,23 @@ void i915_display_irq_postinstall(struct intel_display *display)
 	i915_enable_asle_pipestat(display);
 }
 
+void i965_display_irq_postinstall(struct intel_display *display)
+{
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	/*
+	 * Interrupt setup is already guaranteed to be single-threaded, this is
+	 * just to make the assert_spin_locked check happy.
+	 */
+	spin_lock_irq(&dev_priv->irq_lock);
+	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
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
index 8fdce804c9d7..4c0ed476e568 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -62,6 +62,7 @@ void gen8_display_irq_reset(struct intel_display *display);
 void gen11_display_irq_reset(struct intel_display *display);
 
 void i915_display_irq_postinstall(struct intel_display *display);
+void i965_display_irq_postinstall(struct intel_display *display);
 void vlv_display_irq_postinstall(struct intel_display *display);
 void ilk_de_irq_postinstall(struct intel_display *display);
 void gen8_de_irq_postinstall(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 30c78177ae0d..95042879bec4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1053,15 +1053,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 
-	/* Interrupt setup is already guaranteed to be single-threaded, this is
-	 * just to make the assert_spin_locked check happy. */
-	spin_lock_irq(&dev_priv->irq_lock);
-	i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
-	i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	i915_enable_asle_pipestat(display);
+	i965_display_irq_postinstall(display);
 }
 
 static irqreturn_t i965_irq_handler(int irq, void *arg)
-- 
2.39.5

