Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61BC843EA2
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 12:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F6F10F98A;
	Wed, 31 Jan 2024 11:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F41610F98A;
 Wed, 31 Jan 2024 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706701234; x=1738237234;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v9iH/WFYjvV38+OO+RYqWNMJnKj2OjN+TzHDQbFMi1M=;
 b=GAgIhZdMyOeFta8cvq7IcjCpl0j329JWlD2qtmm/YWcHV0sBu2HlgEyX
 NS29fgovl6+dRAhyOQMmkAz4QzjwS3n23PU2z/12qV1SEZddAyAkUXj6X
 AOXgvz7+qCaiICkFBZ557oWBTD03bSXBGEzEhY9H6gWRL/9nVYOOIvym+
 ZF8R/MScpHqPim2RCgxZh3rYy7DK2/XtofdD95YeqhIF0CcGEx7lFG8Od
 rrzYkZVgbqXSJoES+V7hg3RIiIYqJaGplyTfX85LFhXdICLK5BA1qXD24
 ij11xiifbQWu0LdJVn3/EH6KyAMLyRVW5h91QcWgj9H5uWMrW7eZwHIEE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402426038"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="402426038"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 03:40:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822543147"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="822543147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 31 Jan 2024 03:40:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Jan 2024 13:40:30 +0200
Date: Wed, 31 Jan 2024 13:40:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Message-ID: <ZboxrobbUOShNriY@intel.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
 <20240130193652.374270-4-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240130193652.374270-4-juhapekka.heikkila@gmail.com>
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

On Tue, Jan 30, 2024 at 09:36:51PM +0200, Juha-Pekka Heikkila wrote:
> Display engine support ccs only with tile4, prevent other modifiers
> from using compressed memory.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..fab0871f0cdf 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -10,9 +10,18 @@
>  #include "intel_fb_pin.h"
>  #include "xe_ggtt.h"
>  #include "xe_gt.h"
> +#include "xe_pat.h"
>  
>  #include <drm/ttm/ttm_bo.h>
>  
> +static bool is_compressed(const struct drm_framebuffer *fb)
> +{
> +	struct xe_bo *bo = intel_fb_obj(fb);
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
> +
> +	return xe_pat_index_has_compression(xe, bo->pat_index);
> +}
> +
>  static void
>  write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>  		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> @@ -283,6 +292,17 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
>  	if (ret)
>  		goto err;
>  
> +	if (GRAPHICS_VER(xe) >= 20) {
> +		if (fb->base.modifier != I915_FORMAT_MOD_4_TILED &&
> +		    is_compressed(&fb->base)) {
> +			drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
> +			ttm_bo_unreserve(&bo->ttm);
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +		bo->has_sealed_pat_index = true;

That needs to happen when the FB is created, otherwise 
someone can come in afterwards and still frob the PAT
and then you're left with a FB that can not be used.

> +	}
> +
>  	if (IS_DGFX(xe))
>  		ret = xe_bo_migrate(bo, XE_PL_VRAM0);
>  	else
> @@ -308,6 +328,7 @@ static struct i915_vma *__xe_pin_fb_vma(struct intel_framebuffer *fb,
>  	ttm_bo_unpin(&bo->ttm);
>  	ttm_bo_unreserve(&bo->ttm);
>  err:
> +	bo->has_sealed_pat_index = false;
>  	kfree(vma);
>  	return ERR_PTR(ret);
>  }
> @@ -323,6 +344,8 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  		 vma->bo->ggtt_node.start != vma->node.start)
>  		xe_ggtt_remove_node(ggtt, &vma->node);
>  
> +	vma->bo->has_sealed_pat_index = false;
> +
>  	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
>  	ttm_bo_unpin(&vma->bo->ttm);
>  	ttm_bo_unreserve(&vma->bo->ttm);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
