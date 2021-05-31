Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFA3395F5A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC91D6E4EA;
	Mon, 31 May 2021 14:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5176E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 14:08:59 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 y184-20020a1ce1c10000b02901769b409001so46797wmg.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 07:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mxvjhjUAa5TPJ8A09TzWaMJ6YEfUXkHVEkY1ebxq2uE=;
 b=Lhzmxg6tdVVV6RDAtqGQMfRr1mrH1vEg0hNvYsF3C9W4kMTdXW+ZjRCKCQ4V2zAyYe
 4Pb7NXuMJyUqwExCeVAoaf26rQAC6S6yAoFOc4kvI7hyjjGx0TTuzQVSbgK/5hLCK8dk
 d/DrAyQ3SDjiPGZ+ubWw/e5tLTavNmvRV8kHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mxvjhjUAa5TPJ8A09TzWaMJ6YEfUXkHVEkY1ebxq2uE=;
 b=d2MkvOm+K9WKOOhFU5QbqQieW88r/HCM1i8aB5Im3JD9hQ8BnC2NzMbsDNGM7n+JoD
 vXwGW4bCZ437nmQSglHabKS/8iPV613fIbuAjGoUMDlSheygn+rhE8It3u0FB3ZeSMYt
 87PV3YOgBeZUvaqqsffMEcBM4TB97H7IlQEEqn6vPl3qlK9KrS0aWfwuFo3gFyYdI/xm
 NfZTp5HUAu6ioem38qw4XrFoyGKsKIuCSeKvX/FKH5NuQVaHgxCLLAx6CHrStp98o6Wl
 iLd/1HF3kjwojeAb8kCzbfCaErRegKpf2j4ifRTOWspflxJgT610YGljv3PaxNTCo0v9
 ioXg==
X-Gm-Message-State: AOAM532QPI/uFEwR1gMO8Tdi/mFI7jcy/cZ9259oT42TUxXzpsVzXwcT
 YgkNEX2wNPfeM25OB5qsczsnPw==
X-Google-Smtp-Source: ABdhPJx+1Uu7rXHigRTiKcfKTTV63bqroC+IzHCg87hE+X8PPWCPD1ViNifKJJVHU3eRSzTEp0WSrQ==
X-Received: by 2002:a05:600c:4e8e:: with SMTP id
 f14mr26700534wmq.65.1622470138087; 
 Mon, 31 May 2021 07:08:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e8sm17222267wrt.30.2021.05.31.07.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 07:08:57 -0700 (PDT)
