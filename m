Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4E0607B82
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 17:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275BE10E2C2;
	Fri, 21 Oct 2022 15:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40F510E2C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 15:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666367514; x=1697903514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uEdCVzsfqe7HpIH1xBKIi9T0ciBbjrJB/GmUgdr74g0=;
 b=TO/Zei6OXpwTzBs4yp5woro8t8WdvrInospXJ2CA5Jr36rOE3C9ZCsnN
 pGTRhQP5S1Z69Gm9GpTWOl3kNNSv8RkRyCxARw8vx1yGVOi0/i1Ad+ppp
 Sk8riFB8JOtf1DGkeq4A1VyOmuyjsUwWskFMuYYtduk87o+7Wpx3Pd4t/
 foOM52D0ulBEDbNHB13jFariV1UOvUjEWslJl3BVwcLKJho1ja58YFKWq
 vjV3GObrlZiSbpneXQY7HorjPJh+HiETxwfuxKA4PhqOpo53+6XlAg/WU
 Fae6CRzyGkUseMajkn4IBwLixYj1XPsj6HBV2UAzRU2quowSp70M09izz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="287436015"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="287436015"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 08:51:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="661655422"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="661655422"
Received: from apierro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 08:51:44 -0700
Date: Fri, 21 Oct 2022 17:51:42 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1LADqViVzJAIMGe@ashyti-mobl2.lan>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013133001.3639326-2-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add wait and lock to
 i915_vma_move_to_active
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

(at first I r-b'ed this patch, but then I wanted to think on some
more "simplification" (if it really simplifies things). Please
read the review in patch 2 first )

> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 1cae24349a96fd..80e7fdd5d16427 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -565,10 +565,8 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>  			goto err_unpin;
>  		}
>  
> -		err = i915_request_await_object(rq, vma->obj, true);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(vma, rq,
> -						      EXEC_OBJECT_WRITE);
> +		err = i915_vma_move_to_active(vma, rq,
> +					      EXEC_OBJECT_WRITE);

nit: don't need to break the line here.

>  
>  		i915_request_add(rq);
>  err_unpin:

[...]

> @@ -860,9 +854,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
>  		return PTR_ERR(rq);
>  
>  	i915_vma_lock(results);
> -	err = i915_request_await_object(rq, results->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
>  	i915_vma_unlock(results);
>  	if (err)
>  		goto err_req;
> @@ -944,9 +936,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>  	}
>  
>  	i915_vma_lock(batch);
> -	err = i915_request_await_object(rq, batch->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(batch, rq, 0);
> +	err = i915_vma_move_to_active(batch, rq, 0);
>  	i915_vma_unlock(batch);

The final risult would be:

	i915_vma_lock();
	i915_vma_move_to_active()
	i915_vma_unlock();

and it's a pattern... as I suggested in patch 2, how about having
an:

	i915_vma_move_to_active_unlocked()

and...

>  	if (err)
>  		goto err_request;
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index d6fe94cd0fdb61..b49098f045005e 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -570,9 +570,8 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
>  			if (gmadr_bytes == 8)
>  				bb->bb_start_cmd_va[2] = 0;
>  
> -			ret = i915_vma_move_to_active(bb->vma,
> -						      workload->req,
> -						      0);
> +			ret = _i915_vma_move_to_active(bb->vma, workload->req,
> +						       &workload->req->fence, 0);
>  			if (ret)
>  				goto err;
>  
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 15816df916c781..19138e99d2fd03 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2015,9 +2015,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>  			goto err_add_request;
>  	}
>  
> -	err = i915_request_await_object(rq, vma->obj, 0);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, 0);
> +	err = i915_vma_move_to_active(vma, rq, 0);
>  	if (err)
>  		goto err_add_request;
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index aecd9c64486b27..47ac5bd1ffcce6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -64,7 +64,11 @@ static inline int __must_check
>  i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq,
>  			unsigned int flags)
>  {
> -	return _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	int err = i915_request_await_object(rq, vma->obj, flags & EXEC_OBJECT_WRITE);
> +
> +	if (!err)
> +		err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	return err;
>  }

... this i915_vma_move_to_active() now it's doing more than just
moving to active but it's also waiting on dma fences, shall we
call it i915_vma_move_to_active_async() or silimar? (I'm not good
at giving names).

The above would be i915_vma_move_to_active_async_unlocked(). Too
long? More complex?

We would have something like:

	i915_vma_move_to_active() /* not used */
	i915_vma_move_to_active_unlocked()
	i915_vma_move_to_active_async()
	i915_vma_move_to_active_async_unlocked()

Anyway as it is looks good, I didn't spot any error in the
conversion:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

[...]
