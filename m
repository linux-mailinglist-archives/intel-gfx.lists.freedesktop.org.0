Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE6E562791
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 02:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1670410E053;
	Fri,  1 Jul 2022 00:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8011510E053
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 00:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656634309; x=1688170309;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XkHYuzmQVXpjpNDry6UuS6o4giaLbLmfXswyElLzvw4=;
 b=U9X79a+McAnu/xGwlTk8qtaumSSe8Kf6xe+24MlfRM6mJuCxx9fgYGSo
 8uJfs0hGyLngTwYxVRTgdOq716fPe2o/I/QEiiHCYhfHlWVjGEj7wgnMn
 RQR2zM8ZNdBHSApelCOx44y7tWLNJOYdyIKPQtNkcjB9421uB+oi+pZr5
 htbH7oMuDCbqxiAXFCJf4GQuOWg09U//yHenRcZCgfOzApF4LTrYWgdEH
 ag3YOWto9Vmck2Xn8zE9bnxv1LH90BNlLYQ6EkmTENQMzvv4byL2IJoLe
 cM4ZBrMSOSKdFAdoo3UmFs6bbpiqydSkeb0sipkTkXdDQ1hzK/R09gVeO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="271275369"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="271275369"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 17:11:48 -0700
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="648112318"
Received: from unerlige-desk.jf.intel.com (HELO unerlige-desk)
 ([10.165.21.210])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 17:11:48 -0700
Date: Thu, 30 Jun 2022 17:11:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <Yr47xCs/JmhX9X7H@unerlige-desk>
References: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 30, 2022 at 09:00:28PM +0000, Stuart Summers wrote:
>In the driver teardown, we are unregistering the gt prior
>to unregistering the PMU. This means there is a small window
>of time in which the application can request metrics from the
>PMU, some of which are calling into the uapi engines list,
>while the engines are not available. In this case we can
>see null pointer dereferences.
>
>Fix this ordering in both the driver load and unload sequences.
>
>Additionally add a check for engine presence to prevent this
>NPD in the event this ordering is accidentally reversed. Print
>a debug message indicating when they aren't available.
>
>v1: Actually address the driver load/unload ordering issue
>
>Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>---

I thought this is likely happening because intel_gpu_top is running in 
the background when i915 is unloaded. I tried a quick repro, I don't see 
the unload succeed ("fatal module in use", not sure if this was a 
partial unload), but when I try to kill intel_gpu_top, I get an NPD.  
This is in the event disable path - i915_pmu_event_stop -> 
i915_pmu_disable.

It's likely that you are seeing a different path (unload) leading to the 
same issue.

I think in i915_pmu_disable/disable should be aware of event->hw.state 
and or pmu->closed states before accessing the event. Maybe like,

