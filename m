Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C764B8A8
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 16:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38D810E33A;
	Tue, 13 Dec 2022 15:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C8310E336
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 15:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670945937; x=1702481937;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WEIxYB+h5ryfP90nsslKL0lI7afj6c5UO0WSmTOeWDY=;
 b=TNXLedLoqwi7Ttlht6lBrQqZ3o+bR4vRBkXmX22/DLKsEZv767JZWweA
 ZxqcDZl1BA2YufLhGJYUioAADR48GVzIh5LVUn0ABG7/QpDWc1nDu7qQQ
 ySPP7eEOwcvzx/3mWAVP2H8Ge2dmoTynWO8Jy8KkH1XJG0YpYvEFaSbtj
 1a/fb+DERaNEpFy7Ff33hcSeb7U7Pqh2eEuNGyC8tOLT3cip+poNl45/S
 MjLAilQ9PqGz6Wta9+/YGDUz+VT2u4b3itdDEm0CrBAxMSZte/ErMTg8Q
 r0AcjZsva+GJBogbwUmG5PUCeeqy5gS1lLJMMTJ23KIKxzV2jckUCCnBl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="297835587"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="297835587"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:38:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="650772429"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="650772429"
Received: from epetresx-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.216.82])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:38:54 -0800
Date: Tue, 13 Dec 2022 16:38:47 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y5ich2B4zyqnw/1a@ashyti-mobl2.lan>
References: <20221213121951.1515023-1-andrzej.hajda@intel.com>
 <20221213121951.1515023-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221213121951.1515023-2-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: use
 igt_vma_move_to_active_unlocked if possible
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Tue, Dec 13, 2022 at 01:19:51PM +0100, Andrzej Hajda wrote:
> Helper replaces common sequence of calls.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  .../gpu/drm/i915/gem/selftests/i915_gem_context.c    |  8 ++------
>  drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c   |  8 ++------
>  drivers/gpu/drm/i915/gt/selftest_execlists.c         | 12 +++---------
>  drivers/gpu/drm/i915/gt/selftest_lrc.c               |  4 +---
>  drivers/gpu/drm/i915/gt/selftest_mocs.c              |  4 +---
>  drivers/gpu/drm/i915/gt/selftest_workarounds.c       | 12 +++---------
>  6 files changed, 12 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index ac02fb03659208..9c6a64a0de5c0b 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1549,9 +1549,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
>  		goto err_unpin;
>  	}
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, 0);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
>  	if (err)
>  		goto skip_request;
>  
> @@ -1684,9 +1682,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  		goto err_unpin;
>  	}
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>  	if (err)
>  		goto skip_request;
>  
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index c147038230c462..20a232a140b0f2 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -130,15 +130,11 @@ int igt_gpu_fill_dw(struct intel_context *ce,
>  		goto err_batch;
>  	}
>  
> -	i915_vma_lock(batch);
> -	err = i915_vma_move_to_active(batch, rq, 0);
> -	i915_vma_unlock(batch);
> +	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
>  	if (err)
>  		goto skip_request;
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>  	if (err)
>  		goto skip_request;
>  
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index a619057543fd94..736b89a8ecf54f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -2763,13 +2763,11 @@ static int create_gang(struct intel_engine_cs *engine,
>  	rq->batch = i915_vma_get(vma);
>  	i915_request_get(rq);
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, 0);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
>  	if (!err)
>  		err = rq->engine->emit_bb_start(rq,
>  						i915_vma_offset(vma),
>  						PAGE_SIZE, 0);
> -	i915_vma_unlock(vma);
>  	i915_request_add(rq);
>  	if (err)
>  		goto err_rq;
> @@ -3177,9 +3175,7 @@ create_gpr_client(struct intel_engine_cs *engine,
>  		goto out_batch;
>  	}
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, 0);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, 0);
>  
>  	i915_vma_lock(batch);
>  	if (!err)
> @@ -3514,13 +3510,11 @@ static int smoke_submit(struct preempt_smoke *smoke,
>  	}
>  
>  	if (vma) {
> -		i915_vma_lock(vma);
> -		err = i915_vma_move_to_active(vma, rq, 0);
> +		err = igt_vma_move_to_active_unlocked(vma, rq, 0);
>  		if (!err)
>  			err = rq->engine->emit_bb_start(rq,
>  							i915_vma_offset(vma),
>  							PAGE_SIZE, 0);
> -		i915_vma_unlock(vma);
>  	}
>  
>  	i915_request_add(rq);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index a61ae9d7e0a220..a78a3d2c2e16e8 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -599,9 +599,7 @@ __gpr_read(struct intel_context *ce, struct i915_vma *scratch, u32 *slot)
>  		*cs++ = 0;
>  	}
>  
> -	i915_vma_lock(scratch);
> -	err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(scratch);
> +	err = igt_vma_move_to_active_unlocked(scratch, rq, EXEC_OBJECT_WRITE);
>  
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index f27cc28608d4ff..ca009a6a13bdbb 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -228,9 +228,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	if (IS_ERR(rq))
>  		return PTR_ERR(rq);
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>  
>  	/* Read the mocs tables back using SRM */
>  	offset = i915_ggtt_offset(vma);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 9c5449709161c0..14a8b25b6204a7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -138,9 +138,7 @@ read_nonprivs(struct intel_context *ce)
>  		goto err_pin;
>  	}
>  
> -	i915_vma_lock(vma);
> -	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = igt_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>  	if (err)
>  		goto err_req;
>  
> @@ -853,9 +851,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
>  	if (IS_ERR(rq))
>  		return PTR_ERR(rq);
>  
> -	i915_vma_lock(results);
> -	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(results);
> +	err = igt_vma_move_to_active_unlocked(results, rq, EXEC_OBJECT_WRITE);
>  	if (err)
>  		goto err_req;
>  
> @@ -935,9 +931,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>  			goto err_request;
>  	}
>  
> -	i915_vma_lock(batch);
> -	err = i915_vma_move_to_active(batch, rq, 0);
> -	i915_vma_unlock(batch);
> +	err = igt_vma_move_to_active_unlocked(batch, rq, 0);
>  	if (err)
>  		goto err_request;
>  
> -- 
> 2.34.1
