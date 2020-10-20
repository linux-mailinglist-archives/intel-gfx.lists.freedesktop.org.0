Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7CA293BA7
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 14:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922006EC84;
	Tue, 20 Oct 2020 12:33:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB2F6EC6B
 for <Intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 12:33:15 +0000 (UTC)
IronPort-SDR: XblJjLvulbmjbyUr0dfeSF//Df/zF/egWawxICqw5PsNO+/FY8hGHhkdMMkIT1K4/h6SrhnRqC
 BUZZKVThS5wQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154982157"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="154982157"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 05:33:14 -0700
IronPort-SDR: 4AITqp8RF4Iu0X9mkPqG+s/1bKejl+G9LKNzy6TzvM0A3EnhIQMTLbrBcj5+DzlNvOvx8v0XZY
 hbyOTnQox1yw==
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="533041545"
Received: from bszymanx-mobl.ger.corp.intel.com (HELO [10.252.55.244])
 ([10.252.55.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 05:33:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201020100822.543332-1-tvrtko.ursulin@linux.intel.com>
 <20201020100822.543332-2-tvrtko.ursulin@linux.intel.com>
 <160319519741.15830.12777651851324275501@build.alporthouse.com>
 <160319580270.15830.9644634406956362493@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <46422560-ca2e-474a-ab07-1107153f1229@linux.intel.com>
Date: Tue, 20 Oct 2020 13:33:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160319580270.15830.9644634406956362493@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Fix CPU hotplug with
 multiple GPUs
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/10/2020 13:10, Chris Wilson wrote:
> Quoting Chris Wilson (2020-10-20 12:59:57)
>> Quoting Tvrtko Ursulin (2020-10-20 11:08:22)
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Since we keep a driver global mask of online CPUs and base the decision
>>> whether PMU needs to be migrated upon it, we need to make sure the
>>> migration is done for all registered PMUs (so GPUs).
>>>
>>> To do this we need to track the current CPU for each PMU and base the
>>> decision on whether to migrate on a comparison between global and local
>>> state.
>>>
>>> At the same time, since dynamic CPU hotplug notification slots are a
>>> scarce resource and given how we already register the multi instance type
>>> state, we can and should add multiple instance of the i915 PMU to this
>>> same state and not allocate a new one for every GPU.
>>>
>>> v2:
>>>   * Use pr_notice. (Chris)
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Suggested-by: Daniel Vetter <daniel.vetter@intel.com> # dynamic slot optimisation
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> ---
>>>   drivers/gpu/drm/i915/i915_pci.c |  7 ++++-
>>>   drivers/gpu/drm/i915/i915_pmu.c | 50 ++++++++++++++++++++-------------
>>>   drivers/gpu/drm/i915/i915_pmu.h |  6 +++-
>>>   3 files changed, 41 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>> index 27964ac0638a..a384f51c91c1 100644
>>> --- a/drivers/gpu/drm/i915/i915_pci.c
>>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>>> @@ -1150,9 +1150,13 @@ static int __init i915_init(void)
>>>                  return 0;
>>>          }
>>>   
>>> +       i915_pmu_init();
>>> +
>>>          err = pci_register_driver(&i915_pci_driver);
>>> -       if (err)
>>> +       if (err) {
>>> +               i915_pmu_exit();
>>>                  return err;
>>> +       }
>>>   
>>>          i915_perf_sysctl_register();
>>>          return 0;
>>> @@ -1166,6 +1170,7 @@ static void __exit i915_exit(void)
>>>          i915_perf_sysctl_unregister();
>>>          pci_unregister_driver(&i915_pci_driver);
>>>          i915_globals_exit();
>>> +       i915_pmu_exit();
>>>   }
>>>   
>>>   module_init(i915_init);
>>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>> index 51ed7d0efcdc..0d6c0945621e 100644
>>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>>> @@ -30,6 +30,7 @@
>>>   #define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
>>>   
>>>   static cpumask_t i915_pmu_cpumask;
>>> +static unsigned int i915_pmu_target_cpu = -1;
>>>   
>>>   static u8 engine_config_sample(u64 config)
>>>   {
>>> @@ -1049,25 +1050,32 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
>>>   static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>>>   {
>>>          struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
>>> -       unsigned int target;
>>> +       unsigned int target = i915_pmu_target_cpu;
>>
>> So we still have multiple callbacks, one per pmu. But each callback is
>> now stored in a list from the cpuhp_slot instead of each callback having
>> its own slot.
>>
>>>   
>>>          GEM_BUG_ON(!pmu->base.event_init);
>>>   
>>>          if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>
>> On first callback...
>>
>>>                  target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>
>> Pick any other cpu.
>>
>>> +
>>>                  /* Migrate events if there is a valid target */
>>>                  if (target < nr_cpu_ids) {
>>>                          cpumask_set_cpu(target, &i915_pmu_cpumask);
>>> -                       perf_pmu_migrate_context(&pmu->base, cpu, target);
>>> +                       i915_pmu_target_cpu = target;
>>
>> Store target for all callbacks.
>>
>>>                  }
>>>          }
>>>   
>>> +       if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
>>
>> If global [i915_pmu_target_cpu] target has changed, update perf.
>>
>>> +               perf_pmu_migrate_context(&pmu->base, cpu, target);
>>> +               pmu->cpuhp.cpu = target;
>>
>> It is claimed that cpuhp_state_remove_instance() will call the offline
>> callback for all online cpus... Do we need a pmu->base.state != STOPPED
>> guard?
> 
> s/claimed/it definitely does :)/
> 
> Or rather pmu->closed.

Hm why? You think perf_pmu_migrate_context accesses something in the PMU 
outside of the already protected entry points?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
