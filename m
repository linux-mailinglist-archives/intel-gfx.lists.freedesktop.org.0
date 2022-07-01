Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727615638F1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 20:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69C818A6BD;
	Fri,  1 Jul 2022 18:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A9B18A6C1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 18:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656698996; x=1688234996;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aiVgIr2OVrajVw7viuatDKo8Ps4a7sk4+I3czYxzm04=;
 b=AEDXKMFYkPMjhG/db2wPihHp/cA3l6cUuGJehNTm1ilx3BuG7F1B2uob
 md+FeSt/Ts0sePFQuoFdXxn9TmYnslwWXmqZukHnOFL79lgKXimyqjfuf
 wAlY5M8WuG/21jF1r6Wb3Fz8XQ0FcAdpKWlZrfLhumYIZU4BTltIOhuOE
 701prXH+28sEicRRf9zL8jYEqE/smDMCyc8f7HJNI28RNU0lTsr/LJvdj
 mqKgarzVbyjyrIuXVCyySS63Gkec0wP17X4fH50+2HbaNB15DsfPbGD2W
 BB6RUQNqsbCCDLwmxpcJpxcKIFUu9fQhiuZ5Dn6ctfO2b79YmhLOjZpIm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="281474080"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="281474080"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 11:09:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="681485990"
Received: from unerlige-desk.jf.intel.com (HELO unerlige-desk)
 ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 11:09:55 -0700
Date: Fri, 1 Jul 2022 11:09:47 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yr84azqlSWFdpQiJ@unerlige-desk>
References: <5535d98d0c1f1fa22e6ca6e8973a05e58a097944.1656622601.git.stuart.summers@intel.com>
 <Yr47xCs/JmhX9X7H@unerlige-desk>
 <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cbfb9255-bd95-87c7-aa9d-e3af56dffd76@linux.intel.com>
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

On Fri, Jul 01, 2022 at 09:37:20AM +0100, Tvrtko Ursulin wrote:
>
>On 01/07/2022 01:11, Umesh Nerlige Ramappa wrote:
>>On Thu, Jun 30, 2022 at 09:00:28PM +0000, Stuart Summers wrote:
>>>In the driver teardown, we are unregistering the gt prior
>>>to unregistering the PMU. This means there is a small window
>>>of time in which the application can request metrics from the
>>>PMU, some of which are calling into the uapi engines list,
>>>while the engines are not available. In this case we can
>>>see null pointer dereferences.
>>>
>>>Fix this ordering in both the driver load and unload sequences.
>>>
>>>Additionally add a check for engine presence to prevent this
>>>NPD in the event this ordering is accidentally reversed. Print
>>>a debug message indicating when they aren't available.
>>>
>>>v1: Actually address the driver load/unload ordering issue
>>>
>>>Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>>>---
>>
>>I thought this is likely happening because intel_gpu_top is running 
>>in the background when i915 is unloaded. I tried a quick repro, I 
>>don't see the unload succeed ("fatal module in use", not sure if 
>>this was a partial unload), but when I try to kill intel_gpu_top, I 
>>get an NPD. This is in the event disable path - i915_pmu_event_stop 
>>-> i915_pmu_disable.
>
>So i915 failed to unload (as expected - with perf events open we 
>elevate the module ref count via i915_pmu_event_init -> drm_dev_get), 
>then you quit intel_gpu_top and get NPD?

I was just trying to point out an instance of the failure that I saw 
when running this execution sequence. This is without any of Stuart's 
changes.

> On the engine lookup?

Don't know if it is specifically engine lookup, but it's in the path of 
i915_pmu_event_stop which executes on killing intel_gpu_top.

> With the re-ordered init/fini sequence as from this patch?
No, without any changes from this thread.

