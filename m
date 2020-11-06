Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B72B2A939B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 11:04:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD1C6EE38;
	Fri,  6 Nov 2020 10:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC5A6EE38
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 10:04:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22911726-1500050 for multiple; Fri, 06 Nov 2020 10:04:02 +0000
MIME-Version: 1.0
In-Reply-To: <160465696653.18394.788627216964297888@build.alporthouse.com>
References: <20201106011842.36203-1-daniele.ceraolospurio@intel.com>
 <5004bc0d-1e97-bbf3-ece9-327c61d4d09c@linux.intel.com>
 <160465696653.18394.788627216964297888@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 06 Nov 2020 10:04:00 +0000
Message-ID: <160465704013.18394.8860970526065944236@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correctly set SFC capability for
 video engines
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

Quoting Chris Wilson (2020-11-06 10:02:46)
> Quoting Tvrtko Ursulin (2020-11-06 09:30:05)
> > 
> > On 06/11/2020 01:18, Daniele Ceraolo Spurio wrote:
> > > From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> > > 
> > > SFC capability of video engines is not set correctly because i915
> > > is testing for incorrect bits.
> > > 
> > > Fixes: c5d3e39caa45 ("drm/i915: Engine discovery query")
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> > > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > index 3fb52fac0d5d..0b31670343f5 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > @@ -372,7 +372,8 @@ static void __setup_engine_capabilities(struct intel_engine_cs *engine)
> > >                * instances.
> > >                */
> > >               if ((INTEL_GEN(i915) >= 11 &&
> > > -                  engine->gt->info.vdbox_sfc_access & engine->mask) ||
> > > +                  (engine->gt->info.vdbox_sfc_access &
> > > +                   BIT(engine->instance))) ||
> > >                   (INTEL_GEN(i915) >= 9 && engine->instance == 0))
> > >                       engine->uabi_capabilities |=
> > >                               I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC;
> > > 
> > 
> > Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: c5d3e39caa45 ("drm/i915: Engine discovery query")

I was blind, you'd already included it, but not the stable v5.3+ tag.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
