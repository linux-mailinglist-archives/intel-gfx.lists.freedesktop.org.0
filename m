Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FF2843F2D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 13:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CDD9113B72;
	Wed, 31 Jan 2024 12:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571C1113B72;
 Wed, 31 Jan 2024 12:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706702974; x=1738238974;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pztTvXxu+Py1s4PVCvqKJ4FsanJ6t2LFmyp50/749VU=;
 b=P/5kgELD/6G9NtUPFPJRmkP69f0Rgy3ATNeZ0KtdzaQBZKkLZiAcOayi
 ZzVbNinQCGw15LHaGzLG3TrNfQnv1LAOfUsRxLxCSrLNAp/BnbRv9aeOR
 fNOgOrhHd/nc2LKzzKDtVOXdH/0wsxQ1v+ILbP5VRVvlL9zyc8suLnqJ6
 fz63IG5WfbKwkGKFEn1kA0UhOIU9/Y4AKho6ZlzPvj8unFqqGSMUgQ7Cm
 hrXUULPaI38ja+zt1jk5awBJsD8lAePo0LCaSq8vLb7K8hp8TZNt3vtw8
 4H9pz7nv8PW7M3TihxUvmK1fuf2n3aGOf0HqHgmoR1X8V+xtufd5PJgAJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="400719188"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="400719188"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 04:09:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822551210"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="822551210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 31 Jan 2024 04:09:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Jan 2024 14:09:30 +0200
Date: Wed, 31 Jan 2024 14:09:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Message-ID: <Zbo4ehqsQjwiSpel@intel.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
 <20240130193652.374270-4-juhapekka.heikkila@gmail.com>
 <ZboxrobbUOShNriY@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZboxrobbUOShNriY@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 31, 2024 at 01:40:30PM +0200, Ville Syrjälä wrote:
> On Tue, Jan 30, 2024 at 09:36:51PM +0200, Juha-Pekka Heikkila wrote:
> > Display engine support ccs only with tile4, prevent other modifiers
> > from using compressed memory.
> > 
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c | 23 +++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > index 722c84a56607..fab0871f0cdf 100644
> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > @@ -10,9 +10,18 @@
> >  #include "intel_fb_pin.h"
> >  #include "xe_ggtt.h"
> >  #include "xe_gt.h"
> > +#include "xe_pat.h"
> >  
> >  #include <drm/ttm/ttm_bo.h>
> >  
> > +static bool is_compressed(const struct drm_framebuffer *fb)
> > +{
> > +	struct xe_bo *bo = intel_fb_obj(fb);
> > +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
> > +
> > +	return xe_pat_index_has_compression(xe, bo->pat_index);
> > +}
> > +
> >  static void
> >  write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
> >  		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> > @@ -283,6 +292,17 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
> >  	if (ret)
> >  		goto err;
> >  
> > +	if (GRAPHICS_VER(xe) >= 20) {
> > +		if (fb->base.modifier != I915_FORMAT_MOD_4_TILED &&
> > +		    is_compressed(&fb->base)) {
> > +			drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
> > +			ttm_bo_unreserve(&bo->ttm);
> > +			ret = -EINVAL;
> > +			goto err;
> > +		}
> > +		bo->has_sealed_pat_index = true;
> 
> That needs to happen when the FB is created, otherwise 
> someone can come in afterwards and still frob the PAT
> and then you're left with a FB that can not be used.

Hmm, and there's already some kind of XE_BO_SCANOUT flag 
that seems to maybe do similar things? But that one seems
to be intended to be set when creating the bo, but then it
also gets abused internally by intel_fb_bo_framebuffer_init().
Seems to be a total mess.

> 
> > +	}
> > +
> >  	if (IS_DGFX(xe))
> >  		ret = xe_bo_migrate(bo, XE_PL_VRAM0);
> >  	else
> > @@ -308,6 +328,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
> >  	ttm_bo_unpin(&bo->ttm);
> >  	ttm_bo_unreserve(&bo->ttm);
> >  err:
> > +	bo->has_sealed_pat_index = false;
> >  	kfree(vma);
> >  	return ERR_PTR(ret);
> >  }
> > @@ -323,6 +344,8 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
> >  		 vma->bo->ggtt_node.start != vma->node.start)
> >  		xe_ggtt_remove_node(ggtt, &vma->node);
> >  
> > +	vma->bo->has_sealed_pat_index = false;
> > +
> >  	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
> >  	ttm_bo_unpin(&vma->bo->ttm);
> >  	ttm_bo_unreserve(&vma->bo->ttm);
> > -- 
> > 2.25.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
