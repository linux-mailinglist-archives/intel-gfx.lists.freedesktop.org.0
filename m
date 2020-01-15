Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3132F13BE0F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 12:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959406E90D;
	Wed, 15 Jan 2020 11:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316216E90D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 11:01:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19886577-1500050 for multiple; Wed, 15 Jan 2020 11:01:37 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115083346.2601512-1-chris@chris-wilson.co.uk>
 <20200115083346.2601512-2-chris@chris-wilson.co.uk>
 <c01c5bb7-2d57-43b2-5497-bb737890a935@linux.intel.com>
In-Reply-To: <c01c5bb7-2d57-43b2-5497-bb737890a935@linux.intel.com>
Message-ID: <157908609527.12549.10044345164172735540@skylake-alporthouse-com>
Date: Wed, 15 Jan 2020 11:01:35 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Allow temporary suspension
 of inflight requests
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

Quoting Tvrtko Ursulin (2020-01-15 10:58:39)
> 
> On 15/01/2020 08:33, Chris Wilson wrote:
> > +static bool hold_request(const struct i915_request *rq)
> > +{
> > +     struct i915_dependency *p;
> > +
> > +     /*
> > +      * If one of our ancestors is still on hold, we must also still be on
> > +      * hold, otherwise we will bypass it and execute before it.
> > +      */
> > +     list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
> > +             const struct i915_request *s =
> > +                     container_of(p->signaler, typeof(*s), sched);
> > +
> > +             if (s->engine != rq->engine)
> > +                     continue;
> > +
> > +             return i915_request_has_hold(s);
> 
> It shouldn't be:
> 
>         if (i915_request_has_hold(s))
>                 return true;
> 
> ?

Yes, it should be.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
