Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7C719BE0A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 10:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95856EA15;
	Thu,  2 Apr 2020 08:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F956EA15
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 08:51:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20773257-1500050 for multiple; Thu, 02 Apr 2020 09:51:20 +0100
MIME-Version: 1.0
In-Reply-To: <158581729847.5852.13108776295550519649@build.alporthouse.com>
References: <20200402080805.20292-1-chris@chris-wilson.co.uk>
 <878sjep98u.fsf@gaia.fi.intel.com>
 <158581729847.5852.13108776295550519649@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158581748128.5852.18033398286783702842@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 09:51:21 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add one more rcu_barrier()
 after draining the ppGTT freelist
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

Quoting Chris Wilson (2020-04-02 09:48:18)
> Quoting Mika Kuoppala (2020-04-02 09:44:33)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > 
> > > Since gen7 full-ppgtt uses nested vm references (the ppGTT is a slot
> > > within the global GTT and so has a buried i915_ggtt) we may need to go
> > > through a couple of RCU barriers before we have freed all the structs.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index 894d08e5a21f..cb31ed712db3 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -684,8 +684,9 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
> > >  
> > >       atomic_set(&ggtt->vm.open, 0);
> > >  
> > > -     rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
> > > -     flush_workqueue(ggtt->vm.i915->wq);
> > > +     do { /* flush the RCU'ed__i915_vm_release */
> > > +             rcu_barrier();
> > > +     } while (flush_workqueue(ggtt->vm.i915->wq));
> > 
> > flush_workqueue returns void. you want flush_work?
> 
> Darnation. I see in i915_gem_drain_workqueue() we just did N passes :(

Waitasec this is i915->wq, we can just use i915_gem_drain_workqueue()
(although that's now a misnomer).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
