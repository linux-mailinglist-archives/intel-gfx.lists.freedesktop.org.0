Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8AF29405A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4B76ECFE;
	Tue, 20 Oct 2020 16:19:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C6F6ECFE
 for <Intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 16:19:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22769068-1500050 for multiple; Tue, 20 Oct 2020 17:19:06 +0100
MIME-Version: 1.0
In-Reply-To: <20201020161144.678668-1-tvrtko.ursulin@linux.intel.com>
References: <20201020100822.543332-2-tvrtko.ursulin@linux.intel.com>
 <20201020161144.678668-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 20 Oct 2020 17:19:04 +0100
Message-ID: <160321074478.17091.14742863826313913540@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/pmu: Fix CPU hotplug with
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-10-20 17:11:44)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Since we keep a driver global mask of online CPUs and base the decision
> whether PMU needs to be migrated upon it, we need to make sure the
> migration is done for all registered PMUs (so GPUs).
> 
> To do this we need to track the current CPU for each PMU and base the
> decision on whether to migrate on a comparison between global and local
> state.
> 
> At the same time, since dynamic CPU hotplug notification slots are a
> scarce resource and given how we already register the multi instance type
> state, we can and should add multiple instance of the i915 PMU to this
> same state and not allocate a new one for every GPU.
> 
> v2:
>  * Use pr_notice. (Chris)
> 
> v3:
>  * Handle a nasty interaction where unregistration which triggers a false
>    CPU offline event. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Suggested-by: Daniel Vetter <daniel.vetter@intel.com> # dynamic slot optimisation
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_pci.c |  7 +++-
>  drivers/gpu/drm/i915/i915_pmu.c | 57 +++++++++++++++++++++------------
>  drivers/gpu/drm/i915/i915_pmu.h |  6 +++-
>  3 files changed, 48 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 27964ac0638a..a384f51c91c1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1150,9 +1150,13 @@ static int __init i915_init(void)
>                 return 0;
>         }
>  
> +       i915_pmu_init();
> +
>         err = pci_register_driver(&i915_pci_driver);
> -       if (err)
> +       if (err) {
> +               i915_pmu_exit();
>                 return err;

We could do an onion bhaji and call i915_globals_exit() as well.

> +       }
>  
>         i915_perf_sysctl_register();
>         return 0;
> @@ -1166,6 +1170,7 @@ static void __exit i915_exit(void)
>         i915_perf_sysctl_unregister();
>         pci_unregister_driver(&i915_pci_driver);
>         i915_globals_exit();
> +       i915_pmu_exit();

pmu_exit then globals_exit to pair with i915_init?

>  }
>  
>  module_init(i915_init);
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 51ed7d0efcdc..cd786ad12be7 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -30,6 +30,7 @@
>  #define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
>  
>  static cpumask_t i915_pmu_cpumask;
> +static unsigned int i915_pmu_target_cpu = -1;
>  
>  static u8 engine_config_sample(u64 config)
>  {
> @@ -1049,25 +1050,39 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
>  static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>  {
>         struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
> -       unsigned int target;
> +       unsigned int target = i915_pmu_target_cpu;
>  
>         GEM_BUG_ON(!pmu->base.event_init);
>  
> +       /*
> +        * Unregistering an instance generates a CPU offline event which we must
> +        * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
> +        */
> +       if (pmu->closed)
> +               return 0;
> +
>         if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>                 target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
> +
>                 /* Migrate events if there is a valid target */
>                 if (target < nr_cpu_ids) {
>                         cpumask_set_cpu(target, &i915_pmu_cpumask);
> -                       perf_pmu_migrate_context(&pmu->base, cpu, target);
> +                       i915_pmu_target_cpu = target;
>                 }
>         }
>  
> +       if (target < nr_cpu_ids && target != pmu->cpuhp.cpu) {
> +               perf_pmu_migrate_context(&pmu->base, cpu, target);
> +               pmu->cpuhp.cpu = target;
> +       }
> +
>         return 0;
>  }
>  
> -static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
> +static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
> +
> +void i915_pmu_init(void)
>  {
> -       enum cpuhp_state slot;
>         int ret;
>  
>         ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> @@ -1075,27 +1090,29 @@ static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
>                                       i915_pmu_cpu_online,
>                                       i915_pmu_cpu_offline);
>         if (ret < 0)
> -               return ret;
> +               pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
> +                         ret);
> +       else
> +               cpuhp_slot = ret;
> +}
>  
> -       slot = ret;
> -       ret = cpuhp_state_add_instance(slot, &pmu->cpuhp.node);
> -       if (ret) {
> -               cpuhp_remove_multi_state(slot);
> -               return ret;
> -       }
> +void i915_pmu_exit(void)
> +{
> +       if (cpuhp_slot != CPUHP_INVALID)
> +               cpuhp_remove_multi_state(cpuhp_slot);
> +}
>  
> -       pmu->cpuhp.slot = slot;
> -       return 0;
> +static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
> +{
> +       if (cpuhp_slot == CPUHP_INVALID)
> +               return -EINVAL;
> +
> +       return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
>  }
>  
>  static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
>  {
> -       struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
> -
> -       drm_WARN_ON(&i915->drm, pmu->cpuhp.slot == CPUHP_INVALID);
> -       drm_WARN_ON(&i915->drm, cpuhp_state_remove_instance(pmu->cpuhp.slot, &pmu->cpuhp.node));
> -       cpuhp_remove_multi_state(pmu->cpuhp.slot);
> -       pmu->cpuhp.slot = CPUHP_INVALID;
> +       cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
>  }
>  
>  static bool is_igp(struct drm_i915_private *i915)
> @@ -1129,7 +1146,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>         spin_lock_init(&pmu->lock);
>         hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>         pmu->timer.function = i915_sample;
> -       pmu->cpuhp.slot = CPUHP_INVALID;
> +       pmu->cpuhp.cpu = -1;

To the best of my limited understanding of cpuhp,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