Date: Mon, 31 May 2021 16:08:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YLTt93mkVSKxhf7A@phenom.ffwll.local>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
 <20210527162650.1182544-26-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527162650.1182544-26-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 25/29] drm/i915/gem: Don't allow changing
 the VM on running contexts (v2)
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 27, 2021 at 11:26:46AM -0500, Jason Ekstrand wrote:
> When the APIs were added to manage VMs more directly from userspace, the
> questionable choice was made to allow changing out the VM on a context
> at any time.  This is horribly racy and there's absolutely no reason why
> any userspace would want to do this outside of testing that exact race.
> By removing support for CONTEXT_PARAM_VM from ctx_setparam, we make it
> impossible to change out the VM after the context has been fully
> created.  This lets us delete a bunch of deferred task code as well as a
> duplicated (and slightly different) copy of the code which programs the
> PPGTT registers.
> 
> v2 (Jason Ekstrand):
>  - Expand the commit message
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Already scored an Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
now that the commit message is there.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 262 ------------------
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +-
>  .../drm/i915/gem/selftests/i915_gem_context.c | 119 --------
>  .../drm/i915/selftests/i915_mock_selftests.h  |   1 -
>  4 files changed, 1 insertion(+), 383 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index f7c83730ee07f..a528c8f3354a0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1633,120 +1633,6 @@ int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
>  	return 0;
>  }
>  
> -struct context_barrier_task {
> -	struct i915_active base;
> -	void (*task)(void *data);
> -	void *data;
> -};
> -
> -static void cb_retire(struct i915_active *base)
> -{
> -	struct context_barrier_task *cb = container_of(base, typeof(*cb), base);
> -
> -	if (cb->task)
> -		cb->task(cb->data);
> -
> -	i915_active_fini(&cb->base);
> -	kfree(cb);
> -}
> -
> -I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
> -static int context_barrier_task(struct i915_gem_context *ctx,
> -				intel_engine_mask_t engines,
> -				bool (*skip)(struct intel_context *ce, void *data),
> -				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),
> -				int (*emit)(struct i915_request *rq, void *data),
> -				void (*task)(void *data),
> -				void *data)
> -{
> -	struct context_barrier_task *cb;
> -	struct i915_gem_engines_iter it;
> -	struct i915_gem_engines *e;
> -	struct i915_gem_ww_ctx ww;
> -	struct intel_context *ce;
> -	int err = 0;
> -
> -	GEM_BUG_ON(!task);
> -
> -	cb = kmalloc(sizeof(*cb), GFP_KERNEL);
> -	if (!cb)
> -		return -ENOMEM;
> -
> -	i915_active_init(&cb->base, NULL, cb_retire, 0);
> -	err = i915_active_acquire(&cb->base);
> -	if (err) {
> -		kfree(cb);
> -		return err;
> -	}
> -
> -	e = __context_engines_await(ctx, NULL);
> -	if (!e) {
> -		i915_active_release(&cb->base);
> -		return -ENOENT;
> -	}
> -
> -	for_each_gem_engine(ce, e, it) {
> -		struct i915_request *rq;
> -
> -		if (I915_SELFTEST_ONLY(context_barrier_inject_fault &
> -				       ce->engine->mask)) {
> -			err = -ENXIO;
> -			break;
> -		}
> -
> -		if (!(ce->engine->mask & engines))
> -			continue;
> -
> -		if (skip && skip(ce, data))
> -			continue;
> -
> -		i915_gem_ww_ctx_init(&ww, true);
> -retry:
> -		err = intel_context_pin_ww(ce, &ww);
> -		if (err)
> -			goto err;
> -
> -		if (pin)
> -			err = pin(ce, &ww, data);
> -		if (err)
> -			goto err_unpin;
> -
> -		rq = i915_request_create(ce);
> -		if (IS_ERR(rq)) {
> -			err = PTR_ERR(rq);
> -			goto err_unpin;
> -		}
> -
> -		err = 0;
> -		if (emit)
> -			err = emit(rq, data);
> -		if (err == 0)
> -			err = i915_active_add_request(&cb->base, rq);
> -
> -		i915_request_add(rq);
> -err_unpin:
> -		intel_context_unpin(ce);
> -err:
> -		if (err == -EDEADLK) {
> -			err = i915_gem_ww_ctx_backoff(&ww);
> -			if (!err)
> -				goto retry;
> -		}
> -		i915_gem_ww_ctx_fini(&ww);
> -
> -		if (err)
> -			break;
> -	}
> -	i915_sw_fence_complete(&e->fence);
> -
> -	cb->task = err ? NULL : task; /* caller needs to unwind instead */
> -	cb->data = data;
> -
> -	i915_active_release(&cb->base);
> -
> -	return err;
> -}
> -
>  static int get_ppgtt(struct drm_i915_file_private *file_priv,
>  		     struct i915_gem_context *ctx,
>  		     struct drm_i915_gem_context_param *args)
> @@ -1779,150 +1665,6 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
>  	return err;
>  }
>  
> -static void set_ppgtt_barrier(void *data)
> -{
> -	struct i915_address_space *old = data;
> -
> -	if (INTEL_GEN(old->i915) < 8)
> -		gen6_ppgtt_unpin_all(i915_vm_to_ppgtt(old));
> -
> -	i915_vm_close(old);
> -}
> -
> -static int pin_ppgtt_update(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data)
> -{
> -	struct i915_address_space *vm = ce->vm;
> -
> -	if (!HAS_LOGICAL_RING_CONTEXTS(vm->i915))
> -		/* ppGTT is not part of the legacy context image */
> -		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm), ww);
> -
> -	return 0;
> -}
> -
> -static int emit_ppgtt_update(struct i915_request *rq, void *data)
> -{
> -	struct i915_address_space *vm = rq->context->vm;
> -	struct intel_engine_cs *engine = rq->engine;
> -	u32 base = engine->mmio_base;
> -	u32 *cs;
> -	int i;
> -
> -	if (i915_vm_is_4lvl(vm)) {
> -		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
> -		const dma_addr_t pd_daddr = px_dma(ppgtt->pd);
> -
> -		cs = intel_ring_begin(rq, 6);
> -		if (IS_ERR(cs))
> -			return PTR_ERR(cs);
> -
> -		*cs++ = MI_LOAD_REGISTER_IMM(2);
> -
> -		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, 0));
> -		*cs++ = upper_32_bits(pd_daddr);
> -		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, 0));
> -		*cs++ = lower_32_bits(pd_daddr);
> -
> -		*cs++ = MI_NOOP;
> -		intel_ring_advance(rq, cs);
> -	} else if (HAS_LOGICAL_RING_CONTEXTS(engine->i915)) {
> -		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
> -		int err;
> -
> -		/* Magic required to prevent forcewake errors! */
> -		err = engine->emit_flush(rq, EMIT_INVALIDATE);
> -		if (err)
> -			return err;
> -
> -		cs = intel_ring_begin(rq, 4 * GEN8_3LVL_PDPES + 2);
> -		if (IS_ERR(cs))
> -			return PTR_ERR(cs);
> -
> -		*cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
> -		for (i = GEN8_3LVL_PDPES; i--; ) {
> -			const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);
> -
> -			*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, i));
> -			*cs++ = upper_32_bits(pd_daddr);
> -			*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
> -			*cs++ = lower_32_bits(pd_daddr);
> -		}
> -		*cs++ = MI_NOOP;
> -		intel_ring_advance(rq, cs);
> -	}
> -
> -	return 0;
> -}
> -
> -static bool skip_ppgtt_update(struct intel_context *ce, void *data)
> -{
> -	if (HAS_LOGICAL_RING_CONTEXTS(ce->engine->i915))
> -		return !ce->state;
> -	else
> -		return !atomic_read(&ce->pin_count);
> -}
> -
> -static int set_ppgtt(struct drm_i915_file_private *file_priv,
> -		     struct i915_gem_context *ctx,
> -		     struct drm_i915_gem_context_param *args)
> -{
> -	struct i915_address_space *vm, *old;
> -	int err;
> -
> -	if (args->size)
> -		return -EINVAL;
> -
> -	if (!rcu_access_pointer(ctx->vm))
> -		return -ENODEV;
> -
> -	if (upper_32_bits(args->value))
> -		return -ENOENT;
> -
> -	vm = i915_gem_vm_lookup(file_priv, args->value);
> -	if (!vm)
> -		return -ENOENT;
> -
> -	err = mutex_lock_interruptible(&ctx->mutex);
> -	if (err)
> -		goto out;
> -
> -	if (i915_gem_context_is_closed(ctx)) {
> -		err = -ENOENT;
> -		goto unlock;
> -	}
> -
> -	if (vm == rcu_access_pointer(ctx->vm))
> -		goto unlock;
> -
> -	old = __set_ppgtt(ctx, vm);
> -
> -	/* Teardown the existing obj:vma cache, it will have to be rebuilt. */
> -	lut_close(ctx);
> -
> -	/*
> -	 * We need to flush any requests using the current ppgtt before
> -	 * we release it as the requests do not hold a reference themselves,
> -	 * only indirectly through the context.
> -	 */
> -	err = context_barrier_task(ctx, ALL_ENGINES,
> -				   skip_ppgtt_update,
> -				   pin_ppgtt_update,
> -				   emit_ppgtt_update,
> -				   set_ppgtt_barrier,
> -				   old);
> -	if (err) {
> -		i915_vm_close(__set_ppgtt(ctx, old));
> -		i915_vm_close(old);
> -		lut_close(ctx); /* force a rebuild of the old obj:vma cache */
> -	}
> -
> -unlock:
> -	mutex_unlock(&ctx->mutex);
> -out:
> -	i915_vm_put(vm);
> -	return err;
> -}
> -
>  int
>  i915_gem_user_to_context_sseu(struct intel_gt *gt,
>  			      const struct drm_i915_gem_context_param_sseu *user,
> @@ -2458,10 +2200,6 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>  		ret = set_sseu(ctx, args);
>  		break;
>  
> -	case I915_CONTEXT_PARAM_VM:
> -		ret = set_ppgtt(fpriv, ctx, args);
> -		break;
> -
>  	case I915_CONTEXT_PARAM_ENGINES:
>  		ret = set_engines(ctx, args);
>  		break;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index b673061f4f5ba..84c821cca1739 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -262,7 +262,7 @@ struct i915_gem_context {
>  	 * In other modes, this is a NULL pointer with the expectation that
>  	 * the caller uses the shared global GTT.
>  	 */
> -	struct i915_address_space __rcu *vm;
> +	struct i915_address_space *vm;
>  
>  	/**
>  	 * @pid: process id of creator
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index ce70d0a3afb26..506cd9e9d4b25 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1875,125 +1875,6 @@ static int igt_vm_isolation(void *arg)
>  	return err;
>  }
>  
> -static bool skip_unused_engines(struct intel_context *ce, void *data)
> -{
> -	return !ce->state;
> -}
> -
> -static void mock_barrier_task(void *data)
> -{
> -	unsigned int *counter = data;
> -
> -	++*counter;
> -}
> -
> -static int mock_context_barrier(void *arg)
> -{
> -#undef pr_fmt
> -#define pr_fmt(x) "context_barrier_task():" # x
> -	struct drm_i915_private *i915 = arg;
> -	struct i915_gem_context *ctx;
> -	struct i915_request *rq;
> -	unsigned int counter;
> -	int err;
> -
> -	/*
> -	 * The context barrier provides us with a callback after it emits
> -	 * a request; useful for retiring old state after loading new.
> -	 */
> -
> -	ctx = mock_context(i915, "mock");
> -	if (!ctx)
> -		return -ENOMEM;
> -
> -	counter = 0;
> -	err = context_barrier_task(ctx, 0, NULL, NULL, NULL,
> -				   mock_barrier_task, &counter);
> -	if (err) {
> -		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
> -		goto out;
> -	}
> -	if (counter == 0) {
> -		pr_err("Did not retire immediately with 0 engines\n");
> -		err = -EINVAL;
> -		goto out;
> -	}
> -
> -	counter = 0;
> -	err = context_barrier_task(ctx, ALL_ENGINES, skip_unused_engines,
> -				   NULL, NULL, mock_barrier_task, &counter);
> -	if (err) {
> -		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
> -		goto out;
> -	}
> -	if (counter == 0) {
> -		pr_err("Did not retire immediately for all unused engines\n");
> -		err = -EINVAL;
> -		goto out;
> -	}
> -
> -	rq = igt_request_alloc(ctx, i915->gt.engine[RCS0]);
> -	if (IS_ERR(rq)) {
> -		pr_err("Request allocation failed!\n");
> -		goto out;
> -	}
> -	i915_request_add(rq);
> -
> -	counter = 0;
> -	context_barrier_inject_fault = BIT(RCS0);
> -	err = context_barrier_task(ctx, ALL_ENGINES, NULL, NULL, NULL,
> -				   mock_barrier_task, &counter);
> -	context_barrier_inject_fault = 0;
> -	if (err == -ENXIO)
> -		err = 0;
> -	else
> -		pr_err("Did not hit fault injection!\n");
> -	if (counter != 0) {
> -		pr_err("Invoked callback on error!\n");
> -		err = -EIO;
> -	}
> -	if (err)
> -		goto out;
> -
> -	counter = 0;
> -	err = context_barrier_task(ctx, ALL_ENGINES, skip_unused_engines,
> -				   NULL, NULL, mock_barrier_task, &counter);
> -	if (err) {
> -		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
> -		goto out;
> -	}
> -	mock_device_flush(i915);
> -	if (counter == 0) {
> -		pr_err("Did not retire on each active engines\n");
> -		err = -EINVAL;
> -		goto out;
> -	}
> -
> -out:
> -	mock_context_close(ctx);
> -	return err;
> -#undef pr_fmt
> -#define pr_fmt(x) x
> -}
> -
> -int i915_gem_context_mock_selftests(void)
> -{
> -	static const struct i915_subtest tests[] = {
> -		SUBTEST(mock_context_barrier),
> -	};
> -	struct drm_i915_private *i915;
> -	int err;
> -
> -	i915 = mock_gem_device();
> -	if (!i915)
> -		return -ENOMEM;
> -
> -	err = i915_subtests(tests, i915);
> -
> -	mock_destroy_device(i915);
> -	return err;
> -}
> -
>  int i915_gem_context_live_selftests(struct drm_i915_private *i915)
>  {
>  	static const struct i915_subtest tests[] = {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
> index 3db34d3eea58a..52aa91716dc1f 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
> @@ -32,6 +32,5 @@ selftest(vma, i915_vma_mock_selftests)
>  selftest(evict, i915_gem_evict_mock_selftests)
>  selftest(gtt, i915_gem_gtt_mock_selftests)
>  selftest(hugepages, i915_gem_huge_page_mock_selftests)
> -selftest(contexts, i915_gem_context_mock_selftests)
>  selftest(buddy, i915_buddy_mock_selftests)
>  selftest(memory_region, intel_memory_region_mock_selftests)
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
