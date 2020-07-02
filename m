Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B6212DE0
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 22:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65D66E056;
	Thu,  2 Jul 2020 20:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 312 seconds by postgrey-1.36 at gabe;
 Thu, 02 Jul 2020 20:31:08 UTC
Received: from 3.mo2.mail-out.ovh.net (3.mo2.mail-out.ovh.net [46.105.58.226])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196FB6E056
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 20:31:08 +0000 (UTC)
Received: from player698.ha.ovh.net (unknown [10.108.54.9])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id D3B841E0C5D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:25:54 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player698.ha.ovh.net (Postfix) with ESMTPSA id 80B4313F8DEFB;
 Thu,  2 Jul 2020 20:25:46 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-100R003153a45de-222d-4edc-8908-80945713e232,FB3D8E5C650F7CFAB96446367E683FB3BA96C23C)
 smtp.auth=andi@etezian.org
Date: Thu, 2 Jul 2020 23:25:45 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200702202545.GA1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 4814910953956229641
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdeggddugeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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

Hi Chris,

> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 1f63c4a1f055..7fe1f317cd2b 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -198,6 +198,7 @@ vma_create(struct drm_i915_gem_object *obj,
>  		cmp = i915_vma_compare(pos, vm, view);
>  		if (cmp == 0) {
>  			spin_unlock(&obj->vma.lock);
> +			i915_vm_put(vm);
>  			i915_vma_free(vma);

You are forgettin one return without dereferencing it.

would this be a solution:

@@ -106,6 +106,7 @@ vma_create(struct drm_i915_gem_object *obj,
 {
        struct i915_vma *vma;
        struct rb_node *rb, **p;
+       struct i915_vma *pos = ERR_PTR(-E2BIG);
 
        /* The aliasing_ppgtt should never be used directly! */
        GEM_BUG_ON(vm == &vm->gt->ggtt->alias->vm);
@@ -185,7 +186,6 @@ vma_create(struct drm_i915_gem_object *obj,
        rb = NULL;
        p = &obj->vma.tree.rb_node;
        while (*p) {
-               struct i915_vma *pos;
                long cmp;
 
                rb = *p;
@@ -197,12 +197,8 @@ vma_create(struct drm_i915_gem_object *obj,
                 * and dispose of ours.
                 */
                cmp = i915_vma_compare(pos, vm, view);
-               if (cmp == 0) {
-                       spin_unlock(&obj->vma.lock);
-                       i915_vm_put(vm);
-                       i915_vma_free(vma);
-                       return pos;
-               }
+               if (!cmp)
+                       goto err_unlock;
 
                if (cmp < 0)
                        p = &rb->rb_right;
@@ -230,8 +226,9 @@ vma_create(struct drm_i915_gem_object *obj,
 err_unlock:
        spin_unlock(&obj->vma.lock);
 err_vma:
+       i915_vm_put(vm);
        i915_vma_free(vma);
-       return ERR_PTR(-E2BIG);
+       return pos;
 }

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
