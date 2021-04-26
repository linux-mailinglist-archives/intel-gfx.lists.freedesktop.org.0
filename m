Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D65D536BC31
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 01:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DCA6E049;
	Mon, 26 Apr 2021 23:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99AF6E02C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 23:44:26 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id r9so86961834ejj.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 16:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=YtMhnDgXXDJlVcDwzQ5RmYCiaZSfl5Y3bLy0biSkxCk=;
 b=ENCwFIuz7U0Aa1c23Wcd5dQVEPpm347Ip17rXi1C3FTR4WiL6Hb2n2HcDrF5MgD1RO
 cEd0cK5I3TGdW+cMoDxTVckNI3CVBGKg1CAWcfRDJQWZXvNn6W4h7qVy4I/YI1fL5mYU
 LFFljunm9NGV1AXnmbwCOpU6f5isyi5cm8iHinGIjCMIKidt+nNYUy43YnKTK1wHKPlW
 ccrJVmzGBYCByjC1Ru05zU5/Nvn5vPpRWhaSWIW1XByYmeFVHktmTMso9/SlsWsrwMBZ
 mZy06iyiuEUsEEB2KUIX5nbk0Hdmzhp8GJy5T/eCAW6hgh+ZrAKBE6Zx1PyeV3/++CXj
 gaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=YtMhnDgXXDJlVcDwzQ5RmYCiaZSfl5Y3bLy0biSkxCk=;
 b=FVvj7w95k6KN8oVwYnfy4G9qWQFjRqrxMzbrdnSqbSP7mYOMWgxkx9wBJwbjeH2aAa
 OuJn/W4pkun5ggzmv7vjbm5mGmx6A3S9cLq9BVNhbA4PII3GbFM2dYqEs+gHZ/mbL49G
 n/vj3WM0CYTmD/xs7duRSnaSmxb6LG5NWMM9dZiQ+ag0JNeAeJKPpK0AeGg6fjdXoBjd
 WqB7h/6l7Bh2Ru9yET+Wl4VseQbR/Rz5bMFq6fXbBC5cuoqSiHdZPx+us+sGXB7E8q+R
 KjYnTHzr+OrhswS6xJ2HOcn5yR/slI9gI+N/WuBCw1055Lg2ibW4Ou6M5GgazJWTUPL8
 JYwA==
X-Gm-Message-State: AOAM533oBpFvfs1tS5/ZUZ0AVJvwAOWn8YJ9qHYB5PrfJT6rfU9uFk7A
 ShVgZFObYbg4TPL9HFD4RnMfBcGTMnA0GVYUqrm8xsHZmFw=
X-Google-Smtp-Source: ABdhPJydDgFvLdGrNQBOxzRE223SrvYfaySrd6Ryk/rSoQVYIY7X5ZhIq6Yr+YF3VD9h0Aq7wDfyvaLSuMkSenDDw94=
X-Received: by 2002:a17:906:5a96:: with SMTP id
 l22mr9846228ejq.450.1619480664923; 
 Mon, 26 Apr 2021 16:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-11-jason@jlekstrand.net>
