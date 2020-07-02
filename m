Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E616212F56
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1AC46E277;
	Thu,  2 Jul 2020 22:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10CFF6E277
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:14:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21695907-1500050 for multiple; Thu, 02 Jul 2020 23:14:06 +0100
MIME-Version: 1.0
In-Reply-To: <20200702220944.GD1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-2-chris@chris-wilson.co.uk>
 <20200702220944.GD1969@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Thu, 02 Jul 2020 23:14:08 +0100
Message-ID: <159372804803.22925.7913107148515377900@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/23] drm/i915/gem: Split the context's
 obj:vma lut into its own mutex
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

Quoting Andi Shyti (2020-07-02 23:09:44)
> Hi Chris,
> 
> > @@ -1312,11 +1314,11 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
> >       if (vm == rcu_access_pointer(ctx->vm))
> >               goto unlock;
> >  
> > +     old = __set_ppgtt(ctx, vm);
> > +
> >       /* Teardown the existing obj:vma cache, it will have to be rebuilt. */
> >       lut_close(ctx);
> >  
> > -     old = __set_ppgtt(ctx, vm);
> > -
> >       /*
> >        * We need to flush any requests using the current ppgtt before
> >        * we release it as the requests do not hold a reference themselves,
> > @@ -1330,6 +1332,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
> >       if (err) {
> >               i915_vm_close(__set_ppgtt(ctx, old));
> >               i915_vm_close(old);
> > +             lut_close(ctx); /* rebuild the old obj:vma cache */
> 
> I don't really understand this but it doesn't hurt

Yeah; another testcase required for racing set-vm against execbuf.
Outcome unknown, all that we have to avoid are explosions. Userspace is
allowed to shoot itself in the foot, but is not allowed to shoot anyone
else.
 
> > diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > index aa0d06cf1903..51b5a3421b40 100644
> > --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
> > @@ -23,6 +23,8 @@ mock_context(struct drm_i915_private *i915,
> >       INIT_LIST_HEAD(&ctx->link);
> >       ctx->i915 = i915;
> >  
> > +     mutex_init(&ctx->mutex);
> > +
> >       spin_lock_init(&ctx->stale.lock);
> >       INIT_LIST_HEAD(&ctx->stale.engines);
> >  
> > @@ -35,7 +37,7 @@ mock_context(struct drm_i915_private *i915,
> >       RCU_INIT_POINTER(ctx->engines, e);
> >  
> >       INIT_RADIX_TREE(&ctx->handles_vma, GFP_KERNEL);
> > -     mutex_init(&ctx->mutex);
> > +     mutex_init(&ctx->lut_mutex);
> 
> ...and I don't really understand why moved the first
> init(&ctx->mutex) above, is it just aesthetic?

Yup. The ctx->mutex is the broader one, so I felt it deserved to be
higher. Whereas here we are setting up the lut [handles_vma] so was the
natural spot to place the ctx->lut_mutex; and I wanted some distance
between the pair to keep the confusion at bay.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