if (event->hw.state != PERF_HES_STOPPED && is_engine_event(event)) {

@Tvrtko, wondering if this case is tested by igt@perf_pmu@module-unload. 
I am not clear if we should use event->hw.state or pmu->closed here and 
if/how they are related. IMO, for this issue, the engine check is good 
enough too, so we don't really need the pmu state checks.  Thoughts?

Regards,
Umesh

> drivers/gpu/drm/i915/i915_driver.c | 11 ++---
> drivers/gpu/drm/i915/i915_pmu.c    | 72 +++++++++++++++++-------------
> 2 files changed, 48 insertions(+), 35 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>index deb8a8b76965..ee4dcb85d206 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -717,7 +717,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
> 	struct drm_device *dev = &dev_priv->drm;
>
> 	i915_gem_driver_register(dev_priv);
>-	i915_pmu_register(dev_priv);
>
> 	intel_vgpu_register(dev_priv);
>
>@@ -731,11 +730,12 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
> 	i915_debugfs_register(dev_priv);
> 	i915_setup_sysfs(dev_priv);
>
>+	intel_gt_driver_register(to_gt(dev_priv));
>+
> 	/* Depends on sysfs having been initialized */
>+	i915_pmu_register(dev_priv);
> 	i915_perf_register(dev_priv);
>
>-	intel_gt_driver_register(to_gt(dev_priv));
>-
> 	intel_display_driver_register(dev_priv);
>
> 	intel_power_domains_enable(dev_priv);
>@@ -762,11 +762,12 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>
> 	intel_display_driver_unregister(dev_priv);
>
>-	intel_gt_driver_unregister(to_gt(dev_priv));
>-
> 	i915_perf_unregister(dev_priv);
>+	/* GT should be available until PMU is gone */
> 	i915_pmu_unregister(dev_priv);
>
>+	intel_gt_driver_unregister(to_gt(dev_priv));
>+
> 	i915_teardown_sysfs(dev_priv);
> 	drm_dev_unplug(&dev_priv->drm);
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 958b37123bf1..796a1d8e36f2 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -670,21 +670,28 @@ static void i915_pmu_enable(struct perf_event *event)
> 	if (is_engine_event(event)) {
> 		u8 sample = engine_event_sample(event);
> 		struct intel_engine_cs *engine;
>-
>-		engine = intel_engine_lookup_user(i915,
>-						  engine_event_class(event),
>-						  engine_event_instance(event));
>-
>-		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
>-			     I915_ENGINE_SAMPLE_COUNT);
>-		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
>-			     I915_ENGINE_SAMPLE_COUNT);
>-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>-		GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
>-
>-		engine->pmu.enable |= BIT(sample);
>-		engine->pmu.enable_count[sample]++;
>+		u8 class = engine_event_class(event);
>+		u8 instance = engine_event_instance(event);
>+
>+		engine = intel_engine_lookup_user(i915, class, instance);
>+		if (engine) {
>+			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
>+				     I915_ENGINE_SAMPLE_COUNT);
>+			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
>+				     I915_ENGINE_SAMPLE_COUNT);
>+			GEM_BUG_ON(sample >=
>+				   ARRAY_SIZE(engine->pmu.enable_count));
>+			GEM_BUG_ON(sample >=
>+				   ARRAY_SIZE(engine->pmu.sample));
>+			GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
>+
>+			engine->pmu.enable |= BIT(sample);
>+			engine->pmu.enable_count[sample]++;
>+		} else {
>+			drm_dbg(&i915->drm,
>+				"Invalid engine event: { class:%d, inst:%d }\n",
>+				class, instance);
>+		}
> 	}
>
> 	spin_unlock_irqrestore(&pmu->lock, flags);
>@@ -714,21 +721,26 @@ static void i915_pmu_disable(struct perf_event *event)
> 	if (is_engine_event(event)) {
> 		u8 sample = engine_event_sample(event);
> 		struct intel_engine_cs *engine;
>-
>-		engine = intel_engine_lookup_user(i915,
>-						  engine_event_class(event),
>-						  engine_event_instance(event));
>-
>-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>-		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>-		GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
>-
>-		/*
>-		 * Decrement the reference count and clear the enabled
>-		 * bitmask when the last listener on an event goes away.
>-		 */
>-		if (--engine->pmu.enable_count[sample] == 0)
>-			engine->pmu.enable &= ~BIT(sample);
>+		u8 class = engine_event_class(event);
>+		u8 instance = engine_event_instance(event);
>+
>+		engine = intel_engine_lookup_user(i915, class, instance);
>+		if (engine) {
>+			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>+			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>+			GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
>+
>+			/*
>+			 * Decrement the reference count and clear the enabled
>+			 * bitmask when the last listener on an event goes away.
>+			 */
>+			if (--engine->pmu.enable_count[sample] == 0)
>+				engine->pmu.enable &= ~BIT(sample);
>+		} else {
>+			drm_dbg(&i915->drm,
>+				"Invalid engine event: { class:%d, inst:%d }\n",
>+				class, instance);
>+		}
> 	}
>
> 	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>-- 
>2.25.1
>
