Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F61372784
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 10:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B9F6EAB0;
	Tue,  4 May 2021 08:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F2346EAB0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 08:47:28 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id w3so11950278ejc.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 May 2021 01:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/BqrjFkHaB3CIvq0CTPv5jWGxLP2jdmkJ70TYtsFBx0=;
 b=OIfTZHCehrwxLihwFInhKUfM8asHf/9i/7X7AC2sox6MYQbZWjiPWp2vDIv5f1VNAJ
 fw3yv3kNsDeXQMZU6k/iJfJMB4qLlJEa2WlVegJTpRKAGnV1WIrM+ZCrBILRzgbIMuXu
 2Bdka/kkdDkHznCcJJc2AEyg/BY9HDLDggXYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/BqrjFkHaB3CIvq0CTPv5jWGxLP2jdmkJ70TYtsFBx0=;
 b=ewE/osF+jMrIYTXQwndJJKR5Of1Lrf6pIErSgBmjFvPhgKLkxthAmsG2XSnA3zfXBf
 6A1ZaeiyEYWt9juWPv+whLzQZ44qVQAy2Z9q/CfcckUoY85BdcCteElwpbtICiGA6OLD
 wwmNcp+FKPD51UCPD62oY52sRTRFyb43chk8qFbizvEtNb7/CzeB81c5lxliY/oHjZix
 taZKoEv+rlHC9eHNin2NxLUDwWh3vIsdYc8vAhb5xG4fb7cNfraI5XM9jOk05sMJ0CRA
 iIe1cJlhp7XRCAlDjiV//8dr/4cckn4+Z93m+h/d5+Qw/QB06PcszHm0yPN5D6xELM9k
 +ZNQ==
X-Gm-Message-State: AOAM532iAiVXrYAGi1BQfeyCFqCA6Txu1R0oUYRTqklFDTXqEq23Xd91
 lBjuqou43O2fIP14rx6h06tpmw==
X-Google-Smtp-Source: ABdhPJymJurI8OLA2wiprFdKgK8fl2S8cmOyPLp8dhTedSUzPXPJzfR+IvkauM+gHPzbq7q+Hf2XSA==
X-Received: by 2002:a17:906:5952:: with SMTP id
 g18mr20474076ejr.313.1620118046890; 
 Tue, 04 May 2021 01:47:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d15sm14164072edu.86.2021.05.04.01.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 01:47:26 -0700 (PDT)
Date: Tue, 4 May 2021 10:47:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YJEKHFofZsBdIPIS@phenom.ffwll.local>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
 <20210503155748.1961781-3-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210503155748.1961781-3-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 02/27] drm/i915: Stop storing the ring size
 in the ring pointer
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

