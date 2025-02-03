Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4831BA25F57
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 16:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F0B10E4F9;
	Mon,  3 Feb 2025 15:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="1T4uH7Ms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA6410E4F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 15:57:34 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-43621d27adeso31331895e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2025 07:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1738598253; x=1739203053;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HBP/SQkcbDju9IRDn72kQLrY0u6nG4MJhoPJlmfn+44=;
 b=1T4uH7MsEeMNVhKG+LWHCRK38LIZGsecizM+atg0KHKqz0NSAckjkHE4hPDJQYkX33
 CIGSSLDrAbiv4/fLLSwOdlHwGrnN9r6fpTf8IyZniEBmJ4c3LSxV7jGhcj3d/jnJfxPd
 gOtAaBhxiCe6b50ZkmHjjLTrETMWSg3bWIgvagRhE5IUG8Tb9MJDf3S5mBODK5wXI+8k
 EGSVAfGWVSHHXk0TM0bFA4URnry74ixu9LmlqLIU+ndbUWpA9cZhyualL3LHVNNoGo54
 0dpPEymd4gUHdF907uXiebZN1Skrw/jTPh6xbSJ0U6nCaYmMMsmasMdRx0uZu0IPHLWj
 6itg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738598253; x=1739203053;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HBP/SQkcbDju9IRDn72kQLrY0u6nG4MJhoPJlmfn+44=;
 b=jRnZtdztmDFtaAKF1EPEvz3gN2uV5VT1P6NjyPy2PXWlYqdk2ZviLS9A5/diJVuc16
 EqjEs75doQXXpp2IMROiY52GpTUaUSb3vW1t72j642c7rOBSjzlN/k0e3YP0VnVYqTEH
 aehMSS8ZMs4CBCXC26N5KYRPEzS9DISG/htIVt9yjF1OVDMvxBcWVbIE5gcHMFFA6RSl
 Wuw0gIvUCLqIl3EzmTPhHe/5njK+IAqy05Jf3s+MChW9WT8lor+RowKLPK/Mrm++TAU1
 3U0EGeJCByCYmMzm/TWJCaKzcd/72IA4NwquPsxL46e7lCzu6ks0NJxTEWztfjGsvEsS
 nwkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvWwYkhF+tncpRir0nmdK9pX5OSBKHI8asL46Tns4qv6FjGDneoBfoe73zMiu+gPPDxlgJbl/AEcA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxaDew0WXp9plndo0aRce6UVRQA9bxF1knGeIfzT/zK69587yXU
 2RQ90VqKOdnf5KKYEHXIfgNU0bUbDsWWLIpaTFZHinvw1tO1vx+wOlV9tz5Cj/w=
X-Gm-Gg: ASbGncs27py43WayvV0fnh9mWFi/3/aNmyJh7oLOtdIeD42GS6MAPYS/HwlqaRZxUaa
 K+KML0jpHpuLBQ800acUDPyi75xpK2el3QECnbypn6A6bJJN4zTae6XemNwzlYwK5UHl6Im4Etj
 GJ08LQPbsuBzOWm9sKA0WG5qUOjWeAFR0QzArm51VTmmQ/jhP0oqs8MkZIQkwUKpjrV6vLvaFkI
 k4HlBG03wxTXUgSYzvBF0pjjk++q1uYIt82LU2cZsV8hF32hkfMDS73uf3QAfn2uiYFS35IM2G3
 j69xzugDYML7D5FhZDxZyMQIpWTryVw=
X-Google-Smtp-Source: AGHT+IEzowFy6D0xuyEpLyBJSgPt2SjO9Ngy3dAWyX/MAbtUbjggxNtelrFX4uN2fyOkwJ5nLvGsMw==
X-Received: by 2002:a05:600c:5486:b0:434:a525:7257 with SMTP id
 5b1f17b1804b1-438dc410b0bmr177745095e9.21.1738598251586; 
 Mon, 03 Feb 2025 07:57:31 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-438e23e6860sm159318095e9.20.2025.02.03.07.57.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Feb 2025 07:57:31 -0800 (PST)
