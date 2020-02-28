Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFB2173718
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7586E179;
	Fri, 28 Feb 2020 12:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253536E179
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:19:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20384507-1500050 for multiple; Fri, 28 Feb 2020 12:19:10 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-5-chris@chris-wilson.co.uk>
 <20200227110131.1975034-1-chris@chris-wilson.co.uk>
 <b46f5046-c8ca-7771-6213-696b7d13cc80@linux.intel.com>
In-Reply-To: <b46f5046-c8ca-7771-6213-696b7d13cc80@linux.intel.com>
Message-ID: <158289234833.24106.8967086034235723167@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 12:19:08 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Consolidate ctx->engines[]
 release
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

Quoting Tvrtko Ursulin (2020-02-28 12:08:18)
> 
> On 27/02/2020 11:01, Chris Wilson wrote:
> > +static void engines_idle_release(struct i915_gem_context *ctx,
> > +                              struct i915_gem_engines *engines)
> > +{
> > +     struct i915_gem_engines_iter it;
> > +     struct intel_context *ce;
> > +
> > +     i915_sw_fence_init(&engines->fence, engines_notify);
> > +     INIT_LIST_HEAD(&engines->link);
> > +
> > +     engines->ctx = i915_gem_context_get(ctx);
> > +
> > +     for_each_gem_engine(ce, engines, it) {
> > +             struct dma_fence *fence;
> > +             int err = 0;
> > +
> > +             /* serialises with execbuf */
> > +             RCU_INIT_POINTER(ce->gem_context, NULL);
> 
> What is the purpose of this? Looks dodgy - like it can't really 
> guarantee much.

It should be fine if we do:

execbuf:				context_close:
					ce->gem_context = NULL;
add_to_timeline();			get(&ce->timeline->last_request);
if (!ce->gem_context)			
	return -ENOENT;

If add is before the get, we will wait on it.
If add is after the get, we will wait on the earlier request, and skip
this one -- it will not execute.

> > +             if (!intel_context_pin_if_active(ce))
> > +                     continue;
> > +
> > +             fence = i915_active_fence_get(&ce->timeline->last_request);
> > +             if (fence) {
> > +                     err = i915_sw_fence_await_dma_fence(&engines->fence,
> > +                                                         fence, 0,
> > +                                                         GFP_KERNEL);
> > +                     dma_fence_put(fence);
> > +             }
> > +             intel_context_unpin(ce);
> > +             if (err < 0)
> > +                     goto kill;
> > +     }
> > +
> > +     spin_lock_irq(&ctx->stale.lock);
> > +     if (!i915_gem_context_is_closed(ctx))
> > +             list_add_tail(&engines->link, &ctx->stale.engines);
> > +     spin_unlock_irq(&ctx->stale.lock);
> > +
> > +kill:
> > +     if (list_empty(&engines->link)) /* raced, already closed */
> > +             kill_engines(engines);
> 
> Raced with.. ? context_close? Can't be the fence yet, before it has been 
> committed.

Yes, there's still the set_engines vs context_close to worry about.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
