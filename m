Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC9195B2E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 17:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70C26EA5D;
	Fri, 27 Mar 2020 16:35:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611196EA5D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 16:35:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20716093-1500050 for multiple; Fri, 27 Mar 2020 16:35:10 +0000
MIME-Version: 1.0
In-Reply-To: <20200327162727.GC186677@jack.zhora.eu>
References: <20200326142727.31962-1-chris@chris-wilson.co.uk>
 <20200327162727.GC186677@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158532690983.19268.11553435615907738505@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 27 Mar 2020 16:35:09 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Differentiate between
 aliasing-ppgtt and ggtt pinning
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

Quoting Andi Shyti (2020-03-27 16:27:27)
> Hi Chris,
> 
> On Thu, Mar 26, 2020 at 02:27:27PM +0000, Chris Wilson wrote:
> > Userptr causes lockdep to complain when we are using the aliasing-ppgtt
> > (and ggtt, but for that it is rightfully so to complain about) in that
> > when we revoke the userptr we take a mutex which we also use to revoke
> > the mmaps. However, we only revoke mmaps for GGTT bindings and we never
> > allow userptr to create a GGTT binding so the warning should be false
> > and is simply caused by our conflation of the aliasing-ppgtt with the
> > ggtt. So lets try treating the binding into the aliasing-ppgtt as a
> > separate lockclass from the ggtt. The downside is that we are
> > deliberately suppressing lockdep;s ability to warn us of cycles.
>                                 ^^^^
> typo
> 
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/478
> 
> I'm not a big fan of links in commit messages, I think they would
> be forbidden by law, but I'm not being picky on that.

I'm lazy, I take clickable links.

> I don't know, thogh, why your S-o-b is missing.

I felt uncomfortable with this hack, but it passes CI (but it may be
suppressing too much -- I think the code is safe at the moment, but we
may lose our sensitivity to future bugs).

> 
> > ---
> >  drivers/gpu/drm/i915/i915_vma.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 191577a98390..9f4a31cd54ac 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -914,7 +914,8 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> >               wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
> >  
> >       /* No more allocations allowed once we hold vm->mutex */
> > -     err = mutex_lock_interruptible(&vma->vm->mutex);
> > +     err = mutex_lock_interruptible_nested(&vma->vm->mutex,
> > +                                           !(flags & PIN_GLOBAL));
> >       if (err)
> >               goto err_fence;
> >  
> > @@ -1320,7 +1321,7 @@ int i915_vma_unbind(struct i915_vma *vma)
> >       if (err)
> >               goto out_rpm;
> >  
> > -     err = mutex_lock_interruptible(&vm->mutex);
> > +     err = mutex_lock_interruptible_nested(&vma->vm->mutex, !wakeref);
> 
> looks reasonable to me. Thanks!
> 
> Are you planning to push it? You have my review for this.

I'm planning on adding a comment to attempt to justify itself and then
push.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
