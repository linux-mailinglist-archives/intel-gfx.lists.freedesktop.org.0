Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A05400B38
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 13:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA8D6E4DD;
	Sat,  4 Sep 2021 11:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F54D6E4DD
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Sep 2021 11:54:39 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id q3so2598523edt.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Sep 2021 04:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=s4orkzHXPf8qBoVv/bTvrU5i3D41aOxAGh9EgcFTvJ4=;
 b=KMAggYRl5ZTKtE1AGeHKV045QWFTqJYIWPe3dBNvzFk67TAjqoHFtiZ4s4QzFM6zgs
 sHoG88Cj9a66Tlt4a6AqGcrgFFUvvvZRvimF9A+wat/yakd9tdBxI3KKaH888cjcvW+s
 Vu5PdHk7WBN3XUOjWofhWrnZNSbFCOUQCwNtwFOwShaQmJiLt+JjqCB6wr+BxJRzF9iJ
 f3v0tiv9MH3tXWPRRJnB40D9KiNrcf8kCglzrPHKEQIohDM4JQ7orsdHpQtAAUS0+NTY
 GbDyuENS59Ws+3lyarGCg5ynm5gshUwziZFiV8wUjhN+nd9yNLr4c023On8mmgoczL7G
 4N6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=s4orkzHXPf8qBoVv/bTvrU5i3D41aOxAGh9EgcFTvJ4=;
 b=CNwOJgtUjRtYhPzR9jSaya+jR6FgAnocbycXeh9Yuw6aUs6Immfq+xRiGAL9p7qlZm
 CQ7d67uz3RCv9Fea06KFE8MAaSTr8i2l6cscjVENFexo7R8ye2eEznaF/74A/AxBD0Qw
 rrAeoLtOip+zF2NI6upwxfaVC1Ok9T6jmqBETyeg+NGhw4dTqCelV9DL2mvwZi0ebnQW
 4vEdUZgZz8NulmsVT3IC+S3TS2SN/Wa3OKi6dPjcg2OEkBpmwVb+s+HpZfU6DUobiMwa
 AML42tMriI5iIyGrDYEpTP4Typ4j8KxiFw//5JNhpDwZEpiedtR+MDrF9gl9MvEl3DqO
 +wYQ==
X-Gm-Message-State: AOAM533gHGvwYOuJOQxm2TOXgZl9Rvk2xvXEMMVpczGYr9ofBm8NMGIF
 5H7BnP7eGLf7Ro/RlVJ6wIAnXopPyUSKKsMa
X-Google-Smtp-Source: ABdhPJwEw3gtsJdR3quwZQM+bEtPy33i5binLkq3uv/oILdoGwqt5Im7inKv92xmRHI8/TUHsLkyXQ==
X-Received: by 2002:aa7:c4ce:: with SMTP id p14mr3797425edr.175.1630756477515; 
 Sat, 04 Sep 2021 04:54:37 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.82])
 by smtp.googlemail.com with ESMTPSA id c7sm1213449ede.21.2021.09.04.04.54.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Sep 2021 04:54:37 -0700 (PDT)
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210827150955.3343520-1-imre.deak@intel.com>
 <20210827150955.3343520-6-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <227bdbc6-1ffe-7486-af69-df344dd204dd@gmail.com>
Date: Sat, 4 Sep 2021 14:54:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210827150955.3343520-6-imre.deak@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/adlp: Add support for
 remapping CCS FBs
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

other than that one question for this patch and one missing static 
declaration what kernel test bot said about gen12_ccs_aux_stride(..) 
changes look ok to me.

