Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5379DBAB2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A780010ED01;
	Thu, 28 Nov 2024 15:39:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lSeRbdrz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9CF10ECFB;
 Thu, 28 Nov 2024 15:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808388; x=1764344388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=52ld1ZrtgSzTS7yoJ4cq6x5PZ5JQ5zIbn2c/2kROdMc=;
 b=lSeRbdrzEJeRYpt2ZZKzv5GpMAzu9p7JN9SIQDJIK27T5cLWzEkf53E+
 DGyCUH4hI6C4IIlUrtfem+Tl0LHBgs+o7wG5IXNLPR1ZLDPeyYkYoJ7aP
 cQzHW8obZ8KBuNsGA4Ks5YbHyQh+V2HnnuvhvYS3AcUmaNQwLOPzB3f9V
 Z6qy9mSUB0BNn2eK0itOQWZY3+wDhpbiciX3/kjAfMnw1LlNb/ZEsJyN6
 4EDiHay3qE7Irgwubjj2J8hDJHsIin2p6i9YDyMSAoiwncmH4nknKp3ql
 7m8SYD5/gwYhdOtkMfGgO8dst6c5XFjGCD9KKIos4vjpdJAT73C1awUb4 w==;
X-CSE-ConnectionGUID: UuPmVXvcR/C//qkzYt2LTQ==
X-CSE-MsgGUID: Z2N9GamMQzei1SAzpLDGGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44431591"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44431591"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:47 -0800
X-CSE-ConnectionGUID: yyVZ8i8UT266ZiwwlOtcAw==
X-CSE-MsgGUID: 1t7bG5+PSq2ry4fMs8cZ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="96358078"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 4/6] drm/i915/display: convert power domain code internally
 to struct intel_display
Date: Thu, 28 Nov 2024 17:38:22 +0200
Message-Id: <d3284b30b53dd2fec786775ccb8992939360d774.1732808222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main device data structure
for display. Convert intel_display_power.c internally first, leaving
external interfaces for follow-up.

v2: Rebase, checkpatch fixes

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 806 +++++++++---------
 1 file changed, 414 insertions(+), 392 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ade7192c0461..4043d6971c3e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -198,14 +198,13 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 	}
 }
 
-static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
+static bool __intel_display_power_is_enabled(struct intel_display *display,
 					     enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 	bool is_enabled;
 
-	if (pm_runtime_suspended(dev_priv->drm.dev))
+	if (pm_runtime_suspended(display->drm->dev))
 		return false;
 
 	is_enabled = true;
@@ -243,23 +242,22 @@ static bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
 				    enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	bool ret;
 
-	power_domains = &dev_priv->display.power.domains;
-
 	mutex_lock(&power_domains->lock);
-	ret = __intel_display_power_is_enabled(dev_priv, domain);
+	ret = __intel_display_power_is_enabled(display, domain);
 	mutex_unlock(&power_domains->lock);
 
 	return ret;
 }
 
 static u32
-sanitize_target_dc_state(struct drm_i915_private *i915,
+sanitize_target_dc_state(struct intel_display *display,
 			 u32 target_dc_state)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	static const u32 states[] = {
 		DC_STATE_EN_UPTO_DC6,
 		DC_STATE_EN_UPTO_DC5,
@@ -296,15 +294,15 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 	bool dc_off_enabled;
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	mutex_lock(&power_domains->lock);
 	power_well = lookup_power_well(display, SKL_DISP_DC_OFF);
 
-	if (drm_WARN_ON(&dev_priv->drm, !power_well))
+	if (drm_WARN_ON(display->drm, !power_well))
 		goto unlock;
 
-	state = sanitize_target_dc_state(dev_priv, state);
+	state = sanitize_target_dc_state(display, state);
 
 	if (state == power_domains->target_dc_state)
 		goto unlock;
@@ -340,11 +338,11 @@ static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 static bool
 assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 
-	return !drm_WARN_ON(&i915->drm,
+	return !drm_WARN_ON(display->drm,
 			    bitmap_intersects(power_domains->async_put_domains[0].bits,
 					      power_domains->async_put_domains[1].bits,
 					      POWER_DOMAIN_NUM));
@@ -353,21 +351,21 @@ assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
 static bool
 __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 	struct intel_power_domain_mask async_put_mask;
 	enum intel_display_power_domain domain;
 	bool err = false;
 
 	err |= !assert_async_put_domain_masks_disjoint(power_domains);
 	__async_put_domains_mask(power_domains, &async_put_mask);
-	err |= drm_WARN_ON(&i915->drm,
+	err |= drm_WARN_ON(display->drm,
 			   !!power_domains->async_put_wakeref !=
 			   !bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM));
 
 	for_each_power_domain(domain, &async_put_mask)
-		err |= drm_WARN_ON(&i915->drm,
+		err |= drm_WARN_ON(display->drm,
 				   power_domains->domain_use_count[domain] != 1);
 
 	return !err;
@@ -376,27 +374,27 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
 static void print_power_domains(struct i915_power_domains *power_domains,
 				const char *prefix, struct intel_power_domain_mask *mask)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 	enum intel_display_power_domain domain;
 
-	drm_dbg(&i915->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));
+	drm_dbg_kms(display->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));
 	for_each_power_domain(domain, mask)
-		drm_dbg(&i915->drm, "%s use_count %d\n",
-			intel_display_power_domain_str(domain),
-			power_domains->domain_use_count[domain]);
+		drm_dbg_kms(display->drm, "%s use_count %d\n",
+			    intel_display_power_domain_str(domain),
+			    power_domains->domain_use_count[domain]);
 }
 
 static void
 print_async_put_domains_state(struct i915_power_domains *power_domains)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 
-	drm_dbg(&i915->drm, "async_put_wakeref: %s\n",
-		str_yes_no(power_domains->async_put_wakeref));
+	drm_dbg_kms(display->drm, "async_put_wakeref: %s\n",
+		    str_yes_no(power_domains->async_put_wakeref));
 
 	print_power_domains(power_domains, "async_put_domains[0]",
 			    &power_domains->async_put_domains[0]);
@@ -456,10 +454,11 @@ cancel_async_put_work(struct i915_power_domains *power_domains, bool sync)
 }
 
 static bool
-intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
+intel_display_power_grab_async_put_ref(struct intel_display *display,
 				       enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	bool ret = false;
 
@@ -485,14 +484,13 @@ intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
 }
 
 static void
