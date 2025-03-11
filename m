Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F228CA5C01B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 13:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901F310E586;
	Tue, 11 Mar 2025 12:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QkBzKBZi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CFD10E58A;
 Tue, 11 Mar 2025 12:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741694773; x=1773230773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K+jubbO0vObQjqZsdU+ECEanrFXc0Df/j4twa8qDfG8=;
 b=QkBzKBZi8s5wcU3+yW13hYh+7YRFibza41/JJTQvc7cYzd/xwzOI2ytV
 7uLQ61YAGydQ6D+8pqYgc8rycOmu82YFPjwr1jpDy2wMGdAV20z2+2gcE
 InHImewdeHLmCmoasraafymEI6FR/f20I6xOt75LMjrNgXMlF1rcNwkyw
 imxezKduKZx4UCb8MzTqNY2HDhszQ+/PbH6uAHmEJXBbZ0A/foDA67JBT
 2A35K6JOg5sOtCH3VJ7vhwRRO2RlXkzNvl3dtl9/jbR5swPb9Ykd8A/iS
 liuhhpbPOESFFg2iG5qvikkpup2nGO+2f5jteOpIP/SMQqswMwBeVgK+3 A==;
X-CSE-ConnectionGUID: wnCfMbs5RgabSPNEJbGHsg==
X-CSE-MsgGUID: xTg8Cf8GRCaoqAg/cpEogg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46510553"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46510553"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:06:12 -0700
X-CSE-ConnectionGUID: hp9IG9RBSW6iquEjRBODEg==
X-CSE-MsgGUID: +8231PGGRD6vyx/HeFQfkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="151108785"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:06:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 5/6] drm/i915/power: convert to display runtime PM interfaces
Date: Tue, 11 Mar 2025 14:05:39 +0200
Message-Id: <840f7cd7945757ac59e0522f3bf803105f54052c.1741694400.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741694400.git.jani.nikula@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
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

