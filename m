Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF012B6007
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 14:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BDAD6E1FB;
	Tue, 17 Nov 2020 13:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FBEC6E1FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 13:06:26 +0000 (UTC)
IronPort-SDR: FFAwqjCHg7ewlVE5lGRzkyFJt2sk8sXL9BF7NtOQBFidFtLZdb45Pv2OTkXNE1iZLaaAa/5s/1
 xr25H7s5tqHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="188975008"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="188975008"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:06:25 -0800
IronPort-SDR: B2kPdmoF1suWHVhDqn4CWYls9xOxtHJjbHS92SRMIZqeuvC82ypzE8TTinZVpxp4WLbhpuUSZt
 +d6FdfS6uvkg==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="544044241"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO [10.252.50.93])
 ([10.252.50.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 05:06:24 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c13730da-a33f-a0e5-6af3-36e15f8c2254@linux.intel.com>
Date: Tue, 17 Nov 2020 13:06:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201117113103.21480-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/28] drm/i915: Show timeline dependencies
 for debug
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


On 17/11/2020 11:30, Chris Wilson wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Include the signalers each request in the timeline is waiting on, as a
> means to try and identify the cause of a stall. This can be quite
> verbose, even as for now we only show each request in the timeline and
> its immediate antecedents.
> 
> This generates output like:
> 
> Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }

Applies to earlier patch:

I am still tempted to suggest replacing "current: %d, last: %d" with 
"seqno: %d/%d" for compactness and which is still completely intuitive 
to me.

And maybe instead of "engine: %s" just append the engine name direct as tag.

But up to you.

>    U 886:29a-  prio=0 @ 134ms: gem_exec_parall<4621>
>    - U bc1:27a-  prio=0 @ 134ms: gem_exec_parall[4917]
> Timeline 825: { count 1, ready: 0, inflight: 0, seqno: { current: 802, last: 804 }, engine: vcs0 }
>    U 825:324  prio=0 @ 107ms: gem_exec_parall<4518>
>    - U b75:140-  prio=0 @ 110ms: gem_exec_parall<5486>
> Timeline b46: { count 1, ready: 0, inflight: 0, seqno: { current: 782, last: 784 }, engine: vcs0 }
>    U b46:310-  prio=0 @ 70ms: gem_exec_parall<5428>
>    - U c11:170-  prio=0 @ 70ms: gem_exec_parall[5501]
> Timeline 96b: { count 1, ready: 0, inflight: 0, seqno: { current: 632, last: 634 }, engine: vcs0 }
>    U 96b:27a-  prio=0 @ 67ms: gem_exec_parall<4878>
>    - U b75:19e-  prio=0 @ 67ms: gem_exec_parall<5486>
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c   |  3 ++-
>   drivers/gpu/drm/i915/i915_scheduler.c | 31 +++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_scheduler.h |  6 ++++++
>   3 files changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 498c82dcc7e9..f6e71119891f 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -45,6 +45,7 @@
>   #include "i915_debugfs.h"
>   #include "i915_debugfs_params.h"
>   #include "i915_irq.h"
> +#include "i915_scheduler.h"
>   #include "i915_trace.h"
>   #include "intel_pm.h"
>   #include "intel_sideband.h"
> @@ -1325,7 +1326,7 @@ static int i915_engine_info(struct seq_file *m, void *unused)
>   	for_each_uabi_engine(engine, i915)
>   		intel_engine_dump(engine, &p, "%s\n", engine->name);
>   
> -	intel_gt_show_timelines(&i915->gt, &p, NULL);
> +	intel_gt_show_timelines(&i915->gt, &p, i915_request_show_with_schedule);
>   
>   	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index cbb880b10c65..8837ba672933 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -504,6 +504,37 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>   	spin_unlock_irq(&schedule_lock);
>   }
>   
> +void i915_request_show_with_schedule(struct drm_printer *m,
> +				     const struct i915_request *rq,
> +				     const char *prefix)
> +{
> +	struct i915_dependency *dep;
> +
> +	i915_request_show(m, rq, prefix);
> +	if (i915_request_completed(rq))
> +		return;
> +
> +	rcu_read_lock();
> +	for_each_signaler(dep, rq) {
> +		const struct i915_request *signaler =
> +			node_to_request(dep->signaler);
> +
> +		/* Dependencies along the same timeline are expected. */
> +		if (signaler->timeline == rq->timeline)
> +			continue;
> +
> +		if (i915_request_completed(signaler))
> +			continue;
> +
> +		/* XXX ideally build indent into prefix */
> +		i915_request_show(m, signaler,
> +				  i915_request_is_active(signaler) ? "  - E" :
> +				  i915_request_is_ready(signaler) ? "  - Q" :
> +				  "  - U");

This we will see what we agree on in the previous patch.

> +	}
> +	rcu_read_unlock();
> +}
> +
>   static void i915_global_scheduler_shrink(void)
>   {
>   	kmem_cache_shrink(global.slab_dependencies);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index 6f0bf00fc569..34cee9a17801 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -13,6 +13,8 @@
>   
>   #include "i915_scheduler_types.h"
>   
> +struct drm_printer;
> +
>   #define priolist_for_each_request(it, plist, idx) \
>   	for (idx = 0; idx < ARRAY_SIZE((plist)->requests); idx++) \
>   		list_for_each_entry(it, &(plist)->requests[idx], sched.link)
> @@ -54,4 +56,8 @@ static inline void i915_priolist_free(struct i915_priolist *p)
>   		__i915_priolist_free(p);
>   }
>   
> +void i915_request_show_with_schedule(struct drm_printer *m,
> +				     const struct i915_request *rq,
> +				     const char *prefix);
> +
>   #endif /* _I915_SCHEDULER_H_ */
> 

Overall looks good to me.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
