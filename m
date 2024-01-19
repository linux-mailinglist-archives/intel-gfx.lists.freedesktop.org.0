Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1904183292B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 12:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC73E10EA1C;
	Fri, 19 Jan 2024 11:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A8E10EA1C;
 Fri, 19 Jan 2024 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705664923; x=1737200923;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xBkH5hHmuFX1Axm6Af3Bqjx93zZ4FK4wrFp87YJx5oI=;
 b=jjMZDrRZkRp16ffUbvCbkUpUO8H/LJagx/u4PhGwn4SnmWEZaJbgDQHG
 3KJ4A7vi508taGz6KIEbbsdGTQLNKXHOZzvPutL2UAWj92xxcreBlL/ix
 KJRzBVyxi9VaEIICVKMtxGror9To8iCYWr9o/vLh+xbO7/9eC9aiDoHa8
 3oku10qejixUSOttxqjUCKytlYivSMzxE6j83s59IGFp8vPJ8dMdz//Ap
 k+9YYvtVuat1riWn0LO/7IPxog+L+/vGHi2otBHyESvEyfTURIVtFsP3c
 wOS+g9mk9xLh8r4yTcJvazjO2Syzs0/aE/3YHGTp1i99nnlF7CzThB0jm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19309746"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="19309746"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 03:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="761123724"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="761123724"
Received: from vstill-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.223])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 03:48:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
In-Reply-To: <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
Date: Fri, 19 Jan 2024 13:48:36 +0200
Message-ID: <875xzppmqz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 18 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> Display engine support ccs only with tile4, prevent other modifiers
> from using compressed memory.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..579badb8c69e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -13,6 +13,16 @@
>  
>  #include <drm/ttm/ttm_bo.h>
>  
> +static bool is_compressed(const struct drm_framebuffer *fb)
> +{
> +	struct xe_bo *bo = intel_fb_obj(fb);
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
> +	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
> +	u16 pat_index_compressed = tile_to_xe(ggtt->tile)->pat.idx[XE_CACHE_WT];
> +
> +	return (bo->pat_index == pat_index_compressed);
> +}
> +
>  static void
>  write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>  		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> @@ -349,12 +359,19 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
>  int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  {
>  	struct drm_framebuffer *fb = plane_state->hw.fb;
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
>  	struct xe_bo *bo = intel_fb_obj(fb);
>  	struct i915_vma *vma;
>  
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_SCANOUT_BIT));
>  
> +	if (GRAPHICS_VER(xe) >= 20 && fb->modifier != I915_FORMAT_MOD_4_TILED &&

Is GRAPHICS_VER correct or should that be a DISPLAY_VER instead?

> +	    is_compressed(fb)) {
> +		drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
> +		return -EINVAL;
> +	}
> +
>  	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);

-- 
Jani Nikula, Intel