with those checked this series is

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 27.8.2021 18.09, Imre Deak wrote:
> Add support for remapping CCS FBs on ADL-P to remove the restriction
> of the power-of-two sized stride and the 2MB surface offset alignment
> for these FBs.
> 
> We can only remap the tiles on the main surface, not the tiles on the
> CCS surface, so userspace has to generate the CCS surface aligning to
> the POT size padded main surface stride (by programming the AUX
> pagetable accordingly). For the required AUX pagetable setup, this
> requires that either the main surface stride is 8 tiles or that the
> stride is 16 tiles aligned (= 64 kbytes, the area mapped by one AUX
> PTE).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
>   .../drm/i915/display/intel_display_types.h    |  2 -
>   drivers/gpu/drm/i915/display/intel_fb.c       | 78 +++++++++++--------
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 28 ++++++-
>   drivers/gpu/drm/i915/i915_vma_types.h         |  7 +-
>   5 files changed, 79 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4d35f3b087d7e..3e64fda072789 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -892,8 +892,11 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
>   	unsigned int size = 0;
>   	int i;
>   
> -	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++)
> +	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
> +		if (rem_info->plane_alignment)
> +			size = ALIGN(size, rem_info->plane_alignment);
>   		size += rem_info->plane[i].dst_stride * rem_info->plane[i].height;

Would above size alignment need to happen after size has been added?

