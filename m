Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5A65FC785
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436E710E2E3;
	Wed, 12 Oct 2022 14:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2432410E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585485; x=1697121485;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/YD8bMYzE69aUaQa6Owt9+4ih02F2f0INH1FDTiYqOc=;
 b=S1P+afV05gnUz9xCvos7O0e60Wdl3jbGDj7i1vc2j1yra8K72rqIuj3m
 oYOgz9HZA/Ynd2WxcafVIkE/uxACnRrv7n7BxYwttbJpZoSbrUBk0NE2P
 nzNl/buVYdr5J7Sy1DE1U3E5W6yh9uQq3KfLq4SeIXt0cvcxJ6xaEw+kn
 Mxa6ZwbU4IlIJxg3VwYW+jYT8o6aEJ5NAksyPV29moheqJL2TQE6tiQP3
 Y6znpDWav3fkxJEVoN9eWTjwF9ABX6bF1MaLvgsFCrE5qfLqtuMVyTmkj
 EC3dmkS7Dgb7OCFKZxODfAOrd3pp2wlVGGFLH7rhiu5KkK8wRcBU6TbEh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292134353"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292134353"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:38:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="659952201"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="659952201"
Received: from dionita-mobl.ger.corp.intel.com (HELO [10.252.24.124])
 ([10.252.24.124])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:38:02 -0700
