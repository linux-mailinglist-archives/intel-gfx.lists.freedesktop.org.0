Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB23C2F36AD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739ED898E8;
	Tue, 12 Jan 2021 17:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02F489890
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:09:56 +0000 (UTC)
IronPort-SDR: qkJbNm6SydPUYayuOsxQNBTrNVQ2D5kBT/scVQ6oynzpdvNfPNiFhMjV6eIgEwn/ZvsQKvxTPK
 r46ad4rPUnSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165752447"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="165752447"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:09:55 -0800
IronPort-SDR: o1n4xmdFBpKqHy305zsUhqB2KTriHMMl+629+/L4B2LmxyLOkB97w8vBY92tUSGJAdMF2bfrUe
 0BRgPtiZyC+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="498981053"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 12 Jan 2021 09:09:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AAA975C2054; Tue, 12 Jan 2021 19:07:13 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210112113716.8577-1-chris@chris-wilson.co.uk>
References: <20210112113716.8577-1-chris@chris-wilson.co.uk>
Date: Tue, 12 Jan 2021 19:07:13 +0200
Message-ID: <87pn2akrsu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Force a failed engine
 reset
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Inject a fault into the engine reset and check that the outstanding
> requests are completed despite the failed reset.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 133 +++++++++++++++++++
>  1 file changed, 133 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index ffc6eabb6404..875633cc0a75 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -540,6 +540,138 @@ static int igt_reset_nop_engine(void *arg)
>  	return 0;
>  }
>  
> +static void force_reset_timeout(struct intel_engine_cs *engine)
> +{
> +	engine->reset_timeout.probability = 999;
> +	atomic_set(&engine->reset_timeout.times, -1);
> +}
> +
> +static void cancel_reset_timeout(struct intel_engine_cs *engine)
> +{
> +	memset(&engine->reset_timeout, 0, sizeof(engine->reset_timeout));
> +}
> +
> +static int igt_reset_fail_engine(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	/* Check that we can engine-reset during non-user portions */
> +
> +	if (!intel_has_reset_engine(gt))
> +		return 0;
> +
> +	for_each_engine(engine, gt, id) {
> +		unsigned int count;
> +		struct intel_context *ce;
> +		IGT_TIMEOUT(end_time);
> +		int err;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce))
> +			return PTR_ERR(ce);
> +
> +		st_engine_heartbeat_disable(engine);
> +		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> +		count = 0;
> +		do {
> +			struct i915_request *last = NULL;
> +			int i;
> +
> +			if (!wait_for_idle(engine)) {
> +				pr_err("%s failed to idle before reset\n",
> +				       engine->name);
> +				err = -EIO;
> +				break;
> +			}
> +
> +			for (i = 0; i < 16; i++) {
> +				struct i915_request *rq;
> +
> +				rq = intel_context_create_request(ce);
> +				if (IS_ERR(rq)) {
> +					struct drm_printer p =
> +						drm_info_printer(gt->i915->drm.dev);
> +					intel_engine_dump(engine, &p,
> +							  "%s(%s): failed to submit request\n",
> +							  __func__,
> +							  engine->name);
> +
> +					GEM_TRACE("%s(%s): failed to submit request\n",
> +						  __func__,
> +						  engine->name);
> +					GEM_TRACE_DUMP();
> +
> +					intel_gt_set_wedged(gt);
> +					if (last)
> +						i915_request_put(last);
> +
> +					err = PTR_ERR(rq);
> +					goto out;
> +				}
> +
> +				if (last)
> +					i915_request_put(last);
> +				last = i915_request_get(rq);
> +				i915_request_add(rq);
> +			}
> +
> +			if (count & 1) {
> +				err = intel_engine_reset(engine, NULL);
> +				if (err) {
> +					GEM_TRACE_ERR("intel_engine_reset(%s) failed, err:%d\n",
> +						      engine->name, err);
> +					GEM_TRACE_DUMP();
> +					break;
> +				}
> +			} else {
> +				force_reset_timeout(engine);
> +				err = intel_engine_reset(engine, NULL);

We dont promote to global here if the engine one fails?

If not, what mechanism then guarantees the request completion.

-Mika

> +				cancel_reset_timeout(engine);
> +				if (err != -ETIMEDOUT) {
> +					pr_err("intel_engine_reset(%s) did not fail, err:%d\n",
> +					       engine->name, err);
> +					break;
> +				}
> +			}
> +
> +			err = 0;
> +			if (i915_request_wait(last, 0, HZ /2) < 0) {
> +				struct drm_printer p =
> +					drm_info_printer(gt->i915->drm.dev);
> +
> +				intel_engine_dump(engine, &p,
> +						  "%s(%s): failed to complete request\n",
> +						  __func__,
> +						  engine->name);
> +
> +				GEM_TRACE("%s(%s): failed to complete request\n",
> +					  __func__,
> +					  engine->name);
> +				GEM_TRACE_DUMP();
> +
> +				err = -EIO;
> +			}
> +			i915_request_put(last);
> +			count++;
> +		} while (err == 0 && time_before(jiffies, end_time));
> +out:
> +		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> +		st_engine_heartbeat_enable(engine);
> +
> +		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
> +
> +		intel_context_put(ce);
> +		if (igt_flush_test(gt->i915))
> +			err = -EIO;
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  {
>  	struct i915_gpu_error *global = &gt->i915->gpu_error;
> @@ -1694,6 +1826,7 @@ int intel_hangcheck_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_reset_nop_engine),
>  		SUBTEST(igt_reset_idle_engine),
>  		SUBTEST(igt_reset_active_engine),
> +		SUBTEST(igt_reset_fail_engine),
>  		SUBTEST(igt_reset_engines),
>  		SUBTEST(igt_reset_engines_atomic),
>  		SUBTEST(igt_reset_queue),
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
