Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38741A1A103
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 10:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0FB10E0B9;
	Thu, 23 Jan 2025 09:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="j+hLaEWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B9910E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 09:43:38 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-385dece873cso308756f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 01:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1737625417; x=1738230217;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=UVN+/EnVGk/tAlqkVV1yRL+czk19SPq3uCoDEBKALSY=;
 b=j+hLaEWMWY8oGxu8AdPA8eugymerJwjMxTomnY/3ydy017LiHXTx1qkWEMPe92mDgp
 lgVfeRouNYXgdJK33pRMZjc4FgVam0qPVlJaRF9woJbPd0bIfpj+coDB823PLmEv0t92
 YZTcwY/rxV3WNVHZxzH/qfj7waR3YyPOq13JDm+iqOK07uX/qnp2VMxjGWhKmDUauYc9
 9Lamkvhh6RkygR3wKL1fXBuvttW+nktMWJD7in1c9MdNgIZoy0L07yhyafq54LPF+csS
 g15LXho6GW15xwN9EcIpOjcKCCQ312PV5SlgNb+vzS0AB8/8wxp3GlBdBkMzpg4gkbXO
 K9Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737625417; x=1738230217;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UVN+/EnVGk/tAlqkVV1yRL+czk19SPq3uCoDEBKALSY=;
 b=Bqcm9uT39yC5OdNDvFFZpHw6XdyVWttEyBMByYqeNaZbwJYgu/o/0/7l/krV736EJq
 ZCFjTSsyE8v+zflmim2LbQJM90XSJZBWcL+gmrSD25t5Eph17LvmKX4HHjsFvR80UwZg
 6FgJEcUGxNVLBVGcu+SAp8t+20HJTSbDM+tUMQEPsy2WATvFbtjUGTj/TbqtkKN3KArK
 EkgP2fkBI4k3FtD1kdfq/3UZfFlUhEHh+sxnqeM6Wy6hJ9XY7HpT1mtOsxm/t341ZCyi
 Fx+EuPCN/e5QAhI7S5iGrIzcrC3YUCpCbI7Ge8xy8g6EV7wGjsMCxlA4V1MimlW9Bx3m
 gxKw==
X-Gm-Message-State: AOJu0YymtBNzNMVj0eILHFJ+Mj/jXQE5GW+7h6np+Xfso7I8Vs/43SF2
 UACp8nKFqu3nbOYODEFI6CVzORTer6VkiBq7EVDAliIapdab5qwqM3vOALvUDCQ=
X-Gm-Gg: ASbGncve7fopA2Gu0qC8u9q08BbWN8NnnbvNqbTQTQL6lKEFGQ6Cb+xscrMJ4LzuD2P
 6Er3Za9rlfoYhOGt4W47AfNP0hYo70bgFHzNtaDkdJse3mFtAMdB8/DePh1Gs4FNBd8V/EppdaI
 qHfsJ4l4C+4oGyGXCWScB0YXgdaE+MGc/FwYKXrRqjzp7yLoOkWcRD5UAmQp9jtcLy7zHf6ucv/
 LQziNRycGJ/wCEk4BOsbBhY9A1o2EBkYVeh2b989MSXslfQxLaD9MSMaWcR0RxSeKE8xNwUVuV+
 dAEqUGRW3NzeEpDputYd
X-Google-Smtp-Source: AGHT+IFkLIi2RuWcenGITeLuJN14/Cip50v29ySPGtZTIISF6obbjuBWWVSsQRTlpPSJ9eAWdKq1dg==
X-Received: by 2002:a05:6000:2a9:b0:38a:2798:c3e0 with SMTP id
 ffacd0b85a97d-38bf57c9b83mr24966769f8f.54.1737625417131; 
 Thu, 23 Jan 2025 01:43:37 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38bf322acdcsm19066101f8f.55.2025.01.23.01.43.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jan 2025 01:43:36 -0800 (PST)
