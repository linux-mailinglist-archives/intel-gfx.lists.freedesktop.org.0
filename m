Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4017F302450
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083446E061;
	Mon, 25 Jan 2021 11:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D506E061
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:34:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23692056-1500050 for multiple; Mon, 25 Jan 2021 11:34:16 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHN_+EQQbE-xU-hEkmAuBCnoaOYx8hbaXBXHTj4nZ-KKkA@mail.gmail.com>
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
 <20210124135406.28756-2-chris@chris-wilson.co.uk>
 <CAM0jSHN_+EQQbE-xU-hEkmAuBCnoaOYx8hbaXBXHTj4nZ-KKkA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 25 Jan 2021 11:34:17 +0000
Message-ID: <161157445737.27462.4541589837058942661@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Always try to reserve GGTT
 address 0x0
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

Quoting Matthew Auld (2021-01-25 11:28:16)
> On Sun, 24 Jan 2021 at 13:54, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Since writing to address 0 is a very common mistake, let's try to avoid
> > putting anything sensitive there.
> >
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/2989
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 40 +++++++++++++++++++---------
> >  1 file changed, 28 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index dac07d66f658..3a737d4fbc3c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -535,16 +535,32 @@ static int init_ggtt(struct i915_ggtt *ggtt)
> >
> >         mutex_init(&ggtt->error_mutex);
> >         if (ggtt->mappable_end) {
> > -               /* Reserve a mappable slot for our lockless error capture */
> > -               ret = drm_mm_insert_node_in_range(&ggtt->vm.mm,
> > -                                                 &ggtt->error_capture,
> > -                                                 PAGE_SIZE, 0,
> > -                                                 I915_COLOR_UNEVICTABLE,
> > -                                                 0, ggtt->mappable_end,
> > -                                                 DRM_MM_INSERT_LOW);
> > -               if (ret)
> > -                       return ret;
> > +               /*
> > +                * Reserve a mappable slot for our lockless error capture.
> > +                *
> > +                * We strongly prefer taking address 0x0 in order to protect
> > +                * other critical buffers against accidental overwrites,
> > +                * as writing to address 0 is a very common mistake.
> > +                *
> > +                * Since 0 may already be in use by the system (e.g. the BIOS
> > +                * framebuffer), we let the reservation fail quietly and hope
> > +                * 0 remains reserved always.
> > +                */
> > +               ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
> > +               ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
> > +               if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
> > +                       drm_mm_insert_node_in_range(&ggtt->vm.mm,
> > +                                                   &ggtt->error_capture,
> > +                                                   ggtt->error_capture.size, 0,
> > +                                                   ggtt->error_capture.color,
> > +                                                   0, ggtt->mappable_end,
> > +                                                   DRM_MM_INSERT_LOW);
> 
> We don't want to check the in_range for an error? It should be
> impossible I guess?

For the purpose of error-capture, we will survive without. (I guess we
should include a note in the error capture as to which path was used to
retrieve the data.) Far better to risk error capture not being fully
functional than aborting the driver load. (Although what could go wrong
here... A driver bug?)

For the secondary purpose of preventing use of 0x0, if the reservation
fails, then we know something is at 0x0 and we have to trust that it
remains in place preventing our user.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
