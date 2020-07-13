Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02F921D3E3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 12:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D336E1D8;
	Mon, 13 Jul 2020 10:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012BD6E1D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 10:39:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21802092-1500050 for multiple; Mon, 13 Jul 2020 11:39:50 +0100
MIME-Version: 1.0
In-Reply-To: <4d6930b8-80d2-0e74-79fa-9e297beccf26@linux.intel.com>
References: <20200711203236.12330-1-chris@chris-wilson.co.uk>
 <4d6930b8-80d2-0e74-79fa-9e297beccf26@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 11:39:50 +0100
Message-ID: <159463679080.14386.1679019125495124467@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Ignore irq enabling on the
 virtual engines
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-13 11:19:58)
> 
> On 11/07/2020 21:32, Chris Wilson wrote:
> > We do not use the virtual engines for interrupts (they have physical
> > components), but we do use them to decouple the fence signaling during
> > submission. Currently, when we submit a completed request, we try to
> > enable the interrupt handler for the virtual engine, but we never disarm
> > it. A quick fix is then to mark the irq as enabled, and it will then
> > remain enabled -- and this prevents us from waking the device and never
> > letting it sleep again.
> > 
> > Fixes: f8db4d051b5e ("drm/i915: Initialise breadcrumb lists on the virtual engine")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.5+
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index cd4262cc96e2..504e269bb166 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -5727,6 +5727,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
> >       intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
> >       intel_engine_init_breadcrumbs(&ve->base);
> >       intel_engine_init_execlists(&ve->base);
> > +     ve->base.breadcrumbs.irq_armed = true;
> 
> Add a comment here saying this is a hack and why please. With that:

"This is a lot simpler than splitting breadcrumbs, although we do need
to do that. But that was becoming a very hairy patch."
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
