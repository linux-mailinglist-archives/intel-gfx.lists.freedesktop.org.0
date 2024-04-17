Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA38A83A6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 462C81134C2;
	Wed, 17 Apr 2024 13:03:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNo1Rd0J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2770E10FF0A;
 Wed, 17 Apr 2024 13:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359008; x=1744895008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pjsvyj3xJurLTathVhy3Ieeae2aqgQT0IH98jiFZds0=;
 b=aNo1Rd0J35+xTmISJmQGZeHLV/69tq4CJHlZw9npRYBZbiwy1UAs30dg
 mAsPnu96iD34OPI7VDBTRjDnxAvarVBXyYG6BoZlFxdgpJbiRaVeZt9Jv
 sZTX9zibDnpfFgHvgoC9DWu0F80kftYLMcTlMkigmEQOz2JyAF7G+pcs7
 MEyfMGZQznu+pohUL/gnQyR47Yt5dDmQRMXOmLpzGKHykF9i7CurDzn/S
 ousFIoGqFLc3O895Pu17nuiqQZsDsiooztd+LGkaBOLCslQeQ4tnGCT9B
 iJNK6kFh3bmgLVkKatSY06kA9h1Du133gA1+yGeG+p9l30T7uLUlqNAHt w==;
X-CSE-ConnectionGUID: ecPF3v2pT/CMgBp+35mtSg==
X-CSE-MsgGUID: xMowWBx6S0+wAcvfEw5ihg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="26310537"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="26310537"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:28 -0700
X-CSE-ConnectionGUID: SJA/X+YTTjOZUyN53urWLw==
X-CSE-MsgGUID: 1c+wMHkKTWWWzTk9okcUMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22628558"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 7/9] drm/i915/dmc: convert dmc wakelock interface to struct
 intel_display
Date: Wed, 17 Apr 2024 16:02:45 +0300
Message-Id: <3c260bbbce0af8714b07157dc032b038efa3bf1c.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
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

Convert the dmc wakelock interface to struct intel_display instead of
struct drm_i915_private. We'll want to convert the intel_de interfaces,
and there's a bit of coupling between the two, so start here.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h       | 40 ++++++++--------
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 .../i915/display/intel_display_power_well.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_dmc.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 48 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc_wl.h   | 12 ++---
 6 files changed, 59 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 4b51388c6041..15440058ad2a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -15,11 +15,11 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
 	u32 val;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	val = intel_uncore_read(&i915->uncore, reg);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return val;
 }
@@ -29,11 +29,11 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
 {
 	u8 val;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	val = intel_uncore_read8(&i915->uncore, reg);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return val;
 }
@@ -44,13 +44,13 @@ intel_de_read64_2x32(struct drm_i915_private *i915,
 {
 	u64 val;
 
-	intel_dmc_wl_get(i915, lower_reg);
-	intel_dmc_wl_get(i915, upper_reg);
+	intel_dmc_wl_get(&i915->display, lower_reg);
+	intel_dmc_wl_get(&i915->display, upper_reg);
 
 	val = intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
 
-	intel_dmc_wl_put(i915, upper_reg);
-	intel_dmc_wl_put(i915, lower_reg);
+	intel_dmc_wl_put(&i915->display, upper_reg);
+	intel_dmc_wl_put(&i915->display, lower_reg);
 
 	return val;
 }
@@ -58,21 +58,21 @@ intel_de_read64_2x32(struct drm_i915_private *i915,
 static inline void
 intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	intel_uncore_posting_read(&i915->uncore, reg);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 }
 
 static inline void
 intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 {
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	intel_uncore_write(&i915->uncore, reg, val);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 }
 
 static inline u32
@@ -87,11 +87,11 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 val;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	val = __intel_de_rmw_nowl(i915, reg, clear, set);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return val;
 }
@@ -110,11 +110,11 @@ intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
 {
 	int ret;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return ret;
 }
@@ -125,11 +125,11 @@ intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
 {
 	int ret;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	ret = intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return ret;
 }
@@ -142,12 +142,12 @@ intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
 {
 	int ret;
 
-	intel_dmc_wl_get(i915, reg);
+	intel_dmc_wl_get(&i915->display, reg);
 
 	ret = __intel_wait_for_register(&i915->uncore, reg, mask, value,
 					fast_timeout_us, slow_timeout_ms, out_value);
 
-	intel_dmc_wl_put(i915, reg);
+	intel_dmc_wl_put(&i915->display, reg);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 4f112a69dea8..1b24339e4ab6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -198,7 +198,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
-	intel_dmc_wl_init(i915);
+	intel_dmc_wl_init(&i915->display);
 }
 
 /* part #1: call before irq install */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 7f4b7602cf02..a28e61130b81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -822,7 +822,7 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(dev_priv);
