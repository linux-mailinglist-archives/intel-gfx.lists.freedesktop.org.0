Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8C719B626
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD7C46E0E6;
	Wed,  1 Apr 2020 19:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D536E0E6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:02:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20769044-1500050 for multiple; Wed, 01 Apr 2020 20:02:09 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNPFgEwensdSNvVj_twgyXp15-xtyumT3Jdw7p+EUNMzA@mail.gmail.com>
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-8-chris@chris-wilson.co.uk>
 <CAM0jSHNPFgEwensdSNvVj_twgyXp15-xtyumT3Jdw7p+EUNMzA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <158576772942.5852.2189448640813013601@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 01 Apr 2020 20:02:09 +0100
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/gt: Only wait for GPU
 activity before unbinding a GGTT fence
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-04-01 19:56:23)
> On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Only GPU activity via the GGTT fence is asynchronous, we know that we
> > control the CPU access directly, so we only need to wait for the GPU to
> > stop using the fence before we relinquish it.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 12 ++++++++----
> >  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  3 +++
> >  drivers/gpu/drm/i915/i915_vma.c              |  4 ++++
> >  3 files changed, 15 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > index 225970f4a4ef..74f8201486b2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> > @@ -239,15 +239,18 @@ static int fence_update(struct i915_fence_reg *fence,
> >                 if (!i915_vma_is_map_and_fenceable(vma))
> >                         return -EINVAL;
> >
> > -               ret = i915_vma_sync(vma);
> > -               if (ret)
> > -                       return ret;
> > +               if (INTEL_GEN(fence_to_i915(fence)) < 4) {
> > +                       /* implicit 'unfenced' GPU blits */
> > +                       ret = i915_vma_sync(vma);
> 
> What was the strangeness with gen < 4 again?

From gen4, all gpu ops have implicit fences and never reference the
global fence registers.

if (gpu_uses_fence_registers())

worksforme

> > +                       if (ret)
> > +                               return ret;
> > +               }
> >         }
> >
> >         old = xchg(&fence->vma, NULL);
> >         if (old) {
> >                 /* XXX Ideally we would move the waiting to outside the mutex */
> > -               ret = i915_vma_sync(old);
> > +               ret = i915_active_wait(&fence->active);
> >                 if (ret) {
> >                         fence->vma = old;
> >                         return ret;
> > @@ -869,6 +872,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
> >         for (i = 0; i < num_fences; i++) {
> >                 struct i915_fence_reg *fence = &ggtt->fence_regs[i];
> >
> > +               i915_active_init(&fence->active, NULL, NULL);
> 
> Some active_fini?

For debug peace of mind, I think we added fini_fences so should be easy
to type up.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
