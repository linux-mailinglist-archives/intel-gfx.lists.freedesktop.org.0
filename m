Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA861B810A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 22:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0276EB35;
	Fri, 24 Apr 2020 20:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F3F6EB35
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 20:40:23 +0000 (UTC)
IronPort-SDR: VRIErg4SHstIoWOM1pYb96u4IQqxP0bjGhsV4WlKHHhZo1Oh+XayQQVfiRfyyfluhVOMlyVQUK
 PbtSa4+d8Qhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:40:23 -0700
IronPort-SDR: 10ZUiJy/6z+mBltON+ZEwHK+lqxuTxCJlc+ilr8PWVwQhSM6KRF5Vr5yuxfpciKX2tVgwr9P5Q
 LfqOAIV9hd6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="280946993"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 24 Apr 2020 13:40:21 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A40315C1DA7; Fri, 24 Apr 2020 23:38:24 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200424191410.27570-1-chris@chris-wilson.co.uk>
References: <20200424191410.27570-1-chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 23:38:24 +0300
Message-ID: <87k124liv3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop rq->ring->vma peeking from
 error capture
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

> We only hold the active spinlock while dumping the error state, and this
> does not prevent another thread from retiring the request -- as it is
> quite possible that despite us capturing the current state, the GPU has
> completed the request. As such, it is dangerous to dereference state
> below the request as it may already be freed, and the simplest way to
> avoid the danger is not include it in the error state.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1788
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 18 ++++++++++++------
>  drivers/gpu/drm/i915/i915_gpu_error.h |  1 -
>  2 files changed, 12 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 424ad975a360..6dd2fc0b0d47 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -467,14 +467,14 @@ static void error_print_request(struct drm_i915_error_state_buf *m,
>  	if (!erq->seqno)
>  		return;
>  
> -	err_printf(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, start %08x, head %08x, tail %08x\n",
> +	err_printf(m, "%s pid %d, seqno %8x:%08x%s%s, prio %d, head %08x, tail %08x\n",
>  		   prefix, erq->pid, erq->context, erq->seqno,
>  		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
>  			    &erq->flags) ? "!" : "",
>  		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
>  			    &erq->flags) ? "+" : "",
>  		   erq->sched_attr.priority,
> -		   erq->start, erq->head, erq->tail);
> +		   erq->head, erq->tail);
>  }
>  
>  static void error_print_context(struct drm_i915_error_state_buf *m,
> @@ -1204,16 +1204,18 @@ static void engine_record_registers(struct intel_engine_coredump *ee)
>  	}
>  }
>  
> -static void record_request(const struct i915_request *request,
> +static bool record_request(const struct i915_request *request,
>  			   struct i915_request_coredump *erq)
>  {
>  	const struct i915_gem_context *ctx;
>  
> +	if (i915_request_completed(request))
> +		return false;
> +
>  	erq->flags = request->fence.flags;
>  	erq->context = request->fence.context;
>  	erq->seqno = request->fence.seqno;
>  	erq->sched_attr = request->sched.attr;
> -	erq->start = i915_ggtt_offset(request->ring->vma);
>  	erq->head = request->head;
>  	erq->tail = request->tail;
>  
> @@ -1223,6 +1225,8 @@ static void record_request(const struct i915_request *request,
>  	if (ctx)
>  		erq->pid = pid_nr(ctx->pid);
>  	rcu_read_unlock();
> +
> +	return true;
>  }
>  
>  static void engine_record_execlists(struct intel_engine_coredump *ee)
> @@ -1231,8 +1235,10 @@ static void engine_record_execlists(struct intel_engine_coredump *ee)
>  	struct i915_request * const *port = el->active;
>  	unsigned int n = 0;
>  
> -	while (*port)
> -		record_request(*port++, &ee->execlist[n++]);
> +	while (*port) {
> +		if (record_request(*port++, &ee->execlist[n]))
> +			n++;
> +	}
>  
>  	ee->num_ports = n;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 0d1f6c8ff355..fa2d82a6de04 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -50,7 +50,6 @@ struct i915_request_coredump {
>  	pid_t pid;
>  	u32 context;
>  	u32 seqno;
> -	u32 start;
>  	u32 head;
>  	u32 tail;
>  	struct i915_sched_attr sched_attr;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
