Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82E714B243
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 11:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D736ED8A;
	Tue, 28 Jan 2020 10:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054986ED88;
 Tue, 28 Jan 2020 10:05:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20031914-1500050 for multiple; Tue, 28 Jan 2020 10:05:55 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87lfprnbpg.fsf@gaia.fi.intel.com>
References: <20200126134811.2084060-1-chris@chris-wilson.co.uk>
 <87lfprnbpg.fsf@gaia.fi.intel.com>
Message-ID: <158020595375.30113.15148617807709910784@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 28 Jan 2020 10:05:53 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915: Inject invalid CS into
 hanging spinners
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-28 09:59:23)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Some spinners are used with the intent of never ending and being
> > declared hung by the kernel. In some cases, these are being used to
> > simulate invalid payloads and so we can use an invalid command to
> > trigger a GPU hang. (Other cases, they are simulating infinite workloads
> > that truly never end, but we still need to be able to curtail to provide
> > multi-tasking). This patch adds IGT_SPIN_INVALID_CS to request the
> > injection of 0xdeadbeef into the command stream that should trigger a
> > GPU hang.
> 
> Ok so you want to differentiate between a never ending
> and invalid payload as a separate. And also quicken the
> resolve.
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  lib/igt_dummyload.c              |  2 ++
> >  lib/igt_dummyload.h              |  1 +
> >  tests/i915/gem_busy.c            |  3 ++-
> >  tests/i915/gem_ctx_persistence.c | 39 +++++++++++++++++++++++++++++++-
> >  tests/i915/gem_eio.c             |  1 +
> >  tests/i915/gem_exec_balancer.c   |  4 +++-
> >  tests/i915/gem_exec_fence.c      |  3 ++-
> >  7 files changed, 49 insertions(+), 4 deletions(-)
> >
> > diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
> > index b7f4caca3..041122af9 100644
> > --- a/lib/igt_dummyload.c
> > +++ b/lib/igt_dummyload.c
> > @@ -189,6 +189,8 @@ emit_recursive_batch(igt_spin_t *spin,
> >       /* Allow ourselves to be preempted */
> >       if (!(opts->flags & IGT_SPIN_NO_PREEMPTION))
> >               *cs++ = MI_ARB_CHK;
> > +     if (opts->flags & IGT_SPIN_INVALID_CS)
> > +             *cs++ = 0xdeadbeef;
> 
> Some cmd streamers might just ignore this but lets
> see how it goes.

See the selftest in
https://patchwork.freedesktop.org/patch/350890/?series=72639&rev=1
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
