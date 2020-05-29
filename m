Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7A1E802D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF01A6E915;
	Fri, 29 May 2020 14:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F25B6E915
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 14:26:44 +0000 (UTC)
IronPort-SDR: DRJ8ObbQruoCTAO8L1dPY0mCkHIjLZcRD6tKbHSmcYQyP7eaIWzGvKZo961K7EeIVaUbdUvcVh
 Iq19CvxuqrbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 07:26:43 -0700
IronPort-SDR: Ztm5646cNP8uRpgfyD4Qk+r0m04BsvJmB4wOtmU69GiBZlYj9Ot+ryntxBsRLXwSWiH8rKCz29
 m21mv9vCz9XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,448,1583222400"; d="scan'208";a="292392385"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 29 May 2020 07:26:42 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5C0525C2C45; Fri, 29 May 2020 17:24:17 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200529130019.17977-1-chris@chris-wilson.co.uk>
References: <20200529130019.17977-1-chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 17:24:17 +0300
Message-ID: <87y2pastta.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Discard a misplaced GGTT vma
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Across the many users of the GGTT vma (internal objects, mmapings,
> display etc), we may end up with conflicting requirements for the
> placement. Currently, we try to resolve the conflict by unbinding the
> vma and rebinding it to match the new constraints; over time we will end
> up with a GGTT that matches the most strict constraints over all
> concurrent users. However, this causes a problem if the vma is currently
> in use as we must wait until it is idle before moving it. But there is
> no restriction on the number of views we may (apart from the limited

we may...have/impose?
-Mika

> size of the GGTT itself), and so if the active vma does not meet our
> requirements, try and build a new one!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_gem.c | 44 +++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 0cbcb9f54e7d..29a4594ddef2 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -933,6 +933,44 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
>  	}
>  }
>  
> +static bool
> +discard_ggtt_vma(struct i915_vma *vma, const struct i915_ggtt_view *view)
> +{
> +	const struct i915_ggtt_view discard = {
> +		.type = I915_GGTT_VIEW_PARTIAL,
> +	};
> +	struct drm_i915_gem_object *obj = vma->obj;
> +
> +	spin_lock(&obj->vma.lock);
> +	if (i915_vma_compare(vma, vma->vm, &discard)) {
> +		struct rb_node *rb, **p;
> +
> +		rb_erase(&vma->obj_node, &obj->vma.tree);
> +		vma->ggtt_view = discard;
> +
> +		rb = NULL;
> +		p = &obj->vma.tree.rb_node;
> +		while (*p) {
> +			struct i915_vma *pos;
> +			long cmp;
> +
> +			rb = *p;
> +			pos = rb_entry(rb, struct i915_vma, obj_node);
> +
> +			cmp = i915_vma_compare(pos, vma->vm, &discard);
> +			if (cmp < 0)
> +				p = &rb->rb_right;
> +			else
> +				p = &rb->rb_left;
> +		}
> +		rb_link_node(&vma->obj_node, rb, p);
> +		rb_insert_color(&vma->obj_node, &obj->vma.tree);
> +	}
> +	spin_unlock(&obj->vma.lock);
> +
> +	return i915_vma_compare(vma, vma->vm, view);
> +}
> +
>  struct i915_vma *
>  i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>  			 const struct i915_ggtt_view *view,
> @@ -979,6 +1017,7 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>  			return ERR_PTR(-ENOSPC);
>  	}
>  
> +new_vma:
>  	vma = i915_vma_instance(obj, &ggtt->vm, view);
>  	if (IS_ERR(vma))
>  		return vma;
> @@ -993,6 +1032,11 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>  				return ERR_PTR(-ENOSPC);
>  		}
>  
> +		if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma)) {
> +			if (discard_ggtt_vma(vma, view))
> +				goto new_vma;
> +		}
> +
>  		ret = i915_vma_unbind(vma);
>  		if (ret)
>  			return ERR_PTR(ret);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
