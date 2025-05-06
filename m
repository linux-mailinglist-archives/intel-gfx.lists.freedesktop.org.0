Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F47AAC529
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2DE10E68E;
	Tue,  6 May 2025 13:07:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQE38w9j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BD610E695;
 Tue,  6 May 2025 13:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536827; x=1778072827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X/l8gxpCDQ6qpuZQXUu9ipbk9C+K058H8o+Kna1aNvA=;
 b=jQE38w9jCYL/7feWSWlChQcpOhuv1Y9oVKueNX1VPjfwWyxMP9XGmQ3+
 EHPLeqHPRqnFlmdVA+cq8iP6bY2INzl7wD9Ts8TAleQzZ1/jlbSIHalWz
 YNIR8oqM8of3ZJbrgAgSlHQKpKXWlbAHVAbLaBO9jUo1OAdvGe6W2mzHA
 +kOPOlc2aS7HGe0e7mPWwHe4mBhFGE7CxKwHSzfik03NeKyqarx9Ua+r1
 +CEnpEFzPjL+Vzs0AbrvC1Ly0AlUyrorrN5sCQgFkb6ZlkTppKpylPj7x
 6puM1rXWtUUEscQ+gdph9MyY06rPTu0jDYPDQ0e+leLw45He6iF0v3dJW A==;
X-CSE-ConnectionGUID: oj5Z6v/yT12fBEGhgVauNg==
X-CSE-MsgGUID: 8JTcZ1YyRua4673ec4CmNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48112293"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48112293"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:07 -0700
X-CSE-ConnectionGUID: L6n/o6H3TXqXA3B63RuSJA==
X-CSE-MsgGUID: ThoDwq+USsW3KvpdwdlhZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135588289"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:07:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/8] drm/i915/irq: move locking inside
 vlv_display_irq_postinstall()
Date: Tue,  6 May 2025 16:06:45 +0300
Message-Id: <93ea785d2d9bdb4e18328aa42a00a492d9d783c0.1746536745.git.jani.nikula@intel.com>
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

All users of vlv_display_irq_postinstall() outside of
intel_display_irq.c have a lock/unlock pair. Move the locking inside the
function. Add an unlocked variant for internal use, similar to the
_vlv_display_irq_reset() and vlv_display_irq_reset() functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 ++++++++++++-----
 drivers/gpu/drm/i915/i915_irq.c                 |  4 ----
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 3d2294a4d83d..a0e08b8752e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1908,16 +1908,13 @@ static u32 vlv_error_mask(void)
 	return VLV_ERROR_PAGE_TABLE;
 }
 
-void vlv_display_irq_postinstall(struct intel_display *display)
+static void _vlv_display_irq_postinstall(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 pipestat_mask;
 	u32 enable_mask;
 	enum pipe pipe;
 
-	if (!display->irq.vlv_display_irqs_enabled)
-		return;
-
 	if (display->platform.cherryview)
 		intel_de_write(display, DPINVGTT,
 			       DPINVGTT_STATUS_MASK_CHV |
@@ -1954,6 +1951,16 @@ void vlv_display_irq_postinstall(struct intel_display *display)
 	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
 }
 
+void vlv_display_irq_postinstall(struct intel_display *display)
+{
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	spin_lock_irq(&dev_priv->irq_lock);
+	if (display->irq.vlv_display_irqs_enabled)
+		_vlv_display_irq_postinstall(display);
+	spin_unlock_irq(&dev_priv->irq_lock);
+}
+
 void ibx_display_irq_reset(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -2126,7 +2133,7 @@ void valleyview_enable_display_irqs(struct intel_display *display)
 
 	if (intel_irqs_enabled(dev_priv)) {
 		_vlv_display_irq_reset(display);
-		vlv_display_irq_postinstall(display);
+		_vlv_display_irq_postinstall(display);
 	}
 
 out:
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index b918b440cbce..19d8a7c29eac 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -768,9 +768,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	vlv_display_irq_postinstall(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
@@ -827,9 +825,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
-	spin_lock_irq(&dev_priv->irq_lock);
 	vlv_display_irq_postinstall(display);
-	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
-- 
2.39.5

