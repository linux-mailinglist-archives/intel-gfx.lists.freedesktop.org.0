Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D96A31868E6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F0C6E3D8;
	Mon, 16 Mar 2020 10:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606126E3D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:23:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20573689-1500050 for multiple; Mon, 16 Mar 2020 10:23:37 +0000
MIME-Version: 1.0
In-Reply-To: <87pndczrj3.fsf@gaia.fi.intel.com>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
 <20200314122058.21472-4-chris@chris-wilson.co.uk>
 <87pndczrj3.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158435421969.18059.12014303062772100478@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Mar 2020 10:23:39 +0000
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gt: Allocate i915_fence_reg
 array
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

Quoting Mika Kuoppala (2020-03-16 07:29:36)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Since the number of fence regs can vary dramactically between platforms,
> > allocate the array on demand so we don't waste as much space.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c         |  6 ++++--
> >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 10 ++++++++++
> >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  1 +
> >  drivers/gpu/drm/i915/gt/intel_gtt.h          |  5 +++--
> >  drivers/gpu/drm/i915/i915_vma.h              |  1 +
> >  5 files changed, 19 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index bde4f64a41f7..8fcf14372d7a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -698,11 +698,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
> >   */
> >  void i915_ggtt_driver_release(struct drm_i915_private *i915)
> >  {
> > +     struct i915_ggtt *ggtt = &i915->ggtt;
> >       struct pagevec *pvec;
> >  
> > -     fini_aliasing_ppgtt(&i915->ggtt);
> > +     fini_aliasing_ppgtt(ggtt);
> >  
> > -     ggtt_cleanup_hw(&i915->ggtt);
> > +     intel_ggtt_fini_fences(ggtt);
> > +     ggtt_cleanup_hw(ggtt);
> >  
> >       pvec = &i915->mm.wc_stash.pvec;
> >       if (pvec->nr) {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > index 94af75673a58..b6ba68c42546 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > @@ -857,6 +857,11 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
> >       if (intel_vgpu_active(i915))
> >               num_fences = intel_uncore_read(uncore,
> >                                              vgtif_reg(avail_rs.fence_num));
> > +     ggtt->fence_regs = kcalloc(num_fences,
> > +                                sizeof(*ggtt->fence_regs),
> > +                                GFP_KERNEL);
> > +     if (!ggtt->fence_regs)
> > +             num_fences = 0;
> 
> So unlikely and easily shown in other debug flow that does
> not warrant an err?

Yeah, we get a warn already and it /should/ not be fatal. We should be
able to bring the display up.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