Message-ID: <6d02a771-0921-43cd-9799-80327ba70599@ursulin.net>
Date: Mon, 3 Feb 2025 15:57:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/pmu: Drop custom hotplug code
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Kan Liang <kan.liang@linux.intel.com>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20250131231304.4151998-2-lucas.demarchi@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250131231304.4151998-2-lucas.demarchi@intel.com>
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


On 31/01/2025 23:11, Lucas De Marchi wrote:
> Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU with
> a scope"), there's generic support for system-wide counters and
> integration with cpu hotplug.
> 
> The i915 counters are system-wide, even though the migration code
> is using the wrong topology mask:
> 
> 	target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
> 
> So one could think the counter has core scope rather than system scope,
> which is not the case. That was never caught in tests since they would
> disable just one cpu at a time. After the removal of hotpluggable CPU0
> in commit 5475abbde77f ("x86/smpboot: Remove the CPU0 hotplug kludge")
> and commit e59e74dc48a3 ("x86/topology: Remove CPU0 hotplug option")
> this became essentially non-testable for our systems.
> 
> Using the generic hotplug code, the same cpu0 is still reported in
> cpumask - only if it was possible to unplug it, it would migrate to
> another cpu, so there isn't much a change in behavior.
> 
> The one thing that changes is the return code for perf_event_open() if
> an invalid cpu is used: previously i915 would return -EINVAL, but
> generic perf code returns -ENODEV. That should be ok for all the users
> and not cause breakages.
> 
> Cc: Kan Liang <kan.liang@linux.intel.com>
> Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
> 
> v2: Expand commit message explanation to clarify what was discussed with
> Kan, Tvrtko and Umesh in
> https://patchwork.freedesktop.org/patch/msgid/20250116222426.77757-1-lucas.demarchi@intel.com

I *think* the comment in perf_event_setup_cpumask clarifies my question 
of whether "evil" userspace could setup a counter group with mixed cpus 
- that it couldn't. Even though I cannot actually untangle where 
perf_online_sys_mask gets set.

In any case I don't think it is concern for this patch.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

>   drivers/gpu/drm/i915/i915_module.c |   2 -
>   drivers/gpu/drm/i915/i915_pmu.c    | 114 +----------------------------
>   drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
>   3 files changed, 1 insertion(+), 126 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
> index 2f88970cc0a93..5862754c662c4 100644
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
> index 2eecd42f61ba1..69a109d02116e 100644
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
> @@ -935,23 +928,6 @@ static ssize_t i915_pmu_event_show(struct device *dev,
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
> @@ -1168,92 +1144,12 @@ static void free_event_attributes(struct i915_pmu *pmu)
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
> @@ -1261,7 +1157,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	spin_lock_init(&pmu->lock);
>   	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>   	pmu->timer.function = i915_sample;
> -	pmu->cpuhp.cpu = -1;
>   	init_rc6(pmu);
>   
>   	if (IS_DGFX(i915)) {
> @@ -1290,6 +1185,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   
>   	pmu->base.module	= THIS_MODULE;
>   	pmu->base.task_ctx_nr	= perf_invalid_context;
> +	pmu->base.scope		= PERF_PMU_SCOPE_SYS_WIDE;
>   	pmu->base.event_init	= i915_pmu_event_init;
>   	pmu->base.add		= i915_pmu_event_add;
>   	pmu->base.del		= i915_pmu_event_del;
> @@ -1301,16 +1197,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
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
> @@ -1334,8 +1224,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>   
>   	hrtimer_cancel(&pmu->timer);
>   
> -	i915_pmu_unregister_cpuhp_state(pmu);
> -
>   	perf_pmu_unregister(&pmu->base);
>   	kfree(pmu->base.attr_groups);
>   	if (IS_DGFX(i915))
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 0ec78c2b4f203..5826cc81858c4 100644
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
