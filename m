Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4065E1E266C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 18:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E269E6E218;
	Tue, 26 May 2020 16:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2BC6E218;
 Tue, 26 May 2020 16:05:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21299537-1500050 for multiple; Tue, 26 May 2020 17:05:54 +0100
MIME-Version: 1.0
In-Reply-To: <3f1bd2ad-f9a2-c6dc-b878-3982eb01f150@linux.intel.com>
References: <20200526141723.401469-1-chris@chris-wilson.co.uk>
 <3f1bd2ad-f9a2-c6dc-b878-3982eb01f150@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159050915299.30979.3270746636887568862@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 26 May 2020 17:05:52 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Update inter-engine
 semaphore detection
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

Quoting Tvrtko Ursulin (2020-05-26 16:58:05)
> 
> On 26/05/2020 15:17, Chris Wilson wrote:
> > The kernel no longer uses semaphores between engines, unless it can do
> > so by preempting them with timeslices. Update the semaphore-busy to only
> > run when we expect semaphore usage, i.e. not on bdw/bsw.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1939
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   tests/perf_pmu.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/tests/perf_pmu.c b/tests/perf_pmu.c
> > index e54a0d47e..e80f730cf 100644
> > --- a/tests/perf_pmu.c
> > +++ b/tests/perf_pmu.c
> > @@ -822,6 +822,7 @@ sema_busy(int gem_fd,
> >       int fd;
> >   
> >       igt_require(gem_scheduler_has_semaphores(gem_fd));
> > +     igt_require(gem_scheduler_has_preemption(gem_fd));
> >   
> >       fd = open_group(gem_fd,
> >                       I915_PMU_ENGINE_SEMA(e->class, e->instance), -1);
> > 
> 
> Test with perhaps too intimate knowledge of i915..

iirc, part of the intent of the test was to understand how the kernel's
choice of inter-engine sync would show up in the pmu. The challenge we
have is in declaring the expected outcomes, that requires intimate
knowledge of what the kernel might decide to do.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
