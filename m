Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DF8150EA1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 18:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05AB6ECA5;
	Mon,  3 Feb 2020 17:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF0D6ECA5
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 17:32:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 09:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="310785490"
Received: from cpboland-mobl.ger.corp.intel.com (HELO [10.252.21.76])
 ([10.252.21.76])
 by orsmga001.jf.intel.com with ESMTP; 03 Feb 2020 09:32:30 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
 <20200203094152.4150550-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <8a3d1405-c6c0-4190-7085-7c697326e6d1@intel.com>
Date: Mon, 3 Feb 2020 17:32:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200203094152.4150550-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/selftests: Add a simple
 rollover for the kernel context
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

On 03/02/2020 09:41, Chris Wilson wrote:
> Exercise the seqno wrap paths on the kernel context to provide a small
> amount of sanity checking and ensure that they are visible to lockdep.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_timeline.c | 177 ++++++++++++++++++++
>   1 file changed, 177 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index e2d78cc22fb4..25edfd7a1544 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -6,6 +6,8 @@
>   
>   #include <linux/prime_numbers.h>
>   
> +#include "intel_context.h"
> +#include "intel_engine_heartbeat.h"
>   #include "intel_engine_pm.h"
>   #include "intel_gt.h"
>   #include "intel_gt_requests.h"
> @@ -750,6 +752,179 @@ static int live_hwsp_wrap(void *arg)
>   	return err;
>   }
>   
> +static void engine_heartbeat_disable(struct intel_engine_cs *engine,
> +				     unsigned long *saved)
> +{
> +	*saved = engine->props.heartbeat_interval_ms;
> +	engine->props.heartbeat_interval_ms = 0;
> +
> +	intel_engine_pm_get(engine);
> +	intel_engine_park_heartbeat(engine);
> +}
> +
> +static void engine_heartbeat_enable(struct intel_engine_cs *engine,
> +				    unsigned long saved)
> +{
> +	intel_engine_pm_put(engine);
> +
> +	engine->props.heartbeat_interval_ms = saved;
> +}
> +
> +static int live_hwsp_rollover_kernel(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	int err = 0;
> +
> +	/*
> +	 * Run the host for long enough, and even the kernel context will
> +	 * see a seqno rollover.
> +	 */
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce = engine->kernel_context;
> +		struct intel_timeline *tl = ce->timeline;
> +		struct i915_request *rq[3] = {};
> +		unsigned long heartbeat;
> +		int i;
> +
> +		engine_heartbeat_disable(engine, &heartbeat);
> +		if (intel_gt_wait_for_idle(gt, HZ / 2)) {
> +			err = -EIO;
> +			goto out;
> +		}
> +
> +		GEM_BUG_ON(i915_active_fence_isset(&tl->last_request));
> +		tl->seqno = 0;
> +		timeline_rollback(tl);
> +		timeline_rollback(tl);
> +		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
> +
> +		for (i = 0; i < ARRAY_SIZE(rq); i++) {
> +			rq[i] = i915_request_create(ce);
> +			if (IS_ERR(rq[i])) {
> +				err = PTR_ERR(rq[i]);
> +				goto out;
> +			}
> +
> +			pr_debug("%s: create fence.seqnp:%d\n",
> +				 engine->name, lower_32_bits(rq[i]->fence.seqno));
> +			i915_request_get(rq[i]);
> +			GEM_BUG_ON(rcu_access_pointer(rq[i]->timeline) != tl);
> +			i915_request_add(rq[i]);
> +		}
> +
> +		/* We expected a wrap! */
> +		GEM_BUG_ON(rq[2]->fence.seqno > rq[0]->fence.seqno);
> +
> +		if (i915_request_wait(rq[2], 0, HZ / 5) < 0) {
> +			pr_err("Wait for timeline wrap timed out!\n");
> +			err = -EIO;
> +			goto out;
> +		}
> +
> +		for (i = 0; i < ARRAY_SIZE(rq); i++) {
> +			if (!i915_request_completed(rq[i])) {
> +				pr_err("Pre-wrap request not completed!\n");
> +				err = -EINVAL;
> +				goto out;
> +			}
> +		}
> +
> +out:
> +		for (i = 0; i < ARRAY_SIZE(rq); i++)
> +			i915_request_put(rq[i]);

!IS_ERR_OR_NULL()?

Makes sense,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
