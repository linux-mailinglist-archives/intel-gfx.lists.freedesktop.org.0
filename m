Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA49A1A96A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 19:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23DC10E88E;
	Thu, 23 Jan 2025 18:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="oDYAWXDe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FB210E88E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 18:06:33 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 5b1f17b1804b1-437a92d7b96so12680085e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 10:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1737655592; x=1738260392;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ke4ac3pgQdIrlSVbso0KuAKiBiONEP8LdeBHwxvLLeo=;
 b=oDYAWXDeqPpx/UyH9XegjAZcDZziNuVcK4DCn5AMCx2hywJWIaMqxYZGoXa63/g3uR
 XvSZJzEFtiEgYq+b1uECkMpeHcExzV6J53i2m3JNrz7kAZAsN+WA8X7hMrPOxFf24OhN
 ZCm7+I68J3ueI7T3qoZdp/U9PUyDENxoQW7CV4bjCPfU2yynRoQXQUN6gP6iVzW5LAWx
 76o4nnRQeJxWvPM+65OEGXfxmiDg72cZZMpQq0bsRitb9xInzP95JT6cIByonjrVVtuQ
 3OFIVH+MLQiTSur0WVjQJiuWNjtmCb0ZvqJNqGgr7pq/B3mGc71ceAQEXmIfIhdDKhz9
 wOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737655592; x=1738260392;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ke4ac3pgQdIrlSVbso0KuAKiBiONEP8LdeBHwxvLLeo=;
 b=gSRQzaLdyXUaKqNAmHBMDdw3fPa+6+LrwXwANSNxivg2ykr6nA8n4cSLNiuoO5ThNp
 GFnSZe6JkBs1F/eyGo4ussQsbO9m8tn4Aie284P9f0iXIlAD6kniehEPcZ+mtDazqrZd
 4zb2fyc1vPnj/elrKgLSl4pmalCZ48Wv2HGGxkxfNv91lPC+NuwqULrvIx8PzZJsx/+D
 1sNifpFD/o/pi1Tl37siKm9IO5YteQcpNitGKH0b6mve0e7eYeAzQXGYJkVWzvEgb04A
 uETXua5/Im7rRaZBykQbsxcbUFujyUcmN0N6hS3H36sc7CE7C/seVrZDY2yfQhHR6fY8
 blzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUGkBeWzmOmFBtKLPar7U2KtDkr5KeoMbPP61HONnBFP4T6YRVD7fsxc9LVNTbT3zuR6/oafa9vhBQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwF5YvVUUTNdfk05xo9/2aSUD107cIPoiEIoWz/JkXES6shwrmk
 oMVhIeYIvH+iD6bWLuJWT+7eZeU5D/YgLS6qzfHDITFLXhE18BRKEEGD4RIDKDI=
X-Gm-Gg: ASbGnctMo2tmn8fNHVM6cfJpRqC59GHeDrC1Kk0MMvxyCXBfpj3gURPrUqDEedrRN8B
 2mMKi+bk3hy5+sYwf3QbAmAUpSl+KL3JTHCkYSn0/FB9+YaVzXtxc2JOv9nQrVEdN3/T0GcSUlB
 G9uYYbfueYIoO5xik8fTqFY5j5cuK843mCvWClp3DcqVpEXtG2IO/y0DMqfFlTx4dg6mrs6JK8D
 sYTeZ4Zov1Obyowf65+q7K0i5Ec3D7sI21yqO478uQWUx9WRXLv4ra0hrzOFUnPr7n1Ag4xyAyO
 lZkQpniWK5P/IictNzU4ukc/hmK4yts=
X-Google-Smtp-Source: AGHT+IF5/wcykAcNUTPFPFzqFVe1pgQa5TLQBuG8z7/sPIf+TtlvzFR5JJHKLSsqgeWfwJ/RZU/Njg==
X-Received: by 2002:a5d:47c8:0:b0:385:df43:2179 with SMTP id
 ffacd0b85a97d-38bf577ffc2mr23520371f8f.17.1737655591531; 
 Thu, 23 Jan 2025 10:06:31 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c2a1bb040sm327850f8f.67.2025.01.23.10.06.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2025 10:06:30 -0800 (PST)
Message-ID: <3a8dafc0-b9f1-43f0-b9a3-8d8dba8a15ed@ursulin.net>
Date: Thu, 23 Jan 2025 18:06:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: "Liang, Kan" <kan.liang@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <c7e1fc84-5cbf-4196-8558-bc410ef378a8@ursulin.net>
 <3g4bxt5ehrhuyxz7y35h2znym55aufixjpzvytnfdehhg5edkm@bol7omhcgchg>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <3g4bxt5ehrhuyxz7y35h2znym55aufixjpzvytnfdehhg5edkm@bol7omhcgchg>