In-Reply-To: <20210423223131.879208-11-jason@jlekstrand.net>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Apr 2021 18:44:13 -0500
Message-ID: <CAOFGe975ZG3gXRHKQN7yn3ya8E6GyfNwaG+RZ1kWWfO_noPh-g@mail.gmail.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>, 
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH 10/21] drm/i915/request: Remove the hook
 from await_execution
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sadly, we can't have this patch as long as we support SUBMIT_FENCE.
Turns out this is used for something real. :-(

--Jason

On Fri, Apr 23, 2021 at 5:31 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> This was only ever used for bonded virtual engine execution.  Since
> that's no longer allowed, this is dead code.
>
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
>  drivers/gpu/drm/i915/i915_request.c           | 42 ++++---------------
>  drivers/gpu/drm/i915/i915_request.h           |  4 +-
>  3 files changed, 9 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index efb2fa3522a42..7024adcd5cf15 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3473,8 +3473,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         if (in_fence) {
>                 if (args->flags & I915_EXEC_FENCE_SUBMIT)
>                         err = i915_request_await_execution(eb.request,
> -                                                          in_fence,
> -                                                          NULL);
> +                                                          in_fence);
>                 else
>                         err = i915_request_await_dma_fence(eb.request,
>                                                            in_fence);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index bec9c3652188b..7e00218b8c105 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -49,7 +49,6 @@
>  struct execute_cb {
>         struct irq_work work;
>         struct i915_sw_fence *fence;
> -       void (*hook)(struct i915_request *rq, struct dma_fence *signal);
>         struct i915_request *signal;
>  };
>
> @@ -180,17 +179,6 @@ static void irq_execute_cb(struct irq_work *wrk)
>         kmem_cache_free(global.slab_execute_cbs, cb);
>  }
>
> -static void irq_execute_cb_hook(struct irq_work *wrk)
> -{
> -       struct execute_cb *cb = container_of(wrk, typeof(*cb), work);
> -
> -       cb->hook(container_of(cb->fence, struct i915_request, submit),
> -                &cb->signal->fence);
> -       i915_request_put(cb->signal);
> -
> -       irq_execute_cb(wrk);
> -}
> -
>  static __always_inline void
>  __notify_execute_cb(struct i915_request *rq, bool (*fn)(struct irq_work *wrk))
>  {
> @@ -517,17 +505,12 @@ static bool __request_in_flight(const struct i915_request *signal)
>  static int
>  __await_execution(struct i915_request *rq,
>                   struct i915_request *signal,
> -                 void (*hook)(struct i915_request *rq,
> -                              struct dma_fence *signal),
>                   gfp_t gfp)
>  {
>         struct execute_cb *cb;
>
> -       if (i915_request_is_active(signal)) {
> -               if (hook)
> -                       hook(rq, &signal->fence);
> +       if (i915_request_is_active(signal))
>                 return 0;
> -       }
>
>         cb = kmem_cache_alloc(global.slab_execute_cbs, gfp);
>         if (!cb)
> @@ -537,12 +520,6 @@ __await_execution(struct i915_request *rq,
>         i915_sw_fence_await(cb->fence);
>         init_irq_work(&cb->work, irq_execute_cb);
>
> -       if (hook) {
> -               cb->hook = hook;
> -               cb->signal = i915_request_get(signal);
> -               cb->work.func = irq_execute_cb_hook;
> -       }
> -
>         /*
>          * Register the callback first, then see if the signaler is already
>          * active. This ensures that if we race with the
> @@ -1253,7 +1230,7 @@ emit_semaphore_wait(struct i915_request *to,
>                 goto await_fence;
>
>         /* Only submit our spinner after the signaler is running! */
> -       if (__await_execution(to, from, NULL, gfp))
> +       if (__await_execution(to, from, gfp))
>                 goto await_fence;
>
>         if (__emit_semaphore_wait(to, from, from->fence.seqno))
> @@ -1284,16 +1261,14 @@ static int intel_timeline_sync_set_start(struct intel_timeline *tl,
>
>  static int
>  __i915_request_await_execution(struct i915_request *to,
> -                              struct i915_request *from,
> -                              void (*hook)(struct i915_request *rq,
> -                                           struct dma_fence *signal))
> +                              struct i915_request *from)
>  {
>         int err;
>
>         GEM_BUG_ON(intel_context_is_barrier(from->context));
>
>         /* Submit both requests at the same time */
> -       err = __await_execution(to, from, hook, I915_FENCE_GFP);
> +       err = __await_execution(to, from, I915_FENCE_GFP);
>         if (err)
>                 return err;
>
> @@ -1406,9 +1381,7 @@ i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
>
>  int
>  i915_request_await_execution(struct i915_request *rq,
> -                            struct dma_fence *fence,
> -                            void (*hook)(struct i915_request *rq,
> -                                         struct dma_fence *signal))
> +                            struct dma_fence *fence)
>  {
>         struct dma_fence **child = &fence;
>         unsigned int nchild = 1;
> @@ -1441,8 +1414,7 @@ i915_request_await_execution(struct i915_request *rq,
>
>                 if (dma_fence_is_i915(fence))
>                         ret = __i915_request_await_execution(rq,
> -                                                            to_request(fence),
> -                                                            hook);
> +                                                            to_request(fence));
>                 else
>                         ret = i915_request_await_external(rq, fence);
>                 if (ret < 0)
> @@ -1468,7 +1440,7 @@ await_request_submit(struct i915_request *to, struct i915_request *from)
>                                                         &from->submit,
>                                                         I915_FENCE_GFP);
>         else
> -               return __i915_request_await_execution(to, from, NULL);
> +               return __i915_request_await_execution(to, from);
>  }
>
>  static int
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 270f6cd37650c..63b087a7f5707 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -352,9 +352,7 @@ int i915_request_await_object(struct i915_request *to,
>  int i915_request_await_dma_fence(struct i915_request *rq,
>                                  struct dma_fence *fence);
>  int i915_request_await_execution(struct i915_request *rq,
> -                                struct dma_fence *fence,
> -                                void (*hook)(struct i915_request *rq,
> -                                             struct dma_fence *signal));
> +                                struct dma_fence *fence);
>
>  void i915_request_add(struct i915_request *rq);
>
> --
> 2.31.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
