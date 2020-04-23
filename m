Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6471B5EE1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27806E88C;
	Thu, 23 Apr 2020 15:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60246E88C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 15:16:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20997621-1500050 for multiple; Thu, 23 Apr 2020 16:16:11 +0100
MIME-Version: 1.0
In-Reply-To: <a39636b2-8e42-6eef-1e9e-c13a2b7af5c3@linux.intel.com>
References: <20200423085940.28168-1-chris@chris-wilson.co.uk>
 <20200423085940.28168-2-chris@chris-wilson.co.uk>
 <a39636b2-8e42-6eef-1e9e-c13a2b7af5c3@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158765496993.9772.5796288344060758150@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 16:16:09 +0100
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Warn more clearly if the
 context state is still pinned
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

Quoting Tvrtko Ursulin (2020-04-23 15:47:58)
> 
> On 23/04/2020 09:59, Chris Wilson wrote:
> > When recording the default context state, we submit an ordinary context
> > and then steal the context image for our defaults. To be able to steal
> > the state, we must have total ownership of the context. During CI we
> > want to make this error extremely obvious, as otherwise we will fail the
> > user's module load.
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/1763
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 1c99cc72305a..379eb39e7979 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -472,6 +472,7 @@ static int __engines_record_defaults(struct intel_gt *gt)
> >   
> >               /* We want to be able to unbind the state from the GGTT */
> >               GEM_BUG_ON(intel_context_is_pinned(rq->context));
> > +             GEM_BUG_ON(i915_vma_is_pinned(state));
> 
> Not sure - context->state ownership is in the context pinned status and 
> then there is the unbind below which will fail if vma is pinned. Which 
> sounds better than a bug on. Is it difficult to figure out what is 
> failing in practice? A debug message on the unbind failure path might be 
> more friendly in that case.

I was able to recognise the failure :) I thought this might be more
explicit.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