Message-ID: <a2b468a6-5cc9-6905-3360-8cdb62a5076a@intel.com>
Date: Wed, 12 Oct 2022 15:38:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221012124317.3511810-1-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221012124317.3511810-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add wait and lock to
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/10/2022 13:43, Andrzej Hajda wrote:
> Since almost all calls to i915_vma_move_to_active are prepended with
> i915_request_await_object and many of them are surrounded with
> i915_vma_lock, let's put both into i915_vma_move_to_active and add
> i915_vma_move_to_active_unlocked helper to handle non-locking scenarios.
> The patch should not introduce functional changes.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 21 ++---------
>   .../i915/gem/selftests/i915_gem_coherency.c   |  4 +--
>   .../drm/i915/gem/selftests/i915_gem_context.c | 20 +++--------
>   .../drm/i915/gem/selftests/i915_gem_mman.c    |  9 ++---
>   .../drm/i915/gem/selftests/igt_gem_utils.c    | 12 ++-----
>   drivers/gpu/drm/i915/gt/intel_renderstate.c   |  4 +--
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +--
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  | 18 +++-------
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 35 +++---------------
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        | 35 ++++--------------
>   drivers/gpu/drm/i915/gt/selftest_mocs.c       |  6 +---
>   drivers/gpu/drm/i915/gt/selftest_rps.c        |  8 ++---
>   .../gpu/drm/i915/gt/selftest_workarounds.c    | 27 +++-----------
>   drivers/gpu/drm/i915/gvt/scheduler.c          |  5 ++-
>   drivers/gpu/drm/i915/i915_perf.c              |  4 +--
>   drivers/gpu/drm/i915/i915_vma.h               | 36 +++++++++++++------
>   drivers/gpu/drm/i915/selftests/i915_request.c |  9 ++---
>   drivers/gpu/drm/i915/selftests/igt_spinner.c  | 20 ++---------
>   18 files changed, 70 insertions(+), 207 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 9a6a6b5b722b60..4021b5a07b4053 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -457,21 +457,6 @@ static int verify_buffer(const struct tiled_blits *t,
>   	return ret;
>   }
>   
> -static int move_to_active(struct i915_vma *vma,
> -			  struct i915_request *rq,
> -			  unsigned int flags)
> -{
> -	int err;
> -
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, flags);
> -	i915_vma_unlock(vma);
> -
> -	return err;
> -}
> -
>   static int pin_buffer(struct i915_vma *vma, u64 addr)
>   {
>   	int err;
> @@ -525,11 +510,11 @@ tiled_blit(struct tiled_blits *t,
>   		goto err_bb;
>   	}
>   
> -	err = move_to_active(t->batch, rq, 0);
> +	err = i915_vma_move_to_active(t->batch, rq, 0);
>   	if (!err)
> -		err = move_to_active(src->vma, rq, 0);
> +		err = i915_vma_move_to_active(src->vma, rq, 0);
>   	if (!err)
> -		err = move_to_active(dst->vma, rq, 0);
> +		err = i915_vma_move_to_active(dst->vma, rq, 0);
>   	if (!err)
>   		err = rq->engine->emit_bb_start(rq,
>   						t->batch->node.start,
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> index a666d7e610f5fe..028e4303948359 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> @@ -239,9 +239,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
>   	}
>   	intel_ring_advance(rq, cs);
>   
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>   
>   out_rq:
>   	i915_request_add(rq);
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index c6ad67b90e8af2..1eb874b578a378 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -970,15 +970,11 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
>   		goto err_batch;
>   	}
>   
> -	err = i915_request_await_object(rq, batch->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(batch, rq, 0);
> +	err = i915_vma_move_to_active_unlocked(batch, rq, 0);
>   	if (err)
>   		goto skip_request;
>   
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto skip_request;
>   
> @@ -1538,11 +1534,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
>   		goto err_unpin;
>   	}
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, 0);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, 0);
>   	if (err)
>   		goto skip_request;
>   
> @@ -1674,11 +1666,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>   		goto err_unpin;
>   	}
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto skip_request;
>   
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 1cae24349a96fd..6baabc6812c740 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -565,10 +565,7 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
>   			goto err_unpin;
>   		}
>   
> -		err = i915_request_await_object(rq, vma->obj, true);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(vma, rq,
> -						      EXEC_OBJECT_WRITE);
> +		err = i915_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>   
>   		i915_request_add(rq);
>   err_unpin:
> @@ -1608,9 +1605,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
>   			goto out_unpin;
>   		}
>   
> -		err = i915_request_await_object(rq, vma->obj, false);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(vma, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   
>   		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
>   		i915_request_get(rq);
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index 3c55e77b0f1b00..93a2fc84d53acf 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -130,19 +130,11 @@ int igt_gpu_fill_dw(struct intel_context *ce,
>   		goto err_batch;
>   	}
>   
> -	i915_vma_lock(batch);
> -	err = i915_request_await_object(rq, batch->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(batch, rq, 0);
> -	i915_vma_unlock(batch);
> +	err = i915_vma_move_to_active(batch, rq, 0);
>   	if (err)
>   		goto skip_request;
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto skip_request;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
> index 5121e6dc2fa53e..03dc14c5c5faf9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
> @@ -215,9 +215,7 @@ int intel_renderstate_emit(struct intel_renderstate *so,
>   	if (!so->vma)
>   		return 0;
>   
> -	err = i915_request_await_object(rq, so->vma->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(so->vma, rq, 0);
> +	err = i915_vma_move_to_active_unlocked(so->vma, rq, 0);
>   	if (err)
>   		return err;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b8eb20a155f0d3..dd4a9949d1bf43 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -3031,9 +3031,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
>   		goto err_vma;
>   	}
>   
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active_unlocked(vma, rq, EXEC_OBJECT_WRITE);
>   	if (err == 0)
>   		err = wa_list_srm(rq, wal, vma);
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 56b7d5b5fea009..bc5c896f09e0cb 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -2764,9 +2764,7 @@ static int create_gang(struct intel_engine_cs *engine,
>   	i915_request_get(rq);
>   
>   	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, false);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, 0);
> +	err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   	if (!err)
>   		err = rq->engine->emit_bb_start(rq,
>   						vma->node.start,
> @@ -3179,17 +3177,11 @@ create_gpr_client(struct intel_engine_cs *engine,
>   		goto out_batch;
>   	}
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, false);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, 0);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, 0);
>   
>   	i915_vma_lock(batch);
>   	if (!err)
> -		err = i915_request_await_object(rq, batch->obj, false);
> -	if (!err)
> -		err = i915_vma_move_to_active(batch, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(batch, rq, 0);
>   	if (!err)
>   		err = rq->engine->emit_bb_start(rq,
>   						batch->node.start,
> @@ -3519,9 +3511,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
>   
>   	if (vma) {
>   		i915_vma_lock(vma);
> -		err = i915_request_await_object(rq, vma->obj, false);
> -		if (!err)
> -			err = i915_vma_move_to_active(vma, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   		if (!err)
>   			err = rq->engine->emit_bb_start(rq,
>   							vma->node.start,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 7f3bb1d34dfbf6..406b405e9b5783 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -99,22 +99,6 @@ static u64 hws_address(const struct i915_vma *hws,
>   	return hws->node.start + offset_in_page(sizeof(u32)*rq->fence.context);
>   }
>   
> -static int move_to_active(struct i915_vma *vma,
> -			  struct i915_request *rq,
> -			  unsigned int flags)
> -{
> -	int err;
> -
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj,
> -					flags & EXEC_OBJECT_WRITE);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, flags);
> -	i915_vma_unlock(vma);
> -
> -	return err;
> -}
> -
>   static struct i915_request *
>   hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>   {
> @@ -175,11 +159,11 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>   		goto unpin_hws;
>   	}
>   
> -	err = move_to_active(vma, rq, 0);
> +	err = i915_vma_move_to_active(vma, rq, 0);
>   	if (err)
>   		goto cancel_rq;
>   
> -	err = move_to_active(hws, rq, 0);
> +	err = i915_vma_move_to_active(hws, rq, 0);
>   	if (err)
>   		goto cancel_rq;
>   
> @@ -1510,18 +1494,9 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
>   		}
>   	}
>   
> -	i915_vma_lock(arg.vma);
> -	err = i915_request_await_object(rq, arg.vma->obj,
> -					flags & EXEC_OBJECT_WRITE);
> -	if (err == 0) {
> -		err = i915_vma_move_to_active(arg.vma, rq, flags);
> -		if (err)
> -			pr_err("[%s] Move to active failed: %d!\n", engine->name, err);
> -	} else {
> -		pr_err("[%s] Request await failed: %d!\n", engine->name, err);
> -	}
> -
> -	i915_vma_unlock(arg.vma);
> +	err = i915_vma_move_to_active(arg.vma, rq, flags);
> +	if (err)
> +		pr_err("[%s] Move to active failed: %d!\n", engine->name, err);
>   
>   	if (flags & EXEC_OBJECT_NEEDS_FENCE)
>   		i915_vma_unpin_fence(arg.vma);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 82d3f8058995a9..636264685ab316 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -452,9 +452,7 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
>   	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
>   	*cs++ = 0;
>   
> -	err = i915_request_await_object(rq, scratch->obj, true);
> -	if (!err)
> -		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active_unlocked(scratch, rq, EXEC_OBJECT_WRITE);
>   
>   	i915_request_get(rq);
>   	i915_request_add(rq);
> @@ -601,11 +599,7 @@ __gpr_read(struct intel_context *ce, struct i915_vma *scratch, u32 *slot)
>   		*cs++ = 0;
>   	}
>   
> -	i915_vma_lock(scratch);
> -	err = i915_request_await_object(rq, scratch->obj, true);
> -	if (!err)
> -		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(scratch);
> +	err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
>   
>   	i915_request_get(rq);
>   	i915_request_add(rq);
> @@ -1053,21 +1047,6 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>   	return batch;
>   }
>   
> -static int move_to_active(struct i915_request *rq,
> -			  struct i915_vma *vma,
> -			  unsigned int flags)
> -{
> -	int err;
> -
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, flags);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, flags);
> -	i915_vma_unlock(vma);
> -
> -	return err;
> -}
> -
>   static struct i915_request *
>   record_registers(struct intel_context *ce,
>   		 struct i915_vma *before,
> @@ -1093,19 +1072,19 @@ record_registers(struct intel_context *ce,
>   	if (IS_ERR(rq))
>   		goto err_after;
>   
> -	err = move_to_active(rq, before, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active(before, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto err_rq;
>   
> -	err = move_to_active(rq, b_before, 0);
> +	err = i915_vma_move_to_active(b_before, rq, 0);
>   	if (err)
>   		goto err_rq;
>   
> -	err = move_to_active(rq, after, EXEC_OBJECT_WRITE);
> +	err = i915_vma_move_to_active(after, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto err_rq;
>   
> -	err = move_to_active(rq, b_after, 0);
> +	err = i915_vma_move_to_active(b_after, rq, 0);
>   	if (err)
>   		goto err_rq;
>   
> @@ -1243,7 +1222,7 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
>   		goto err_batch;
>   	}
>   
> -	err = move_to_active(rq, batch, 0);
> +	err = i915_vma_move_to_active(batch, rq, 0);
>   	if (err)
>   		goto err_rq;
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index c1d861333c44cc..5bdf44a9fcb86c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -227,11 +227,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>   	if (IS_ERR(rq))
>   		return PTR_ERR(rq);
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>   
>   	/* Read the mocs tables back using SRM */
>   	offset = i915_ggtt_offset(vma);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 99a372486fb7f6..59f346acca684f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -652,9 +652,7 @@ int live_rps_frequency_cs(void *arg)
>   			goto err_vma;
>   		}
>   
> -		err = i915_request_await_object(rq, vma->obj, false);
> -		if (!err)
> -			err = i915_vma_move_to_active(vma, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   		if (!err)
>   			err = rq->engine->emit_bb_start(rq,
>   							vma->node.start,
> @@ -793,9 +791,7 @@ int live_rps_frequency_srm(void *arg)
>   			goto err_vma;
>   		}
>   
> -		err = i915_request_await_object(rq, vma->obj, false);
> -		if (!err)
> -			err = i915_vma_move_to_active(vma, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   		if (!err)
>   			err = rq->engine->emit_bb_start(rq,
>   							vma->node.start,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 67a9aab801ddf1..9fbb8c06e0e4e3 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -138,11 +138,7 @@ read_nonprivs(struct intel_context *ce)
>   		goto err_pin;
>   	}
>   
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(vma);
> +	err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto err_req;
>   
> @@ -632,16 +628,11 @@ static int check_dirty_whitelist(struct intel_context *ce)
>   				goto err_request;
>   		}
>   
> -		err = i915_request_await_object(rq, batch->obj, false);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(batch, rq, 0);
> +		err = i915_vma_move_to_active_unlocked(batch, rq, 0);
>   		if (err)
>   			goto err_request;
>   
> -		err = i915_request_await_object(rq, scratch->obj, true);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(scratch, rq,
> -						      EXEC_OBJECT_WRITE);
> +		err = i915_vma_move_to_active_unlocked(scratch, rq, EXEC_OBJECT_WRITE);
>   		if (err)
>   			goto err_request;
>   
> @@ -859,11 +850,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
>   	if (IS_ERR(rq))
>   		return PTR_ERR(rq);
>   
> -	i915_vma_lock(results);
> -	err = i915_request_await_object(rq, results->obj, true);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
> -	i915_vma_unlock(results);
> +	err = i915_vma_move_to_active(results, rq, EXEC_OBJECT_WRITE);
>   	if (err)
>   		goto err_req;
>   
> @@ -943,11 +930,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>   			goto err_request;
>   	}
>   
> -	i915_vma_lock(batch);
> -	err = i915_request_await_object(rq, batch->obj, false);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(batch, rq, 0);
> -	i915_vma_unlock(batch);
> +	err = i915_vma_move_to_active(batch, rq, 0);
>   	if (err)
>   		goto err_request;
>   
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index d6fe94cd0fdb61..b49098f045005e 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -570,9 +570,8 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
>   			if (gmadr_bytes == 8)
>   				bb->bb_start_cmd_va[2] = 0;
>   
> -			ret = i915_vma_move_to_active(bb->vma,
> -						      workload->req,
> -						      0);
> +			ret = _i915_vma_move_to_active(bb->vma, workload->req,
> +						       &workload->req->fence, 0);
>   			if (ret)
>   				goto err;
>   
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 15816df916c781..5a9d6b37d19ed6 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2015,9 +2015,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>   			goto err_add_request;
>   	}
>   
> -	err = i915_request_await_object(rq, vma->obj, 0);
> -	if (!err)
> -		err = i915_vma_move_to_active(vma, rq, 0);
> +	err = i915_vma_move_to_active_unlocked(vma, rq, 0);
>   	if (err)
>   		goto err_add_request;
>   
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index aecd9c64486b27..a326a34609825f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -40,6 +40,16 @@
>   #include "i915_vma_resource.h"
>   #include "i915_vma_types.h"
>   
> +static inline void i915_vma_lock(struct i915_vma *vma)
> +{
> +	dma_resv_lock(vma->obj->base.resv, NULL);
> +}
> +
> +static inline void i915_vma_unlock(struct i915_vma *vma)
> +{
> +	dma_resv_unlock(vma->obj->base.resv);
> +}
> +
>   struct i915_vma *
>   i915_vma_instance(struct drm_i915_gem_object *obj,
>   		  struct i915_address_space *vm,
> @@ -60,11 +70,25 @@ int __must_check _i915_vma_move_to_active(struct i915_vma *vma,
>   					  struct i915_request *rq,
>   					  struct dma_fence *fence,
>   					  unsigned int flags);
> +
> +static inline int __must_check
> +i915_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
> +				 unsigned int flags)
> +{
> +	return i915_request_await_object(rq, vma->obj, flags & EXEC_OBJECT_WRITE) ?:
> +	       _i915_vma_move_to_active(vma, rq, &rq->fence, flags);

IMO easier to read if we split over multiple lines instead of ?:

> +}
> +
>   static inline int __must_check
>   i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq,
>   			unsigned int flags)
>   {
> -	return _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	int err;
> +
> +	i915_vma_lock(vma);
> +	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	i915_vma_unlock(vma);
> +	return err;
>   }

AFAIK it's usually the other way around, where _unlocked() means the 
caller hasn't locked the object, see for example pin_map_unlocked(), 
unbind_unlocked() etc.

Also IIUC there is no i915_request_await_object() in here, but it looks 
like some of the callers are converted over to using this, even though 
they previously had the await? That looks like a functional change? 
Maybe I'm misreading something here...

>   
>   #define __i915_vma_flags(v) ((unsigned long *)&(v)->flags.counter)
> @@ -228,16 +252,6 @@ void i915_vma_destroy(struct i915_vma *vma);
>   
>   #define assert_vma_held(vma) dma_resv_assert_held((vma)->obj->base.resv)
>   
> -static inline void i915_vma_lock(struct i915_vma *vma)
> -{
> -	dma_resv_lock(vma->obj->base.resv, NULL);
> -}
> -
> -static inline void i915_vma_unlock(struct i915_vma *vma)
> -{
> -	dma_resv_unlock(vma->obj->base.resv);
> -}
> -
>   int __must_check
>   i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   		u64 size, u64 alignment, u64 flags);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 818a4909c1f354..a13d4481f0eef2 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1203,9 +1203,7 @@ static int live_all_engines(void *arg)
>   			goto out_request;
>   		}
>   
> -		err = i915_request_await_object(request[idx], batch->obj, 0);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(batch, request[idx], 0);
> +		err = i915_vma_move_to_active_unlocked(batch, request[idx], 0);
>   		GEM_BUG_ON(err);
>   
>   		err = engine->emit_bb_start(request[idx],
> @@ -1332,10 +1330,7 @@ static int live_sequential_engines(void *arg)
>   			}
>   		}
>   
> -		err = i915_request_await_object(request[idx],
> -						batch->obj, false);
> -		if (err == 0)
> -			err = i915_vma_move_to_active(batch, request[idx], 0);
> +		err = i915_vma_move_to_active_unlocked(batch, request[idx], 0);
>   		GEM_BUG_ON(err);
>   
>   		err = engine->emit_bb_start(request[idx],
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 0c22594ae27469..789f0ef3996c0c 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -119,22 +119,6 @@ static u64 hws_address(const struct i915_vma *hws,
>   	return hws->node.start + seqno_offset(rq->fence.context);
>   }
>   
> -static int move_to_active(struct i915_vma *vma,
> -			  struct i915_request *rq,
> -			  unsigned int flags)
> -{
> -	int err;
> -
> -	i915_vma_lock(vma);
> -	err = i915_request_await_object(rq, vma->obj,
> -					flags & EXEC_OBJECT_WRITE);
> -	if (err == 0)
> -		err = i915_vma_move_to_active(vma, rq, flags);
> -	i915_vma_unlock(vma);
> -
> -	return err;
> -}
> -
>   struct i915_request *
>   igt_spinner_create_request(struct igt_spinner *spin,
>   			   struct intel_context *ce,
> @@ -165,11 +149,11 @@ igt_spinner_create_request(struct igt_spinner *spin,
>   	if (IS_ERR(rq))
>   		return ERR_CAST(rq);
>   
> -	err = move_to_active(vma, rq, 0);
> +	err = i915_vma_move_to_active(vma, rq, 0);
>   	if (err)
>   		goto cancel_rq;
>   
> -	err = move_to_active(hws, rq, 0);
> +	err = i915_vma_move_to_active(hws, rq, 0);
>   	if (err)
>   		goto cancel_rq;
>   
