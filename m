Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC70215303B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3DCD6E974;
	Wed,  5 Feb 2020 11:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DC96E974
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 11:56:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20123501-1500050 for multiple; Wed, 05 Feb 2020 11:56:46 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158090353139.3271.5164475207119312606@skylake-alporthouse-com>
References: <20200204152456.1137083-1-chris@chris-wilson.co.uk>
 <20200204161916.1299225-1-chris@chris-wilson.co.uk>
 <07ecf53d-447b-cbf9-bbca-36ad02047f1d@linux.intel.com>
 <158090353139.3271.5164475207119312606@skylake-alporthouse-com>
Message-ID: <158090380488.3271.1437373079320279525@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 05 Feb 2020 11:56:44 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/gem_ctx_exec: Cover all
 engines for nohangcheck
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
Cc: igt-dev@lists.freedsktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-02-05 11:52:11)
> Quoting Tvrtko Ursulin (2020-02-05 11:48:42)
> > 
> > On 04/02/2020 16:19, Chris Wilson wrote:
> > > No engine can be missed when verifying that a rogue user cannot cause a
> > > denial-of-service with nohangcheck.
> > > 
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > ---
> > > __for_each_physical_engine, keep the leaks
> > > ---
> > >   tests/i915/gem_ctx_exec.c | 38 ++++++++++++++++++++++++++++++++------
> > >   1 file changed, 32 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> > > index b1ae65774..aeb8d2976 100644
> > > --- a/tests/i915/gem_ctx_exec.c
> > > +++ b/tests/i915/gem_ctx_exec.c
> > > @@ -42,6 +42,7 @@
> > >   
> > >   #include "igt_dummyload.h"
> > >   #include "igt_sysfs.h"
> > > +#include "sw_sync.h"
> > >   
> > >   IGT_TEST_DESCRIPTION("Test context batch buffer execution.");
> > >   
> > > @@ -203,9 +204,9 @@ static bool __enable_hangcheck(int dir, bool state)
> > >   
> > >   static void nohangcheck_hostile(int i915)
> > >   {
> > > -     int64_t timeout = NSEC_PER_SEC / 2;
> > > -     igt_spin_t *spin;
> > > +     const struct intel_execution_engine2 *e;
> > >       igt_hang_t hang;
> > > +     int fence = -1;
> > >       uint32_t ctx;
> > >       int err = 0;
> > >       int dir;
> > > @@ -215,6 +216,8 @@ static void nohangcheck_hostile(int i915)
> > >        * we forcibly terminate that context.
> > >        */
> > >   
> > > +     i915 = gem_reopen_driver(i915);
> > > +
> > >       dir = igt_sysfs_open_parameters(i915);
> > >       igt_require(dir != -1);
> > >   
> > > @@ -223,16 +226,35 @@ static void nohangcheck_hostile(int i915)
> > >   
> > >       igt_require(__enable_hangcheck(dir, false));
> > >   
> > > -     spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_NO_PREEMPTION);
> > > +     __for_each_physical_engine(i915, e) {
> > > +             igt_spin_t *spin;
> > > +
> > > +             spin = igt_spin_new(i915, ctx,
> > > +                                 .engine = e->flags,
> > 
> > Ouch, I missed a mismatch between ctx and e->flags here. Thanks to 
> > Sreedhar for reporting it.
> > 
> > We either need gem_context_set_all_engines back or to rethink a cleaner 
> > strategy.
> 
> Copy engines, or pass the ctx into __for_each_physical_engine.

Which [copy engines] reveals a bug... More missing tests in
gem_ctx_persistence.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
