Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ABF13AD61
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 16:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030966E413;
	Tue, 14 Jan 2020 15:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8BB6E413
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 15:18:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19876657-1500050 for multiple; Tue, 14 Jan 2020 15:18:03 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87h80yf4xo.fsf@gaia.fi.intel.com>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
 <20200114093648.2090633-13-chris@chris-wilson.co.uk>
 <87h80yf4xo.fsf@gaia.fi.intel.com>
Message-ID: <157901508105.5559.1676181824497897462@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 Jan 2020 15:18:01 +0000
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/gt: Limit C-states while
 waiting for requests
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-14 15:12:03)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Allow the sysadmin to specify whether we should prevent the CPU from
> > entering higher C-states while waiting for the CPU, in order to reduce
> 
> s/higher/deeper
> s/CPU/GPU
> 
> > the latency of request completions and so speed up client continuations.
> >
> > The target dma latency can be adjusted per-engine using,
> >
> >       /sys/class/drm/card?/engine/*/dma_latency_ns
> >
> > (For waiting on a virtual engine, the underlying physical engine is used
> > for the wait once the request is active, so set all the physical engines
> > in the virtual set to the same target dma latency.)
> >
> > Note that in most cases, the ratelimiting step does not appear to the
> > interrupt latency per se, but secondary effects of avoiding additional
> > memory latencies while active.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> > Cc: Francisco Jerez <currojerez@riseup.net>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Kconfig.profile         | 14 ++++++
> >  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 48 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  2 +
> >  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 31 +++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 ++++
> >  5 files changed, 104 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> > index ba8767fc0d6e..a956f1bb9caf 100644
> > --- a/drivers/gpu/drm/i915/Kconfig.profile
> > +++ b/drivers/gpu/drm/i915/Kconfig.profile
> > @@ -12,6 +12,20 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
> >         May be 0 to disable the extra delay and solely use the device level
> >         runtime pm autosuspend delay tunable.
> >  
> > +config DRM_I915_DMA_LATENCY
> > +     int "Target CPU-DMA latency while waiting on active requests (ns)"
> > +     default -1 # nanoseconds
> > +     help
> > +       Specify a target latency for DMA wakeup, see /dev/cpu_dma_latency,
> > +       used while the CPU is waiting for GPU results.
> > +
> > +       This is adjustable via
> > +       /sys/class/drm/card?/engine/*/dma_latency_ns
> > +
> > +       May be -1 to prevent specifying a target wakeup and let the CPU
> > +       enter powersaving while waiting. Conversely, 0 may be used to
> > +       prevent the CPU from entering any C-states while waiting.
> 
> Who will be the target group to touch this tunable if it is default off?

It dramatically improves our fake transcode benchmarks, so I think there
will be those who find it useful and willing to pay the joules.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
