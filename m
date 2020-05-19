Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5401D9D61
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 19:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2876E04E;
	Tue, 19 May 2020 17:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B146E04E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 17:00:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21231393-1500050 for multiple; Tue, 19 May 2020 18:00:06 +0100
MIME-Version: 1.0
In-Reply-To: <20200519145131.2893-1-chris@chris-wilson.co.uk>
References: <20200519145131.2893-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158990760488.8153.1957849509074612932@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 19 May 2020 18:00:04 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Neuter virtual rq->engine on
 retire
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

Quoting Chris Wilson (2020-05-19 15:51:31)
> We do not hold a reference to rq->engine, and so if it is a virtual
> engine it may have already been freed by the time we free the request.
> The last reference we hold on the virtual engine is via rq->context,
> and that is released on request retirement. So if we find ourselves
> retiring a virtual request, redirect it to a real sibling.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1906
> Fixes: 43acd6516ca9 ("drm/i915: Keep a per-engine request pool")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 31ef683d27b4..a816218cc693 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -242,9 +242,26 @@ static void remove_from_engine(struct i915_request *rq)
>                 spin_lock(&engine->active.lock);
>                 locked = engine;
>         }
> +
>         list_del_init(&rq->sched.link);
>         clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>         clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
> +
> +       /*
> +        * During i915_fence_release we stash one request on the
> +        * rq->engine for use as an emergency reserve. However, we
> +        * neither want to keep a request on a virtual engine, nor do
> +        * we hold a reference to a virtual engine at that point. So
> +        * if rq->engine is virtual, replace it with a real one. Which
> +        * one is immaterial at this point as the request has been
> +        * retired, and if it was a virtual engine will not have any
> +        * signaling or other related paraphernalia.
> +        *
> +        * However, it would be nice if we didn't have to...
> +        */
> +       if (intel_engine_is_virtual(rq->engine))

Hmm. execlists_dequeue will assert that rq->engine == veng before
finding out that the request was completed. Annoyingly we would need
some veng magic to cmpxchg(&ve->request, rq, NULL)

> +               rq->engine = intel_virtual_engine_get_sibling(rq->engine, 0);

Back to the drawing board for a bit. Although removing the assert might
be the easiest course of action.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