-__intel_display_power_get_domain(struct drm_i915_private *dev_priv,
+__intel_display_power_get_domain(struct intel_display *display,
 				 enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 
-	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
+	if (intel_display_power_grab_async_put_ref(display, domain))
 		return;
 
 	for_each_power_domain_well(display, power_well, domain)
@@ -516,11 +514,12 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
 intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 					enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
 	mutex_lock(&power_domains->lock);
-	__intel_display_power_get_domain(dev_priv, domain);
+	__intel_display_power_get_domain(display, domain);
 	mutex_unlock(&power_domains->lock);
 
 	return wakeref;
@@ -542,7 +541,8 @@ intel_wakeref_t
 intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 				   enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref;
 	bool is_enabled;
 
@@ -552,8 +552,8 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 
 	mutex_lock(&power_domains->lock);
 
-	if (__intel_display_power_is_enabled(dev_priv, domain)) {
-		__intel_display_power_get_domain(dev_priv, domain);
+	if (__intel_display_power_is_enabled(display, domain)) {
+		__intel_display_power_get_domain(display, domain);
 		is_enabled = true;
 	} else {
 		is_enabled = false;
@@ -570,22 +570,19 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 }
 
 static void
-__intel_display_power_put_domain(struct drm_i915_private *dev_priv,
+__intel_display_power_put_domain(struct intel_display *display,
 				 enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct i915_power_domains *power_domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 	const char *name = intel_display_power_domain_str(domain);
 	struct intel_power_domain_mask async_put_mask;
 
-	power_domains = &dev_priv->display.power.domains;
-
-	drm_WARN(&dev_priv->drm, !power_domains->domain_use_count[domain],
+	drm_WARN(display->drm, !power_domains->domain_use_count[domain],
 		 "Use count on domain %s is already zero\n",
 		 name);
 	async_put_domains_mask(power_domains, &async_put_mask);
-	drm_WARN(&dev_priv->drm,
+	drm_WARN(display->drm,
 		 test_bit(domain, async_put_mask.bits),
 		 "Async disabling of domain %s is pending\n",
 		 name);
@@ -596,13 +593,13 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
 		intel_power_well_put(display, power_well);
 }
 
-static void __intel_display_power_put(struct drm_i915_private *dev_priv,
+static void __intel_display_power_put(struct intel_display *display,
 				      enum intel_display_power_domain domain)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	mutex_lock(&power_domains->lock);
-	__intel_display_power_put_domain(dev_priv, domain);
+	__intel_display_power_put_domain(display, domain);
 	mutex_unlock(&power_domains->lock);
 }
 
@@ -611,23 +608,24 @@ queue_async_put_domains_work(struct i915_power_domains *power_domains,
 			     intel_wakeref_t wakeref,
 			     int delay_ms)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
-	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
+	drm_WARN_ON(display->drm, power_domains->async_put_wakeref);
 	power_domains->async_put_wakeref = wakeref;
-	drm_WARN_ON(&i915->drm, !queue_delayed_work(system_unbound_wq,
-						    &power_domains->async_put_work,
-						    msecs_to_jiffies(delay_ms)));
+	drm_WARN_ON(display->drm, !queue_delayed_work(system_unbound_wq,
+						      &power_domains->async_put_work,
+						      msecs_to_jiffies(delay_ms)));
 }
 
 static void
 release_async_put_domains(struct i915_power_domains *power_domains,
 			  struct intel_power_domain_mask *mask)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(power_domains, struct drm_i915_private,
-			     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
@@ -637,7 +635,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	for_each_power_domain(domain, mask) {
 		/* Clear before put, so put's sanity check is happy. */
 		async_put_domains_clear_domain(power_domains, domain);
-		__intel_display_power_put_domain(dev_priv, domain);
+		__intel_display_power_put_domain(display, domain);
 	}
 
 	intel_runtime_pm_put(rpm, wakeref);
@@ -646,10 +644,10 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 static void
 intel_display_power_put_async_work(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv =
-		container_of(work, struct drm_i915_private,
-			     display.power.domains.async_put_work.work);
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = container_of(work, struct intel_display,
+						     power.domains.async_put_work.work);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t new_work_wakeref = intel_runtime_pm_get_raw(rpm);
 	intel_wakeref_t old_work_wakeref = NULL;
@@ -715,7 +713,8 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     intel_wakeref_t wakeref,
 				     int delay_ms)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
 
@@ -724,12 +723,12 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 	mutex_lock(&power_domains->lock);
 
 	if (power_domains->domain_use_count[domain] > 1) {
-		__intel_display_power_put_domain(i915, domain);
+		__intel_display_power_put_domain(display, domain);
 
 		goto out_verify;
 	}
 
-	drm_WARN_ON(&i915->drm, power_domains->domain_use_count[domain] != 1);
+	drm_WARN_ON(display->drm, power_domains->domain_use_count[domain] != 1);
 
 	/* Let a pending work requeue itself or queue a new one. */
 	if (power_domains->async_put_wakeref) {
@@ -768,7 +767,8 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
  */
 void intel_display_power_flush_work(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	intel_wakeref_t work_wakeref;
 
@@ -793,22 +793,23 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 
 /**
  * intel_display_power_flush_work_sync - flushes and syncs the async display power disabling work
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Like intel_display_power_flush_work(), but also ensure that the work
  * handler function is not running any more when this function returns.
  */
 static void
-intel_display_power_flush_work_sync(struct drm_i915_private *i915)
+intel_display_power_flush_work_sync(struct intel_display *display)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	intel_display_power_flush_work(i915);
 	cancel_async_put_work(power_domains, true);
 
 	verify_async_put_domains_state(power_domains);
 
-	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
+	drm_WARN_ON(display->drm, power_domains->async_put_wakeref);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
@@ -826,7 +827,9 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref)
 {
-	__intel_display_power_put(dev_priv, domain);
+	struct intel_display *display = &dev_priv->display;
+
+	__intel_display_power_put(display, domain);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 }
 #else
@@ -846,7 +849,9 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
 				       enum intel_display_power_domain domain)
 {
-	__intel_display_power_put(dev_priv, domain);
+	struct intel_display *display = &dev_priv->display;
+
+	__intel_display_power_put(display, domain);
 	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
 }
 #endif
@@ -856,9 +861,10 @@ intel_display_power_get_in_set(struct drm_i915_private *i915,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t __maybe_unused wf;
 
-	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
+	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
 	wf = intel_display_power_get(i915, domain);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
@@ -872,9 +878,10 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 					  struct intel_display_power_domain_set *power_domain_set,
 					  enum intel_display_power_domain domain)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t wf;
 
-	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
+	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
 	wf = intel_display_power_get_if_enabled(i915, domain);
 	if (!wf)
@@ -893,9 +900,10 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 				    struct intel_display_power_domain_set *power_domain_set,
 				    struct intel_power_domain_mask *mask)
 {
+	struct intel_display *display = &i915->display;
 	enum intel_display_power_domain domain;
 
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
 
 	for_each_power_domain(domain, mask) {
@@ -910,8 +918,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 }
 
 static int
-sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
-				   int disable_power_well)
+sanitize_disable_power_well_option(int disable_power_well)
 {
 	if (disable_power_well >= 0)
 		return !!disable_power_well;
@@ -919,27 +926,26 @@ sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
 	return 1;
 }
 
-static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
-			       int enable_dc)
+static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 {
 	u32 mask;
 	int requested_dc;
 	int max_dc;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return 0;
 
-	if (DISPLAY_VER(dev_priv) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		max_dc = 2;
-	else if (IS_DG2(dev_priv))
+	else if (display->platform.dg2)
 		max_dc = 1;
-	else if (IS_DG1(dev_priv))
+	else if (display->platform.dg1)
 		max_dc = 3;
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		max_dc = 4;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		max_dc = 1;
-	else if (DISPLAY_VER(dev_priv) >= 9)
+	else if (DISPLAY_VER(display) >= 9)
 		max_dc = 2;
 	else
 		max_dc = 0;
@@ -949,11 +955,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	 * not depending on the DMC firmware. It's needed by system
 	 * suspend/resume, so allow it unconditionally.
 	 */
-	mask = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
-		DISPLAY_VER(dev_priv) >= 11 ?
-	       DC_STATE_EN_DC9 : 0;
+	mask = display->platform.geminilake || display->platform.broxton ||
+		DISPLAY_VER(display) >= 11 ? DC_STATE_EN_DC9 : 0;
 
-	if (!dev_priv->display.params.disable_power_well)
+	if (!display->params.disable_power_well)
 		max_dc = 0;
 
 	if (enable_dc >= 0 && enable_dc <= max_dc) {
@@ -961,12 +966,12 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	} else if (enable_dc == -1) {
 		requested_dc = max_dc;
 	} else if (enable_dc > max_dc && enable_dc <= 4) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Adjusting requested max DC state (%d->%d)\n",
 			    enable_dc, max_dc);
 		requested_dc = max_dc;
 	} else {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Unexpected value for enable_dc (%d)\n", enable_dc);
 		requested_dc = max_dc;
 	}
@@ -986,7 +991,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "Allowed DC state mask %02x\n", mask);
+	drm_dbg_kms(display->drm, "Allowed DC state mask %02x\n", mask);
 
 	return mask;
 }
@@ -1000,16 +1005,16 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
  */
 int intel_power_domains_init(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
-	dev_priv->display.params.disable_power_well =
-		sanitize_disable_power_well_option(dev_priv,
-						   dev_priv->display.params.disable_power_well);
+	display->params.disable_power_well =
+		sanitize_disable_power_well_option(display->params.disable_power_well);
 	power_domains->allowed_dc_mask =
-		get_allowed_dc_mask(dev_priv, dev_priv->display.params.enable_dc);
+		get_allowed_dc_mask(display, display->params.enable_dc);
 
 	power_domains->target_dc_state =
-		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
+		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 
 	mutex_init(&power_domains->lock);
 
@@ -1027,13 +1032,14 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
  */
 void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
 {
-	intel_display_power_map_cleanup(&dev_priv->display.power.domains);
+	struct intel_display *display = &dev_priv->display;
+
+	intel_display_power_map_cleanup(&display->power.domains);
 }
 
-static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
+static void intel_power_domains_sync_hw(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
@@ -1042,19 +1048,19 @@ static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 	mutex_unlock(&power_domains->lock);
 }
 
-static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
+static void gen9_dbuf_slice_set(struct intel_display *display,
 				enum dbuf_slice slice, bool enable)
 {
 	i915_reg_t reg = DBUF_CTL_S(slice);
 	bool state;
 
-	intel_de_rmw(dev_priv, reg, DBUF_POWER_REQUEST,
+	intel_de_rmw(display, reg, DBUF_POWER_REQUEST,
 		     enable ? DBUF_POWER_REQUEST : 0);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(10);
 
-	state = intel_de_read(dev_priv, reg) & DBUF_POWER_STATE;
-	drm_WARN(&dev_priv->drm, enable != state,
+	state = intel_de_read(display, reg) & DBUF_POWER_STATE;
+	drm_WARN(display->drm, enable != state,
 		 "DBuf slice %d power %s timeout!\n",
 		 slice, str_enable_disable(enable));
 }
@@ -1062,15 +1068,16 @@ static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
 void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 			     u8 req_slices)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
-	u8 slice_mask = DISPLAY_INFO(dev_priv)->dbuf.slice_mask;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
+	u8 slice_mask = DISPLAY_INFO(display)->dbuf.slice_mask;
 	enum dbuf_slice slice;
 
-	drm_WARN(&dev_priv->drm, req_slices & ~slice_mask,
+	drm_WARN(display->drm, req_slices & ~slice_mask,
 		 "Invalid set of dbuf slices (0x%x) requested (total dbuf slices 0x%x)\n",
 		 req_slices, slice_mask);
 
-	drm_dbg_kms(&dev_priv->drm, "Updating dbuf slices to 0x%x\n",
+	drm_dbg_kms(display->drm, "Updating dbuf slices to 0x%x\n",
 		    req_slices);
 
 	/*
@@ -1082,24 +1089,24 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	 */
 	mutex_lock(&power_domains->lock);
 
-	for_each_dbuf_slice(dev_priv, slice)
-		gen9_dbuf_slice_set(dev_priv, slice, req_slices & BIT(slice));
+	for_each_dbuf_slice(display, slice)
+		gen9_dbuf_slice_set(display, slice, req_slices & BIT(slice));
 
-	dev_priv->display.dbuf.enabled_slices = req_slices;
+	display->dbuf.enabled_slices = req_slices;
 
 	mutex_unlock(&power_domains->lock);
 }
 
-static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
+static void gen9_dbuf_enable(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u8 slices_mask;
 
-	dev_priv->display.dbuf.enabled_slices =
-		intel_enabled_dbuf_slices_mask(dev_priv);
+	display->dbuf.enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
 
-	slices_mask = BIT(DBUF_S1) | dev_priv->display.dbuf.enabled_slices;
+	slices_mask = BIT(DBUF_S1) | display->dbuf.enabled_slices;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		intel_pmdemand_program_dbuf(dev_priv, slices_mask);
 
 	/*
@@ -1109,33 +1116,35 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	gen9_dbuf_slices_update(dev_priv, slices_mask);
 }
 
-static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
+static void gen9_dbuf_disable(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	gen9_dbuf_slices_update(dev_priv, 0);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		intel_pmdemand_program_dbuf(dev_priv, 0);
 }
 
-static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
+static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (display->platform.alderlake_p)
 		return;
 
-	for_each_dbuf_slice(dev_priv, slice)
-		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
+	for_each_dbuf_slice(display, slice)
+		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
 			     DBUF_TRACKER_STATE_SERVICE(8));
 }
 
-static void icl_mbus_init(struct drm_i915_private *dev_priv)
+static void icl_mbus_init(struct intel_display *display)
 {
-	unsigned long abox_regs = DISPLAY_INFO(dev_priv)->abox_mask;
+	unsigned long abox_regs = DISPLAY_INFO(display)->abox_mask;
 	u32 mask, val, i;
 
-	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
+	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
 		return;
 
 	mask = MBUS_ABOX_BT_CREDIT_POOL1_MASK |
@@ -1152,16 +1161,16 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 	 * expect us to program the abox_ctl0 register as well, even though
 	 * we don't have to program other instance-0 registers like BW_BUDDY.
 	 */
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (DISPLAY_VER(display) == 12)
 		abox_regs |= BIT(0);
 
 	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
-		intel_de_rmw(dev_priv, MBUS_ABOX_CTL(i), mask, val);
+		intel_de_rmw(display, MBUS_ABOX_CTL(i), mask, val);
 }
 
-static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
+static void hsw_assert_cdclk(struct intel_display *display)
 {
-	u32 val = intel_de_read(dev_priv, LCPLL_CTL);
+	u32 val = intel_de_read(display, LCPLL_CTL);
 
 	/*
 	 * The LCPLL register should be turned on by the BIOS. For now
@@ -1170,18 +1179,18 @@ static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
 	 */
 
 	if (val & LCPLL_CD_SOURCE_FCLK)
-		drm_err(&dev_priv->drm, "CDCLK source is not LCPLL\n");
+		drm_err(display->drm, "CDCLK source is not LCPLL\n");
 
 	if (val & LCPLL_PLL_DISABLE)
-		drm_err(&dev_priv->drm, "LCPLL is disabled\n");
+		drm_err(display->drm, "LCPLL is disabled\n");
 
 	if ((val & LCPLL_REF_MASK) != LCPLL_REF_NON_SSC)
-		drm_err(&dev_priv->drm, "LCPLL not using non-SSC reference\n");
+		drm_err(display->drm, "LCPLL not using non-SSC reference\n");
 }
 
-static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
+static void assert_can_disable_lcpll(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(display->drm, crtc)
@@ -1206,7 +1215,7 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 	INTEL_DISPLAY_STATE_WARN(display,
 				 intel_de_read(display, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
 				 "CPU PWM1 enabled\n");
-	if (IS_HASWELL(dev_priv))
+	if (display->platform.haswell)
 		INTEL_DISPLAY_STATE_WARN(display,
 					 intel_de_read(display, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
 					 "CPU PWM2 enabled\n");
@@ -1230,23 +1239,24 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 				 "IRQs enabled\n");
 }
 
-static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
+static u32 hsw_read_dcomp(struct intel_display *display)
 {
-	if (IS_HASWELL(dev_priv))
-		return intel_de_read(dev_priv, D_COMP_HSW);
+	if (display->platform.haswell)
+		return intel_de_read(display, D_COMP_HSW);
 	else
-		return intel_de_read(dev_priv, D_COMP_BDW);
+		return intel_de_read(display, D_COMP_BDW);
 }
 
-static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
+static void hsw_write_dcomp(struct intel_display *display, u32 val)
 {
-	if (IS_HASWELL(dev_priv)) {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (display->platform.haswell) {
 		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
-			drm_dbg_kms(&dev_priv->drm,
-				    "Failed to write to D_COMP\n");
+			drm_dbg_kms(display->drm, "Failed to write to D_COMP\n");
 	} else {
-		intel_de_write(dev_priv, D_COMP_BDW, val);
-		intel_de_posting_read(dev_priv, D_COMP_BDW);
+		intel_de_write(display, D_COMP_BDW, val);
+		intel_de_posting_read(display, D_COMP_BDW);
 	}
 }
 
@@ -1258,45 +1268,45 @@ static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
  * register. Callers should take care of disabling all the display engine
  * functions, doing the mode unset, fixing interrupts, etc.
  */
-static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
+static void hsw_disable_lcpll(struct intel_display *display,
 			      bool switch_to_fclk, bool allow_power_down)
 {
 	u32 val;
 
-	assert_can_disable_lcpll(dev_priv);
+	assert_can_disable_lcpll(display);
 
-	val = intel_de_read(dev_priv, LCPLL_CTL);
+	val = intel_de_read(display, LCPLL_CTL);
 
 	if (switch_to_fclk) {
 		val |= LCPLL_CD_SOURCE_FCLK;
-		intel_de_write(dev_priv, LCPLL_CTL, val);
+		intel_de_write(display, LCPLL_CTL, val);
 
-		if (wait_for_us(intel_de_read(dev_priv, LCPLL_CTL) &
+		if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
 				LCPLL_CD_SOURCE_FCLK_DONE, 1))
-			drm_err(&dev_priv->drm, "Switching to FCLK failed\n");
+			drm_err(display->drm, "Switching to FCLK failed\n");
 
-		val = intel_de_read(dev_priv, LCPLL_CTL);
+		val = intel_de_read(display, LCPLL_CTL);
 	}
 
 	val |= LCPLL_PLL_DISABLE;
-	intel_de_write(dev_priv, LCPLL_CTL, val);
-	intel_de_posting_read(dev_priv, LCPLL_CTL);
+	intel_de_write(display, LCPLL_CTL, val);
+	intel_de_posting_read(display, LCPLL_CTL);
 
-	if (intel_de_wait_for_clear(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "LCPLL still locked\n");
+	if (intel_de_wait_for_clear(display, LCPLL_CTL, LCPLL_PLL_LOCK, 1))
+		drm_err(display->drm, "LCPLL still locked\n");
 
-	val = hsw_read_dcomp(dev_priv);
+	val = hsw_read_dcomp(display);
 	val |= D_COMP_COMP_DISABLE;
-	hsw_write_dcomp(dev_priv, val);
+	hsw_write_dcomp(display, val);
 	ndelay(100);
 
-	if (wait_for((hsw_read_dcomp(dev_priv) &
+	if (wait_for((hsw_read_dcomp(display) &
 		      D_COMP_RCOMP_IN_PROGRESS) == 0, 1))
-		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
+		drm_err(display->drm, "D_COMP RCOMP still in progress\n");
 
 	if (allow_power_down) {
-		intel_de_rmw(dev_priv, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
-		intel_de_posting_read(dev_priv, LCPLL_CTL);
+		intel_de_rmw(display, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
+		intel_de_posting_read(display, LCPLL_CTL);
 	}
 }
 
@@ -1304,12 +1314,12 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
  * Fully restores LCPLL, disallowing power down and switching back to LCPLL
  * source.
  */
-static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
+static void hsw_restore_lcpll(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	val = intel_de_read(dev_priv, LCPLL_CTL);
+	val = intel_de_read(display, LCPLL_CTL);
 
 	if ((val & (LCPLL_PLL_LOCK | LCPLL_PLL_DISABLE | LCPLL_CD_SOURCE_FCLK |
 		    LCPLL_POWER_DOWN_ALLOW)) == LCPLL_PLL_LOCK)
@@ -1323,28 +1333,28 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 
 	if (val & LCPLL_POWER_DOWN_ALLOW) {
 		val &= ~LCPLL_POWER_DOWN_ALLOW;
-		intel_de_write(dev_priv, LCPLL_CTL, val);
-		intel_de_posting_read(dev_priv, LCPLL_CTL);
+		intel_de_write(display, LCPLL_CTL, val);
+		intel_de_posting_read(display, LCPLL_CTL);
 	}
 
-	val = hsw_read_dcomp(dev_priv);
+	val = hsw_read_dcomp(display);
 	val |= D_COMP_COMP_FORCE;
 	val &= ~D_COMP_COMP_DISABLE;
-	hsw_write_dcomp(dev_priv, val);
+	hsw_write_dcomp(display, val);
 
-	val = intel_de_read(dev_priv, LCPLL_CTL);
+	val = intel_de_read(display, LCPLL_CTL);
 	val &= ~LCPLL_PLL_DISABLE;
-	intel_de_write(dev_priv, LCPLL_CTL, val);
+	intel_de_write(display, LCPLL_CTL, val);
 
-	if (intel_de_wait_for_set(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
-		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
+	if (intel_de_wait_for_set(display, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
+		drm_err(display->drm, "LCPLL not locked yet\n");
 
 	if (val & LCPLL_CD_SOURCE_FCLK) {
-		intel_de_rmw(dev_priv, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
+		intel_de_rmw(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
 
-		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
+		if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
 				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Switching back to LCPLL failed\n");
 	}
 
@@ -1377,36 +1387,42 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
  * For more, read "Display Sequences for Package C8" on the hardware
  * documentation.
  */
-static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
+static void hsw_enable_pc8(struct intel_display *display)
 {
-	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	drm_dbg_kms(display->drm, "Enabling package C8+\n");
 
 	if (HAS_PCH_LPT_LP(dev_priv))
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
 
 	lpt_disable_clkout_dp(dev_priv);
-	hsw_disable_lcpll(dev_priv, true, true);
+	hsw_disable_lcpll(display, true, true);
 }
 
-static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
+static void hsw_disable_pc8(struct intel_display *display)
 {
-	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	drm_dbg_kms(display->drm, "Disabling package C8+\n");
 
-	hsw_restore_lcpll(dev_priv);
+	hsw_restore_lcpll(display);
 	intel_init_pch_refclk(dev_priv);
 
 	/* Many display registers don't survive PC8+ */
+#ifdef I915 /* FIXME */
 	intel_clock_gating_init(dev_priv);
+#endif
 }
 
-static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
+static void intel_pch_reset_handshake(struct intel_display *display,
 				      bool enable)
 {
 	i915_reg_t reg;
 	u32 reset_bits;
 
-	if (IS_IVYBRIDGE(dev_priv)) {
+	if (display->platform.ivybridge) {
 		reg = GEN7_MSG_CTL;
 		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;
 	} else {
@@ -1414,25 +1430,25 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 		reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
 
-	intel_de_rmw(dev_priv, reg, reset_bits, enable ? reset_bits : 0);
+	intel_de_rmw(display, reg, reset_bits, enable ? reset_bits : 0);
 }
 
-static void skl_display_core_init(struct drm_i915_private *dev_priv,
+static void skl_display_core_init(struct intel_display *display,
 				  bool resume)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(display, DC_STATE_DISABLE);
 
 	/* enable PCH reset handshake */
-	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
+	intel_pch_reset_handshake(display, !HAS_PCH_NOP(dev_priv));
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* enable PG1 and Misc I/O */
@@ -1448,25 +1464,24 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	intel_cdclk_init_hw(display);
 
-	gen9_dbuf_enable(dev_priv);
+	gen9_dbuf_enable(display);
 
 	if (resume)
 		intel_dmc_load_program(display);
 }
 
-static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
+static void skl_display_core_uninit(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	gen9_disable_dc_states(display);
 	/* TODO: disable DMC program */
 
-	gen9_dbuf_disable(dev_priv);
+	gen9_dbuf_disable(display);
 
 	intel_cdclk_uninit_hw(display);
 
@@ -1489,9 +1504,8 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 	usleep_range(10, 30);		/* 10 us delay per Bspec */
 }
 
-static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume)
+static void bxt_display_core_init(struct intel_display *display, bool resume)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
@@ -1503,9 +1517,9 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 	 * Move the handshake programming to initialization sequence.
 	 * Previously was left up to BIOS.
 	 */
-	intel_pch_reset_handshake(dev_priv, false);
+	intel_pch_reset_handshake(display, false);
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* Enable PG1 */
@@ -1518,25 +1532,24 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	intel_cdclk_init_hw(display);
 
-	gen9_dbuf_enable(dev_priv);
+	gen9_dbuf_enable(display);
 
 	if (resume)
 		intel_dmc_load_program(display);
 }
 
-static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
+static void bxt_display_core_uninit(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	gen9_disable_dc_states(display);
 	/* TODO: disable DMC program */
 
-	gen9_dbuf_disable(dev_priv);
+	gen9_dbuf_disable(display);
 
 	intel_cdclk_uninit_hw(display);
 
@@ -1587,20 +1600,21 @@ static const struct buddy_page_mask wa_1409767108_buddy_page_masks[] = {
 	{}
 };
 
-static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
+static void tgl_bw_buddy_init(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum intel_dram_type type = dev_priv->dram_info.type;
 	u8 num_channels = dev_priv->dram_info.num_channels;
 	const struct buddy_page_mask *table;
-	unsigned long abox_mask = DISPLAY_INFO(dev_priv)->abox_mask;
+	unsigned long abox_mask = DISPLAY_INFO(display)->abox_mask;
 	int config, i;
 
 	/* BW_BUDDY registers are not used on dgpu's beyond DG1 */
-	if (IS_DGFX(dev_priv) && !IS_DG1(dev_priv))
+	if (display->platform.dgfx && !display->platform.dg1)
 		return;
 
-	if (IS_ALDERLAKE_S(dev_priv) ||
-	    (IS_ROCKETLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
+	if (display->platform.alderlake_s ||
+	    (display->platform.rocketlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
@@ -1612,29 +1626,29 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 			break;
 
 	if (table[config].page_mask == 0) {
-		drm_dbg(&dev_priv->drm,
-			"Unknown memory configuration; disabling address buddy logic.\n");
+		drm_dbg_kms(display->drm,
+			    "Unknown memory configuration; disabling address buddy logic.\n");
 		for_each_set_bit(i, &abox_mask, sizeof(abox_mask))
-			intel_de_write(dev_priv, BW_BUDDY_CTL(i),
+			intel_de_write(display, BW_BUDDY_CTL(i),
 				       BW_BUDDY_DISABLE);
 	} else {
 		for_each_set_bit(i, &abox_mask, sizeof(abox_mask)) {
-			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
+			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
 				       table[config].page_mask);
 
 			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
-			if (DISPLAY_VER(dev_priv) == 12)
-				intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
+			if (DISPLAY_VER(display) == 12)
+				intel_de_rmw(display, BW_BUDDY_CTL(i),
 					     BW_BUDDY_TLB_REQ_TIMER_MASK,
 					     BW_BUDDY_TLB_REQ_TIMER(0x8));
 		}
 	}
 }
 
-static void icl_display_core_init(struct drm_i915_private *dev_priv,
+static void icl_display_core_init(struct intel_display *display,
 				  bool resume)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
@@ -1643,13 +1657,13 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
 	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
 			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
 
 	/* 1. Enable PCH reset handshake. */
-	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
+	intel_pch_reset_handshake(display, !HAS_PCH_NOP(dev_priv));
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* 2. Initialize all combo phys */
@@ -1664,63 +1678,63 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	intel_power_well_enable(display, well);
 	mutex_unlock(&power_domains->lock);
 
-	if (DISPLAY_VER(dev_priv) == 14)
-		intel_de_rmw(dev_priv, DC_STATE_EN,
+	if (DISPLAY_VER(display) == 14)
+		intel_de_rmw(display, DC_STATE_EN,
 			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
 
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		gen12_dbuf_slices_config(dev_priv);
+	if (DISPLAY_VER(display) >= 12)
+		gen12_dbuf_slices_config(display);
 
 	/* 5. Enable DBUF. */
-	gen9_dbuf_enable(dev_priv);
+	gen9_dbuf_enable(display);
 
 	/* 6. Setup MBUS. */
-	icl_mbus_init(dev_priv);
+	icl_mbus_init(display);
 
 	/* 7. Program arbiter BW_BUDDY registers */
-	if (DISPLAY_VER(dev_priv) >= 12)
-		tgl_bw_buddy_init(dev_priv);
+	if (DISPLAY_VER(display) >= 12)
+		tgl_bw_buddy_init(display);
 
 	/* 8. Ensure PHYs have completed calibration and adaptation */
-	if (IS_DG2(dev_priv))
+	if (display->platform.dg2)
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
 	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
-	if (DISPLAY_VERx100(dev_priv) == 1401)
-		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
+	if (DISPLAY_VERx100(display) == 1401)
+		intel_de_rmw(display, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
 
 	if (resume)
 		intel_dmc_load_program(display);
 
 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
-	if (IS_DISPLAY_VERx100(dev_priv, 1200, 1300))
-		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
+	if (IS_DISPLAY_VERx100(display, 1200, 1300))
+		intel_de_rmw(display, GEN11_CHICKEN_DCPR_2, 0,
 			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
 
 	/* Wa_14011503030:xelpd */
-	if (DISPLAY_VER(dev_priv) == 13)
-		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+	if (DISPLAY_VER(display) == 13)
+		intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
 
 	/* Wa_15013987218 */
-	if (DISPLAY_VER(dev_priv) == 20) {
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+	if (DISPLAY_VER(display) == 20) {
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
 	}
 }
 
-static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
+static void icl_display_core_uninit(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	gen9_disable_dc_states(display);
@@ -1729,13 +1743,13 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	/* 1. Disable all display engine functions -> aready done */
 
 	/* 2. Disable DBUF */
-	gen9_dbuf_disable(dev_priv);
+	gen9_dbuf_disable(display);
 
 	/* 3. Disable CD clock */
 	intel_cdclk_uninit_hw(display);
 
-	if (DISPLAY_VER(dev_priv) == 14)
-		intel_de_rmw(dev_priv, DC_STATE_EN, 0,
+	if (DISPLAY_VER(display) == 14)
+		intel_de_rmw(display, DC_STATE_EN, 0,
 			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH);
 
 	/*
@@ -1752,9 +1766,8 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	intel_combo_phy_uninit(dev_priv);
 }
 
-static void chv_phy_control_init(struct drm_i915_private *dev_priv)
+static void chv_phy_control_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *cmn_bc =
 		lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *cmn_d =
@@ -1767,7 +1780,7 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * power well state and lane status to reconstruct the
 	 * expected initial value.
 	 */
-	dev_priv->display.power.chv_phy_control =
+	display->power.chv_phy_control =
 		PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY0) |
 		PHY_LDO_SEQ_DELAY(PHY_LDO_DELAY_600NS, DPIO_PHY1) |
 		PHY_CH_POWER_MODE(PHY_CH_DEEP_PSR, DPIO_PHY0, DPIO_CH0) |
@@ -1782,38 +1795,38 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 	 * current lane status.
 	 */
 	if (intel_power_well_is_enabled(display, cmn_bc)) {
-		u32 status = intel_de_read(dev_priv, DPLL(dev_priv, PIPE_A));
+		u32 status = intel_de_read(display, DPLL(display, PIPE_A));
 		unsigned int mask;
 
 		mask = status & DPLL_PORTB_READY_MASK;
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->display.power.chv_phy_control |=
+			display->power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH0);
 
-		dev_priv->display.power.chv_phy_control |=
+		display->power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH0);
 
 		mask = (status & DPLL_PORTC_READY_MASK) >> 4;
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->display.power.chv_phy_control |=
+			display->power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0, DPIO_CH1);
 
-		dev_priv->display.power.chv_phy_control |=
+		display->power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY0, DPIO_CH1);
 
-		dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0);
+		display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY0);
 
-		dev_priv->display.power.chv_phy_assert[DPIO_PHY0] = false;
+		display->power.chv_phy_assert[DPIO_PHY0] = false;
 	} else {
-		dev_priv->display.power.chv_phy_assert[DPIO_PHY0] = true;
+		display->power.chv_phy_assert[DPIO_PHY0] = true;
 	}
 
 	if (intel_power_well_is_enabled(display, cmn_d)) {
-		u32 status = intel_de_read(dev_priv, DPIO_PHY_STATUS);
+		u32 status = intel_de_read(display, DPIO_PHY_STATUS);
 		unsigned int mask;
 
 		mask = status & DPLL_PORTD_READY_MASK;
@@ -1821,28 +1834,27 @@ static void chv_phy_control_init(struct drm_i915_private *dev_priv)
 		if (mask == 0xf)
 			mask = 0x0;
 		else
-			dev_priv->display.power.chv_phy_control |=
+			display->power.chv_phy_control |=
 				PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1, DPIO_CH0);
 
-		dev_priv->display.power.chv_phy_control |=
+		display->power.chv_phy_control |=
 			PHY_CH_POWER_DOWN_OVRD(mask, DPIO_PHY1, DPIO_CH0);
 
-		dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1);
+		display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(DPIO_PHY1);
 
-		dev_priv->display.power.chv_phy_assert[DPIO_PHY1] = false;
+		display->power.chv_phy_assert[DPIO_PHY1] = false;
 	} else {
-		dev_priv->display.power.chv_phy_assert[DPIO_PHY1] = true;
+		display->power.chv_phy_assert[DPIO_PHY1] = true;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "Initial PHY_CONTROL=0x%08x\n",
-		    dev_priv->display.power.chv_phy_control);
+	drm_dbg_kms(display->drm, "Initial PHY_CONTROL=0x%08x\n",
+		    display->power.chv_phy_control);
 
 	/* Defer application of initial phy_control to enabling the powerwell */
 }
 
-static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
+static void vlv_cmnlane_wa(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *cmn =
 		lookup_power_well(display, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *disp2d =
@@ -1851,10 +1863,10 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	/* If the display might be already active skip this */
 	if (intel_power_well_is_enabled(display, cmn) &&
 	    intel_power_well_is_enabled(display, disp2d) &&
-	    intel_de_read(dev_priv, DPIO_CTL) & DPIO_CMNRST)
+	    intel_de_read(display, DPIO_CTL) & DPIO_CMNRST)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "toggling display PHY side reset\n");
+	drm_dbg_kms(display->drm, "toggling display PHY side reset\n");
 
 	/* cmnlane needs DPLL registers */
 	intel_power_well_enable(display, disp2d);
@@ -1869,8 +1881,9 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	intel_power_well_disable(display, cmn);
 }
 
-static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0)
+static bool vlv_punit_is_power_gated(struct intel_display *display, u32 reg0)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool ret;
 
 	vlv_punit_get(dev_priv);
@@ -1880,14 +1893,14 @@ static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0
 	return ret;
 }
 
-static void assert_ved_power_gated(struct drm_i915_private *dev_priv)
+static void assert_ved_power_gated(struct intel_display *display)
 {
-	drm_WARN(&dev_priv->drm,
-		 !vlv_punit_is_power_gated(dev_priv, PUNIT_REG_VEDSSPM0),
+	drm_WARN(display->drm,
+		 !vlv_punit_is_power_gated(display, PUNIT_REG_VEDSSPM0),
 		 "VED not power gated\n");
 }
 
-static void assert_isp_power_gated(struct drm_i915_private *dev_priv)
+static void assert_isp_power_gated(struct intel_display *display)
 {
 	static const struct pci_device_id isp_ids[] = {
 		{PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x0f38)},
@@ -1895,12 +1908,12 @@ static void assert_isp_power_gated(struct drm_i915_private *dev_priv)
 		{}
 	};
 
-	drm_WARN(&dev_priv->drm, !pci_dev_present(isp_ids) &&
-		 !vlv_punit_is_power_gated(dev_priv, PUNIT_REG_ISPSSPM0),
+	drm_WARN(display->drm, !pci_dev_present(isp_ids) &&
+		 !vlv_punit_is_power_gated(display, PUNIT_REG_ISPSSPM0),
 		 "ISP not power gated\n");
 }
 
-static void intel_power_domains_verify_state(struct drm_i915_private *dev_priv);
+static void intel_power_domains_verify_state(struct intel_display *display);
 
 /**
  * intel_power_domains_init_hw - initialize hardware power domain state
@@ -1920,32 +1933,33 @@ static void intel_power_domains_verify_state(struct drm_i915_private *dev_priv);
  */
 void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	power_domains->initializing = true;
 
-	if (DISPLAY_VER(i915) >= 11) {
-		icl_display_core_init(i915, resume);
-	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
-		bxt_display_core_init(i915, resume);
-	} else if (DISPLAY_VER(i915) == 9) {
-		skl_display_core_init(i915, resume);
-	} else if (IS_CHERRYVIEW(i915)) {
+	if (DISPLAY_VER(display) >= 11) {
+		icl_display_core_init(display, resume);
+	} else if (display->platform.geminilake || display->platform.broxton) {
+		bxt_display_core_init(display, resume);
+	} else if (DISPLAY_VER(display) == 9) {
+		skl_display_core_init(display, resume);
+	} else if (display->platform.cherryview) {
 		mutex_lock(&power_domains->lock);
-		chv_phy_control_init(i915);
+		chv_phy_control_init(display);
 		mutex_unlock(&power_domains->lock);
-		assert_isp_power_gated(i915);
-	} else if (IS_VALLEYVIEW(i915)) {
+		assert_isp_power_gated(display);
+	} else if (display->platform.valleyview) {
 		mutex_lock(&power_domains->lock);
-		vlv_cmnlane_wa(i915);
+		vlv_cmnlane_wa(display);
 		mutex_unlock(&power_domains->lock);
-		assert_ved_power_gated(i915);
-		assert_isp_power_gated(i915);
-	} else if (IS_BROADWELL(i915) || IS_HASWELL(i915)) {
-		hsw_assert_cdclk(i915);
-		intel_pch_reset_handshake(i915, !HAS_PCH_NOP(i915));
-	} else if (IS_IVYBRIDGE(i915)) {
-		intel_pch_reset_handshake(i915, !HAS_PCH_NOP(i915));
+		assert_ved_power_gated(display);
+		assert_isp_power_gated(display);
+	} else if (display->platform.broadwell || display->platform.haswell) {
+		hsw_assert_cdclk(display);
+		intel_pch_reset_handshake(display, !HAS_PCH_NOP(i915));
+	} else if (display->platform.ivybridge) {
+		intel_pch_reset_handshake(display, !HAS_PCH_NOP(i915));
 	}
 
 	/*
@@ -1954,17 +1968,17 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 	 * resources powered until display HW readout is complete. We drop
 	 * this reference in intel_power_domains_enable().
 	 */
-	drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+	drm_WARN_ON(display->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
 	/* Disable power support if the user asked so. */
-	if (!i915->display.params.disable_power_well) {
-		drm_WARN_ON(&i915->drm, power_domains->disable_wakeref);
-		i915->display.power.domains.disable_wakeref = intel_display_power_get(i915,
-										      POWER_DOMAIN_INIT);
+	if (!display->params.disable_power_well) {
+		drm_WARN_ON(display->drm, power_domains->disable_wakeref);
+		display->power.domains.disable_wakeref = intel_display_power_get(i915,
+										 POWER_DOMAIN_INIT);
 	}
-	intel_power_domains_sync_hw(i915);
+	intel_power_domains_sync_hw(display);
 
 	power_domains->initializing = false;
 }
@@ -1982,17 +1996,18 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
  */
 void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->display.power.domains.init_wakeref);
+		fetch_and_zero(&display->power.domains.init_wakeref);
 
 	/* Remove the refcount we took to keep power well support disabled. */
-	if (!i915->display.params.disable_power_well)
+	if (!display->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
+					fetch_and_zero(&display->power.domains.disable_wakeref));
 
-	intel_display_power_flush_work_sync(i915);
+	intel_display_power_flush_work_sync(display);
 
-	intel_power_domains_verify_state(i915);
+	intel_power_domains_verify_state(display);
 
 	/* Keep the power well enabled, but cancel its rpm wakeref. */
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
@@ -2011,7 +2026,7 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
@@ -2021,7 +2036,7 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
 		    !intel_power_well_is_enabled(display, power_well))
 			continue;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "BIOS left unused %s power well enabled, disabling it\n",
 			    intel_power_well_name(power_well));
 		intel_power_well_disable(display, power_well);
@@ -2044,11 +2059,12 @@ void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
  */
 void intel_power_domains_enable(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->display.power.domains.init_wakeref);
+		fetch_and_zero(&display->power.domains.init_wakeref);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
-	intel_power_domains_verify_state(i915);
+	intel_power_domains_verify_state(display);
 }
 
 /**
@@ -2060,13 +2076,14 @@ void intel_power_domains_enable(struct drm_i915_private *i915)
  */
 void intel_power_domains_disable(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
-	drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+	drm_WARN_ON(display->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
-	intel_power_domains_verify_state(i915);
+	intel_power_domains_verify_state(display);
 }
 
 /**
@@ -2099,7 +2116,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) && s2idle &&
 	    intel_dmc_has_payload(display)) {
 		intel_display_power_flush_work(i915);
-		intel_power_domains_verify_state(i915);
+		intel_power_domains_verify_state(display);
 		return;
 	}
 
@@ -2107,19 +2124,19 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 	 * Even if power well support was disabled we still want to disable
 	 * power wells if power domains must be deinitialized for suspend.
 	 */
-	if (!i915->display.params.disable_power_well)
+	if (!display->params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
-					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
+					fetch_and_zero(&display->power.domains.disable_wakeref));
 
 	intel_display_power_flush_work(i915);
-	intel_power_domains_verify_state(i915);
+	intel_power_domains_verify_state(display);
 
-	if (DISPLAY_VER(i915) >= 11)
-		icl_display_core_uninit(i915);
-	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-		bxt_display_core_uninit(i915);
-	else if (DISPLAY_VER(i915) == 9)
-		skl_display_core_uninit(i915);
+	if (DISPLAY_VER(display) >= 11)
+		icl_display_core_uninit(display);
+	else if (display->platform.geminilake || display->platform.broxton)
+		bxt_display_core_uninit(display);
+	else if (DISPLAY_VER(display) == 9)
+		skl_display_core_uninit(display);
 
 	power_domains->display_core_suspended = true;
 }
@@ -2136,44 +2153,44 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
  */
 void intel_power_domains_resume(struct drm_i915_private *i915)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (power_domains->display_core_suspended) {
 		intel_power_domains_init_hw(i915, true);
 		power_domains->display_core_suspended = false;
 	} else {
-		drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+		drm_WARN_ON(display->drm, power_domains->init_wakeref);
 		power_domains->init_wakeref =
 			intel_display_power_get(i915, POWER_DOMAIN_INIT);
 	}
 
-	intel_power_domains_verify_state(i915);
+	intel_power_domains_verify_state(display);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 
-static void intel_power_domains_dump_info(struct drm_i915_private *i915)
+static void intel_power_domains_dump_info(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 
 	for_each_power_well(display, power_well) {
 		enum intel_display_power_domain domain;
 
-		drm_dbg(&i915->drm, "%-25s %d\n",
-			intel_power_well_name(power_well), intel_power_well_refcount(power_well));
+		drm_dbg_kms(display->drm, "%-25s %d\n",
+			    intel_power_well_name(power_well), intel_power_well_refcount(power_well));
 
 		for_each_power_domain(domain, intel_power_well_domains(power_well))
-			drm_dbg(&i915->drm, "  %-23s %d\n",
-				intel_display_power_domain_str(domain),
-				power_domains->domain_use_count[domain]);
+			drm_dbg_kms(display->drm, "  %-23s %d\n",
+				    intel_display_power_domain_str(domain),
+				    power_domains->domain_use_count[domain]);
 	}
 }
 
 /**
  * intel_power_domains_verify_state - verify the HW/SW state for all power wells
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Verify if the reference count of each power well matches its HW enabled
  * state and the total refcount of the domains it belongs to. This must be
@@ -2181,10 +2198,9 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
  * acquiring reference counts for any power wells in use and disabling the
  * ones left on by BIOS but not required by any active output.
  */
-static void intel_power_domains_verify_state(struct drm_i915_private *i915)
+static void intel_power_domains_verify_state(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *power_well;
 	bool dump_domain_info;
 
@@ -2202,7 +2218,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		if ((intel_power_well_refcount(power_well) ||
 		     intel_power_well_is_always_on(power_well)) !=
 		    enabled)
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"power well %s state mismatch (refcount %d/enabled %d)",
 				intel_power_well_name(power_well),
 				intel_power_well_refcount(power_well), enabled);
@@ -2212,7 +2228,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 			domains_count += power_domains->domain_use_count[domain];
 
 		if (intel_power_well_refcount(power_well) != domains_count) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"power well %s refcount/domain refcount mismatch "
 				"(refcount %d/domains refcount %d)\n",
 				intel_power_well_name(power_well),
@@ -2226,7 +2242,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		static bool dumped;
 
 		if (!dumped) {
-			intel_power_domains_dump_info(i915);
+			intel_power_domains_dump_info(display);
 			dumped = true;
 		}
 	}
@@ -2236,7 +2252,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 #else
 
-static void intel_power_domains_verify_state(struct drm_i915_private *i915)
+static void intel_power_domains_verify_state(struct intel_display *display)
 {
 }
 
@@ -2248,11 +2264,11 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915, bool s2idle
 
 	intel_power_domains_suspend(i915, s2idle);
 
-	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
-	    IS_BROXTON(i915)) {
+	if (DISPLAY_VER(display) >= 11 || display->platform.geminilake ||
+	    display->platform.broxton) {
 		bxt_enable_dc9(display);
-	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-		hsw_enable_pc8(i915);
+	} else if (display->platform.haswell || display->platform.broadwell) {
+		hsw_enable_pc8(display);
 	}
 
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
@@ -2264,12 +2280,12 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
 
-	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
-	    IS_BROXTON(i915)) {
+	if (DISPLAY_VER(display) >= 11 || display->platform.geminilake ||
+	    display->platform.broxton) {
 		gen9_sanitize_dc_state(display);
 		bxt_disable_dc9(display);
-	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-		hsw_disable_pc8(i915);
+	} else if (display->platform.haswell || display->platform.broadwell) {
+		hsw_disable_pc8(display);
 	}
 
 	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
@@ -2283,14 +2299,14 @@ void intel_display_power_suspend(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
 
-	if (DISPLAY_VER(i915) >= 11) {
-		icl_display_core_uninit(i915);
+	if (DISPLAY_VER(display) >= 11) {
+		icl_display_core_uninit(display);
 		bxt_enable_dc9(display);
-	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
-		bxt_display_core_uninit(i915);
+	} else if (display->platform.geminilake || display->platform.broxton) {
+		bxt_display_core_uninit(display);
 		bxt_enable_dc9(display);
-	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-		hsw_enable_pc8(i915);
+	} else if (display->platform.haswell || display->platform.broadwell) {
+		hsw_enable_pc8(display);
 	}
 }
 
@@ -2299,29 +2315,30 @@ void intel_display_power_resume(struct drm_i915_private *i915)
 	struct intel_display *display = &i915->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 
-	if (DISPLAY_VER(i915) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		bxt_disable_dc9(display);
-		icl_display_core_init(i915, true);
+		icl_display_core_init(display, true);
 		if (intel_dmc_has_payload(display)) {
 			if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC6)
 				skl_enable_dc6(display);
 			else if (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5)
 				gen9_enable_dc5(display);
 		}
-	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		bxt_disable_dc9(display);
-		bxt_display_core_init(i915, true);
+		bxt_display_core_init(display, true);
 		if (intel_dmc_has_payload(display) &&
 		    (power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC5))
 			gen9_enable_dc5(display);
-	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-		hsw_disable_pc8(i915);
+	} else if (display->platform.haswell || display->platform.broadwell) {
+		hsw_disable_pc8(display);
 	}
 }
 
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m)
 {
-	struct i915_power_domains *power_domains = &i915->display.power.domains;
+	struct intel_display *display = &i915->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	int i;
 
 	mutex_lock(&power_domains->lock);
@@ -2466,17 +2483,17 @@ d13_port_domains[] = {
 };
 
 static void
-intel_port_domains_for_platform(struct drm_i915_private *i915,
+intel_port_domains_for_platform(struct intel_display *display,
 				const struct intel_ddi_port_domains **domains,
 				int *domains_size)
 {
-	if (DISPLAY_VER(i915) >= 13) {
+	if (DISPLAY_VER(display) >= 13) {
 		*domains = d13_port_domains;
 		*domains_size = ARRAY_SIZE(d13_port_domains);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		*domains = d12_port_domains;
 		*domains_size = ARRAY_SIZE(d12_port_domains);
-	} else if (DISPLAY_VER(i915) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		*domains = d11_port_domains;
 		*domains_size = ARRAY_SIZE(d11_port_domains);
 	} else {
@@ -2486,13 +2503,13 @@ intel_port_domains_for_platform(struct drm_i915_private *i915,
 }
 
 static const struct intel_ddi_port_domains *
-intel_port_domains_for_port(struct drm_i915_private *i915, enum port port)
+intel_port_domains_for_port(struct intel_display *display, enum port port)
 {
 	const struct intel_ddi_port_domains *domains;
 	int domains_size;
 	int i;
 
-	intel_port_domains_for_platform(i915, &domains, &domains_size);
+	intel_port_domains_for_platform(display, &domains, &domains_size);
 	for (i = 0; i < domains_size; i++)
 		if (port >= domains[i].port_start && port <= domains[i].port_end)
 			return &domains[i];
@@ -2503,9 +2520,10 @@ intel_port_domains_for_port(struct drm_i915_private *i915, enum port port)
 enum intel_display_power_domain
 intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
 {
-	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
+	struct intel_display *display = &i915->display;
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(display, port);
 
-	if (drm_WARN_ON(&i915->drm, !domains || domains->ddi_io == POWER_DOMAIN_INVALID))
+	if (drm_WARN_ON(display->drm, !domains || domains->ddi_io == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_PORT_DDI_IO_A;
 
 	return domains->ddi_io + (int)(port - domains->port_start);
@@ -2514,22 +2532,23 @@ intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
 enum intel_display_power_domain
 intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port port)
 {
-	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
+	struct intel_display *display = &i915->display;
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(display, port);
 
-	if (drm_WARN_ON(&i915->drm, !domains || domains->ddi_lanes == POWER_DOMAIN_INVALID))
+	if (drm_WARN_ON(display->drm, !domains || domains->ddi_lanes == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_PORT_DDI_LANES_A;
 
 	return domains->ddi_lanes + (int)(port - domains->port_start);
 }
 
 static const struct intel_ddi_port_domains *
-intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
+intel_port_domains_for_aux_ch(struct intel_display *display, enum aux_ch aux_ch)
 {
 	const struct intel_ddi_port_domains *domains;
 	int domains_size;
 	int i;
 
-	intel_port_domains_for_platform(i915, &domains, &domains_size);
+	intel_port_domains_for_platform(display, &domains, &domains_size);
 	for (i = 0; i < domains_size; i++)
 		if (aux_ch >= domains[i].aux_ch_start && aux_ch <= domains[i].aux_ch_end)
 			return &domains[i];
@@ -2540,9 +2559,10 @@ intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
 enum intel_display_power_domain
 intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
 {
-	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+	struct intel_display *display = &i915->display;
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
-	if (drm_WARN_ON(&i915->drm, !domains || domains->aux_io == POWER_DOMAIN_INVALID))
+	if (drm_WARN_ON(display->drm, !domains || domains->aux_io == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_AUX_IO_A;
 
 	return domains->aux_io + (int)(aux_ch - domains->aux_ch_start);
@@ -2551,9 +2571,10 @@ intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux
 enum intel_display_power_domain
 intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
 {
-	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+	struct intel_display *display = &i915->display;
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
-	if (drm_WARN_ON(&i915->drm, !domains || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID))
+	if (drm_WARN_ON(display->drm, !domains || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_AUX_A;
 
 	return domains->aux_legacy_usbc + (int)(aux_ch - domains->aux_ch_start);
@@ -2562,9 +2583,10 @@ intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch
 enum intel_display_power_domain
 intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
 {
-	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+	struct intel_display *display = &i915->display;
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(display, aux_ch);
 
-	if (drm_WARN_ON(&i915->drm, !domains || domains->aux_tbt == POWER_DOMAIN_INVALID))
+	if (drm_WARN_ON(display->drm, !domains || domains->aux_tbt == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_AUX_TBT1;
 
 	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
-- 
2.39.5

