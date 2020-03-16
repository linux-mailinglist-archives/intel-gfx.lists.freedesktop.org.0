Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B65186C62
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D69C89FC3;
	Mon, 16 Mar 2020 13:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE1789FC3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:43:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20576339-1500050 for multiple; Mon, 16 Mar 2020 13:43:04 +0000
MIME-Version: 1.0
In-Reply-To: <1584365391-30029-2-git-send-email-ankit.p.navik@intel.com>
References: <1584365391-30029-1-git-send-email-ankit.p.navik@intel.com>
 <1584365391-30029-2-git-send-email-ankit.p.navik@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158436618725.18059.10033241837409367676@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Mar 2020 13:43:07 +0000
Subject: Re: [Intel-gfx] [PATCH v7 1/3] drm/i915: Get active pending request
 for given context
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
Cc: ankit.p.navik@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ankit Navik (2020-03-16 13:29:49)
> This patch gives us the active pending request count which is yet
> to be submitted to the GPU.
> 
> V2:
>  * Change 64-bit to atomic for request count. (Tvrtko Ursulin)
> 
> V3:
>  * Remove mutex for request count.
>  * Rebase.
>  * Fixes hitting underflow for predictive request. (Tvrtko Ursulin)
> 
> V4:
>  * Rebase.
> 
> V5:
>  * Rebase.
> 
> V6:
>  * Rebase.
> 
> V7:
>  * Rebase.
>  * Add GEM_BUG_ON for req_cnt.
> 
> Cc: Vipin Anand <vipin.anand@intel.com>
> Signed-off-by: Ankit Navik <ankit.p.navik@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c       | 1 +
>  drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 5 +++++
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c    | 2 ++
>  drivers/gpu/drm/i915/gt/intel_lrc.c               | 9 +++++++++
>  4 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 026999b34abd..d0ff999429ff 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -879,6 +879,7 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
>         }
>  
>         trace_i915_context_create(ctx);
> +       atomic_set(&ctx->req_cnt, 0);
>  
>         return ctx;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 28760bd03265..a9ba13f8865e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -171,6 +171,11 @@ struct i915_gem_context {
>          */
>         struct radix_tree_root handles_vma;
>  
> +       /** req_cnt: tracks the pending commands, based on which we decide to
> +        * go for low/medium/high load configuration of the GPU.
> +        */
> +       atomic_t req_cnt;
> +
>         /**
>          * @name: arbitrary name, used for user debug
>          *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index d3f4f28e9468..f90c968f95cd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2565,6 +2565,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>         if (batch->private)
>                 intel_engine_pool_mark_active(batch->private, eb.request);
>  
> +       atomic_inc(&eb.gem_context->req_cnt);
> +
>         trace_i915_request_queue(eb.request, eb.batch_flags);
>         err = eb_submit(&eb, batch);
>  err_request:
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 112531b29f59..ccfebebb0071 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2143,6 +2143,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>                         }
>  
>                         if (__i915_request_submit(rq)) {
> +                               struct i915_gem_context *ctx;
> +
>                                 if (!merge) {
>                                         *port = execlists_schedule_in(last, port - execlists->pending);
>                                         port++;
> @@ -2158,6 +2160,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  
>                                 submit = true;
>                                 last = rq;
> +
> +                               ctx = rcu_dereference_protected(
> +                                       rq->context->gem_context, true);
> +
> +                               GEM_BUG_ON(atomic_read(&ctx->req_cnt));
> +                               if (atomic_read(&ctx->req_cnt) > 0)
> +                                       atomic_dec(&ctx->req_cnt);

This is wrong on so many levels. The GEM context is an opaque pointer
here, and often not available. The rcu_dereference_protected is woeful.
There is not even a 1:1 relationship between execbuf and requests -- you
should have recognised that the moment you "handled" the bug.

Please do look at the other metrics we have time and time again pointed
you towards.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
