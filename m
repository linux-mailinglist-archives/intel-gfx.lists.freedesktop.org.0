Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A22530F2C1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 12:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D9E89B7B;
	Thu,  4 Feb 2021 11:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B71889ABA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 11:56:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23785759-1500050 for multiple; Thu, 04 Feb 2021 11:56:52 +0000
MIME-Version: 1.0
In-Reply-To: <161243750979.1383.2504816924204435385@build.alporthouse.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-20-chris@chris-wilson.co.uk>
 <45740fad-297d-03e7-7de4-3a171376c0c2@linux.intel.com>
 <161243750979.1383.2504816924204435385@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 11:56:51 +0000
Message-ID: <161243981120.4856.4115126682547775710@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 20/57] drm/i915: Wrap access to
 intel_engine.active
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

Quoting Chris Wilson (2021-02-04 11:18:29)
> Quoting Tvrtko Ursulin (2021-02-04 11:07:07)
> > 
> > 
> > On 01/02/2021 08:56, Chris Wilson wrote:
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > index b56e321ef003..280d84c4e4b7 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > @@ -293,6 +293,7 @@ static int virtual_prio(const struct intel_engine_execlists *el)
> > >   static bool need_preempt(const struct intel_engine_cs *engine,
> > >                        const struct i915_request *rq)
> > >   {
> > > +     const struct i915_sched *se = &engine->active;
> > 
> > There's only two instances in this patch which do not use 
> > intel_engine_get_scheduler. Intended?
> 
> They were the ones I earmarked for being replaced by the scheduler
> object being passed down. Having down that I can do the replacement here
> and remove the conflicts with the final result later.

The catch here was the const. We can't make the getter take a const*
at this point, so I left it as &engine->active to not have to remove the
constness.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
