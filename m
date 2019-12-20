Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D415D127F1D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319216EC54;
	Fri, 20 Dec 2019 15:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873A36EC54
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:14:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19648132-1500050 for multiple; Fri, 20 Dec 2019 15:13:22 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191220150825.GA26429@intel.com>
References: <20191220125116.15181-1-ramalingam.c@intel.com>
 <157684888062.18690.7431941192929920667@skylake-alporthouse-com>
 <20191220150825.GA26429@intel.com>
Message-ID: <157685479994.18690.13275887076283654288@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Dec 2019 15:13:19 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: debugfs for LMEM details
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ramalingam C (2019-12-20 15:08:25)
> On 2019-12-20 at 13:34:40 +0000, Chris Wilson wrote:
> > Quoting Ramalingam C (2019-12-20 12:51:16)
> > > From: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> > > 
> > > Debugfs i915_gem_object is extended to enable the IGTs to
> > > detect the LMEM's availability and the total size of LMEM.
> > > 
> > > Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >  drivers/gpu/drm/i915/i915_debugfs.c        | 6 +++++-
> > >  drivers/gpu/drm/i915/intel_memory_region.c | 5 ++++-
> > >  drivers/gpu/drm/i915/intel_memory_region.h | 3 +++
> > >  3 files changed, 12 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > > index d28468eaed57..856ded8cd332 100644
> > > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > > @@ -373,7 +373,11 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
> > >                    atomic_read(&i915->mm.free_count),
> > >                    i915->mm.shrink_memory);
> > >  
> > > -       seq_putc(m, '\n');
> > > +       if (HAS_LMEM(i915)) {
> > > +               seq_printf(m, "LMEM total: %llu bytes, available %llu bytes\n",
> > > +                          (u64)i915->mm.regions[INTEL_REGION_LMEM]->total,
> > > +                          (u64)i915->mm.regions[INTEL_REGION_LMEM]->avail);
> > 
> > %pa for resource_size_t
> > 
> with READ_ONCE(i915->mm.regions[INTEL_REGION_LMEM]->total) %pa is not
> going well. Getting -Werror=format=. %llu is compiling without any warnings.

Did you remove the (u64)?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
