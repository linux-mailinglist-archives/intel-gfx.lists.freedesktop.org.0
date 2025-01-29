Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C97A21927
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 09:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7273E10E762;
	Wed, 29 Jan 2025 08:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="ydMTnP4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBE010E762
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 08:37:26 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-43635796b48so2740135e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 00:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1738139845; x=1738744645;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=zc3V+o2wCOXE46xhMZS4boIwoAxF1TZD3oJqfRruCk4=;
 b=ydMTnP4UNzXOUL/+ET4bSpyA+UFTInvLP8RU4G0kNzF8Y3+sKFZ3Wo1MDRs80MW0O1
 I7PLwo8bBQKnkga51ZH4DyoD013GxK7aJ1f13F8f54cJhTfVvs54dft1xVgGTpIYkMJ8
 v+uq5SAd6zuEG3/t0MsKKnK/HuRHCn6ZQY8LR3+pgLOa2AtBQwHPrKEQkUQYhLLx7bV8
 VKNNzxGko3ENBcK3TS1lL9SgXTQ7he3ID7ee/omztZQUvL6+R65ISCRn+3q3zYXeoEeQ
 xh+ysWb3cdTR9QpxPLbL7wQ9HfS+k5+Y1py33NXfykTm56noec3il47YRhX0hiqCY7S9
 5BJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738139845; x=1738744645;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zc3V+o2wCOXE46xhMZS4boIwoAxF1TZD3oJqfRruCk4=;
 b=v5rcnWUcszzw/evkIlxTBvYDChjD0gxjq7oXaD3uVxZvd4w6RWdQAw/iGWaedLIv0z
 E0pQR21iCFo10oBelJRocD2ujoOz07p284GPJfscx/80Bx5630kmXUTOrROhPQlCsx6v
 NaLcEALzIvLhcPTx0KKS/8eG8Zy1oufdU8PXC4aphs1TLRpH4qY7rmimigS1+p/ruy7i
 6HF8yJrOPxT8xYs9e3NoImpJAMvUk0oq8LLLyJIu0wTmUgsk1YMwsx5CsoXe5K7Nlw/L
 9CZ9gZ5ycq+GRmaCHS1BoGHhsqRREirf8U7eCYTAjI+J4QDNfdEH+6qEjX5AFteQR8Nl
 aRxw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxLoX7pkkorMHSLt8eeQkPkaosMfB4bPj0q3dt+OIO9WYZoZBV5kOv5B8EXIYrqiP2X/CqRlYazyc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzADd9AyannUq63LvjafH82rHvDYrEfDfi6K6awkptazbU4N5Kf
 2q92AhEl73qdf64YZp6WZgXK/b0GVrsGFKdsEZEb5DgLyj0Hh/vvPK6YBwcgCak=
X-Gm-Gg: ASbGncs8E3IC14UZ/1zYbuzxMTCjrkqovDXVsx7Bn8OjgANkYRIUkDNar1hBDYKlb9n
 n1/lSfFXpSg59KWJitgE0FlWZmGOych7VJQq3GLxEbcfOMuSXztTKFQxIYqzEGbF7ge7N57RZCG
 orkTmhww1W4lvKwYszhuo+fxRE5+pjSS6SpabDAG3re+K8UumwXnO34fIb0v6m/qRqz6D54IpS4
 Qe/NAi5xJKkdwGBQBMvaAmGkkSiusG6EefBRDwbL0rgKHSQwZimCZ947egopG/3R1ryt+Sq3TuG
 mfpkIKLHxUSK5dNFhGMa/kpm34j5FZ8=
X-Google-Smtp-Source: AGHT+IG37TFR71rcBqtnFLoauD5J22uxnlwQwlTmJ38+bCAfPdOwrPDwvVbwqgZbbcYknOjQ+NbgVw==
X-Received: by 2002:a05:600c:220f:b0:42c:baf1:4c7 with SMTP id
 5b1f17b1804b1-438d59582e1mr53011205e9.4.1738139845080; 
 Wed, 29 Jan 2025 00:37:25 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-438d7aa605asm29404695e9.1.2025.01.29.00.37.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2025 00:37:24 -0800 (PST)