On Mon, May 03, 2021 at 10:57:23AM -0500, Jason Ekstrand wrote:
> Previously, we were storing the ring size in the ring pointer before it
> was actually allocated.  We would then guard setting the ring size on
> checking for CONTEXT_ALLOC_BIT.  This is error-prone at best and really
> only saves us a few bytes on something that already burns at least 4K.
> Instead, this patch adds a new ring_size field and makes everything use
> that.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 3 +--
>  drivers/gpu/drm/i915/gt/intel_context.c       | 3 ++-
>  drivers/gpu/drm/i915/gt/intel_context.h       | 5 -----
>  drivers/gpu/drm/i915/gt/intel_context_types.h | 1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 2 +-
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  | 2 +-
>  drivers/gpu/drm/i915/gt/selftest_mocs.c       | 2 +-
>  drivers/gpu/drm/i915/gt/selftest_timeline.c   | 2 +-
>  drivers/gpu/drm/i915/gvt/scheduler.c          | 7 ++-----
>  9 files changed, 10 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index e52b85b8f923d..2ba4c7e4011b4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -211,8 +211,7 @@ static void intel_context_set_gem(struct intel_context *ce,
>  	GEM_BUG_ON(rcu_access_pointer(ce->gem_context));
>  	RCU_INIT_POINTER(ce->gem_context, ctx);
>  
> -	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
> -		ce->ring = __intel_context_ring_size(SZ_16K);
> +	ce->ring_size = SZ_16K;
>  
>  	if (rcu_access_pointer(ctx->vm)) {
>  		struct i915_address_space *vm;
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 17cf2640b082b..342fa7daa08b5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -372,7 +372,8 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
>  	ce->engine = engine;
>  	ce->ops = engine->cops;
>  	ce->sseu = engine->sseu;
> -	ce->ring = __intel_context_ring_size(SZ_4K);
> +	ce->ring = NULL;
> +	ce->ring_size = SZ_4K;
>  
>  	ewma_runtime_init(&ce->runtime.avg);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index f83a73a2b39fc..b10cbe8fee992 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -175,11 +175,6 @@ int intel_context_prepare_remote_request(struct intel_context *ce,
>  
>  struct i915_request *intel_context_create_request(struct intel_context *ce);
>  
> -static inline struct intel_ring *__intel_context_ring_size(u64 sz)
> -{
> -	return u64_to_ptr(struct intel_ring, sz);
> -}
> -
>  static inline bool intel_context_is_barrier(const struct intel_context *ce)
>  {
>  	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index ed8c447a7346b..90026c1771055 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -82,6 +82,7 @@ struct intel_context {
>  	spinlock_t signal_lock; /* protects signals, the list of requests */
>  
>  	struct i915_vma *state;
> +	u32 ring_size;
>  	struct intel_ring *ring;
>  	struct intel_timeline *timeline;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e86897cde9846..63193c80fb117 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -845,7 +845,7 @@ int lrc_alloc(struct intel_context *ce, struct intel_engine_cs *engine)
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
>  
> -	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
> +	ring = intel_engine_create_ring(engine, ce->ring_size);
>  	if (IS_ERR(ring)) {
>  		err = PTR_ERR(ring);
>  		goto err_vma;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 1081cd36a2bd3..01d9896dd4844 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -2793,7 +2793,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
>  			goto err_ce;
>  		}
>  
> -		tmp->ring = __intel_context_ring_size(ring_sz);
> +		tmp->ring_size = ring_sz;
>  
>  		err = intel_context_pin(tmp);
>  		if (err) {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index e55a887d11e2b..f343fa5fd986f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -28,7 +28,7 @@ static struct intel_context *mocs_context_create(struct intel_engine_cs *engine)
>  		return ce;
>  
>  	/* We build large requests to read the registers from the ring */
> -	ce->ring = __intel_context_ring_size(SZ_16K);
> +	ce->ring_size = SZ_16K;
>  
>  	return ce;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index 9adbd9d147bea..7eedecfb86e59 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -874,7 +874,7 @@ static int create_watcher(struct hwsp_watcher *w,
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
>  
> -	ce->ring = __intel_context_ring_size(ringsz);
> +	ce->ring_size = ringsz;
>  	w->rq = intel_context_create_request(ce);
>  	intel_context_put(ce);
>  	if (IS_ERR(w->rq))
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index fc735692f21fb..99bc9fed6fbb6 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -1409,11 +1409,8 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
>  		intel_context_set_single_submission(ce);
>  
>  		/* Max ring buffer size */
> -		if (!intel_uc_wants_guc_submission(&engine->gt->uc)) {
> -			const unsigned int ring_size = 512 * SZ_4K;
> -
> -			ce->ring = __intel_context_ring_size(ring_size);
> -		}
> +		if (!intel_uc_wants_guc_submission(&engine->gt->uc))
> +			ce->ring_size = 512 * SZ_4K;

A rather funny way of saying SZ_2M. Maybe fix that if you feel like. W/ or
w/o that:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  
>  		s->shadow[i] = ce;
>  	}
> -- 
> 2.31.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
