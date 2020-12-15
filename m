Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDB02DAE44
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 14:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9281289700;
	Tue, 15 Dec 2020 13:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5BE89700
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 13:49:53 +0000 (UTC)
IronPort-SDR: 14/wrAqIIXxhKHpf/RTCSyQl6wpYURjRwLRKHfpiwEgsjJUBdI9FIB1McYMF8vPauyclO0IRuU
 byT7Tf10Hazg==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="161931967"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="161931967"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:49:52 -0800
IronPort-SDR: tbJFaSvknCfENdV1BQNPf8romQlhHR24EOxC7KYt4TQL+Kjkjl5q0W2fm2Wl1Hm1pkVCtpk4V7
 3PHhJf1whAbw==
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="368242855"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO [10.252.36.152])
 ([10.252.36.152])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:49:52 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
 <20201214100949.11387-14-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c7f331e8-73c3-5774-0876-16f53942cfa4@linux.intel.com>
Date: Tue, 15 Dec 2020 13:49:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201214100949.11387-14-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/69] drm/i915/gt: Track the overall
 awake/busy time
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/12/2020 10:08, Chris Wilson wrote:
> Since we wake the GT up before executing a request, and go to sleep as
> soon as it is retired, the GT wake time not only represents how long the
> device is powered up, but also provides a summary, albeit an overestimate,
> of the device runtime (i.e. the rc0 time to compare against rc6 time).
> 
> v2: s/busy/awake/
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/debugfs_gt_pm.c  |  5 ++-
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 49 ++++++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  2 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h | 24 ++++++++++++
>   drivers/gpu/drm/i915/i915_debugfs.c      |  5 ++-
>   drivers/gpu/drm/i915/i915_pmu.c          |  6 +++
>   include/uapi/drm/i915_drm.h              |  1 +
>   7 files changed, 89 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> index 174a24553322..8975717ace06 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -11,6 +11,7 @@
>   #include "i915_drv.h"
>   #include "intel_gt.h"
>   #include "intel_gt_clock_utils.h"
> +#include "intel_gt_pm.h"
>   #include "intel_llc.h"
>   #include "intel_rc6.h"
>   #include "intel_rps.h"
> @@ -558,7 +559,9 @@ static int rps_boost_show(struct seq_file *m, void *data)
>   
>   	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
>   	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
> -	seq_printf(m, "GPU busy? %s\n", yesno(gt->awake));
> +	seq_printf(m, "GPU busy? %s, %llums\n",
> +		   yesno(gt->awake),
> +		   ktime_to_ms(intel_gt_get_awake_time(gt)));
>   	seq_printf(m, "Boosts outstanding? %d\n",
>   		   atomic_read(&rps->num_waiters));
>   	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 274aa0dd7050..c94e8ac884eb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -39,6 +39,28 @@ static void user_forcewake(struct intel_gt *gt, bool suspend)
>   	intel_gt_pm_put(gt);
>   }
>   
> +static void runtime_begin(struct intel_gt *gt)
> +{
> +	local_irq_disable();
> +	write_seqcount_begin(&gt->stats.lock);
> +	gt->stats.start = ktime_get();
> +	gt->stats.active = true;
> +	write_seqcount_end(&gt->stats.lock);
> +	local_irq_enable();
> +}
> +
> +static void runtime_end(struct intel_gt *gt)
> +{
> +	local_irq_disable();
> +	write_seqcount_begin(&gt->stats.lock);
> +	gt->stats.active = false;
> +	gt->stats.total =
> +		ktime_add(gt->stats.total,
> +			  ktime_sub(ktime_get(), gt->stats.start));
> +	write_seqcount_end(&gt->stats.lock);
> +	local_irq_enable();
> +}
> +
>   static int __gt_unpark(struct intel_wakeref *wf)
>   {
>   	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
> @@ -67,6 +89,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
>   	i915_pmu_gt_unparked(i915);
>   
>   	intel_gt_unpark_requests(gt);
> +	runtime_begin(gt);
>   
>   	return 0;
>   }
> @@ -79,6 +102,7 @@ static int __gt_park(struct intel_wakeref *wf)
>   
>   	GT_TRACE(gt, "\n");
>   
> +	runtime_end(gt);
>   	intel_gt_park_requests(gt);
>   
>   	i915_vma_parked(gt);
> @@ -106,6 +130,7 @@ static const struct intel_wakeref_ops wf_ops = {
>   void intel_gt_pm_init_early(struct intel_gt *gt)
>   {
>   	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
> +	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
>   }
>   
>   void intel_gt_pm_init(struct intel_gt *gt)
> @@ -339,6 +364,30 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>   	return intel_uc_runtime_resume(&gt->uc);
>   }
>   
> +static ktime_t __intel_gt_get_awake_time(const struct intel_gt *gt)
> +{
> +	ktime_t total = gt->stats.total;
> +
> +	if (gt->stats.active)
> +		total = ktime_add(total,
> +				  ktime_sub(ktime_get(), gt->stats.start));
> +
> +	return total;
> +}
> +
> +ktime_t intel_gt_get_awake_time(const struct intel_gt *gt)
> +{
> +	unsigned int seq;
> +	ktime_t total;
> +
> +	do {
> +		seq = read_seqcount_begin(&gt->stats.lock);
> +		total = __intel_gt_get_awake_time(gt);
> +	} while (read_seqcount_retry(&gt->stats.lock, seq));
> +
> +	return total;
> +}
> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftest_gt_pm.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index 60f0e2fbe55c..63846a856e7e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -58,6 +58,8 @@ int intel_gt_resume(struct intel_gt *gt);
>   void intel_gt_runtime_suspend(struct intel_gt *gt);
>   int intel_gt_runtime_resume(struct intel_gt *gt);
>   
> +ktime_t intel_gt_get_awake_time(const struct intel_gt *gt);
> +
>   static inline bool is_mock_gt(const struct intel_gt *gt)
>   {
>   	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 6d39a4a11bf3..c7bde529feab 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -87,6 +87,30 @@ struct intel_gt {
>   
>   	u32 pm_guc_events;
>   
> +	struct {
> +		bool active;
> +
> +		/**
> +		 * @lock: Lock protecting the below fields.
> +		 */
> +		seqcount_mutex_t lock;
> +
> +		/**
> +		 * @total: Total time this engine was busy.
> +		 *
> +		 * Accumulated time not counting the most recent block in cases
> +		 * where engine is currently busy (active > 0).
> +		 */
> +		ktime_t total;
> +
> +		/**
> +		 * @start: Timestamp of the last idle to active transition.
> +		 *
> +		 * Idle is defined as active == 0, active is active > 0.
> +		 */
> +		ktime_t start;
> +	} stats;
> +
>   	struct intel_engine_cs *engine[I915_NUM_ENGINES];
>   	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
>   					    [MAX_ENGINE_INSTANCE + 1];
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index f48df3545e39..c72160e3702f 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -858,9 +858,10 @@ static int i915_engine_info(struct seq_file *m, void *unused)
>   
>   	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   
> -	seq_printf(m, "GT awake? %s [%d]\n",
> +	seq_printf(m, "GT awake? %s [%d], %llums\n",
>   		   yesno(i915->gt.awake),
> -		   atomic_read(&i915->gt.wakeref.count));
> +		   atomic_read(&i915->gt.wakeref.count),
> +		   ktime_to_ms(intel_gt_get_awake_time(&i915->gt)));
>   	seq_printf(m, "CS timestamp frequency: %u Hz\n",
>   		   RUNTIME_INFO(i915)->cs_timestamp_frequency_hz);
>   
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 97bb4aaa5236..fc762eec9601 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -516,6 +516,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>   		if (!HAS_RC6(i915))
>   			return -ENODEV;
>   		break;
> +	case I915_PMU_GT_AWAKE:
> +		break;
>   	default:
>   		return -ENOENT;
>   	}
> @@ -623,6 +625,9 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>   		case I915_PMU_RC6_RESIDENCY:
>   			val = get_rc6(&i915->gt);
>   			break;
> +		case I915_PMU_GT_AWAKE:
> +			val = ktime_to_ns(intel_gt_get_awake_time(&i915->gt));
> +			break;
>   		}
>   	}
>   
> @@ -938,6 +943,7 @@ create_event_attributes(struct i915_pmu *pmu)
>   		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
>   		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>   		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
> +		__event(I915_PMU_GT_AWAKE, "awake", "ns"),
>   	};
>   	static const struct {
>   		enum drm_i915_pmu_engine_sample sample;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 6edcb2b6c708..04abd1ee89bf 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -177,6 +177,7 @@ enum drm_i915_pmu_engine_sample {
>   #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
>   #define I915_PMU_INTERRUPTS		__I915_PMU_OTHER(2)
>   #define I915_PMU_RC6_RESIDENCY		__I915_PMU_OTHER(3)
> +#define I915_PMU_GT_AWAKE		__I915_PMU_OTHER(4)
>   
>   #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>   
> 

With the event named either I915_PMU_GT_SW_AWAKE_TIME or 
I915_PMU_GT_SOFTWARE_AWAKE_TIME and sysfs name to match 
("gt-software-awake-time" for instance):

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
