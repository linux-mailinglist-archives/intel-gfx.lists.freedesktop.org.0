Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A6684048A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 13:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C123310E9E3;
	Mon, 29 Jan 2024 12:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DAA10E9E3;
 Mon, 29 Jan 2024 12:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706529772; x=1738065772;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xbFG2L2uhZV1INGbqdNcm+/GKkOpqKm5MMzsS1dS8nI=;
 b=Zn/nQJQdPn3274w7Dror38CQP1kBqWrkmQiSLypME/c9Yq5YEfiUmjj9
 IlngkYvGshhT7ggrXPvozVC07PDDclKsCCJjNHxY+IeY7COre5VpjvUF8
 deCB3rz3QL86GDn9De3qBoVWrosKbqfsON8pHdPG7lHgEzcuUyfh1c99g
 qtTqg9ZglHsByNUg14neLgup/fWV887py1i5Gx1ulz3boobgAMpI5MFK5
 ycnW4JZqnX7lAfCL9kQDGBit/6jbWcOCTtAEbZ0HnAimlnJIo6OimuzQy
 oWCrjJulcPn+A4LzZ59kvsGuk+Dn4kmGSO3e/rCI2Bv9Txj52WuDSGVCH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="10313386"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10313386"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 04:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; 
   d="scan'208";a="3353183"
Received: from cbowler-mobl.ger.corp.intel.com (HELO [10.252.19.51])
 ([10.252.19.51])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 04:02:49 -0800
Message-ID: <1b767441-0ee2-4619-9af0-dd979923b411@intel.com>
Date: Mon, 29 Jan 2024 12:02:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/xe/xe2: Limit ccs framebuffers to tile4 only
Content-Language: en-GB
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
 <20240126210807.320671-5-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240126210807.320671-5-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26/01/2024 21:08, Juha-Pekka Heikkila wrote:
> Display engine support ccs only with tile4, prevent other modifiers
> from using compressed memory. Store pin time pat index to xe_bo.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..b2930a226f54 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -10,9 +10,18 @@
>   #include "intel_fb_pin.h"
>   #include "xe_ggtt.h"
>   #include "xe_gt.h"
> +#include "xe_pat.h"
>   
>   #include <drm/ttm/ttm_bo.h>
>   
> +static bool is_compressed(const struct drm_framebuffer *fb)
> +{
> +	struct xe_bo *bo = intel_fb_obj(fb);
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
> +
> +	return xe_pat_index_has_compression(xe, bo->pat_index);
> +}
> +
>   static void
>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>   		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> @@ -349,12 +358,22 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
>   int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>   {
>   	struct drm_framebuffer *fb = plane_state->hw.fb;
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
>   	struct xe_bo *bo = intel_fb_obj(fb);
>   	struct i915_vma *vma;
>   
>   	/* We reject creating !SCANOUT fb's, so this is weird.. */
>   	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>   
> +	if (GRAPHICS_VER(xe) >= 20) {
> +		if (fb->modifier != I915_FORMAT_MOD_4_TILED &&
> +		    is_compressed(fb)) {
> +			drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
> +			return -EINVAL;
> +		}
> +		bo->pat_index_scanout = bo->pat_index;
> +	}

I think this needs to be moved into __xe_pin_fb_vma() after acquiring 
the object lock. Also not sure what prevents vm_bind appearing after we 
drop the lock? Do we need to prevent modifications until the end of 
_xe_unpin_fb_vma()?

> +
>   	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
>   	if (IS_ERR(vma))
>   		return PTR_ERR(vma);
