Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D387A15357F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 17:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402326F8AA;
	Wed,  5 Feb 2020 16:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3055F6F8AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 16:44:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20126965-1500050 for multiple; Wed, 05 Feb 2020 16:44:46 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200205121147.1834445-1-chris@chris-wilson.co.uk>
 <20200205121313.1834548-1-chris@chris-wilson.co.uk>
 <637ae604-f50d-7436-eb0b-e69d555e401f@linux.intel.com>
In-Reply-To: <637ae604-f50d-7436-eb0b-e69d555e401f@linux.intel.com>
Message-ID: <158092108409.5585.7308401904801560850@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 16:44:44 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Don't leak non-persistent
 requests on changing engines
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

Quoting Tvrtko Ursulin (2020-02-05 16:22:34)
> 
> 
> On 05/02/2020 12:13, Chris Wilson wrote:
> > If we have a set of active engines marked as being non-persistent, we
> > lose track of those if the user replaces those engines with
> > I915_CONTEXT_PARAM_ENGINES. As part of our uABI contract is that
> > non-persistent requests are terminated if they are no longer being
> > tracked by the user's context (in order to prevent a lost request
> > causing an untracked and so unstoppable GPU hang), we need to apply the
> > same context cancellation upon changing engines.
> > 
> > Fixes: a0e047156cde ("drm/i915/gem: Make context persistence optional")
> > Testcase: XXX
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++++++
> >   1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 52a749691a8d..20f1d3e0221f 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -1624,11 +1624,18 @@ set_engines(struct i915_gem_context *ctx,
> >   
> >   replace:
> >       mutex_lock(&ctx->engines_mutex);
> > +
> > +     /* Flush stale requests off the old engines if required */
> > +     if (!i915_gem_context_is_persistent(ctx) ||
> > +         !i915_modparams.enable_hangcheck)
> > +             kill_context(ctx);
> 
> Is the negative effect of this is legit contexts can't keep submitting 
> and changing the map? Only if PREEMPT_TIMEOUT is disabled I think but 
> still. Might break legitimate userspace. Not that I offer solutions.. :( 
> Banning changing engines once context went non-persistent? That too can 
> break someone.

It closes the hole we have. To do otherwise, we need to keep track of
the old engines. Not an impossible task, certainly inconvenient.

struct old_engines {
	struct i915_active active;
	struct list_head link;
	struct i915_gem_context *ctx;
	void *engines;
	int num_engines;
};

With a list+spinlock in the ctx that we can work in kill_context.

The biggest catch there is actually worrying about attaching the active
to already executing request, and making sure the coupling doesn't bug
on a concurrent completion. Hmm, it's just a completion callback, but
more convenient to use a ready made one.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
