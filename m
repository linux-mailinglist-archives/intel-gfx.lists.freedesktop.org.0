Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381DA2D9C71
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 17:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F916E2A3;
	Mon, 14 Dec 2020 16:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574D889CDB;
 Mon, 14 Dec 2020 16:21:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23322593-1500050 for multiple; Mon, 14 Dec 2020 16:21:52 +0000
MIME-Version: 1.0
In-Reply-To: <db3f4d96-1143-168b-dfa0-f49fd856832d@linux.intel.com>
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
 <20201214105123.542518-3-chris@chris-wilson.co.uk>
 <db3f4d96-1143-168b-dfa0-f49fd856832d@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 16:21:53 +0000
Message-ID: <160796291334.13039.8401706851037677309@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] i915/gem_shrink:
 Refactor allocation sizing based on available memory
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

Quoting Tvrtko Ursulin (2020-12-14 15:57:59)
> 
> On 14/12/2020 10:51, Chris Wilson wrote:
> > Refactor the allocation such that we utilise just enough memory pressure
> > to invoke the shrinker, and just enough processes to spread across the
> > CPUs and contend on the shrinker.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   tests/i915/gem_shrink.c | 11 ++++++-----
> >   1 file changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
> > index 023db8c56..e8a814fe6 100644
> > --- a/tests/i915/gem_shrink.c
> > +++ b/tests/i915/gem_shrink.c
> > @@ -426,6 +426,7 @@ igt_main
> >       int num_processes = 0;
> >   
> >       igt_fixture {
> > +             const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> >               uint64_t mem_size = intel_get_total_ram_mb();
> >               int fd;
> >   
> > @@ -434,16 +435,16 @@ igt_main
> >   
> >               /*
> >                * Spawn enough processes to use all memory, but each only
> > -              * uses half the available mappable aperture ~128MiB.
> > +              * uses half of the available per-cpu memory.
> >                * Individually the processes would be ok, but en masse
> >                * we expect the shrinker to start purging objects,
> >                * and possibly fail.
> >                */
> > -             alloc_size = gem_mappable_aperture_size(fd) / 2;
> > -             num_processes = 1 + (mem_size / (alloc_size >> 20));
> > +             alloc_size = (mem_size + ncpus - 1) / ncpus / 2;
> 
> Div round up with thousands divided by small integers okay, safe on very 
> old smp boxes. :)
> 
> > +             num_processes = ncpus + (mem_size / alloc_size);
> 
> Hm, now what does this add up to..
> 
> ncpus + mem_size / (mem_size / ncpus / 2) = ... ?

(ncpus + mem_size / (mem_size / ncpus / 2)) * (mem_size / ncpus / 2)

mem_size / 2 + mem_size
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