Finish the conversions to display specific runtime PM interfaces in the
power code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 63 ++++++++-----------
 .../i915/display/intel_display_power_well.c   |  4 +-
 2 files changed, 30 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f7171e6932dc..adeb4408eb49 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -16,6 +16,7 @@
 #include "intel_display_power.h"
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_mchbar_regs.h"
@@ -204,7 +205,7 @@ static bool __intel_display_power_is_enabled(struct intel_display *display,
 	struct i915_power_well *power_well;
 	bool is_enabled;
 
-	if (pm_runtime_suspended(display->drm->dev))
+	if (intel_display_rpm_suspended(display))
 		return false;
 
 	is_enabled = true;
@@ -455,7 +456,6 @@ static bool
 intel_display_power_grab_async_put_ref(struct intel_display *display,
 				       enum intel_display_power_domain domain)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	bool ret = false;
@@ -473,8 +473,8 @@ intel_display_power_grab_async_put_ref(struct intel_display *display,
 		goto out_verify;
 
 	cancel_async_put_work(power_domains, false);
-	intel_runtime_pm_put_raw(&dev_priv->runtime_pm,
-				 fetch_and_zero(&power_domains->async_put_wakeref));
+	intel_display_rpm_put_raw(display,
+				  fetch_and_zero(&power_domains->async_put_wakeref));
 out_verify:
 	verify_async_put_domains_state(power_domains);
 
@@ -512,9 +512,10 @@ __intel_display_power_get_domain(struct intel_display *display,
 intel_wakeref_t intel_display_power_get(struct intel_display *display,
 					enum intel_display_power_domain domain)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
-	intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	struct ref_tracker *wakeref;
+
+	wakeref = intel_display_rpm_get(display);
 
 	mutex_lock(&power_domains->lock);
 	__intel_display_power_get_domain(display, domain);
@@ -539,12 +540,11 @@ intel_wakeref_t
 intel_display_power_get_if_enabled(struct intel_display *display,
 				   enum intel_display_power_domain domain)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool is_enabled;
 
-	wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
+	wakeref = intel_display_rpm_get_if_in_use(display);
 	if (!wakeref)
 		return NULL;
 
@@ -560,7 +560,7 @@ intel_display_power_get_if_enabled(struct intel_display *display,
 	mutex_unlock(&power_domains->lock);
 
 	if (!is_enabled) {
-		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+		intel_display_rpm_put(display, wakeref);
 		wakeref = NULL;
 	}
 
@@ -623,12 +623,10 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	struct intel_display *display = container_of(power_domains,
 						     struct intel_display,
 						     power.domains);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	enum intel_display_power_domain domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
-	wakeref = intel_runtime_pm_get_noresume(rpm);
+	wakeref = intel_display_rpm_get_noresume(display);
 
 	for_each_power_domain(domain, mask) {
 		/* Clear before put, so put's sanity check is happy. */
@@ -636,7 +634,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 		__intel_display_power_put_domain(display, domain);
 	}
 
-	intel_runtime_pm_put(rpm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 }
 
 static void
@@ -644,11 +642,10 @@ intel_display_power_put_async_work(struct work_struct *work)
 {
 	struct intel_display *display = container_of(work, struct intel_display,
 						     power.domains.async_put_work.work);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
-	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	intel_wakeref_t new_work_wakeref = intel_runtime_pm_get_raw(rpm);
-	intel_wakeref_t old_work_wakeref = NULL;
+	struct ref_tracker *new_work_wakeref, *old_work_wakeref = NULL;
+
+	new_work_wakeref = intel_display_rpm_get_raw(display);
 
 	mutex_lock(&power_domains->lock);
 
@@ -688,9 +685,9 @@ intel_display_power_put_async_work(struct work_struct *work)
 	mutex_unlock(&power_domains->lock);
 
 	if (old_work_wakeref)
-		intel_runtime_pm_put_raw(rpm, old_work_wakeref);
+		intel_display_rpm_put_raw(display, old_work_wakeref);
 	if (new_work_wakeref)
-		intel_runtime_pm_put_raw(rpm, new_work_wakeref);
+		intel_display_rpm_put_raw(display, new_work_wakeref);
 }
 
 /**
@@ -711,10 +708,10 @@ void __intel_display_power_put_async(struct intel_display *display,
 				     intel_wakeref_t wakeref,
 				     int delay_ms)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
-	struct intel_runtime_pm *rpm = &i915->runtime_pm;
-	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
+	struct ref_tracker *work_wakeref;
+
+	work_wakeref = intel_display_rpm_get_raw(display);
 
 	delay_ms = delay_ms >= 0 ? delay_ms : 100;
 
@@ -746,9 +743,9 @@ void __intel_display_power_put_async(struct intel_display *display,
 	mutex_unlock(&power_domains->lock);
 
 	if (work_wakeref)
-		intel_runtime_pm_put_raw(rpm, work_wakeref);
+		intel_display_rpm_put_raw(display, work_wakeref);
 
-	intel_runtime_pm_put(rpm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 }
 
 /**
@@ -765,7 +762,6 @@ void __intel_display_power_put_async(struct intel_display *display,
  */
 void intel_display_power_flush_work(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	intel_wakeref_t work_wakeref;
@@ -786,7 +782,7 @@ void intel_display_power_flush_work(struct intel_display *display)
 	mutex_unlock(&power_domains->lock);
 
 	if (work_wakeref)
-		intel_runtime_pm_put_raw(&i915->runtime_pm, work_wakeref);
+		intel_display_rpm_put_raw(display, work_wakeref);
 }
 
 /**
@@ -824,10 +820,8 @@ void intel_display_power_put(struct intel_display *display,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	__intel_display_power_put(display, domain);
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 }
 #else
 /**
@@ -846,10 +840,8 @@ void intel_display_power_put(struct intel_display *display,
 void intel_display_power_put_unchecked(struct intel_display *display,
 				       enum intel_display_power_domain domain)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	__intel_display_power_put(display, domain);
-	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+	intel_display_rpm_put_unchecked(display);
 }
 #endif
 
@@ -1979,7 +1971,6 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
  */
 void intel_power_domains_driver_remove(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
@@ -1993,7 +1984,7 @@ void intel_power_domains_driver_remove(struct intel_display *display)
 	intel_power_domains_verify_state(display);
 
 	/* Keep the power well enabled, but cancel its rpm wakeref. */
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_display_rpm_put(display, wakeref);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 8ec87ffd87d2..8e7610d9ca23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -13,6 +13,7 @@
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_power_well.h"
+#include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
@@ -816,7 +817,8 @@ static void assert_can_enable_dc5(struct intel_display *display)
 		      (intel_de_read(display, DC_STATE_EN) &
 		       DC_STATE_EN_UPTO_DC5),
 		      "DC5 already programmed to be enabled.\n");
-	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
+
+	assert_display_rpm_held(display);
 
 	assert_dmc_loaded(display);
 }
-- 
2.39.5