> +	}
>   
>   	return size;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c7bcf9183447b..e97741c2f4e32 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -103,8 +103,6 @@ struct intel_fb_view {
>   	 * in the rotated and remapped GTT view all no-CCS formats (up to 2
>   	 * color planes) are supported.
>   	 *
> -	 * TODO: add support for CCS formats in the remapped GTT view.
> -	 *
>   	 * The view information shared by all FB color planes in the FB,
>   	 * like dst x/y and src/dst width, is stored separately in
>   	 * intel_plane_state.
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 83262cb347196..bcca78c84290b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -356,15 +356,29 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
>   
>   static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_plane, int *w, int *h)
>   {
> +	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>   	int main_plane = is_ccs_plane(&fb->base, color_plane) ?
>   			 skl_ccs_to_main_plane(&fb->base, color_plane) : 0;
> +	unsigned int main_width = fb->base.width;
> +	unsigned int main_height = fb->base.height;
>   	int main_hsub, main_vsub;
>   	int hsub, vsub;
>   
> +	/*
> +	 * On ADL-P the CCS AUX surface layout always aligns with the
> +	 * power-of-two aligned main surface stride. The main surface
> +	 * stride in the allocated FB object may not be power-of-two
> +	 * sized, in which case it is auto-padded to the POT size.
> +	 */
> +	if (IS_ALDERLAKE_P(i915) && is_ccs_plane(&fb->base, color_plane))
> +		main_width = gen12_aligned_scanout_stride(fb, 0) /
> +			     fb->base.format->cpp[0];
> +
>   	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, &fb->base, main_plane);
>   	intel_fb_plane_get_subsampling(&hsub, &vsub, &fb->base, color_plane);
> -	*w = fb->base.width / main_hsub / hsub;
> -	*h = fb->base.height / main_vsub / vsub;
> +
> +	*w = main_width / main_hsub / hsub;
> +	*h = main_height / main_vsub / vsub;
>   }
>   
>   static u32 intel_adjust_tile_offset(int *x, int *y,
> @@ -546,16 +560,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>   	unsigned int height;
>   	u32 alignment;
>   
> -	/*
> -	 * All DPT color planes must be 512*4k aligned (the amount mapped by a
> -	 * single DPT page). For ADL_P CCS FBs this only works by requiring
> -	 * the allocated offsets to be 2MB aligned.  Once supoort to remap
> -	 * such FBs is added we can remove this requirement, as then all the
> -	 * planes can be remapped to an aligned offset.
> -	 */
> -	if (IS_ALDERLAKE_P(i915) && is_ccs_modifier(fb->modifier))
> -		alignment = 512 * 4096;
> -	else if (DISPLAY_VER(i915) >= 12 &&
> +	if (DISPLAY_VER(i915) >= 12 &&
>   		 is_semiplanar_uv_plane(fb, color_plane))
>   		alignment = intel_tile_row_size(fb, color_plane);
>   	else if (fb->modifier != DRM_FORMAT_MOD_LINEAR)
> @@ -687,8 +692,7 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
>   {
>   	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>   
> -	return IS_ALDERLAKE_P(i915) && fb->base.modifier != DRM_FORMAT_MOD_LINEAR &&
> -	       !is_ccs_modifier(fb->base.modifier);
> +	return IS_ALDERLAKE_P(i915) && fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
>   }
>   
>   static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
> @@ -808,14 +812,16 @@ static unsigned int
>   plane_view_dst_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
>   			    unsigned int pitch_tiles)
>   {
> -	if (intel_fb_needs_pot_stride_remap(fb))
> +	if (intel_fb_needs_pot_stride_remap(fb)) {
> +		unsigned int min_stride = is_ccs_plane(&fb->base, color_plane) ? 2 : 8;
>   		/*
>   		 * ADL_P, the only platform needing a POT stride has a minimum
> -		 * of 8 stride tiles.
> +		 * of 8 main surface and 2 CCS AUX stride tiles.
>   		 */
> -		return roundup_pow_of_two(max(pitch_tiles, 8u));
> -	else
> +		return roundup_pow_of_two(max(pitch_tiles, min_stride));
> +	} else {
>   		return pitch_tiles;
> +	}
>   }
>   
>   static unsigned int
> @@ -851,13 +857,22 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
>   	unsigned int tile_height = dims->tile_height;
>   	unsigned int tile_size = intel_tile_size(i915);
>   	struct drm_rect r;
> -	u32 size;
> +	u32 size = 0;
>   
>   	assign_chk_ovf(i915, remap_info->offset, obj_offset);
>   	assign_chk_ovf(i915, remap_info->src_stride, plane_view_src_stride_tiles(fb, color_plane, dims));
>   	assign_chk_ovf(i915, remap_info->width, plane_view_width_tiles(fb, color_plane, dims, x));
>   	assign_chk_ovf(i915, remap_info->height, plane_view_height_tiles(fb, color_plane, dims, y));
>   
> +	if (IS_ALDERLAKE_P(i915)) {
> +		unsigned int alignment = SZ_2M / PAGE_SIZE;
> +		unsigned int aligned_offset = ALIGN(gtt_offset, alignment);
> +
> +		view->gtt.remapped.plane_alignment = alignment;
> +		size += aligned_offset - gtt_offset;
> +		gtt_offset = aligned_offset;
> +	}
> +
>   	if (view->gtt.type == I915_GGTT_VIEW_ROTATED) {
>   		check_array_bounds(i915, view->gtt.rotated.plane, color_plane);
>   
> @@ -876,7 +891,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
>   
>   		color_plane_info->stride = remap_info->dst_stride * tile_height;
>   
> -		size = remap_info->dst_stride * remap_info->width;
> +		size += remap_info->dst_stride * remap_info->width;
>   
>   		/* rotate the tile dimensions to match the GTT view */
>   		swap(tile_width, tile_height);
> @@ -894,7 +909,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
>   		color_plane_info->stride = remap_info->dst_stride * tile_width *
>   					   fb->base.format->cpp[color_plane];
>   
> -		size = remap_info->dst_stride * remap_info->height;
> +		size += remap_info->dst_stride * remap_info->height;
>   	}
>   
>   	/*
> @@ -1157,11 +1172,19 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
>   
>   	tile_width = intel_tile_width_bytes(fb, color_plane);
>   	if (is_ccs_modifier(fb->modifier)) {
> +		/*
> +		 * On ADL-P the stride must be either 8 tiles or a stride
> +		 * that is aligned to 16 tiles, required by the 16 tiles =
> +		 * 64 kbyte CCS AUX PTE granularity, allowing CCS FBs to be
> +		 * remapped.
> +		 */
> +		if (IS_ALDERLAKE_P(dev_priv))
> +			tile_width *= fb->pitches[0] <= tile_width * 8 ? 8 : 16;
>   		/*
>   		 * On TGL the surface stride must be 4 tile aligned, mapped by
>   		 * one 64 byte cacheline on the CCS AUX surface.
>   		 */
> -		if (DISPLAY_VER(dev_priv) >= 12)
> +		else if (DISPLAY_VER(dev_priv) >= 12)
>   			tile_width *= 4;
>   		/*
>   		 * Display WA #0531: skl,bxt,kbl,glk
> @@ -1415,17 +1438,6 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>   			}
>   		}
>   
> -		/* TODO: Add POT stride remapping support for CCS formats as well. */
> -		if (IS_ALDERLAKE_P(dev_priv) &&
> -		    mode_cmd->modifier[i] != DRM_FORMAT_MOD_LINEAR &&
> -		    !intel_fb_needs_pot_stride_remap(intel_fb) &&
> -		    !is_power_of_2(mode_cmd->pitches[i])) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "plane %d pitch (%d) must be power of two for tiled buffers\n",
> -				    i, mode_cmd->pitches[i]);
> -			goto err;
> -		}
> -
>   		fb->obj[i] = &obj->base;
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index de3ac58fceec3..9ba58d708e8ff 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1373,13 +1373,28 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
>   }
>   
>   static struct scatterlist *
> -remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
> +remap_pages(struct drm_i915_gem_object *obj,
> +	    unsigned int offset, unsigned int alignment_pad,
>   	    unsigned int width, unsigned int height,
>   	    unsigned int src_stride, unsigned int dst_stride,
>   	    struct sg_table *st, struct scatterlist *sg)
>   {
>   	unsigned int row;
>   
> +	if (alignment_pad) {
> +		st->nents++;
> +
> +		/*
> +		 * The DE ignores the PTEs for the padding tiles, the sg entry
> +		 * here is just a convenience to indicate how many padding PTEs
> +		 * to insert at this spot.
> +		 */
> +		sg_set_page(sg, NULL, alignment_pad * 4096, 0);
> +		sg_dma_address(sg) = 0;
> +		sg_dma_len(sg) = alignment_pad * 4096;
> +		sg = sg_next(sg);
> +	}
> +
>   	for (row = 0; row < height; row++) {
>   		unsigned int left = width * I915_GTT_PAGE_SIZE;
>   
> @@ -1439,6 +1454,7 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	struct sg_table *st;
>   	struct scatterlist *sg;
> +	unsigned int gtt_offset = 0;
>   	int ret = -ENOMEM;
>   	int i;
>   
> @@ -1455,10 +1471,18 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
>   	sg = st->sgl;
>   
>   	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
> -		sg = remap_pages(obj, rem_info->plane[i].offset,
> +		unsigned int alignment_pad = 0;
> +
> +		if (rem_info->plane_alignment)
> +			alignment_pad = ALIGN(gtt_offset, rem_info->plane_alignment) - gtt_offset;
> +
> +		sg = remap_pages(obj,
> +				 rem_info->plane[i].offset, alignment_pad,
>   				 rem_info->plane[i].width, rem_info->plane[i].height,
>   				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
>   				 st, sg);
> +
> +		gtt_offset += alignment_pad + rem_info->plane[i].dst_stride * rem_info->plane[i].height;
>   	}
>   
>   	i915_sg_trim(st);
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> index 995b502d7e5d9..80e93bf00f2e5 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -105,8 +105,9 @@ struct intel_remapped_plane_info {
>   } __packed;
>   
>   struct intel_remapped_info {
> -	struct intel_remapped_plane_info plane[2];
> -	u32 unused_mbz;
> +	struct intel_remapped_plane_info plane[4];
> +	/* in gtt pages */
> +	u32 plane_alignment;
>   } __packed;
>   
>   struct intel_rotation_info {
> @@ -129,7 +130,7 @@ static inline void assert_i915_gem_gtt_types(void)
>   {
>   	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
>   	BUILD_BUG_ON(sizeof(struct intel_partial_info) != sizeof(u64) + sizeof(unsigned int));
> -	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 3 * sizeof(u32) + 8 * sizeof(u16));
> +	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 5 * sizeof(u32) + 16 * sizeof(u16));
>   
>   	/* Check that rotation/remapped shares offsets for simplicity */
>   	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=
> 

