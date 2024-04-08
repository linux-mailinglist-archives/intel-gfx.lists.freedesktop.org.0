Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D038089CB79
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DD910F9E5;
	Mon,  8 Apr 2024 18:09:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBUFPoc9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8A110F9E5;
 Mon,  8 Apr 2024 18:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599757; x=1744135757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rm+bBQWdSbVU+RRqoMGGLLoHvFUwLdaODRAkqgZzTDE=;
 b=nBUFPoc9psT4V6RxKKnmCiWXwCfb1cKxLq0KM9jqyHTYVasBr0VcZ939
 obrNS5FtdlHyDqWbkzPF7h4BKuMg2hUeUXOoiPC0f2QH5DUX4V9RVdnrG
 qL0159zTCvwm7uGt29ofDiXVQMPf7K1ehWrb2KNxAJ5hyCUjrvf1oBIxr
 SHOXA8xaxO378MPtkddBCpGHNRKx7tghKHQpeTC2qbnuPJRuudJIz1ugq
 2Ythf0ZrQn+AeCQ45K5rmLtxy5SCaUjZphzXldsWxYWmlhUlJ6xBlDBT+
 v2XlBqiuDLXwYARfU1BNuOMeoy3Pxjz9k0vuNZSG3YSmBKi35zmgPhNB5 Q==;
X-CSE-ConnectionGUID: KIM0sCUPQp+IAmL1qffq4A==
X-CSE-MsgGUID: ybsXdFg4StellePMySb66w==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="11730229"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="11730229"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:12 -0700
X-CSE-ConnectionGUID: AuXiRRyET4ShQ+DQo9XqNg==
X-CSE-MsgGUID: 4Z/k+eDzS/m0nllLLH8Y3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="20022119"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 4/8] drm/i915: move vblank_enabled to display substruct
Date: Mon,  8 Apr 2024 21:08:39 +0300
Message-Id: <eb89ed70020ea78396e1fec6f1a97693f2bdb96b.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
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

The info is related to display, and should be placed under
i915->display. Start a new irq sub-substruct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_display_irq.c  | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.h                   |  3 ---
 drivers/gpu/drm/xe/xe_device_types.h              |  1 -
 4 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index eed9be8e9f49..52f7d6e0324f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -447,6 +447,11 @@ struct intel_display {
 		bool false_color;
 	} ips;
 
+	struct {
+		/* For i915gm/i945gm vblank irq workaround */
+		u8 vblank_enabled;
+	} irq;
+
 	struct {
 		wait_queue_head_t waitqueue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f846c5b108b5..6219b1a62210 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1203,7 +1203,7 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
 
 int i915gm_enable_vblank(struct drm_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc->dev);
 
 	/*
 	 * Vblank interrupts fail to wake the device up from C2+.
@@ -1211,8 +1211,8 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
 	 * the problem. There is a small power cost so we do this
 	 * only when vblank interrupts are actually enabled.
 	 */
-	if (dev_priv->vblank_enabled++ == 0)
-		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+	if (i915->display.irq.vblank_enabled++ == 0)
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 
 	return i8xx_enable_vblank(crtc);
 }
@@ -1315,12 +1315,12 @@ void i8xx_disable_vblank(struct drm_crtc *crtc)
 
 void i915gm_disable_vblank(struct drm_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc->dev);
 
 	i8xx_disable_vblank(crtc);
 
-	if (--dev_priv->vblank_enabled == 0)
-		intel_uncore_write(&dev_priv->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
+	if (--i915->display.irq.vblank_enabled == 0)
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 void i965_disable_vblank(struct drm_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ac8ad18c5fc2..a83553731538 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -348,9 +348,6 @@ struct drm_i915_private {
 
 	struct intel_pxp *pxp;
 
-	/* For i915gm/i945gm vblank irq workaround */
-	u8 vblank_enabled;
-
 	bool irq_enabled;
 
 	struct i915_pmu pmu;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 6b3a22197322..d6236133b143 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -519,7 +519,6 @@ struct xe_device {
 		unsigned int hpll_freq;
 		unsigned int czclk_freq;
 		unsigned int fsb_freq, mem_freq, is_ddr3;
-		u8 vblank_enabled;
 	};
 	struct {
 		const char *dmc_firmware_path;
-- 
2.39.2