Content-Type: text/plain; charset=UTF-8; format=flowed
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


On 23/01/2025 16:27, Lucas De Marchi wrote:
> On Thu, Jan 23, 2025 at 09:43:35AM +0000, Tvrtko Ursulin wrote:
>>
>> On 20/01/2025 22:57, Lucas De Marchi wrote:
>>> On Mon, Jan 20, 2025 at 10:08:39AM -0500, Liang, Kan wrote:
>>>>
>>>>
>>>> On 2025-01-16 5:24 p.m., Lucas De Marchi wrote:
>>>>> Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU 
>>>>> with
>>>>> a scope"), there's generic support for system-wide counters and
>>>>> integration with cpu hotplug. Set our scope to PERF_PMU_SCOPE_SYS_WIDE
>>>>> instead of all the boilerplate code for handling hotplug.
>>>>>
>>>>> Cc: Kan Liang <kan.liang@linux.intel.com>
>>>>> Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
>>>>> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/i915_module.c |   2 -
>>>>>  drivers/gpu/drm/i915/i915_pmu.c    | 114 
>>>>> +----------------------------
>>>>>  drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
>>>>>  3 files changed, 1 insertion(+), 126 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_module.c 
>>>>> b/drivers/gpu/drm/i915/i915_module.c
>>>>> index 7ed6d70389af9..7affe07f84f45 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_module.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_module.c
>>>>> @@ -71,8 +71,6 @@ static const struct {
>>>>>      { .init = i915_vma_resource_module_init,
>>>>>        .exit = i915_vma_resource_module_exit },
>>>>>      { .init = i915_mock_selftests },
>>>>> -    { .init = i915_pmu_init,
>>>>> -      .exit = i915_pmu_exit },
>>>>>      { .init = i915_pci_register_driver,
>>>>>        .exit = i915_pci_unregister_driver },
>>>>>      { .init = i915_perf_sysctl_register,
>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> index e55db036be1bb..652964ef0643c 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>>>> @@ -28,9 +28,6 @@
>>>>>       BIT(I915_SAMPLE_WAIT) | \
>>>>>       BIT(I915_SAMPLE_SEMA))
>>>>>
>>>>> -static cpumask_t i915_pmu_cpumask;
>>>>> -static unsigned int i915_pmu_target_cpu = -1;
>>>>> -
>>>>>  static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>>>>  {
>>>>>      return container_of(event->pmu, struct i915_pmu, base);
>>>>> @@ -642,10 +639,6 @@ static int i915_pmu_event_init(struct 
>>>>> perf_event *event)
>>>>>      if (event->cpu < 0)
>>>>>          return -EINVAL;
>>>>>
>>>>> -    /* only allow running on one cpu at a time */
>>>>> -    if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>>>> -        return -EINVAL;
>>>>> -
>>>>>      if (is_engine_event(event))
>>>>>          ret = engine_event_init(event);
>>>>>      else
>>>>> @@ -940,23 +933,6 @@ static ssize_t i915_pmu_event_show(struct 
>>>>> device *dev,
>>>>>      return sprintf(buf, "config=0x%lx\n", eattr->val);
>>>>>  }
>>>>>
>>>>> -static ssize_t cpumask_show(struct device *dev,
>>>>> -                struct device_attribute *attr, char *buf)
>>>>> -{
>>>>> -    return cpumap_print_to_pagebuf(true, buf, &i915_pmu_cpumask);
>>>>> -}
>>>>> -
>>>>> -static DEVICE_ATTR_RO(cpumask);
>>>>> -
>>>>> -static struct attribute *i915_cpumask_attrs[] = {
>>>>> -    &dev_attr_cpumask.attr,
>>>>> -    NULL,
>>>>> -};
>>>>> -
>>>>> -static const struct attribute_group i915_pmu_cpumask_attr_group = {
>>>>> -    .attrs = i915_cpumask_attrs,
>>>>> -};
>>>>> -
>>>>>  #define __event(__counter, __name, __unit) \
>>>>>  { \
>>>>>      .counter = (__counter), \
>>>>> @@ -1173,92 +1149,12 @@ static void free_event_attributes(struct 
>>>>> i915_pmu *pmu)
>>>>>      pmu->pmu_attr = NULL;
>>>>>  }
>>>>>
>>>>> -static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node 
>>>>> *node)
>>>>> -{
>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), 
>>>>> cpuhp.node);
>>>>> -
>>>>> -    /* Select the first online CPU as a designated reader. */
>>>>> -    if (cpumask_empty(&i915_pmu_cpumask))
>>>>> -        cpumask_set_cpu(cpu, &i915_pmu_cpumask);
>>>>> -
>>>>> -    return 0;
>>>>> -}
>>>>> -
>>>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct 
>>>>> hlist_node *node)
>>>>> -{
>>>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), 
>>>>> cpuhp.node);
>>>>> -    unsigned int target = i915_pmu_target_cpu;
>>>>> -
>>>>> -    /*
>>>>> -     * Unregistering an instance generates a CPU offline event 
>>>>> which we must
>>>>> -     * ignore to avoid incorrectly modifying the shared 
>>>>> i915_pmu_cpumask.
>>>>> -     */
>>>>> -    if (!pmu->registered)
>>>>> -        return 0;
>>>>> -
>>>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>> -
>>>>
>>>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>> PMU, not a system-wide scope.
>>>
>>> counter is in a complete separate device - it doesn't depend on core or
>>> die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>
>>> Also, in my tests it always chose cpu0 that is the boot cpu and can't be
>>> offlined. Looking at our CI it seems this entire code is not tested at
>>> all: the only test that in theory would exercise this just skips since
>>> cpu0 can't go offline - 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/shards-all.html?testfilter=hotplug
>>
>> s/not tested at all/not currently tested/
>>
>> commit e59e74dc48a309cb848ffc3d76a0d61aa6803c05
>> Author: Thomas Gleixner <tglx@linutronix.de>
>> Date:   Fri May 12 23:07:04 2023 +0200
>>
>>    x86/topology: Remove CPU0 hotplug option
>>
>> So test worked for ~6 years and then transitioned to skip. :shrug:
> 
> right, indeed looking at the CI repo I see it there:
> 
> $ git grep CONFIG_BOOTPARAM_HOTPLUG_CPU0 
> kconfig/debug:CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
> kconfig/debug-kasan:CONFIG_BOOTPARAM_HOTPLUG_CPU0=y
> 
> $ git log --oneline -G CONFIG_BOOTPARAM_HOTPLUG_CPU0 kconfig/debug
> 3553bf4 kconfig: Dump current kconfigs used by CI
> 
> 
> I sent this to igt yesterday:
> https://patchwork.freedesktop.org/patch/633357/?series=143874&rev=1
> 
> I will reword that commit message to note that it was actually tested
> before that kernel commit. The test worked because it only tried to 
> toggle the
> cpu0 and thus a migration succeeded to a sibling cpu, right?

