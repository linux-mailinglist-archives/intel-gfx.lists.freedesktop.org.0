Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4934B16EED4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 20:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B324689F63;
	Tue, 25 Feb 2020 19:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC2E89F63
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 19:16:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20349392-1500050 for multiple; Tue, 25 Feb 2020 19:16:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
 <20200224100007.4024184-3-chris@chris-wilson.co.uk>
 <452b0706-4b0d-9548-0456-081c0d950dbc@linux.intel.com>
In-Reply-To: <452b0706-4b0d-9548-0456-081c0d950dbc@linux.intel.com>
Message-ID: <158265816615.3656.1841269218082044932@skylake-alporthouse-com>
Date: Tue, 25 Feb 2020 19:16:06 +0000
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915: Flush idle barriers when
 waiting
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

Quoting Tvrtko Ursulin (2020-02-25 19:07:43)
> 
> On 24/02/2020 09:59, Chris Wilson wrote:
> > -int i915_active_wait(struct i915_active *ref)
> > +static int flush_barrier(struct active_node *it)
> >   {
> > -     struct active_node *it, *n;
> > -     int err = 0;
> > +     struct intel_engine_cs *engine;
> >   
> > -     might_sleep();
> > +     if (!is_barrier(&it->base))
> > +             return 0;
> >   
> > -     if (!i915_active_acquire_if_busy(ref))
> > +     engine = __barrier_to_engine(it);
> > +     smp_rmb(); /* serialise with add_active_barriers */
> > +     if (!is_barrier(&it->base))
> >               return 0;
> 
> What is the purpose of the first !is_barrier check? Just to kind of look 
> better by not calling __bariier_to_engine on the wrong thing?

Yeah, and that smp_rmb() is on the expensive side (enough to justify a
branch). If I was confident I would mark up that first !is_barrier() with
likely(). Hmm, does the kernel still have the infrastructure to warn
those annotations are wrong?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
