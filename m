Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C0317C017
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C6E46ED2E;
	Fri,  6 Mar 2020 14:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C206ED2E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 14:20:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:20:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="440125216"
Received: from acsok-mobl1.ti.intel.com (HELO [10.252.40.129])
 ([10.252.40.129])
 by fmsmga005.fm.intel.com with ESMTP; 06 Mar 2020 06:20:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-7-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <32544a2a-d0cb-4232-9532-b9e247220e4b@intel.com>
Date: Fri, 6 Mar 2020 16:20:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306133852.3420322-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/17] drm/i915/perf: Schedule oa_config
 after modifying the contexts
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

On 06/03/2020 15:38, Chris Wilson wrote:
> We wish that the scheduler emit the context modification commands prior
> to enabling the oa_config, for which we must explicitly inform it of the
> ordering constraints. This is especially important as we now wait for
> the final oa_config setup to be completed and as this wait may be on a
> distinct context to the state modifications, we need that command packet
> to be always last in the queue.
>
> We borrow the i915_active for its ability to track multiple timelines
> and the last dma_fence on each; a flexible dma_resv. Keeping track of
> each dma_fence is important for us so that we can efficiently schedule
> the requests and reprioritise as required.
>
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_overlay.c  |   8 +-
>   drivers/gpu/drm/i915/gt/intel_context_param.c |   2 +-
>   drivers/gpu/drm/i915/i915_active.c            |   6 +-
>   drivers/gpu/drm/i915/i915_active.h            |   2 +-
>   drivers/gpu/drm/i915/i915_perf.c              | 154 +++++++++++-------
>   drivers/gpu/drm/i915/i915_perf_types.h        |   5 +-
>   drivers/gpu/drm/i915/i915_vma.h               |   2 +-
>   drivers/gpu/drm/i915/selftests/i915_active.c  |   4 +-
>   8 files changed, 115 insertions(+), 68 deletions(-)
>
...
> @@ -2729,16 +2772,19 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
>   
>   static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>   {
> -	struct i915_request *rq;
> +	struct i915_active *active;
> +	int err;
>   
> -	rq = stream->perf->ops.enable_metric_set(stream);
> -	if (IS_ERR(rq))
> -		return PTR_ERR(rq);
> +	active = i915_active_create();
> +	if (!active)
> +		return -ENOMEM;
>   
> -	i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> -	i915_request_put(rq);
> +	err = stream->perf->ops.enable_metric_set(stream, active);
> +	if (err == 0)
> +		i915_active_wait(active, TASK_UNINTERRUPTIBLE);


Why not? :


err = i915_active_wait(active, TASK_INTERRUPTIBLE);


-Lionel


>   
> -	return 0;
> +	i915_active_put(active);
> +	return err;
>   }
>   
>   /**
> @@ -3192,7 +3238,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>   		return -EINVAL;
>   
>   	if (config != stream->oa_config) {
> -		struct i915_request *rq;
> +		int err;
>   
>   		/*
>   		 * If OA is bound to a specific context, emit the
> @@ -3203,13 +3249,11 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>   		 * When set globally, we use a low priority kernel context,
>   		 * so it will effectively take effect when idle.
>   		 */
> -		rq = emit_oa_config(stream, config, oa_context(stream));
> -		if (!IS_ERR(rq)) {
> +		err = emit_oa_config(stream, config, oa_context(stream), NULL);
> +		if (!err)
>   			config = xchg(&stream->oa_config, config);
> -			i915_request_put(rq);
> -		} else {
> -			ret = PTR_ERR(rq);
> -		}
> +		else
> +			ret = err;
>   	}
>   
>   	i915_oa_config_put(config);
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index a0e22f00f6cf..5eaf874a0d25 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -21,6 +21,7 @@
>   
>   struct drm_i915_private;
>   struct file;
> +struct i915_active;
>   struct i915_gem_context;
>   struct i915_perf;
>   struct i915_vma;
> @@ -339,8 +340,8 @@ struct i915_oa_ops {
>   	 * counter reports being sampled. May apply system constraints such as
>   	 * disabling EU clock gating as required.
>   	 */
> -	struct i915_request *
> -		(*enable_metric_set)(struct i915_perf_stream *stream);
> +	int (*enable_metric_set)(struct i915_perf_stream *stream,
> +				 struct i915_active *active);
>   
>   	/**
>   	 * @disable_metric_set: Remove system constraints associated with using
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index e1ced1df13e1..3baa98fa5009 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -380,7 +380,7 @@ int i915_vma_wait_for_bind(struct i915_vma *vma);
>   static inline int i915_vma_sync(struct i915_vma *vma)
>   {
>   	/* Wait for the asynchronous bindings and pending GPU reads */
> -	return i915_active_wait(&vma->active);
> +	return i915_active_wait(&vma->active, TASK_INTERRUPTIBLE);
>   }
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
> index 68bbb1580162..7357d2130024 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -153,7 +153,7 @@ static int live_active_wait(void *arg)
>   	if (IS_ERR(active))
>   		return PTR_ERR(active);
>   
> -	i915_active_wait(&active->base);
> +	i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
>   	if (!READ_ONCE(active->retired)) {
>   		struct drm_printer p = drm_err_printer(__func__);
>   
> @@ -230,7 +230,7 @@ static int live_active_barrier(void *arg)
>   	i915_active_release(&active->base);
>   
>   	if (err == 0)
> -		err = i915_active_wait(&active->base);
> +		err = i915_active_wait(&active->base, TASK_UNINTERRUPTIBLE);
>   
>   	if (err == 0 && !READ_ONCE(active->retired)) {
>   		pr_err("i915_active not retired after flushing barriers!\n");


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