No, it was off-lining all CPUs one by one.

If topology_sibling_cpumask is not right then maybe that did not show 
because of the one by one nature? I mean if the test was trying to 
offline multiple CPUs ie. leave multiple off lines, maybe then it would 
break?

> For the kernel commit message I can add a comment about the counter
> being indeed a system one and the use of topology_sibling_cpumask()
> being wrong here. With that, can you review this patch?

I don't know about this new system wide vs something else stuff. It will 
not interfere with the fact there can be multiple instances of the same 
PMU driver, one per device?

I can review but cannot promise it will be quick.

Regards,

Tvrtko

>>
>> Regards,
>>
>> Tvrtko
>>
>>>>
>>>>> -        /* Migrate events if there is a valid target */
>>>>> -        if (target < nr_cpu_ids) {
>>>>> -            cpumask_set_cpu(target, &i915_pmu_cpumask);
>>>>> -            i915_pmu_target_cpu = target;
>>>>> -        }
>>>>> -    }
>>>>> -
>>>>> -    if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
>>>>> -        perf_pmu_migrate_context(&pmu->base, cpu, target);
>>>>> -        pmu->cpuhp.cpu = target;
>>>>> -    }
>>>>> -
>>>>> -    return 0;
>>>>> -}
>>>>> -
>>>>> -static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
>>>>> -
>>>>> -int i915_pmu_init(void)
>>>>> -{
>>>>> -    int ret;
>>>>> -
>>>>> -    ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>>>>> -                      "perf/x86/intel/i915:online",
>>>>> -                      i915_pmu_cpu_online,
>>>>> -                      i915_pmu_cpu_offline);
>>>>> -    if (ret < 0)
>>>>> -        pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
>>>>> -              ret);
>>>>> -    else
>>>>> -        cpuhp_state = ret;
>>>>> -
>>>>> -    return 0;
>>>>> -}
>>>>> -
>>>>> -void i915_pmu_exit(void)
>>>>> -{
>>>>> -    if (cpuhp_state != CPUHP_INVALID)
>>>>> -        cpuhp_remove_multi_state(cpuhp_state);
>>>>> -}
>>>>> -
>>>>> -static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
>>>>> -{
>>>>> -    if (cpuhp_state == CPUHP_INVALID)
>>>>> -        return -EINVAL;
>>>>> -
>>>>> -    return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
>>>>> -}
>>>>> -
>>>>> -static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
>>>>> -{
>>>>> -    cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
>>>>> -}
>>>>> -
>>>>>  void i915_pmu_register(struct drm_i915_private *i915)
>>>>>  {
>>>>>      struct i915_pmu *pmu = &i915->pmu;
>>>>>      const struct attribute_group *attr_groups[] = {
>>>>>          &i915_pmu_format_attr_group,
>>>>>          &pmu->events_attr_group,
>>>>> -        &i915_pmu_cpumask_attr_group,
>>>>>          NULL
>>>>>      };
>>>>>      int ret = -ENOMEM;
>>>>> @@ -1266,7 +1162,6 @@ void i915_pmu_register(struct 
>>>>> drm_i915_private *i915)
>>>>>      spin_lock_init(&pmu->lock);
>>>>>      hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>>>>>      pmu->timer.function = i915_sample;
>>>>> -    pmu->cpuhp.cpu = -1;
>>>>>      init_rc6(pmu);
>>>>>
>>>>>      if (IS_DGFX(i915)) {
>>>>> @@ -1295,6 +1190,7 @@ void i915_pmu_register(struct 
>>>>> drm_i915_private *i915)
>>>>>
>>>>>      pmu->base.module    = THIS_MODULE;
>>>>>      pmu->base.task_ctx_nr    = perf_invalid_context;
>>>>> +    pmu->base.scope        = PERF_PMU_SCOPE_SYS_WIDE;
>>>>>      pmu->base.event_init    = i915_pmu_event_init;
>>>>>      pmu->base.add        = i915_pmu_event_add;
>>>>>      pmu->base.del        = i915_pmu_event_del;
>>>>> @@ -1307,16 +1203,10 @@ void i915_pmu_register(struct 
>>>>> drm_i915_private *i915)
>>>>>      if (ret)
>>>>>          goto err_groups;
>>>>>
>>>>> -    ret = i915_pmu_register_cpuhp_state(pmu);
>>>>> -    if (ret)
>>>>> -        goto err_unreg;
>>>>> -
>>>>>      pmu->registered = true;
>>>>>
>>>>>      return;
>>>>>
>>>>> -err_unreg:
>>>>> -    perf_pmu_unregister(&pmu->base);
>>>>>  err_groups:
>>>>>      kfree(pmu->base.attr_groups);
>>>>>  err_attr:
>>>>> @@ -1340,8 +1230,6 @@ void i915_pmu_unregister(struct 
>>>>> drm_i915_private *i915)
>>>>>
>>>>>      hrtimer_cancel(&pmu->timer);
>>>>>
>>>>> -    i915_pmu_unregister_cpuhp_state(pmu);
>>>>> -
>>>>>      perf_pmu_unregister(&pmu->base);
>>>>>      kfree(pmu->base.attr_groups);
>>>>>      if (IS_DGFX(i915))
>>>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h 
>>>>> b/drivers/gpu/drm/i915/i915_pmu.h
>>>>> index 8e66d63d0c9f9..53bce3d8bfbaf 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>>>>> @@ -56,13 +56,6 @@ struct i915_pmu_sample {
>>>>>  };
>>>>>
>>>>>  struct i915_pmu {
>>>>> -    /**
>>>>> -     * @cpuhp: Struct used for CPU hotplug handling.
>>>>> -     */
>>>>> -    struct {
>>>>> -        struct hlist_node node;
>>>>> -        unsigned int cpu;
>>>>> -    } cpuhp;
>>>>>      /**
>>>>>       * @base: PMU base.
>>>>>       */
>>>>> @@ -155,15 +148,11 @@ struct i915_pmu {
>>>>>  };
>>>>>
>>>>>  #ifdef CONFIG_PERF_EVENTS
>>>>> -int i915_pmu_init(void);
>>>>> -void i915_pmu_exit(void);
>>>>>  void i915_pmu_register(struct drm_i915_private *i915);
>>>>>  void i915_pmu_unregister(struct drm_i915_private *i915);
>>>>>  void i915_pmu_gt_parked(struct intel_gt *gt);
>>>>>  void i915_pmu_gt_unparked(struct intel_gt *gt);
>>>>>  #else
>>>>> -static inline int i915_pmu_init(void) { return 0; }
>>>>> -static inline void i915_pmu_exit(void) {}
>>>>>  static inline void i915_pmu_register(struct drm_i915_private 
>>>>> *i915) {}
>>>>>  static inline void i915_pmu_unregister(struct drm_i915_private 
>>>>> *i915) {}
>>>>>  static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
>>>>
