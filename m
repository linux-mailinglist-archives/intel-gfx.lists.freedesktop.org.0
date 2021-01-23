Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5151301615
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 15:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFBC16E1D6;
	Sat, 23 Jan 2021 14:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A5B6E1D6
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Jan 2021 14:53:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23681100-1500050 for multiple; Sat, 23 Jan 2021 14:53:01 +0000
MIME-Version: 1.0
In-Reply-To: <20210123144633.GA88631@roeck-us.net>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-2-chris@chris-wilson.co.uk>
 <20210123144633.GA88631@roeck-us.net>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Guenter Roeck <linux@roeck-us.net>
Date: Sat, 23 Jan 2021 14:53:01 +0000
Message-ID: <161141358191.24506.16753730806749870540@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gem: Almagamate clflushes on
 freeze
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Guenter Roeck (2021-01-23 14:46:33)
> On Tue, Jan 19, 2021 at 02:49:08PM +0000, Chris Wilson wrote:
> > When flushing objects larger than the CPU cache it is preferrable to use
> > a single wbinvd() rather than overlapping clflush(). At runtime, we
> > avoid wbinvd() due to its system-wide latencies, but during
> > singlethreaded suspend, no one will observe the imposed latency and we
> > can opt for the faster wbinvd to clear all objects in a single hit.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gem.c | 16 +++++-----------
> >  1 file changed, 5 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > index c013148835e6..d3a287bf56c5 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -1175,19 +1175,13 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
> >        * the objects as well, see i915_gem_freeze()
> >        */
> >  
> > -     wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> > -
> > -     i915_gem_shrink(i915, -1UL, NULL, ~0);
> > +     with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> > +             i915_gem_shrink(i915, -1UL, NULL, ~0);
> >       i915_gem_drain_freed_objects(i915);
> >  
> > -     list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
> > -             i915_gem_object_lock(obj, NULL);
> > -             drm_WARN_ON(&i915->drm,
> > -                         i915_gem_object_set_to_cpu_domain(obj, true));
> > -             i915_gem_object_unlock(obj);
> > -     }
> > -
> > -     intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > +     wbinvd_on_all_cpus();
> 
> with CONFIG_SMP=n, this results in:
> 
> drivers/gpu/drm/i915/i915_gem.c: In function 'i915_gem_freeze_late':
> drivers/gpu/drm/i915/i915_gem.c:1182:2: error: implicit declaration of function 'wbinvd_on_all_cpus'
> 
> Other drivers calling this function include <asm/smp.h>.

I mistakenly thought this was next to i915_gem_suspend...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
