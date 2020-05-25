Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C21E101A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 16:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D455289E33;
	Mon, 25 May 2020 14:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C0C89A91
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 14:08:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21287667-1500050 for multiple; Mon, 25 May 2020 15:08:01 +0100
MIME-Version: 1.0
In-Reply-To: <87imgkt961.fsf@gaia.fi.intel.com>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
 <20200525075347.582-2-chris@chris-wilson.co.uk>
 <87imgkt961.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159041568403.30979.318390502025136667@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 25 May 2020 15:08:04 +0100
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/gt: Cancel the flush worker
 more thoroughly
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

Quoting Mika Kuoppala (2020-05-25 14:51:18)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Since the worker may rearm, we currently are only guaranteed to flush
> > the work if we cancel the timer. If the work was running at the time we
> > try and cancel it, we will wait for it to complete, but it may leave
> > items in the pool and requeue the work. If we rearrange the immediate
> > discard of the pool then cancel the work, we know that the work cannot
> > rearm and so our flush will be final.
> >
> > <0> [314.146044] i915_mod-1321    2.... 299799443us : intel_gt_fini_buffer_pool: intel_gt_fini_buffer_pool:227 GEM_BUG_ON(!list_empty(&pool->cache_list[n]))
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> > index 1495054a4305..418ae184cecf 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> > @@ -212,8 +212,9 @@ void intel_gt_flush_buffer_pool(struct intel_gt *gt)
> >  {
> >       struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
> >  
> > -     if (cancel_delayed_work_sync(&pool->work))
> > +     do {
> >               pool_free_imm(pool);
> > +     } while (cancel_delayed_work_sync(&pool->work));
> 
> Yeah changing of order makes sense. If you want
> a guarantee that the finit goes as you expect, you
> could add two cancel_delayed_work_sync and assert
> that the final one return false.

We have an assert that the lists are empty after this function returns.
That's enough to keep me [un]happy :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
