Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67EFAADB91
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 11:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6587E10E780;
	Wed,  7 May 2025 09:38:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UhAZm1tR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CB210E780;
 Wed,  7 May 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746610734; x=1778146734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eF0YSECOEZOznx+hkfFtVd9fjBgRbRzb7nQzyh0zWM4=;
 b=UhAZm1tRspMCjk9k9s7BMlmnkBl9YINveO7rKwZX6yrykKVkItbC5k5r
 aB6bnAUSSiHfcr+KOkzXgOP21YKoseKRRMwB2+7IXPVLqZGwY6zRF8ZDC
 gedRVj42DZO4PzfZjfAq84nfYGAg/ze5bQjuSg46Q+Oe7DlxS1+b9R00X
 EwwEJRdBR6KYlJnbL3JzWU32PLI2Qk76yI9kBtV0R/M3z+kLmH9WOxgzm
 /jEmKZiF5VoN8gWApQFyyaYuZeLwmm3tMjHUTLCHLJADIFO+FmuNcx1Gg
 KoZxXSxw3oRlqGjVZZJi+g1RdyQi1xJfU0xsok3Jdd7YJuY21SBJlYkcX A==;
X-CSE-ConnectionGUID: DKDbm7I+QS2QY6inxCnoxw==
X-CSE-MsgGUID: navwme5yQnec9Yskuju6xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59727222"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="59727222"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:54 -0700
X-CSE-ConnectionGUID: YiSsSqwESDK0iNcxvPtOGw==
X-CSE-MsgGUID: /KmJbR3TRUWwGyMq7JwJqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="159194303"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 02:38:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915: do not reference i915->display inline
Date: Wed,  7 May 2025 12:38:35 +0300
Message-Id: <afcf305e8c4ea452cee37479530958f36a10c840.1746610601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746610601.git.jani.nikula@intel.com>
References: <cover.1746610601.git.jani.nikula@intel.com>
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

Always use a local variable for display instead of referencing
i915->display inline. This makes it easier to convert i915->display into
a pointer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c        | 20 ++++++++++++--------
 drivers/gpu/drm/i915/intel_clock_gating.c |  3 ++-
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 273bc43468a0..9dcd99ca7b4a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -115,6 +115,8 @@ static const struct drm_driver i915_drm_driver;
 
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	/*
 	 * The i915 workqueue is primarily used for batched retirement of
 	 * requests (and thus managing bo) once the task has been completed
@@ -133,8 +135,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	if (dev_priv->wq == NULL)
 		goto out_err;
 
-	dev_priv->display.hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
-	if (dev_priv->display.hotplug.dp_wq == NULL)
+	display->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
+	if (!display->hotplug.dp_wq)
 		goto out_free_wq;
 
 	/*
@@ -150,7 +152,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	return 0;
 
 out_free_dp_wq:
-	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
+	destroy_workqueue(display->hotplug.dp_wq);
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
@@ -161,8 +163,10 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	destroy_workqueue(dev_priv->unordered_wq);
-	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
+	destroy_workqueue(display->hotplug.dp_wq);
 	destroy_workqueue(dev_priv->wq);
 }
 
@@ -991,10 +995,10 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	if (HAS_DISPLAY(i915))
 		intel_display_driver_suspend_access(display);
 
-	intel_encoder_suspend_all(&i915->display);
-	intel_encoder_shutdown_all(&i915->display);
+	intel_encoder_suspend_all(display);
+	intel_encoder_shutdown_all(display);
 
-	intel_dmc_suspend(&i915->display);
+	intel_dmc_suspend(display);
 
 	i915_gem_suspend(i915);
 
@@ -1074,7 +1078,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_suspend_access(display);
 
-	intel_encoder_suspend_all(&dev_priv->display);
+	intel_encoder_suspend_all(display);
 
 	/* Must be called before GGTT is suspended. */
 	intel_dpt_suspend(display);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 387b26400169..f55c7b68f23e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -201,6 +201,7 @@ static void ilk_init_clock_gating(struct drm_i915_private *i915)
 
 static void cpt_init_clock_gating(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	enum pipe pipe;
 	u32 val;
 
@@ -220,7 +221,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *i915)
 		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (i915->display.vbt.fdi_rx_polarity_inverted)
+		if (display->vbt.fdi_rx_polarity_inverted)
 			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
-- 
2.39.5