>
>With elevated module count there shouldn't be any unloading happening 
>so I am intrigued.
>
>>It's likely that you are seeing a different path (unload) leading to 
>>the same issue.
>>
>>I think in i915_pmu_disable/disable should be aware of 
>>event->hw.state and or pmu->closed states before accessing the 
>>event. Maybe like,
>>
>>if (event->hw.state != PERF_HES_STOPPED && is_engine_event(event)) {
>>
>>@Tvrtko, wondering if this case is tested by 
>>igt@perf_pmu@module-unload.
>
>A bit yes. From what Stuart wrote it seems the test would need to be 
>extended to cover the case where PMU is getting opened while module 
>unload is in progress.
>
>But the NPD you saw is for the moment confusing so I don't know what 
>is happening.

I guess it's a separate issue. I can check if Stuart's patches resolve 
it and if not, will create a bug.

Regards,
Umesh

>
>>I am not clear if we should use event->hw.state or pmu->closed here 
>>and if/how they are related. IMO, for this issue, the engine check 
>>is good enough too, so we don't really need the pmu state checks.  
>>Thoughts?
>
>Engine check at the moment feels like papering.
>
>Indeed as you say I think the pmu->closed might be the solution. 
>Perhaps the race is as mentioned above. PMU open happening in parallel 
>to unload..
>
>If the sequence of events userspace triggers is:
>
>  i915_pmu_event_init
>  i915_pmu_event_start
>  i915_pmu_enable
>  i915_pmu_event_read
>
>I guess pmu->closed can get set halfway in i915_pmu_event_init. What 
>would be the effect of that.. We'd try to get a module reference while 
>in the process of unloading. Which is probably very bad.. So possibly 
>a final check on pmu->close is needed there. Ho hum.. can it be made 
>safe is the question.
>
>It doesn't explain the NPD on Ctrl-C though.. intel_gpu_top keeps the 
>evens open all the time. So I think more info needed, for me at least.
>
>Regards,
>
>Tvrtko
>
>>
>>Regards,
>>Umesh
>>
>>>drivers/gpu/drm/i915/i915_driver.c | 11 ++---
>>>drivers/gpu/drm/i915/i915_pmu.c    | 72 +++++++++++++++++-------------
>>>2 files changed, 48 insertions(+), 35 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_driver.c 
>>>b/drivers/gpu/drm/i915/i915_driver.c
>>>index deb8a8b76965..ee4dcb85d206 100644
>>>--- a/drivers/gpu/drm/i915/i915_driver.c
>>>+++ b/drivers/gpu/drm/i915/i915_driver.c
>>>@@ -717,7 +717,6 @@ static void i915_driver_register(struct 
>>>drm_i915_private *dev_priv)
>>>    struct drm_device *dev = &dev_priv->drm;
>>>
>>>    i915_gem_driver_register(dev_priv);
>>>-    i915_pmu_register(dev_priv);
>>>
>>>    intel_vgpu_register(dev_priv);
>>>
>>>@@ -731,11 +730,12 @@ static void i915_driver_register(struct 
>>>drm_i915_private *dev_priv)
>>>    i915_debugfs_register(dev_priv);
>>>    i915_setup_sysfs(dev_priv);
>>>
>>>+    intel_gt_driver_register(to_gt(dev_priv));
>>>+
>>>    /* Depends on sysfs having been initialized */
>>>+    i915_pmu_register(dev_priv);
>>>    i915_perf_register(dev_priv);
>>>
>>>-    intel_gt_driver_register(to_gt(dev_priv));
>>>-
>>>    intel_display_driver_register(dev_priv);
>>>
>>>    intel_power_domains_enable(dev_priv);
>>>@@ -762,11 +762,12 @@ static void i915_driver_unregister(struct 
>>>drm_i915_private *dev_priv)
>>>
>>>    intel_display_driver_unregister(dev_priv);
>>>
>>>-    intel_gt_driver_unregister(to_gt(dev_priv));
>>>-
>>>    i915_perf_unregister(dev_priv);
>>>+    /* GT should be available until PMU is gone */
>>>    i915_pmu_unregister(dev_priv);
>>>
>>>+    intel_gt_driver_unregister(to_gt(dev_priv));
>>>+
>>>    i915_teardown_sysfs(dev_priv);
>>>    drm_dev_unplug(&dev_priv->drm);
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>>b/drivers/gpu/drm/i915/i915_pmu.c
>>>index 958b37123bf1..796a1d8e36f2 100644
>>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>@@ -670,21 +670,28 @@ static void i915_pmu_enable(struct 
>>>perf_event *event)
>>>    if (is_engine_event(event)) {
>>>        u8 sample = engine_event_sample(event);
>>>        struct intel_engine_cs *engine;
>>>-
>>>-        engine = intel_engine_lookup_user(i915,
>>>-                          engine_event_class(event),
>>>-                          engine_event_instance(event));
>>>-
>>>-        BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
>>>-                 I915_ENGINE_SAMPLE_COUNT);
>>>-        BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
>>>-                 I915_ENGINE_SAMPLE_COUNT);
>>>-        GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>>>-        GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>>>-        GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
>>>-
>>>-        engine->pmu.enable |= BIT(sample);
>>>-        engine->pmu.enable_count[sample]++;
>>>+        u8 class = engine_event_class(event);
>>>+        u8 instance = engine_event_instance(event);
>>>+
>>>+        engine = intel_engine_lookup_user(i915, class, instance);
>>>+        if (engine) {
>>>+            BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
>>>+                     I915_ENGINE_SAMPLE_COUNT);
>>>+            BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
>>>+                     I915_ENGINE_SAMPLE_COUNT);
>>>+            GEM_BUG_ON(sample >=
>>>+                   ARRAY_SIZE(engine->pmu.enable_count));
>>>+            GEM_BUG_ON(sample >=
>>>+                   ARRAY_SIZE(engine->pmu.sample));
>>>+            GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
>>>+
>>>+            engine->pmu.enable |= BIT(sample);
>>>+            engine->pmu.enable_count[sample]++;
>>>+        } else {
>>>+            drm_dbg(&i915->drm,
>>>+                "Invalid engine event: { class:%d, inst:%d }\n",
>>>+                class, instance);
>>>+        }
>>>    }
>>>
>>>    spin_unlock_irqrestore(&pmu->lock, flags);
>>>@@ -714,21 +721,26 @@ static void i915_pmu_disable(struct 
>>>perf_event *event)
>>>    if (is_engine_event(event)) {
>>>        u8 sample = engine_event_sample(event);
>>>        struct intel_engine_cs *engine;
>>>-
>>>-        engine = intel_engine_lookup_user(i915,
>>>-                          engine_event_class(event),
>>>-                          engine_event_instance(event));
>>>-
>>>-        GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>>>-        GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>>>-        GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
>>>-
>>>-        /*
>>>-         * Decrement the reference count and clear the enabled
>>>-         * bitmask when the last listener on an event goes away.
>>>-         */
>>>-        if (--engine->pmu.enable_count[sample] == 0)
>>>-            engine->pmu.enable &= ~BIT(sample);
>>>+        u8 class = engine_event_class(event);
>>>+        u8 instance = engine_event_instance(event);
>>>+
>>>+        engine = intel_engine_lookup_user(i915, class, instance);
>>>+        if (engine) {
>>>+            GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
>>>+            GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
>>>+            GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
>>>+
>>>+            /*
>>>+             * Decrement the reference count and clear the enabled
>>>+             * bitmask when the last listener on an event goes away.
>>>+             */
>>>+            if (--engine->pmu.enable_count[sample] == 0)
>>>+                engine->pmu.enable &= ~BIT(sample);
>>>+        } else {
>>>+            drm_dbg(&i915->drm,
>>>+                "Invalid engine event: { class:%d, inst:%d }\n",
>>>+                class, instance);
>>>+        }
>>>    }
>>>
>>>    GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>>-- 
>>>2.25.1
>>>
