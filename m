Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE24112D1EB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:26:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A6589FD3;
	Mon, 30 Dec 2019 16:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0103989FC0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:25:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19727955-1500050 for multiple; Mon, 30 Dec 2019 16:25:44 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87a779rddz.fsf@gaia.fi.intel.com>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
 <20191230160112.3838434-6-chris@chris-wilson.co.uk>
 <87a779rddz.fsf@gaia.fi.intel.com>
Message-ID: <157772314156.3861.714541433651806174@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 16:25:41 +0000
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Always poison the
 kernel_context image before unparking
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2019-12-30 16:23:20)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Keep scrubbing the kernel_context image with poison before we reset it
> > in order to demonstrate that we will be resilient in the case where it
> > is accidentally overwritten on idle.
> >
> > Suggested-by: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
> >  drivers/gpu/drm/i915/gt/intel_engine_pm.c     | 18 +++++++++++++++++-
> >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 ++--
> >  3 files changed, 21 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > index 9527a659546c..ca1420fb8b53 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > @@ -17,6 +17,8 @@
> >  #include "intel_engine_types.h"
> >  #include "intel_sseu.h"
> >  
> > +#define CONTEXT_REDZONE POISON_INUSE
> > +
> >  struct i915_gem_context;
> >  struct i915_vma;
> >  struct intel_context;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index 1b9f73948f22..ea90ab3e396e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -37,8 +37,24 @@ static int __engine_unpark(struct intel_wakeref *wf)
> >  
> >       /* Discard stale context state from across idling */
> >       ce = engine->kernel_context;
> > -     if (ce)
> > +     if (ce) {
> > +             GEM_BUG_ON(test_bit(CONTEXT_VALID_BIT, &ce->flags));
> > +
> > +             /* First poison the image to verify we never fully trust it */
> > +             if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
> > +                     struct drm_i915_gem_object *obj = ce->state->obj;
> > +                     int type = i915_coherent_map_type(engine->i915);
> > +
> > +                     map = i915_gem_object_pin_map(obj, type);
> > +                     if (!IS_ERR(map)) {
> > +                             memset(map, CONTEXT_REDZONE, obj->base.size);
> 
> Just pondering if the dword granularity would suffice.

Pure debug, so convenience of memchr_inv() rules.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
