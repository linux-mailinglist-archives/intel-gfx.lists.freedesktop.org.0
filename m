Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D598C832C3B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 16:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D70A10E1B9;
	Fri, 19 Jan 2024 15:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3397110E1B9;
 Fri, 19 Jan 2024 15:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705677782; x=1737213782;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=eXi/jb8QRk0avToEX29WKW4ObJmGFcuFxsnrJVnf5i8=;
 b=aQZ0wO/rHWc4ALQ7CtIWKtyIyePnho1nJQLehDY7Jg9NLZNCxjMchH3t
 LqD6IvhD46Sn5ik7+xPHYhamo3vXswwMELLIYmD9Izq389ssAFeDC7vI4
 +RahciA0QyvAmxyoblRJ3oTdyXqXqxckhF4V9HiuSsXXRrK7C18YYC6XN
 L79MC78TKCxLarjd7eh3YGVDiTqOyoQ+ikcMvfirteLRC5RBPewAruTy5
 f0rEg3UL7zpJv9I0LE7qIqbOh6hL3bahQoZ6cGjbrt1UX44NI5EbbTunC
 fTOO7LbaFNzgWodL8faCHN1YNDr5zvFIQwwA7eNgfKtBYqO8lTKNXsUNC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="7468634"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="7468634"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 07:23:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="610354"
Received: from amcgaura-mobl.ger.corp.intel.com (HELO [10.252.18.221])
 ([10.252.18.221])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 07:23:01 -0800
Message-ID: <5dae781f-83a3-454f-ad6a-e32774b0b2b2@intel.com>
Date: Fri, 19 Jan 2024 15:22:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/xe/xe2: Limit ccs framebuffers to tile4 only
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240118152745.162960-4-juhapekka.heikkila@gmail.com>
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

On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
> Display engine support ccs only with tile4, prevent other modifiers
> from using compressed memory.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>   drivers/gpu/drm/xe/display/xe_fb_pin.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..579badb8c69e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -13,6 +13,16 @@
>   
>   #include <drm/ttm/ttm_bo.h>
>   
> +static bool is_compressed(const struct drm_framebuffer *fb)
> +{
> +	struct xe_bo *bo = intel_fb_obj(fb);
> +	struct xe_device *xe = to_xe_device(to_intel_framebuffer(fb)->base.dev);
> +	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
> +	u16 pat_index_compressed = tile_to_xe(ggtt->tile)->pat.idx[XE_CACHE_WT];

Why just this index? There seems to be various indexes that turn on 
compression. How about annotating the pat index table and then have a 
helper like xe_pat_index_has_compression(xe, pat_index)?

@@ -104,7 +104,8 @@ static const struct xe_pat_table_entry 
xelpg_pat_table[] = {
                         REG_FIELD_PREP(XE2_L3_POLICY, l3_policy) | \
                         REG_FIELD_PREP(XE2_L4_POLICY, l4_policy) | \
                         REG_FIELD_PREP(XE2_COH_MODE, __coh_mode), \
-               .coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : 
XE_COH_NONE \
+               .coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : 
XE_COH_NONE, \
+               .compressed = comp_en \
         }

  static const struct xe_pat_table_entry xe2_pat_table[] = {
@@ -148,6 +149,12 @@ u16 xe_pat_index_get_coh_mode(struct xe_device *xe, 
u16 pat_index)
         return xe->pat.table[pat_index].coh_mode;
  }

+bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index)
+{
+       WARN_ON(pat_index >= xe->pat.n_entries);
+       return xe->pat.table[pat_index].compressed;
+}
+
  static void program_pat(struct xe_gt *gt, const struct 
xe_pat_table_entry table[],
                         int n_entries)
  {
diff --git a/drivers/gpu/drm/xe/xe_pat.h b/drivers/gpu/drm/xe/xe_pat.h
index fa0dfbe525cd..37666ba1aec4 100644
--- a/drivers/gpu/drm/xe/xe_pat.h
+++ b/drivers/gpu/drm/xe/xe_pat.h
@@ -29,6 +29,7 @@ struct xe_pat_table_entry {
  #define XE_COH_NONE          1
  #define XE_COH_AT_LEAST_1WAY 2
         u16 coh_mode;
+       bool compressed;
  };

  /**
@@ -58,4 +59,6 @@ void xe_pat_dump(struct xe_gt *gt, struct drm_printer *p);
   */
  u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index);

+bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index);

> +
> +	return (bo->pat_index == pat_index_compressed);
> +}
> +
>   static void
>   write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>   		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> @@ -349,12 +359,19 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
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
> +	if (GRAPHICS_VER(xe) >= 20 && fb->modifier != I915_FORMAT_MOD_4_TILED &&
> +	    is_compressed(fb)) {
> +		drm_warn(&xe->drm, "Cannot create ccs framebuffer with other than tile4 mofifier\n");
> +		return -EINVAL;
> +	}
> +
>   	vma = __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gtt);
>   	if (IS_ERR(vma))
>   		return PTR_ERR(vma);
