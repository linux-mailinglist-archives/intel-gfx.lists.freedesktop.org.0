Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE55A1CD56D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131AC6E41A;
	Mon, 11 May 2020 09:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E1A6E415;
 Mon, 11 May 2020 09:37:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21157940-1500050 for multiple; Mon, 11 May 2020 10:37:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200511093149.GD9497@platvala-desk.ger.corp.intel.com>
References: <20200511082141.65494-1-chris@chris-wilson.co.uk>
 <20200511093149.GD9497@platvala-desk.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Petri Latvala <petri.latvala@intel.com>
Message-ID: <158918986617.1729.17535844826256554961@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 11 May 2020 10:37:46 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ringfill: Do a
 basic pass over all engines simultaneously
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Petri Latvala (2020-05-11 10:31:49)
> On Mon, May 11, 2020 at 09:21:41AM +0100, Chris Wilson wrote:
> > Change the basic pre-mergetest to do a single pass over all engines
> > simultaneously. This should take no longer than checking a single
> > engine, while providing just the right amount of stress regardless of
> > machine size.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/i915/gem_ringfill.c             | 10 ++++++++++
> >  tests/intel-ci/fast-feedback.testlist |  2 +-
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/i915/gem_ringfill.c b/tests/i915/gem_ringfill.c
> > index a2157bd6f..a90758e08 100644
> > --- a/tests/i915/gem_ringfill.c
> > +++ b/tests/i915/gem_ringfill.c
> > @@ -292,6 +292,16 @@ igt_main
> >               }
> >       }
> >  
> > +     igt_subtest("basic-all") {
> > +             const struct intel_execution_engine2 *e;
> > +
> > +             __for_each_physical_engine(fd, e)
> > +                     igt_fork(child, 1)
> > +                             run_test(fd, e->flags, 0, 1);
> 
> Will it happen simultaneously though without synchronization?

This would allocate separate buffers for each engine, so would be
independent. [That was the intention.]


> (Obvious quip about executing too fast)
> 
> run_test() calls igt_require in a few places, and skips in child
> processes are problematic.

I was trying not to rewrite it!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