+	intel_dmc_wl_enable(&dev_priv->display);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
 }
@@ -853,7 +853,7 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
-	intel_dmc_wl_enable(dev_priv);
+	intel_dmc_wl_enable(&dev_priv->display);
 
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 }
@@ -975,7 +975,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	intel_dmc_wl_disable(dev_priv);
+	intel_dmc_wl_disable(&dev_priv->display);
 
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a34ff3383fd3..3697a02b51b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -553,7 +553,7 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 	disable_all_event_handlers(i915);
 	pipedmc_clock_gating_wa(i915, false);
 
-	intel_dmc_wl_disable(i915);
+	intel_dmc_wl_disable(&i915->display);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
@@ -1083,7 +1083,7 @@ void intel_dmc_suspend(struct drm_i915_private *i915)
 	if (dmc)
 		flush_work(&dmc->work);
 
-	intel_dmc_wl_disable(i915);
+	intel_dmc_wl_disable(&i915->display);
 
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 162de0d20554..e79c45e36722 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -51,9 +51,10 @@ static struct intel_dmc_wl_range lnl_wl_range[] = {
 	{ .start = 0x60000, .end = 0x7ffff },
 };
 
-static void __intel_dmc_wl_release(struct drm_i915_private *i915)
+static void __intel_dmc_wl_release(struct intel_display *display)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_dmc_wl *wl = &display->wl;
 
 	WARN_ON(refcount_read(&wl->refcount));
 
@@ -106,23 +107,25 @@ static bool intel_dmc_wl_check_range(u32 address)
 	return wl_needed;
 }
 
-static bool __intel_dmc_wl_supported(struct drm_i915_private *i915)
+static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (DISPLAY_VER(i915) < 20 ||
 	    !intel_dmc_has_payload(i915) ||
-	    !i915->display.params.enable_dmc_wl)
+	    !display->params.enable_dmc_wl)
 		return false;
 
 	return true;
 }
 
-void intel_dmc_wl_init(struct drm_i915_private *i915)
+void intel_dmc_wl_init(struct intel_display *display)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_dmc_wl *wl = &display->wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(i915) < 20 ||
-	    !i915->display.params.enable_dmc_wl)
+	if (DISPLAY_VER(i915) < 20 || !display->params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
@@ -130,12 +133,13 @@ void intel_dmc_wl_init(struct drm_i915_private *i915)
 	refcount_set(&wl->refcount, 0);
 }
 
-void intel_dmc_wl_enable(struct drm_i915_private *i915)
+void intel_dmc_wl_enable(struct intel_display *display)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
-	if (!__intel_dmc_wl_supported(i915))
+	if (!__intel_dmc_wl_supported(display))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -157,12 +161,13 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-void intel_dmc_wl_disable(struct drm_i915_private *i915)
+void intel_dmc_wl_disable(struct intel_display *display)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
-	if (!__intel_dmc_wl_supported(i915))
+	if (!__intel_dmc_wl_supported(display))
 		return;
 
 	flush_delayed_work(&wl->work);
@@ -183,12 +188,13 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
+void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
-	if (!__intel_dmc_wl_supported(i915))
+	if (!__intel_dmc_wl_supported(display))
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
@@ -231,12 +237,12 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
+void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 {
-	struct intel_dmc_wl *wl = &i915->display.wl;
+	struct intel_dmc_wl *wl = &display->wl;
 	unsigned long flags;
 
-	if (!__intel_dmc_wl_supported(i915))
+	if (!__intel_dmc_wl_supported(display))
 		return;
 
 	if (!intel_dmc_wl_check_range(reg.reg))
@@ -252,7 +258,7 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 		goto out_unlock;
 
 	if (refcount_dec_and_test(&wl->refcount)) {
-		__intel_dmc_wl_release(i915);
+		__intel_dmc_wl_release(display);
 
 		goto out_unlock;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
index 6fb86b05b437..adab51208d0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
@@ -12,7 +12,7 @@
 
 #include "i915_reg_defs.h"
 
-struct drm_i915_private;
+struct intel_display;
 
 struct intel_dmc_wl {
 	spinlock_t lock; /* protects enabled, taken  and refcount */
@@ -22,10 +22,10 @@ struct intel_dmc_wl {
 	struct delayed_work work;
 };
 
-void intel_dmc_wl_init(struct drm_i915_private *i915);
-void intel_dmc_wl_enable(struct drm_i915_private *i915);
-void intel_dmc_wl_disable(struct drm_i915_private *i915);
-void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg);
-void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg);
+void intel_dmc_wl_init(struct intel_display *display);
+void intel_dmc_wl_enable(struct intel_display *display);
+void intel_dmc_wl_disable(struct intel_display *display);
+void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
+void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
 
 #endif /* __INTEL_WAKELOCK_H__ */
-- 
2.39.2