Message-ID: <a92a5c5b-f642-4256-ac58-76dc69ebd53f@ursulin.net>
Date: Wed, 29 Jan 2025 08:37:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Kan Liang <kan.liang@linux.intel.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250116222426.77757-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 16/01/2025 22:24, Lucas De Marchi wrote:
> Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU with
> a scope"), there's generic support for system-wide counters and
> integration with cpu hotplug. Set our scope to PERF_PMU_SCOPE_SYS_WIDE
> instead of all the boilerplate code for handling hotplug.

Code removal looks fine to me.

One thing I am unsure of relates to the perf core. Where currently the 
implementation would force userspace to open all events from the same 
PMU provider on the same CPU (so cpu0 after its hotplug capability got 
removed), with PERF_PMU_SCOPE_SYS_WIDE it looks like userspace could 
open events on any online CPU. Do I follow the core code correctly and 
would that cause a problem? Would it cause an inefficiency with grouped 
events?

Regards,

Tvrtko

> Cc: Kan Liang <kan.liang@linux.intel.com>
> Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_module.c |   2 -
>   drivers/gpu/drm/i915/i915_pmu.c    | 114 +----------------------------
>   drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
>   3 files changed, 1 insertion(+), 126 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
> index 7ed6d70389af9..7affe07f84f45 100644
> --- a/drivers/gpu/drm/i915/i915_module.c
> +++ b/drivers/gpu/drm/i915/i915_module.c
> @@ -71,8 +71,6 @@ static const struct {
>   	{ .init = i915_vma_resource_module_init,
>   	  .exit = i915_vma_resource_module_exit },
>   	{ .init = i915_mock_selftests },
> -	{ .init = i915_pmu_init,
> -	  .exit = i915_pmu_exit },
>   	{ .init = i915_pci_register_driver,
>   	  .exit = i915_pci_unregister_driver },
>   	{ .init = i915_perf_sysctl_register,
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index e55db036be1bb..652964ef0643c 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -28,9 +28,6 @@
>   	 BIT(I915_SAMPLE_WAIT) | \
>   	 BIT(I915_SAMPLE_SEMA))
>   
> -static cpumask_t i915_pmu_cpumask;
> -static unsigned int i915_pmu_target_cpu = -1;
> -
>   static struct i915_pmu *event_to_pmu(struct perf_event *event)
>   {
>   	return container_of(event->pmu, struct i915_pmu, base);
> @@ -642,10 +639,6 @@ static int i915_pmu_event_init(struct perf_event *event)
>   	if (event->cpu < 0)
>   		return -EINVAL;
>   
> -	/* only allow running on one cpu at a time */
> -	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
> -		return -EINVAL;
> -
>   	if (is_engine_event(event))
>   		ret = engine_event_init(event);
>   	else
> @@ -940,23 +933,6 @@ static ssize_t i915_pmu_event_show(struct device *dev,
>   	return sprintf(buf, "config=0x%lx\n", eattr->val);
>   }
>   
> -static ssize_t cpumask_show(struct device *dev,
> -			    struct device_attribute *attr, char *buf)
> -{
> -	return cpumap_print_to_pagebuf(true, buf, &i915_pmu_cpumask);
> -}
> -
> -static DEVICE_ATTR_RO(cpumask);
> -
> -static struct attribute *i915_cpumask_attrs[] = {
> -	&dev_attr_cpumask.attr,
> -	NULL,
> -};
> -
> -static const struct attribute_group i915_pmu_cpumask_attr_group = {
> -	.attrs = i915_cpumask_attrs,
> -};
> -
>   #define __event(__counter, __name, __unit) \
>   { \
>   	.counter = (__counter), \
> @@ -1173,92 +1149,12 @@ static void free_event_attributes(struct i915_pmu *pmu)
>   	pmu->pmu_attr = NULL;
>   }
>   
> -static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
> -{
> -	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
> -
> -	/* Select the first online CPU as a designated reader. */
> -	if (cpumask_empty(&i915_pmu_cpumask))
> -		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
> -
> -	return 0;
> -}
> -
> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
> -{
> -	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
> -	unsigned int target = i915_pmu_target_cpu;
> -
> -	/*
> -	 * Unregistering an instance generates a CPU offline event which we must
> -	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
> -	 */
> -	if (!pmu->registered)
> -		return 0;
> -
> -	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
> -		target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
> -
> -		/* Migrate events if there is a valid target */
> -		if (target < nr_cpu_ids) {
> -			cpumask_set_cpu(target, &i915_pmu_cpumask);
> -			i915_pmu_target_cpu = target;
> -		}
> -	}
> -
> -	if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
> -		perf_pmu_migrate_context(&pmu->base, cpu, target);
> -		pmu->cpuhp.cpu = target;
> -	}
> -
> -	return 0;
> -}
> -
> -static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
> -
> -int i915_pmu_init(void)
> -{
> -	int ret;
> -
> -	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> -				      "perf/x86/intel/i915:online",
> -				      i915_pmu_cpu_online,
> -				      i915_pmu_cpu_offline);
> -	if (ret < 0)
> -		pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
> -			  ret);
> -	else
> -		cpuhp_state = ret;
> -
> -	return 0;
> -}
> -
> -void i915_pmu_exit(void)
> -{
> -	if (cpuhp_state != CPUHP_INVALID)
> -		cpuhp_remove_multi_state(cpuhp_state);
> -}
> -
> -static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
> -{
> -	if (cpuhp_state == CPUHP_INVALID)
> -		return -EINVAL;
> -
> -	return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
> -}
> -
> -static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
> -{
> -	cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
> -}
> -
>   void i915_pmu_register(struct drm_i915_private *i915)
>   {
>   	struct i915_pmu *pmu = &i915->pmu;
>   	const struct attribute_group *attr_groups[] = {
>   		&i915_pmu_format_attr_group,
>   		&pmu->events_attr_group,
> -		&i915_pmu_cpumask_attr_group,
>   		NULL
>   	};
>   	int ret = -ENOMEM;
> @@ -1266,7 +1162,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	spin_lock_init(&pmu->lock);
>   	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>   	pmu->timer.function = i915_sample;
> -	pmu->cpuhp.cpu = -1;
>   	init_rc6(pmu);
>   
>   	if (IS_DGFX(i915)) {
> @@ -1295,6 +1190,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   
>   	pmu->base.module	= THIS_MODULE;
>   	pmu->base.task_ctx_nr	= perf_invalid_context;
> +	pmu->base.scope		= PERF_PMU_SCOPE_SYS_WIDE;
>   	pmu->base.event_init	= i915_pmu_event_init;
>   	pmu->base.add		= i915_pmu_event_add;
>   	pmu->base.del		= i915_pmu_event_del;
> @@ -1307,16 +1203,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	if (ret)
>   		goto err_groups;
>   
> -	ret = i915_pmu_register_cpuhp_state(pmu);
> -	if (ret)
> -		goto err_unreg;
> -
>   	pmu->registered = true;
>   
>   	return;
>   
> -err_unreg:
> -	perf_pmu_unregister(&pmu->base);
>   err_groups:
>   	kfree(pmu->base.attr_groups);
>   err_attr:
> @@ -1340,8 +1230,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>   
>   	hrtimer_cancel(&pmu->timer);
>   
> -	i915_pmu_unregister_cpuhp_state(pmu);
> -
>   	perf_pmu_unregister(&pmu->base);
>   	kfree(pmu->base.attr_groups);
>   	if (IS_DGFX(i915))
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 8e66d63d0c9f9..53bce3d8bfbaf 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -56,13 +56,6 @@ struct i915_pmu_sample {
>   };
>   
>   struct i915_pmu {
> -	/**
> -	 * @cpuhp: Struct used for CPU hotplug handling.
> -	 */
> -	struct {
> -		struct hlist_node node;
> -		unsigned int cpu;
> -	} cpuhp;
>   	/**
>   	 * @base: PMU base.
>   	 */
> @@ -155,15 +148,11 @@ struct i915_pmu {
>   };
>   
>   #ifdef CONFIG_PERF_EVENTS
> -int i915_pmu_init(void);
> -void i915_pmu_exit(void);
>   void i915_pmu_register(struct drm_i915_private *i915);
>   void i915_pmu_unregister(struct drm_i915_private *i915);
>   void i915_pmu_gt_parked(struct intel_gt *gt);
>   void i915_pmu_gt_unparked(struct intel_gt *gt);
>   #else
> -static inline int i915_pmu_init(void) { return 0; }
> -static inline void i915_pmu_exit(void) {}
>   static inline void i915_pmu_register(struct drm_i915_private *i915) {}
>   static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
>   static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
