Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF514212DF2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 22:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB556E143;
	Thu,  2 Jul 2020 20:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016486E143
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 20:39:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21695362-1500050 for multiple; Thu, 02 Jul 2020 21:38:40 +0100
MIME-Version: 1.0
In-Reply-To: <20200702202545.GA1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702202545.GA1969@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Thu, 02 Jul 2020 21:38:41 +0100
Message-ID: <159372232179.22925.7779642345726039521@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Drop vm.ref for duplicate
 vma on construction
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-07-02 21:25:45)
> Hi Chris,
> 
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 1f63c4a1f055..7fe1f317cd2b 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -198,6 +198,7 @@ vma_create(struct drm_i915_gem_object *obj,
> >               cmp = i915_vma_compare(pos, vm, view);
> >               if (cmp == 0) {
> >                       spin_unlock(&obj->vma.lock);
> > +                     i915_vm_put(vm);
> >                       i915_vma_free(vma);
> 
> You are forgettin one return without dereferencing it.
> 
> would this be a solution:
> 
> @@ -106,6 +106,7 @@ vma_create(struct drm_i915_gem_object *obj,
>  {
>         struct i915_vma *vma;
>         struct rb_node *rb, **p;
> +       struct i915_vma *pos = ERR_PTR(-E2BIG);
>  
>         /* The aliasing_ppgtt should never be used directly! */
>         GEM_BUG_ON(vm == &vm->gt->ggtt->alias->vm);
> @@ -185,7 +186,6 @@ vma_create(struct drm_i915_gem_object *obj,
>         rb = NULL;
>         p = &obj->vma.tree.rb_node;
>         while (*p) {
> -               struct i915_vma *pos;
>                 long cmp;
>  
>                 rb = *p;
> @@ -197,12 +197,8 @@ vma_create(struct drm_i915_gem_object *obj,
>                  * and dispose of ours.
>                  */
>                 cmp = i915_vma_compare(pos, vm, view);
> -               if (cmp == 0) {
> -                       spin_unlock(&obj->vma.lock);
> -                       i915_vm_put(vm);
> -                       i915_vma_free(vma);
> -                       return pos;
> -               }
> +               if (!cmp)
> +                       goto err_unlock;

Yeah, but you might as well do

if (cmp < 0)
 	p = right;
else if (cmp > 0)
 	p = left;
else
	goto err_unlock;
 
>                 if (cmp < 0)
>                         p = &rb->rb_right;
> @@ -230,8 +226,9 @@ vma_create(struct drm_i915_gem_object *obj,
>  err_unlock:
>         spin_unlock(&obj->vma.lock);
>  err_vma:
> +       i915_vm_put(vm);
>         i915_vma_free(vma);
> -       return ERR_PTR(-E2BIG);
> +       return pos;
>  }
> 
> Andi

Ta, going to send that as a patch?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