Message-ID: <c7e1fc84-5cbf-4196-8558-bc410ef378a8@ursulin.net>
Date: Thu, 23 Jan 2025 09:43:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 "Liang, Kan" <kan.liang@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
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


On 20/01/2025 22:57, Lucas De Marchi wrote:
> On Mon, Jan 20, 2025 at 10:08:39AM -0500, Liang, Kan wrote:
>>
>>
>> On 2025-01-16 5:24 p.m., Lucas De Marchi wrote:
>>> Since commit 4ba4f1afb6a9 ("perf: Generic hotplug support for a PMU with
>>> a scope"), there's generic support for system-wide counters and
>>> integration with cpu hotplug. Set our scope to PERF_PMU_SCOPE_SYS_WIDE
>>> instead of all the boilerplate code for handling hotplug.
>>>
>>> Cc: Kan Liang <kan.liang@linux.intel.com>
>>> Cc: Peter Zijlstra (Intel) <peterz@infradead.org>
>>> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_module.c |   2 -
>>>  drivers/gpu/drm/i915/i915_pmu.c    | 114 +----------------------------
>>>  drivers/gpu/drm/i915/i915_pmu.h    |  11 ---
>>>  3 files changed, 1 insertion(+), 126 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_module.c 
>>> b/drivers/gpu/drm/i915/i915_module.c
>>> index 7ed6d70389af9..7affe07f84f45 100644
>>> --- a/drivers/gpu/drm/i915/i915_module.c
>>> +++ b/drivers/gpu/drm/i915/i915_module.c
>>> @@ -71,8 +71,6 @@ static const struct {
>>>      { .init = i915_vma_resource_module_init,
>>>        .exit = i915_vma_resource_module_exit },
>>>      { .init = i915_mock_selftests },
>>> -    { .init = i915_pmu_init,
>>> -      .exit = i915_pmu_exit },
>>>      { .init = i915_pci_register_driver,
>>>        .exit = i915_pci_unregister_driver },
>>>      { .init = i915_perf_sysctl_register,
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>>> b/drivers/gpu/drm/i915/i915_pmu.c
>>> index e55db036be1bb..652964ef0643c 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> @@ -28,9 +28,6 @@
>>>       BIT(I915_SAMPLE_WAIT) | \
>>>       BIT(I915_SAMPLE_SEMA))
>>>
>>> -static cpumask_t i915_pmu_cpumask;
>>> -static unsigned int i915_pmu_target_cpu = -1;
>>> -
>>>  static struct i915_pmu *event_to_pmu(struct perf_event *event)
>>>  {
>>>      return container_of(event->pmu, struct i915_pmu, base);
>>> @@ -642,10 +639,6 @@ static int i915_pmu_event_init(struct perf_event 
>>> *event)
>>>      if (event->cpu < 0)
>>>          return -EINVAL;
>>>
>>> -    /* only allow running on one cpu at a time */
>>> -    if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>> -        return -EINVAL;
>>> -
>>>      if (is_engine_event(event))
>>>          ret = engine_event_init(event);
>>>      else
>>> @@ -940,23 +933,6 @@ static ssize_t i915_pmu_event_show(struct device 
>>> *dev,
>>>      return sprintf(buf, "config=0x%lx\n", eattr->val);
>>>  }
>>>
>>> -static ssize_t cpumask_show(struct device *dev,
>>> -                struct device_attribute *attr, char *buf)
>>> -{
>>> -    return cpumap_print_to_pagebuf(true, buf, &i915_pmu_cpumask);
>>> -}
>>> -
>>> -static DEVICE_ATTR_RO(cpumask);
>>> -
>>> -static struct attribute *i915_cpumask_attrs[] = {
>>> -    &dev_attr_cpumask.attr,
>>> -    NULL,
>>> -};
>>> -
>>> -static const struct attribute_group i915_pmu_cpumask_attr_group = {
>>> -    .attrs = i915_cpumask_attrs,
>>> -};
>>> -
>>>  #define __event(__counter, __name, __unit) \
>>>  { \
>>>      .counter = (__counter), \
>>> @@ -1173,92 +1149,12 @@ static void free_event_attributes(struct 
>>> i915_pmu *pmu)
>>>      pmu->pmu_attr = NULL;
>>>  }
>>>
>>> -static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node 
>>> *node)
>>> -{
>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), 
>>> cpuhp.node);
>>> -
>>> -    /* Select the first online CPU as a designated reader. */
>>> -    if (cpumask_empty(&i915_pmu_cpumask))
>>> -        cpumask_set_cpu(cpu, &i915_pmu_cpumask);
>>> -
>>> -    return 0;
>>> -}
>>> -
>>> -static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node 
>>> *node)
>>> -{
>>> -    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), 
>>> cpuhp.node);
>>> -    unsigned int target = i915_pmu_target_cpu;
>>> -
>>> -    /*
>>> -     * Unregistering an instance generates a CPU offline event which 
>>> we must
>>> -     * ignore to avoid incorrectly modifying the shared 
>>> i915_pmu_cpumask.
>>> -     */
>>> -    if (!pmu->registered)
>>> -        return 0;
>>> -
>>> -    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>> -        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>> -
>>
>> I'm not familar with the i915 PMU, but it seems suggest a core scope
>> PMU, not a system-wide scope.
> 
> counter is in a complete separate device - it doesn't depend on core or
> die or pkg - not sure why it cared about topology_sibling_cpumask here.
> 
> Also, in my tests it always chose cpu0 that is the boot cpu and can't be
> offlined. Looking at our CI it seems this entire code is not tested at
> all: the only test that in theory would exercise this just skips since
> cpu0 can't go offline - 
> https://intel-gfx-ci.01.org/tree/drm-tip/shards-all.html?testfilter=hotplug

s/not tested at all/not currently tested/

commit e59e74dc48a309cb848ffc3d76a0d61aa6803c05
Author: Thomas Gleixner <tglx@linutronix.de>
Date:   Fri May 12 23:07:04 2023 +0200

     x86/topology: Remove CPU0 hotplug option

So test worked for ~6 years and then transitioned to skip. :shrug:

Regards,

Tvrtko

>>
>>> -        /* Migrate events if there is a valid target */
>>> -        if (target < nr_cpu_ids) {
>>> -            cpumask_set_cpu(target, &i915_pmu_cpumask);
>>> -            i915_pmu_target_cpu = target;
>>> -        }
>>> -    }
>>> -
>>> -    if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
>>> -        perf_pmu_migrate_context(&pmu->base, cpu, target);
>>> -        pmu->cpuhp.cpu = target;
>>> -    }
>>> -
>>> -    return 0;
>>> -}
>>> -
>>> -static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
>>> -
>>> -int i915_pmu_init(void)
>>> -{
>>> -    int ret;
>>> -
>>> -    ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
>>> -                      "perf/x86/intel/i915:online",
>>> -                      i915_pmu_cpu_online,
>>> -                      i915_pmu_cpu_offline);
>>> -    if (ret < 0)
>>> -        pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
>>> -              ret);
>>> -    else
>>> -        cpuhp_state = ret;
>>> -
>>> -    return 0;
>>> -}
>>> -
>>> -void i915_pmu_exit(void)
>>> -{
>>> -    if (cpuhp_state != CPUHP_INVALID)
>>> -        cpuhp_remove_multi_state(cpuhp_state);
>>> -}
>>> -
>>> -static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
>>> -{
>>> -    if (cpuhp_state == CPUHP_INVALID)
>>> -        return -EINVAL;
>>> -
>>> -    return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
>>> -}
>>> -
>>> -static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
>>> -{
>>> -    cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
>>> -}
>>> -
>>>  void i915_pmu_register(struct drm_i915_private *i915)
>>>  {
>>>      struct i915_pmu *pmu = &i915->pmu;
>>>      const struct attribute_group *attr_groups[] = {
>>>          &i915_pmu_format_attr_group,
>>>          &pmu->events_attr_group,
>>> -        &i915_pmu_cpumask_attr_group,
>>>          NULL
>>>      };
>>>      int ret = -ENOMEM;
>>> @@ -1266,7 +1162,6 @@ void i915_pmu_register(struct drm_i915_private 
>>> *i915)
>>>      spin_lock_init(&pmu->lock);
>>>      hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>>>      pmu->timer.function = i915_sample;
>>> -    pmu->cpuhp.cpu = -1;
>>>      init_rc6(pmu);
>>>
>>>      if (IS_DGFX(i915)) {
>>> @@ -1295,6 +1190,7 @@ void i915_pmu_register(struct drm_i915_private 
>>> *i915)
>>>
>>>      pmu->base.module    = THIS_MODULE;
>>>      pmu->base.task_ctx_nr    = perf_invalid_context;
>>> +    pmu->base.scope        = PERF_PMU_SCOPE_SYS_WIDE;
>>>      pmu->base.event_init    = i915_pmu_event_init;
>>>      pmu->base.add        = i915_pmu_event_add;
>>>      pmu->base.del        = i915_pmu_event_del;
>>> @@ -1307,16 +1203,10 @@ void i915_pmu_register(struct 
>>> drm_i915_private *i915)
>>>      if (ret)
>>>          goto err_groups;
>>>
>>> -    ret = i915_pmu_register_cpuhp_state(pmu);
>>> -    if (ret)
>>> -        goto err_unreg;
>>> -
>>>      pmu->registered = true;
>>>
>>>      return;
>>>
>>> -err_unreg:
>>> -    perf_pmu_unregister(&pmu->base);
>>>  err_groups:
>>>      kfree(pmu->base.attr_groups);
>>>  err_attr:
>>> @@ -1340,8 +1230,6 @@ void i915_pmu_unregister(struct 
>>> drm_i915_private *i915)
>>>
>>>      hrtimer_cancel(&pmu->timer);
>>>
>>> -    i915_pmu_unregister_cpuhp_state(pmu);
>>> -
>>>      perf_pmu_unregister(&pmu->base);
>>>      kfree(pmu->base.attr_groups);
>>>      if (IS_DGFX(i915))
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h 
>>> b/drivers/gpu/drm/i915/i915_pmu.h
>>> index 8e66d63d0c9f9..53bce3d8bfbaf 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>>> @@ -56,13 +56,6 @@ struct i915_pmu_sample {
>>>  };
>>>
>>>  struct i915_pmu {
>>> -    /**
>>> -     * @cpuhp: Struct used for CPU hotplug handling.
>>> -     */
>>> -    struct {
>>> -        struct hlist_node node;
>>> -        unsigned int cpu;
>>> -    } cpuhp;
>>>      /**
>>>       * @base: PMU base.
>>>       */
>>> @@ -155,15 +148,11 @@ struct i915_pmu {
>>>  };
>>>
>>>  #ifdef CONFIG_PERF_EVENTS
>>> -int i915_pmu_init(void);
>>> -void i915_pmu_exit(void);
>>>  void i915_pmu_register(struct drm_i915_private *i915);
>>>  void i915_pmu_unregister(struct drm_i915_private *i915);
>>>  void i915_pmu_gt_parked(struct intel_gt *gt);
>>>  void i915_pmu_gt_unparked(struct intel_gt *gt);
>>>  #else
>>> -static inline int i915_pmu_init(void) { return 0; }
>>> -static inline void i915_pmu_exit(void) {}
>>>  static inline void i915_pmu_register(struct drm_i915_private *i915) {}
>>>  static inline void i915_pmu_unregister(struct drm_i915_private 
>>> *i915) {}
>>>  static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
>>
