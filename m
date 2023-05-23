Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EACE70D589
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 09:45:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF8B10E3D5;
	Tue, 23 May 2023 07:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F38A10E3D5;
 Tue, 23 May 2023 07:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684827947; x=1716363947;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+XuNquU2BT5kI1sDY5NPBd2Jyi3UOJ9DUxvALVdGnbs=;
 b=MKWJFL/JBLGYvnLrSlkS6P/CbUp3CHr4UIsNzmP43RA2XWOa0PYrdBJk
 fit4BgwDihVCBNDHQVNcUXMxQnUnombKaoDTRNvf9i/ECeOBkYVLtNk/J
 DMOvkq5ExsmFMl/HKr2XvDFClXtUzN+UIwCbm63UR2l3deaJqbJO9ywAe
 dD+yUzH8sx/ghpiWT4W/PuP01Lob7OYcldYzVnLQq44Lah0u3DdavU/7p
 khS/utBaFOHKNOF27/DzgeeeAYs8YTcYQVVujDtiFZmTFfzJ2ph+QjAJa
 frp2J/gf2VIaNAjOvVfRHpFb4uaZPsBVyOgWC9tAW8W9IYLsXR5bcor2y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="355519135"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="355519135"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 00:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="697960010"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="697960010"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.10])
 ([10.213.31.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 00:45:46 -0700
Message-ID: <5f0c56fb-7838-0ff1-ef40-8436da950eb1@intel.com>
Date: Tue, 23 May 2023 09:45:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-3-matthew.d.roper@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230522202314.3939499-3-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915: Convert
 INTEL_INFO()->display to a pointer
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22.05.2023 22:23, Matt Roper wrote:
> Rather than embeddeding the display's device info within the main device
> info structure, just provide a pointer to the display-specific
> structure.  This is in preparation for moving the display device info
> definitions into the display code itself and for eventually allowing the
> pointer to be assigned at runtime on platforms that use GMD_ID for
> device identification.
> 
> In the future, this will also eventually allow the same display device
> info structures to be used outside the current i915 code (e.g., from the
> Xe driver).
> 
> v2:
>   - Move introduction of DISPLAY_INFO() to this patch.  (Andrzej)
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c    |  31 +-
>   drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
>   drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>   .../drm/i915/display/intel_display_power.c    |   6 +-
>   .../drm/i915/display/intel_display_reg_defs.h |  14 +-
>   drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
>   drivers/gpu/drm/i915/display/intel_hti.c      |   2 +-
>   drivers/gpu/drm/i915/display/skl_watermark.c  |   8 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  29 +-
>   drivers/gpu/drm/i915/i915_pci.c               | 579 ++++++++++++------
>   drivers/gpu/drm/i915/intel_device_info.c      |   6 +-
>   drivers/gpu/drm/i915/intel_device_info.h      |   2 +-
>   12 files changed, 452 insertions(+), 231 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 07f1afe1d406..744b3a4ec99a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1824,14 +1824,14 @@ static u32 intel_gamma_lut_tests(const struct intel_crtc_state *crtc_state)
>   	if (lut_is_legacy(gamma_lut))
>   		return 0;
>   
> -	return INTEL_INFO(i915)->display.color.gamma_lut_tests;
> +	return DISPLAY_INFO(i915)->color.gamma_lut_tests;
>   }
>   
>   static u32 intel_degamma_lut_tests(const struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	return INTEL_INFO(i915)->display.color.degamma_lut_tests;
> +	return DISPLAY_INFO(i915)->color.degamma_lut_tests;
>   }
>   
>   static int intel_gamma_lut_size(const struct intel_crtc_state *crtc_state)
> @@ -1842,14 +1842,14 @@ static int intel_gamma_lut_size(const struct intel_crtc_state *crtc_state)
>   	if (lut_is_legacy(gamma_lut))
>   		return LEGACY_LUT_LENGTH;
>   
> -	return INTEL_INFO(i915)->display.color.gamma_lut_size;
> +	return DISPLAY_INFO(i915)->color.gamma_lut_size;
>   }
>   
>   static u32 intel_degamma_lut_size(const struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	return INTEL_INFO(i915)->display.color.degamma_lut_size;
> +	return DISPLAY_INFO(i915)->color.degamma_lut_size;
>   }
>   
>   static int check_lut_size(const struct drm_property_blob *lut, int expected)
> @@ -2321,7 +2321,7 @@ static int glk_assign_luts(struct intel_crtc_state *crtc_state)
>   		struct drm_property_blob *gamma_lut;
>   
>   		gamma_lut = create_resized_lut(i915, crtc_state->hw.gamma_lut,
> -					       INTEL_INFO(i915)->display.color.degamma_lut_size,
> +					       DISPLAY_INFO(i915)->color.degamma_lut_size,
>   					       false);
>   		if (IS_ERR(gamma_lut))
>   			return PTR_ERR(gamma_lut);
> @@ -2855,7 +2855,7 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
>   static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	u32 lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	u32 lut_size = DISPLAY_INFO(dev_priv)->color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -2904,7 +2904,7 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
>   static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.gamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(dev_priv)->color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -2954,7 +2954,7 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
>   static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(dev_priv)->color.degamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -2980,7 +2980,7 @@ static struct drm_property_blob *chv_read_cgm_degamma(struct intel_crtc *crtc)
>   static struct drm_property_blob *chv_read_cgm_gamma(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -3044,7 +3044,7 @@ static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>   static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -3228,7 +3228,7 @@ static void bdw_read_luts(struct intel_crtc_state *crtc_state)
>   static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(dev_priv)->display.color.degamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(dev_priv)->color.degamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -3293,7 +3293,7 @@ static struct drm_property_blob *
>   icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	int i, lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
> +	int i, lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
>   	enum pipe pipe = crtc->pipe;
>   	struct drm_property_blob *blob;
>   	struct drm_color_lut *lut;
> @@ -3471,8 +3471,8 @@ void intel_color_crtc_init(struct intel_crtc *crtc)
>   
>   	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
>   
> -	gamma_lut_size = INTEL_INFO(i915)->display.color.gamma_lut_size;
> -	degamma_lut_size = INTEL_INFO(i915)->display.color.degamma_lut_size;
> +	gamma_lut_size = DISPLAY_INFO(i915)->color.gamma_lut_size;
> +	degamma_lut_size = DISPLAY_INFO(i915)->color.degamma_lut_size;
>   	has_ctm = degamma_lut_size != 0;
>   
>   	/*
> @@ -3497,7 +3497,8 @@ int intel_color_init(struct drm_i915_private *i915)
>   	if (DISPLAY_VER(i915) != 10)
>   		return 0;
>   
> -	blob = create_linear_lut(i915, INTEL_INFO(i915)->display.color.degamma_lut_size);
> +	blob = create_linear_lut(i915,
> +				 DISPLAY_INFO(i915)->color.degamma_lut_size);
>   	if (IS_ERR(blob))
>   		return PTR_ERR(blob);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 31bef0427377..3864da5f5c17 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -36,7 +36,7 @@ static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
>   	const struct drm_i915_gem_object *obj = intel_fb_obj(fb);
>   	u32 base;
>   
> -	if (INTEL_INFO(dev_priv)->display.cursor_needs_physical)
> +	if (DISPLAY_INFO(dev_priv)->cursor_needs_physical)
>   		base = sg_dma_address(obj->mm.pages->sgl);
>   	else
>   		base = intel_plane_ggtt_offset(plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 205b3929b861..aa3a21ccd7fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -113,7 +113,7 @@ enum i9xx_plane_id {
>   
>   #define for_each_dbuf_slice(__dev_priv, __slice) \
>   	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
> -		for_each_if(INTEL_INFO(__dev_priv)->display.dbuf.slice_mask & BIT(__slice))
> +		for_each_if(INTEL_INFO(__dev_priv)->display->dbuf.slice_mask & BIT(__slice))
>   
>   #define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
>   	for_each_dbuf_slice((__dev_priv), (__slice)) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6ed2ece89c3f..9c9a809c71f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1053,7 +1053,7 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
>   			     u8 req_slices)
>   {
>   	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> -	u8 slice_mask = INTEL_INFO(dev_priv)->display.dbuf.slice_mask;
> +	u8 slice_mask = DISPLAY_INFO(dev_priv)->dbuf.slice_mask;
>   	enum dbuf_slice slice;
>   
>   	drm_WARN(&dev_priv->drm, req_slices & ~slice_mask,
> @@ -1113,7 +1113,7 @@ static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>   
>   static void icl_mbus_init(struct drm_i915_private *dev_priv)
>   {
> -	unsigned long abox_regs = INTEL_INFO(dev_priv)->display.abox_mask;
> +	unsigned long abox_regs = DISPLAY_INFO(dev_priv)->abox_mask;
>   	u32 mask, val, i;
>   
>   	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
> @@ -1568,7 +1568,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
>   	enum intel_dram_type type = dev_priv->dram_info.type;
>   	u8 num_channels = dev_priv->dram_info.num_channels;
>   	const struct buddy_page_mask *table;
> -	unsigned long abox_mask = INTEL_INFO(dev_priv)->display.abox_mask;
> +	unsigned long abox_mask = DISPLAY_INFO(dev_priv)->abox_mask;
>   	int config, i;
>   
>   	/* BW_BUDDY registers are not used on dgpu's beyond DG1 */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index 755c1ea8225c..e0f82f28d8b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -8,7 +8,7 @@
>   
>   #include "i915_reg_defs.h"
>   
> -#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
> +#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display->mmio_offset)

Why not DISPLAY_INFO here and below?
intel_display_reg_defs.h does not include header defining neither 
DISPLAY_INFO neither INTEL_INFO, so no big difference in terms of 
correctness/self-containment :)

I do not know what is ultimate goal of the conversion.
If part of it is to make INTEL_INFO/DISPLAY_INFO driver (i915/xe) 
agnostic then it is probably fine, otherwise maybe it would be good to 
add include i915_drv.h.

r-b is valid anyway.

Regards
Andrzej

>   
>   #define VLV_DISPLAY_BASE		0x180000
>   
> @@ -36,14 +36,14 @@
>    * Device info offset array based helpers for groups of registers with unevenly
>    * spaced base offsets.
>    */
> -#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.pipe_offsets[(pipe)] - \
> -					      INTEL_INFO(dev_priv)->display.pipe_offsets[PIPE_A] + \
> +#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display->pipe_offsets[(pipe)] - \
> +					      INTEL_INFO(dev_priv)->display->pipe_offsets[PIPE_A] + \
>   					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
> -#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
> -					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
> +#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display->trans_offsets[(tran)] - \
> +					      INTEL_INFO(dev_priv)->display->trans_offsets[TRANSCODER_A] + \
>   					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
> -#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
> -					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
> +#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display->cursor_offsets[(pipe)] - \
> +					      INTEL_INFO(dev_priv)->display->cursor_offsets[PIPE_A] + \
>   					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
>   
>   #endif /* __INTEL_DISPLAY_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 1aca7552a85d..fffd568070d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -243,7 +243,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>   	struct i915_vma *vma;
>   	bool phys_cursor =
>   		plane->id == PLANE_CURSOR &&
> -		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> +		DISPLAY_INFO(dev_priv)->cursor_needs_physical;
>   
>   	if (!intel_fb_uses_dpt(fb)) {
>   		vma = intel_pin_and_fence_fb_obj(fb, phys_cursor,
> diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
> index c518efebdf77..a92d008d4e6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hti.c
> +++ b/drivers/gpu/drm/i915/display/intel_hti.c
> @@ -15,7 +15,7 @@ void intel_hti_init(struct drm_i915_private *i915)
>   	 * If the platform has HTI, we need to find out whether it has reserved
>   	 * any display resources before we create our display outputs.
>   	 */
> -	if (INTEL_INFO(i915)->display.has_hti)
> +	if (DISPLAY_INFO(i915)->has_hti)
>   		i915->display.hti.state = intel_de_read(i915, HDPORT_STATE);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1c7e6468f3e3..d1245c847f1c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -507,8 +507,8 @@ static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
>   
>   static int intel_dbuf_slice_size(struct drm_i915_private *i915)
>   {
> -	return INTEL_INFO(i915)->display.dbuf.size /
> -		hweight8(INTEL_INFO(i915)->display.dbuf.slice_mask);
> +	return DISPLAY_INFO(i915)->dbuf.size /
> +		hweight8(DISPLAY_INFO(i915)->dbuf.slice_mask);
>   }
>   
>   static void
> @@ -527,7 +527,7 @@ skl_ddb_entry_for_slices(struct drm_i915_private *i915, u8 slice_mask,
>   	ddb->end = fls(slice_mask) * slice_size;
>   
>   	WARN_ON(ddb->start >= ddb->end);
> -	WARN_ON(ddb->end > INTEL_INFO(i915)->display.dbuf.size);
> +	WARN_ON(ddb->end > DISPLAY_INFO(i915)->dbuf.size);
>   }
>   
>   static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask)
> @@ -2625,7 +2625,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>   			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
>   			    old_dbuf_state->enabled_slices,
>   			    new_dbuf_state->enabled_slices,
> -			    INTEL_INFO(i915)->display.dbuf.slice_mask,
> +			    DISPLAY_INFO(i915)->dbuf.slice_mask,
>   			    str_yes_no(old_dbuf_state->joined_mbus),
>   			    str_yes_no(new_dbuf_state->joined_mbus));
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 14c5338c96a6..9612c2ac4b00 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -408,6 +408,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>   	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>   
>   #define INTEL_INFO(i915)	(&(i915)->__info)
> +#define DISPLAY_INFO(i915)	(INTEL_INFO(i915)->display)
>   #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
>   #define DRIVER_CAPS(i915)	(&(i915)->caps)
>   
> @@ -782,9 +783,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
>   })
>   
> -#define HAS_OVERLAY(i915)		 (INTEL_INFO(i915)->display.has_overlay)
> +#define HAS_OVERLAY(i915)		 (DISPLAY_INFO(i915)->has_overlay)
>   #define OVERLAY_NEEDS_PHYSICAL(i915) \
> -		(INTEL_INFO(i915)->display.overlay_needs_physical)
> +		(DISPLAY_INFO(i915)->overlay_needs_physical)
>   
>   /* Early gen2 have a totally busted CS tlb and require pinned batches. */
>   #define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))
> @@ -806,8 +807,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>    */
>   #define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
>   					 !(IS_I915G(i915) || IS_I915GM(i915)))
> -#define SUPPORTS_TV(i915)		(INTEL_INFO(i915)->display.supports_tv)
> -#define I915_HAS_HOTPLUG(i915)	(INTEL_INFO(i915)->display.has_hotplug)
> +#define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
> +#define I915_HAS_HOTPLUG(i915)	(DISPLAY_INFO(i915)->has_hotplug)
>   
>   #define HAS_FW_BLC(i915)	(DISPLAY_VER(i915) > 2)
>   #define HAS_FBC(i915)	(RUNTIME_INFO(i915)->fbc_mask != 0)
> @@ -817,18 +818,18 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_IPS(i915)	(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
>   
> -#define HAS_DP_MST(i915)	(INTEL_INFO(i915)->display.has_dp_mst)
> +#define HAS_DP_MST(i915)	(DISPLAY_INFO(i915)->has_dp_mst)
>   #define HAS_DP20(i915)	(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>   
>   #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
>   
> -#define HAS_CDCLK_CRAWL(i915)	 (INTEL_INFO(i915)->display.has_cdclk_crawl)
> -#define HAS_CDCLK_SQUASH(i915)	 (INTEL_INFO(i915)->display.has_cdclk_squash)
> -#define HAS_DDI(i915)		 (INTEL_INFO(i915)->display.has_ddi)
> -#define HAS_FPGA_DBG_UNCLAIMED(i915) (INTEL_INFO(i915)->display.has_fpga_dbg)
> -#define HAS_PSR(i915)		 (INTEL_INFO(i915)->display.has_psr)
> +#define HAS_CDCLK_CRAWL(i915)	 (DISPLAY_INFO(i915)->has_cdclk_crawl)
> +#define HAS_CDCLK_SQUASH(i915)	 (DISPLAY_INFO(i915)->has_cdclk_squash)
> +#define HAS_DDI(i915)		 (DISPLAY_INFO(i915)->has_ddi)
> +#define HAS_FPGA_DBG_UNCLAIMED(i915) (DISPLAY_INFO(i915)->has_fpga_dbg)
> +#define HAS_PSR(i915)		 (DISPLAY_INFO(i915)->has_psr)
>   #define HAS_PSR_HW_TRACKING(i915) \
> -	(INTEL_INFO(i915)->display.has_psr_hw_tracking)
> +	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
>   #define HAS_PSR2_SEL_FETCH(i915)	 (DISPLAY_VER(i915) >= 12)
>   #define HAS_TRANSCODER(i915, trans)	 ((RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)
>   
> @@ -839,7 +840,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_RPS(i915)	(INTEL_INFO(i915)->has_rps)
>   
>   #define HAS_DMC(i915)	(RUNTIME_INFO(i915)->has_dmc)
> -#define HAS_DSB(i915)	(INTEL_INFO(i915)->display.has_dsb)
> +#define HAS_DSB(i915)	(DISPLAY_INFO(i915)->has_dsb)
>   #define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
>   #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>   
> @@ -869,7 +870,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>    */
>   #define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
>   
> -#define HAS_IPC(i915)		(INTEL_INFO(i915)->display.has_ipc)
> +#define HAS_IPC(i915)		(DISPLAY_INFO(i915)->has_ipc)
>   #define HAS_SAGV(i915)		(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
>   
>   #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
> @@ -889,7 +890,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_GLOBAL_MOCS_REGISTERS(i915)	(INTEL_INFO(i915)->has_global_mocs)
>   
> -#define HAS_GMCH(i915) (INTEL_INFO(i915)->display.has_gmch)
> +#define HAS_GMCH(i915) (DISPLAY_INFO(i915)->has_gmch)
>   
>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
>   
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index e4a19161afce..dd874a4db604 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -47,43 +47,43 @@
>   #define NO_DISPLAY .__runtime.pipe_mask = 0
>   
>   #define I845_PIPE_OFFSETS \
> -	.display.pipe_offsets = { \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   	}
>   
>   #define I9XX_PIPE_OFFSETS \
> -	.display.pipe_offsets = { \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   	}
>   
>   #define IVB_PIPE_OFFSETS \
> -	.display.pipe_offsets = { \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   		[TRANSCODER_C] = PIPE_C_OFFSET, \
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
>   	}
>   
>   #define HSW_PIPE_OFFSETS \
> -	.display.pipe_offsets = { \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   		[TRANSCODER_C] = PIPE_C_OFFSET, \
>   		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
> @@ -91,44 +91,44 @@
>   	}
>   
>   #define CHV_PIPE_OFFSETS \
> -	.display.pipe_offsets = { \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET, \
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   		[TRANSCODER_C] = CHV_PIPE_C_OFFSET, \
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   		[TRANSCODER_C] = CHV_TRANSCODER_C_OFFSET, \
>   	}
>   
>   #define I845_CURSOR_OFFSETS \
> -	.display.cursor_offsets = { \
> +	.cursor_offsets = { \
>   		[PIPE_A] = CURSOR_A_OFFSET, \
>   	}
>   
>   #define I9XX_CURSOR_OFFSETS \
> -	.display.cursor_offsets = { \
> +	.cursor_offsets = { \
>   		[PIPE_A] = CURSOR_A_OFFSET, \
>   		[PIPE_B] = CURSOR_B_OFFSET, \
>   	}
>   
>   #define CHV_CURSOR_OFFSETS \
> -	.display.cursor_offsets = { \
> +	.cursor_offsets = { \
>   		[PIPE_A] = CURSOR_A_OFFSET, \
>   		[PIPE_B] = CURSOR_B_OFFSET, \
>   		[PIPE_C] = CHV_CURSOR_C_OFFSET, \
>   	}
>   
>   #define IVB_CURSOR_OFFSETS \
> -	.display.cursor_offsets = { \
> +	.cursor_offsets = { \
>   		[PIPE_A] = CURSOR_A_OFFSET, \
>   		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
>   		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
>   	}
>   
>   #define TGL_CURSOR_OFFSETS \
> -	.display.cursor_offsets = { \
> +	.cursor_offsets = { \
>   		[PIPE_A] = CURSOR_A_OFFSET, \
>   		[PIPE_B] = IVB_CURSOR_B_OFFSET, \
>   		[PIPE_C] = IVB_CURSOR_C_OFFSET, \
> @@ -136,29 +136,29 @@
>   	}
>   
>   #define I845_COLORS \
> -	.display.color = { .gamma_lut_size = 256 }
> +	.color = { .gamma_lut_size = 256 }
>   #define I9XX_COLORS \
> -	.display.color = { .gamma_lut_size = 129, \
> +	.color = { .gamma_lut_size = 129, \
>   		   .gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
>   	}
>   #define ILK_COLORS \
> -	.display.color = { .gamma_lut_size = 1024 }
> +	.color = { .gamma_lut_size = 1024 }
>   #define IVB_COLORS \
> -	.display.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
> +	.color = { .degamma_lut_size = 1024, .gamma_lut_size = 1024 }
>   #define CHV_COLORS \
> -	.display.color = { \
> +	.color = { \
>   		.degamma_lut_size = 65, .gamma_lut_size = 257, \
>   		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
>   		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
>   	}
>   #define GLK_COLORS \
> -	.display.color = { \
> +	.color = { \
>   		.degamma_lut_size = 33, .gamma_lut_size = 1024, \
>   		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
>   				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
>   	}
>   #define ICL_COLORS \
> -	.display.color = { \
> +	.color = { \
>   		.degamma_lut_size = 33, .gamma_lut_size = 262145, \
>   		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING | \
>   				     DRM_COLOR_LUT_EQUAL_CHANNELS, \
> @@ -205,15 +205,24 @@
>   #define GEN_DEFAULT_REGIONS \
>   	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
>   
> +#define I830_DISPLAY \
> +	.has_overlay = 1, \
> +	.cursor_needs_physical = 1, \
> +	.overlay_needs_physical = 1, \
> +	.has_gmch = 1, \
> +	I9XX_PIPE_OFFSETS, \
> +	I9XX_CURSOR_OFFSETS, \
> +	I9XX_COLORS
> +
> +static const struct intel_display_device_info i830_display = {
> +	I830_DISPLAY,
> +};
> +
>   #define I830_FEATURES \
>   	GEN(2), \
>   	.is_mobile = 1, \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> -	.display.has_overlay = 1, \
> -	.display.cursor_needs_physical = 1, \
> -	.display.overlay_needs_physical = 1, \
> -	.display.has_gmch = 1, \
>   	.gpu_reset_clobbers_display = true, \
>   	.has_3d_pipeline = 1, \
>   	.hws_needs_physical = 1, \
> @@ -223,20 +232,26 @@
>   	.has_coherent_ggtt = false, \
>   	.dma_mask_size = 32, \
>   	.max_pat_index = 3, \
> -	I9XX_PIPE_OFFSETS, \
> -	I9XX_CURSOR_OFFSETS, \
> -	I9XX_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
>   
> +#define I845_DISPLAY \
> +	.has_overlay = 1, \
> +	.overlay_needs_physical = 1, \
> +	.has_gmch = 1, \
> +	I845_PIPE_OFFSETS, \
> +	I845_CURSOR_OFFSETS, \
> +	I845_COLORS
> +
> +static const struct intel_display_device_info i845_display = {
> +	I845_DISPLAY,
> +};
> +
>   #define I845_FEATURES \
>   	GEN(2), \
>   	.__runtime.pipe_mask = BIT(PIPE_A), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A), \
> -	.display.has_overlay = 1, \
> -	.display.overlay_needs_physical = 1, \
> -	.display.has_gmch = 1, \
>   	.has_3d_pipeline = 1, \
>   	.gpu_reset_clobbers_display = true, \
>   	.hws_needs_physical = 1, \
> @@ -246,9 +261,6 @@
>   	.has_coherent_ggtt = false, \
>   	.dma_mask_size = 32, \
>   	.max_pat_index = 3, \
> -	I845_PIPE_OFFSETS, \
> -	I845_CURSOR_OFFSETS, \
> -	I845_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
> @@ -256,30 +268,81 @@
>   static const struct intel_device_info i830_info = {
>   	I830_FEATURES,
>   	PLATFORM(INTEL_I830),
> +	.display = &i830_display,
>   };
>   
>   static const struct intel_device_info i845g_info = {
>   	I845_FEATURES,
>   	PLATFORM(INTEL_I845G),
> +	.display = &i845_display,
> +};
> +
> +static const struct intel_display_device_info i85x_display = {
> +	I830_DISPLAY,
>   };
>   
>   static const struct intel_device_info i85x_info = {
>   	I830_FEATURES,
>   	PLATFORM(INTEL_I85X),
> +	.display = &i85x_display,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
>   };
>   
> +static const struct intel_display_device_info i865g_display = {
> +	I845_DISPLAY,
> +};
> +
>   static const struct intel_device_info i865g_info = {
>   	I845_FEATURES,
>   	PLATFORM(INTEL_I865G),
> +	.display = &i865g_display,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
>   };
>   
> +#define GEN3_DISPLAY \
> +	.has_gmch = 1, \
> +	.has_overlay = 1, \
> +	I9XX_PIPE_OFFSETS, \
> +	I9XX_CURSOR_OFFSETS, \
> +	I9XX_COLORS
> +
> +static const struct intel_display_device_info i915g_display = {
> +	GEN3_DISPLAY,
> +	.cursor_needs_physical = 1,
> +	.overlay_needs_physical = 1,
> +};
> +
> +static const struct intel_display_device_info i915gm_display = {
> +	GEN3_DISPLAY,
> +	.cursor_needs_physical = 1,
> +	.overlay_needs_physical = 1,
> +	.supports_tv = 1,
> +};
> +
> +static const struct intel_display_device_info i945g_display = {
> +	GEN3_DISPLAY,
> +	.has_hotplug = 1,
> +	.cursor_needs_physical = 1,
> +	.overlay_needs_physical = 1,
> +};
> +
> +static const struct intel_display_device_info i945gm_display = {
> +	GEN3_DISPLAY,
> +	.has_hotplug = 1,
> +	.cursor_needs_physical = 1,
> +	.overlay_needs_physical = 1,
> +	.supports_tv = 1,
> +};
> +
> +static const struct intel_display_device_info g33_display = {
> +	GEN3_DISPLAY,
> +	.has_hotplug = 1,
> +};
> +
>   #define GEN3_FEATURES \
>   	GEN(3), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> -	.display.has_gmch = 1, \
>   	.gpu_reset_clobbers_display = true, \
>   	.__runtime.platform_engine_mask = BIT(RCS0), \
>   	.has_3d_pipeline = 1, \
> @@ -287,9 +350,6 @@ static const struct intel_device_info i865g_info = {
>   	.has_coherent_ggtt = true, \
>   	.dma_mask_size = 32, \
>   	.max_pat_index = 3, \
> -	I9XX_PIPE_OFFSETS, \
> -	I9XX_CURSOR_OFFSETS, \
> -	I9XX_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
> @@ -297,10 +357,8 @@ static const struct intel_device_info i865g_info = {
>   static const struct intel_device_info i915g_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_I915G),
> +	.display = &i915g_display,
>   	.has_coherent_ggtt = false,
> -	.display.cursor_needs_physical = 1,
> -	.display.has_overlay = 1,
> -	.display.overlay_needs_physical = 1,
>   	.hws_needs_physical = 1,
>   	.unfenced_needs_alignment = 1,
>   };
> @@ -308,11 +366,8 @@ static const struct intel_device_info i915g_info = {
>   static const struct intel_device_info i915gm_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_I915GM),
> +	.display = &i915gm_display,
>   	.is_mobile = 1,
> -	.display.cursor_needs_physical = 1,
> -	.display.has_overlay = 1,
> -	.display.overlay_needs_physical = 1,
> -	.display.supports_tv = 1,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
>   	.hws_needs_physical = 1,
>   	.unfenced_needs_alignment = 1,
> @@ -321,10 +376,7 @@ static const struct intel_device_info i915gm_info = {
>   static const struct intel_device_info i945g_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_I945G),
> -	.display.has_hotplug = 1,
> -	.display.cursor_needs_physical = 1,
> -	.display.has_overlay = 1,
> -	.display.overlay_needs_physical = 1,
> +	.display = &i945g_display,
>   	.hws_needs_physical = 1,
>   	.unfenced_needs_alignment = 1,
>   };
> @@ -332,12 +384,8 @@ static const struct intel_device_info i945g_info = {
>   static const struct intel_device_info i945gm_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_I945GM),
> +	.display = &i945gm_display,
>   	.is_mobile = 1,
> -	.display.has_hotplug = 1,
> -	.display.cursor_needs_physical = 1,
> -	.display.has_overlay = 1,
> -	.display.overlay_needs_physical = 1,
> -	.display.supports_tv = 1,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
>   	.hws_needs_physical = 1,
>   	.unfenced_needs_alignment = 1,
> @@ -346,16 +394,14 @@ static const struct intel_device_info i945gm_info = {
>   static const struct intel_device_info g33_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_G33),
> -	.display.has_hotplug = 1,
> -	.display.has_overlay = 1,
> +	.display = &g33_display,
>   	.dma_mask_size = 36,
>   };
>   
>   static const struct intel_device_info pnv_g_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_PINEVIEW),
> -	.display.has_hotplug = 1,
> -	.display.has_overlay = 1,
> +	.display = &g33_display,
>   	.dma_mask_size = 36,
>   };
>   
> @@ -363,17 +409,41 @@ static const struct intel_device_info pnv_m_info = {
>   	GEN3_FEATURES,
>   	PLATFORM(INTEL_PINEVIEW),
>   	.is_mobile = 1,
> -	.display.has_hotplug = 1,
> -	.display.has_overlay = 1,
> +	.display = &g33_display,
>   	.dma_mask_size = 36,
>   };
>   
> +#define GEN4_DISPLAY \
> +	.has_hotplug = 1, \
> +	.has_gmch = 1, \
> +	I9XX_PIPE_OFFSETS, \
> +	I9XX_CURSOR_OFFSETS, \
> +	I9XX_COLORS
> +
> +static const struct intel_display_device_info i965g_display = {
> +	GEN4_DISPLAY,
> +	.has_overlay = 1,
> +};
> +
> +static const struct intel_display_device_info i965gm_display = {
> +	GEN4_DISPLAY,
> +	.has_overlay = 1,
> +	.supports_tv = 1,
> +};
> +
> +static const struct intel_display_device_info g45_display = {
> +	GEN4_DISPLAY,
> +};
> +
> +static const struct intel_display_device_info gm45_display = {
> +	GEN4_DISPLAY,
> +	.supports_tv = 1,
> +};
> +
>   #define GEN4_FEATURES \
>   	GEN(4), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> -	.display.has_hotplug = 1, \
> -	.display.has_gmch = 1, \
>   	.gpu_reset_clobbers_display = true, \
>   	.__runtime.platform_engine_mask = BIT(RCS0), \
>   	.has_3d_pipeline = 1, \
> @@ -381,9 +451,6 @@ static const struct intel_device_info pnv_m_info = {
>   	.has_coherent_ggtt = true, \
>   	.dma_mask_size = 36, \
>   	.max_pat_index = 3, \
> -	I9XX_PIPE_OFFSETS, \
> -	I9XX_CURSOR_OFFSETS, \
> -	I9XX_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
> @@ -391,7 +458,7 @@ static const struct intel_device_info pnv_m_info = {
>   static const struct intel_device_info i965g_info = {
>   	GEN4_FEATURES,
>   	PLATFORM(INTEL_I965G),
> -	.display.has_overlay = 1,
> +	.display = &i965g_display,
>   	.hws_needs_physical = 1,
>   	.has_snoop = false,
>   };
> @@ -399,10 +466,9 @@ static const struct intel_device_info i965g_info = {
>   static const struct intel_device_info i965gm_info = {
>   	GEN4_FEATURES,
>   	PLATFORM(INTEL_I965GM),
> +	.display = &i965gm_display,
>   	.is_mobile = 1,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
> -	.display.has_overlay = 1,
> -	.display.supports_tv = 1,
>   	.hws_needs_physical = 1,
>   	.has_snoop = false,
>   };
> @@ -411,6 +477,7 @@ static const struct intel_device_info g45_info = {
>   	GEN4_FEATURES,
>   	PLATFORM(INTEL_G45),
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
> +	.display = &g45_display,
>   	.gpu_reset_clobbers_display = false,
>   };
>   
> @@ -419,8 +486,8 @@ static const struct intel_device_info gm45_info = {
>   	PLATFORM(INTEL_GM45),
>   	.is_mobile = 1,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
> -	.display.supports_tv = 1,
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
> +	.display = &gm45_display,
>   	.gpu_reset_clobbers_display = false,
>   };
>   
> @@ -428,7 +495,6 @@ static const struct intel_device_info gm45_info = {
>   	GEN(5), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> -	.display.has_hotplug = 1, \
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
>   	.has_3d_pipeline = 1, \
>   	.has_snoop = true, \
> @@ -437,21 +503,34 @@ static const struct intel_device_info gm45_info = {
>   	.has_rc6 = 0, \
>   	.dma_mask_size = 36, \
>   	.max_pat_index = 3, \
> -	I9XX_PIPE_OFFSETS, \
> -	I9XX_CURSOR_OFFSETS, \
> -	ILK_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
>   
> +#define ILK_DISPLAY \
> +	.has_hotplug = 1, \
> +	I9XX_PIPE_OFFSETS, \
> +	I9XX_CURSOR_OFFSETS, \
> +	ILK_COLORS
> +
> +static const struct intel_display_device_info ilk_d_display = {
> +	ILK_DISPLAY,
> +};
> +
>   static const struct intel_device_info ilk_d_info = {
>   	GEN5_FEATURES,
>   	PLATFORM(INTEL_IRONLAKE),
> +	.display = &ilk_d_display,
> +};
> +
> +static const struct intel_display_device_info ilk_m_display = {
> +	ILK_DISPLAY,
>   };
>   
>   static const struct intel_device_info ilk_m_info = {
>   	GEN5_FEATURES,
>   	PLATFORM(INTEL_IRONLAKE),
> +	.display = &ilk_m_display,
>   	.is_mobile = 1,
>   	.has_rps = true,
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
> @@ -461,7 +540,6 @@ static const struct intel_device_info ilk_m_info = {
>   	GEN(6), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> -	.display.has_hotplug = 1, \
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>   	.has_3d_pipeline = 1, \
> @@ -475,24 +553,30 @@ static const struct intel_device_info ilk_m_info = {
>   	.max_pat_index = 3, \
>   	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
>   	.__runtime.ppgtt_size = 31, \
> -	I9XX_PIPE_OFFSETS, \
> -	I9XX_CURSOR_OFFSETS, \
> -	ILK_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
>   
> +static const struct intel_display_device_info snb_display = {
> +	.has_hotplug = 1,
> +	I9XX_PIPE_OFFSETS,
> +	I9XX_CURSOR_OFFSETS,
> +	ILK_COLORS,
> +};
> +
>   #define SNB_D_PLATFORM \
>   	GEN6_FEATURES, \
>   	PLATFORM(INTEL_SANDYBRIDGE)
>   
>   static const struct intel_device_info snb_d_gt1_info = {
>   	SNB_D_PLATFORM,
> +	.display = &snb_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info snb_d_gt2_info = {
>   	SNB_D_PLATFORM,
> +	.display = &snb_display,
>   	.gt = 2,
>   };
>   
> @@ -504,11 +588,13 @@ static const struct intel_device_info snb_d_gt2_info = {
>   
>   static const struct intel_device_info snb_m_gt1_info = {
>   	SNB_M_PLATFORM,
> +	.display = &snb_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info snb_m_gt2_info = {
>   	SNB_M_PLATFORM,
> +	.display = &snb_display,
>   	.gt = 2,
>   };
>   
> @@ -516,7 +602,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>   	GEN(7), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
> -	.display.has_hotplug = 1, \
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>   	.has_3d_pipeline = 1, \
> @@ -530,9 +615,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>   	.max_pat_index = 3, \
>   	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
>   	.__runtime.ppgtt_size = 31, \
> -	IVB_PIPE_OFFSETS, \
> -	IVB_CURSOR_OFFSETS, \
> -	IVB_COLORS, \
>   	GEN_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
> @@ -542,13 +624,22 @@ static const struct intel_device_info snb_m_gt2_info = {
>   	PLATFORM(INTEL_IVYBRIDGE), \
>   	.has_l3_dpf = 1
>   
> +static const struct intel_display_device_info ivb_display = {
> +	.has_hotplug = 1,
> +	IVB_PIPE_OFFSETS,
> +	IVB_CURSOR_OFFSETS,
> +	IVB_COLORS,
> +};
> +
>   static const struct intel_device_info ivb_d_gt1_info = {
>   	IVB_D_PLATFORM,
> +	.display = &ivb_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info ivb_d_gt2_info = {
>   	IVB_D_PLATFORM,
> +	.display = &ivb_display,
>   	.gt = 2,
>   };
>   
> @@ -560,11 +651,13 @@ static const struct intel_device_info ivb_d_gt2_info = {
>   
>   static const struct intel_device_info ivb_m_gt1_info = {
>   	IVB_M_PLATFORM,
> +	.display = &ivb_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info ivb_m_gt2_info = {
>   	IVB_M_PLATFORM,
> +	.display = &ivb_display,
>   	.gt = 2,
>   };
>   
> @@ -576,18 +669,26 @@ static const struct intel_device_info ivb_q_info = {
>   	.has_l3_dpf = 1,
>   };
>   
> +static const struct intel_display_device_info vlv_display = {
> +	.has_gmch = 1,
> +	.has_hotplug = 1,
> +	.mmio_offset = VLV_DISPLAY_BASE,
> +	I9XX_PIPE_OFFSETS,
> +	I9XX_CURSOR_OFFSETS,
> +	I9XX_COLORS,
> +};
> +
>   static const struct intel_device_info vlv_info = {
>   	PLATFORM(INTEL_VALLEYVIEW),
>   	GEN(7),
>   	.is_lp = 1,
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> +	.display = &vlv_display,
>   	.has_runtime_pm = 1,
>   	.has_rc6 = 1,
>   	.has_reset_engine = true,
>   	.has_rps = true,
> -	.display.has_gmch = 1,
> -	.display.has_hotplug = 1,
>   	.dma_mask_size = 40,
>   	.max_pat_index = 3,
>   	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING,
> @@ -595,10 +696,6 @@ static const struct intel_device_info vlv_info = {
>   	.has_snoop = true,
>   	.has_coherent_ggtt = false,
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
> -	.display.mmio_offset = VLV_DISPLAY_BASE,
> -	I9XX_PIPE_OFFSETS,
> -	I9XX_CURSOR_OFFSETS,
> -	I9XX_COLORS,
>   	GEN_DEFAULT_PAGE_SIZES,
>   	GEN_DEFAULT_REGIONS,
>   	LEGACY_CACHELEVEL,
> @@ -609,11 +706,7 @@ static const struct intel_device_info vlv_info = {
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> -	.display.has_ddi = 1, \
> -	.display.has_fpga_dbg = 1, \
> -	.display.has_dp_mst = 1, \
>   	.has_rc6p = 0 /* RC6p removed-by HSW */, \
> -	HSW_PIPE_OFFSETS, \
>   	.has_runtime_pm = 1
>   
>   #define HSW_PLATFORM \
> @@ -621,18 +714,31 @@ static const struct intel_device_info vlv_info = {
>   	PLATFORM(INTEL_HASWELL), \
>   	.has_l3_dpf = 1
>   
> +static const struct intel_display_device_info hsw_display = {
> +	.has_ddi = 1,
> +	.has_dp_mst = 1,
> +	.has_fpga_dbg = 1,
> +	.has_hotplug = 1,
> +	HSW_PIPE_OFFSETS,
> +	IVB_CURSOR_OFFSETS,
> +	IVB_COLORS,
> +};
> +
>   static const struct intel_device_info hsw_gt1_info = {
>   	HSW_PLATFORM,
> +	.display = &hsw_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info hsw_gt2_info = {
>   	HSW_PLATFORM,
> +	.display = &hsw_display,
>   	.gt = 2,
>   };
>   
>   static const struct intel_device_info hsw_gt3_info = {
>   	HSW_PLATFORM,
> +	.display = &hsw_display,
>   	.gt = 3,
>   };
>   
> @@ -645,22 +751,35 @@ static const struct intel_device_info hsw_gt3_info = {
>   	.__runtime.ppgtt_size = 48, \
>   	.has_64bit_reloc = 1
>   
> +static const struct intel_display_device_info bdw_display = {
> +	.has_ddi = 1,
> +	.has_dp_mst = 1,
> +	.has_fpga_dbg = 1,
> +	.has_hotplug = 1,
> +	HSW_PIPE_OFFSETS,
> +	IVB_CURSOR_OFFSETS,
> +	IVB_COLORS,
> +};
> +
>   #define BDW_PLATFORM \
>   	GEN8_FEATURES, \
>   	PLATFORM(INTEL_BROADWELL)
>   
>   static const struct intel_device_info bdw_gt1_info = {
>   	BDW_PLATFORM,
> +	.display = &bdw_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info bdw_gt2_info = {
>   	BDW_PLATFORM,
> +	.display = &bdw_display,
>   	.gt = 2,
>   };
>   
>   static const struct intel_device_info bdw_rsvd_info = {
>   	BDW_PLATFORM,
> +	.display = &bdw_display,
>   	.gt = 3,
>   	/* According to the device ID those devices are GT3, they were
>   	 * previously treated as not GT3, keep it like that.
> @@ -669,17 +788,27 @@ static const struct intel_device_info bdw_rsvd_info = {
>   
>   static const struct intel_device_info bdw_gt3_info = {
>   	BDW_PLATFORM,
> +	.display = &bdw_display,
>   	.gt = 3,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
>   };
>   
> +static const struct intel_display_device_info chv_display = {
> +	.has_hotplug = 1,
> +	.has_gmch = 1,
> +	.mmio_offset = VLV_DISPLAY_BASE,
> +	CHV_PIPE_OFFSETS,
> +	CHV_CURSOR_OFFSETS,
> +	CHV_COLORS,
> +};
> +
>   static const struct intel_device_info chv_info = {
>   	PLATFORM(INTEL_CHERRYVIEW),
>   	GEN(8),
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> -	.display.has_hotplug = 1,
> +	.display = &chv_display,
>   	.is_lp = 1,
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
>   	.has_64bit_reloc = 1,
> @@ -687,7 +816,6 @@ static const struct intel_device_info chv_info = {
>   	.has_rc6 = 1,
>   	.has_rps = true,
>   	.has_logical_ring_contexts = 1,
> -	.display.has_gmch = 1,
>   	.dma_mask_size = 39,
>   	.max_pat_index = 3,
>   	.__runtime.ppgtt_type = INTEL_PPGTT_FULL,
> @@ -695,10 +823,6 @@ static const struct intel_device_info chv_info = {
>   	.has_reset_engine = 1,
>   	.has_snoop = true,
>   	.has_coherent_ggtt = false,
> -	.display.mmio_offset = VLV_DISPLAY_BASE,
> -	CHV_PIPE_OFFSETS,
> -	CHV_CURSOR_OFFSETS,
> -	CHV_COLORS,
>   	GEN_DEFAULT_PAGE_SIZES,
>   	GEN_DEFAULT_REGIONS,
>   	LEGACY_CACHELEVEL,
> @@ -714,12 +838,22 @@ static const struct intel_device_info chv_info = {
>   	GEN9_DEFAULT_PAGE_SIZES, \
>   	.__runtime.has_dmc = 1, \
>   	.has_gt_uc = 1, \
> -	.__runtime.has_hdcp = 1, \
> -	.display.has_ipc = 1, \
> -	.display.has_psr = 1, \
> -	.display.has_psr_hw_tracking = 1, \
> -	.display.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
> -	.display.dbuf.slice_mask = BIT(DBUF_S1)
> +	.__runtime.has_hdcp = 1
> +
> +static const struct intel_display_device_info skl_display = {
> +	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
> +	.dbuf.slice_mask = BIT(DBUF_S1),
> +	.has_ddi = 1,
> +	.has_dp_mst = 1,
> +	.has_fpga_dbg = 1,
> +	.has_hotplug = 1,
> +	.has_ipc = 1,
> +	.has_psr = 1,
> +	.has_psr_hw_tracking = 1,
> +	HSW_PIPE_OFFSETS,
> +	IVB_CURSOR_OFFSETS,
> +	IVB_COLORS,
> +};
>   
>   #define SKL_PLATFORM \
>   	GEN9_FEATURES, \
> @@ -727,11 +861,13 @@ static const struct intel_device_info chv_info = {
>   
>   static const struct intel_device_info skl_gt1_info = {
>   	SKL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info skl_gt2_info = {
>   	SKL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 2,
>   };
>   
> @@ -743,19 +879,19 @@ static const struct intel_device_info skl_gt2_info = {
>   
>   static const struct intel_device_info skl_gt3_info = {
>   	SKL_GT3_PLUS_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 3,
>   };
>   
>   static const struct intel_device_info skl_gt4_info = {
>   	SKL_GT3_PLUS_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 4,
>   };
>   
>   #define GEN9_LP_FEATURES \
>   	GEN(9), \
>   	.is_lp = 1, \
> -	.display.dbuf.slice_mask = BIT(DBUF_S1), \
> -	.display.has_hotplug = 1, \
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> @@ -763,17 +899,12 @@ static const struct intel_device_info skl_gt4_info = {
>   		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>   	.has_3d_pipeline = 1, \
>   	.has_64bit_reloc = 1, \
> -	.display.has_ddi = 1, \
> -	.display.has_fpga_dbg = 1, \
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
>   	.__runtime.has_hdcp = 1, \
> -	.display.has_psr = 1, \
> -	.display.has_psr_hw_tracking = 1, \
>   	.has_runtime_pm = 1, \
>   	.__runtime.has_dmc = 1, \
>   	.has_rc6 = 1, \
>   	.has_rps = true, \
> -	.display.has_dp_mst = 1, \
>   	.has_logical_ring_contexts = 1, \
>   	.has_gt_uc = 1, \
>   	.dma_mask_size = 39, \
> @@ -782,27 +913,46 @@ static const struct intel_device_info skl_gt4_info = {
>   	.has_reset_engine = 1, \
>   	.has_snoop = true, \
>   	.has_coherent_ggtt = false, \
> -	.display.has_ipc = 1, \
>   	.max_pat_index = 3, \
> -	HSW_PIPE_OFFSETS, \
> -	IVB_CURSOR_OFFSETS, \
> -	IVB_COLORS, \
>   	GEN9_DEFAULT_PAGE_SIZES, \
>   	GEN_DEFAULT_REGIONS, \
>   	LEGACY_CACHELEVEL
>   
> +#define GEN9_LP_DISPLAY \
> +	.dbuf.slice_mask = BIT(DBUF_S1), \
> +	.has_dp_mst = 1, \
> +	.has_ddi = 1, \
> +	.has_fpga_dbg = 1, \
> +	.has_hotplug = 1, \
> +	.has_ipc = 1, \
> +	.has_psr = 1, \
> +	.has_psr_hw_tracking = 1, \
> +	HSW_PIPE_OFFSETS, \
> +	IVB_CURSOR_OFFSETS, \
> +	IVB_COLORS
> +
> +static const struct intel_display_device_info bxt_display = {
> +	GEN9_LP_DISPLAY,
> +	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
> +};
> +
>   static const struct intel_device_info bxt_info = {
>   	GEN9_LP_FEATURES,
>   	PLATFORM(INTEL_BROXTON),
> -	.display.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
> +	.display = &bxt_display,
> +};
> +
> +static const struct intel_display_device_info glk_display = {
> +	GEN9_LP_DISPLAY,
> +	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> +	GLK_COLORS,
>   };
>   
>   static const struct intel_device_info glk_info = {
>   	GEN9_LP_FEATURES,
>   	PLATFORM(INTEL_GEMINILAKE),
>   	.__runtime.display.ip.ver = 10,
> -	.display.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> -	GLK_COLORS,
> +	.display = &glk_display,
>   };
>   
>   #define KBL_PLATFORM \
> @@ -811,16 +961,19 @@ static const struct intel_device_info glk_info = {
>   
>   static const struct intel_device_info kbl_gt1_info = {
>   	KBL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info kbl_gt2_info = {
>   	KBL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 2,
>   };
>   
>   static const struct intel_device_info kbl_gt3_info = {
>   	KBL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 3,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
> @@ -832,16 +985,19 @@ static const struct intel_device_info kbl_gt3_info = {
>   
>   static const struct intel_device_info cfl_gt1_info = {
>   	CFL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info cfl_gt2_info = {
>   	CFL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 2,
>   };
>   
>   static const struct intel_device_info cfl_gt3_info = {
>   	CFL_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 3,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
> @@ -853,11 +1009,13 @@ static const struct intel_device_info cfl_gt3_info = {
>   
>   static const struct intel_device_info cml_gt1_info = {
>   	CML_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 1,
>   };
>   
>   static const struct intel_device_info cml_gt2_info = {
>   	CML_PLATFORM,
> +	.display = &skl_display,
>   	.gt = 2,
>   };
>   
> @@ -869,39 +1027,51 @@ static const struct intel_device_info cml_gt2_info = {
>   #define GEN11_FEATURES \
>   	GEN9_FEATURES, \
>   	GEN11_DEFAULT_PAGE_SIZES, \
> -	.display.abox_mask = BIT(0), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>   		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> -	.display.pipe_offsets = { \
> -		[TRANSCODER_A] = PIPE_A_OFFSET, \
> -		[TRANSCODER_B] = PIPE_B_OFFSET, \
> -		[TRANSCODER_C] = PIPE_C_OFFSET, \
> -		[TRANSCODER_EDP] = PIPE_EDP_OFFSET, \
> -		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
> -		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
> -	}, \
> -	.display.trans_offsets = { \
> -		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
> -		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
> -		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
> -		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET, \
> -		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
> -		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
> -	}, \
>   	GEN(11), \
> -	ICL_COLORS, \
> -	.display.dbuf.size = 2048, \
> -	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
>   	.__runtime.has_dsc = 1, \
>   	.has_coherent_ggtt = false, \
>   	.has_logical_ring_elsq = 1
>   
> +static const struct intel_display_device_info gen11_display = {
> +	.abox_mask = BIT(0),
> +	.dbuf.size = 2048,
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2),
> +	.has_ddi = 1,
> +	.has_dp_mst = 1,
> +	.has_fpga_dbg = 1,
> +	.has_hotplug = 1,
> +	.has_ipc = 1,
> +	.has_psr = 1,
> +	.has_psr_hw_tracking = 1,
> +	.pipe_offsets = {
> +		[TRANSCODER_A] = PIPE_A_OFFSET,
> +		[TRANSCODER_B] = PIPE_B_OFFSET,
> +		[TRANSCODER_C] = PIPE_C_OFFSET,
> +		[TRANSCODER_EDP] = PIPE_EDP_OFFSET,
> +		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,
> +		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,
> +	},
> +	.trans_offsets = {
> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,
> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,
> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,
> +		[TRANSCODER_EDP] = TRANSCODER_EDP_OFFSET,
> +		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,
> +		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,
> +	},
> +	IVB_CURSOR_OFFSETS,
> +	ICL_COLORS,
> +};
> +
>   static const struct intel_device_info icl_info = {
>   	GEN11_FEATURES,
>   	PLATFORM(INTEL_ICELAKE),
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> +	.display = &gen11_display,
>   };
>   
>   static const struct intel_device_info ehl_info = {
> @@ -909,6 +1079,7 @@ static const struct intel_device_info ehl_info = {
>   	PLATFORM(INTEL_ELKHARTLAKE),
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
>   	.__runtime.ppgtt_size = 36,
> +	.display = &gen11_display,
>   };
>   
>   static const struct intel_device_info jsl_info = {
> @@ -916,17 +1087,34 @@ static const struct intel_device_info jsl_info = {
>   	PLATFORM(INTEL_JASPERLAKE),
>   	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
>   	.__runtime.ppgtt_size = 36,
> +	.display = &gen11_display,
>   };
>   
>   #define GEN12_FEATURES \
>   	GEN11_FEATURES, \
>   	GEN(12), \
> -	.display.abox_mask = GENMASK(2, 1), \
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
>   		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> -	.display.pipe_offsets = { \
> +	TGL_CACHELEVEL, \
> +	.has_global_mocs = 1, \
> +	.has_pxp = 1, \
> +	.max_pat_index = 3
> +
> +#define XE_D_DISPLAY \
> +	.abox_mask = GENMASK(2, 1), \
> +	.dbuf.size = 2048, \
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
> +	.has_ddi = 1, \
> +	.has_dp_mst = 1, \
> +	.has_dsb = 1, \
> +	.has_fpga_dbg = 1, \
> +	.has_hotplug = 1, \
> +	.has_ipc = 1, \
> +	.has_psr = 1, \
> +	.has_psr_hw_tracking = 1, \
> +	.pipe_offsets = { \
>   		[TRANSCODER_A] = PIPE_A_OFFSET, \
>   		[TRANSCODER_B] = PIPE_B_OFFSET, \
>   		[TRANSCODER_C] = PIPE_C_OFFSET, \
> @@ -934,7 +1122,7 @@ static const struct intel_device_info jsl_info = {
>   		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET, \
>   		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET, \
>   	}, \
> -	.display.trans_offsets = { \
> +	.trans_offsets = { \
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET, \
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET, \
>   		[TRANSCODER_C] = TRANSCODER_C_OFFSET, \
> @@ -943,30 +1131,36 @@ static const struct intel_device_info jsl_info = {
>   		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
>   	}, \
>   	TGL_CURSOR_OFFSETS, \
> -	TGL_CACHELEVEL, \
> -	.has_global_mocs = 1, \
> -	.has_pxp = 1, \
> -	.display.has_dsb = 1, \
> -	.max_pat_index = 3
> +	ICL_COLORS
> +
> +static const struct intel_display_device_info tgl_display = {
> +	XE_D_DISPLAY,
> +};
>   
>   static const struct intel_device_info tgl_info = {
>   	GEN12_FEATURES,
>   	PLATFORM(INTEL_TIGERLAKE),
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> +	.display = &tgl_display,
> +};
> +
> +static const struct intel_display_device_info rkl_display = {
> +	XE_D_DISPLAY,
> +	.abox_mask = BIT(0),
> +	.has_hti = 1,
> +	.has_psr_hw_tracking = 0,
>   };
>   
>   static const struct intel_device_info rkl_info = {
>   	GEN12_FEATURES,
>   	PLATFORM(INTEL_ROCKETLAKE),
> -	.display.abox_mask = BIT(0),
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   		BIT(TRANSCODER_C),
> -	.display.has_hti = 1,
> -	.display.has_psr_hw_tracking = 0,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
> +	.display = &rkl_display,
>   };
>   
>   #define DGFX_FEATURES \
> @@ -989,43 +1183,43 @@ static const struct intel_device_info dg1_info = {
>   		BIT(VCS0) | BIT(VCS2),
>   	/* Wa_16011227922 */
>   	.__runtime.ppgtt_size = 47,
> +	.display = &tgl_display,
> +};
> +
> +static const struct intel_display_device_info adl_s_display = {
> +	XE_D_DISPLAY,
> +	.has_hti = 1,
> +	.has_psr_hw_tracking = 0,
>   };
>   
>   static const struct intel_device_info adl_s_info = {
>   	GEN12_FEATURES,
>   	PLATFORM(INTEL_ALDERLAKE_S),
>   	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -	.display.has_hti = 1,
> -	.display.has_psr_hw_tracking = 0,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
>   	.dma_mask_size = 39,
> +	.display = &adl_s_display,
>   };
>   
>   #define XE_LPD_FEATURES \
> -	.display.abox_mask = GENMASK(1, 0),					\
> -	.display.color = {							\
> +	.abox_mask = GENMASK(1, 0),						\
> +	.color = {								\
>   		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
>   		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
> -				     DRM_COLOR_LUT_EQUAL_CHANNELS,		\
> +		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
>   	},									\
> -	.display.dbuf.size = 4096,						\
> -	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |	\
> +	.dbuf.size = 4096,							\
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>   		BIT(DBUF_S4),							\
> -	.display.has_ddi = 1,							\
> -	.__runtime.has_dmc = 1,							\
> -	.display.has_dp_mst = 1,						\
> -	.display.has_dsb = 1,							\
> -	.__runtime.has_dsc = 1,							\
> -	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
> -	.display.has_fpga_dbg = 1,						\
> -	.__runtime.has_hdcp = 1,						\
> -	.display.has_hotplug = 1,						\
> -	.display.has_ipc = 1,							\
> -	.display.has_psr = 1,							\
> -	.__runtime.display.ip.ver = 13,							\
> -	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
> -	.display.pipe_offsets = {						\
> +	.has_ddi = 1,								\
> +	.has_dp_mst = 1,							\
> +	.has_dsb = 1,								\
> +	.has_fpga_dbg = 1,							\
> +	.has_hotplug = 1,							\
> +	.has_ipc = 1,								\
> +	.has_psr = 1,								\
> +	.pipe_offsets = {							\
>   		[TRANSCODER_A] = PIPE_A_OFFSET,					\
>   		[TRANSCODER_B] = PIPE_B_OFFSET,					\
>   		[TRANSCODER_C] = PIPE_C_OFFSET,					\
> @@ -1033,7 +1227,7 @@ static const struct intel_device_info adl_s_info = {
>   		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
>   		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\
>   	},									\
> -	.display.trans_offsets = {						\
> +	.trans_offsets = {						\
>   		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
>   		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
>   		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
> @@ -1043,18 +1237,31 @@ static const struct intel_device_info adl_s_info = {
>   	},									\
>   	TGL_CURSOR_OFFSETS
>   
> +#define XE_LPD_RUNTIME \
> +	.__runtime.has_dmc = 1,							\
> +	.__runtime.has_dsc = 1,							\
> +	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
> +	.__runtime.has_hdcp = 1,						\
> +	.__runtime.display.ip.ver = 13,							\
> +	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D)
> +
> +static const struct intel_display_device_info xe_lpd_display = {
> +	XE_LPD_FEATURES,
> +	.has_cdclk_crawl = 1,
> +	.has_psr_hw_tracking = 0,
> +};
> +
>   static const struct intel_device_info adl_p_info = {
>   	GEN12_FEATURES,
> -	XE_LPD_FEATURES,
> +	XE_LPD_RUNTIME,
>   	PLATFORM(INTEL_ALDERLAKE_P),
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
>   			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
> -	.display.has_cdclk_crawl = 1,
> -	.display.has_psr_hw_tracking = 0,
>   	.__runtime.platform_engine_mask =
>   		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
>   	.__runtime.ppgtt_size = 48,
> +	.display = &xe_lpd_display,
>   	.dma_mask_size = 39,
>   };
>   
> @@ -1125,18 +1332,23 @@ static const struct intel_device_info xehpsdv_info = {
>   	.has_guc_deprivilege = 1, \
>   	.has_heci_pxp = 1, \
>   	.has_media_ratio_mode = 1, \
> -	.display.has_cdclk_squash = 1, \
>   	.__runtime.platform_engine_mask = \
>   		BIT(RCS0) | BIT(BCS0) | \
>   		BIT(VECS0) | BIT(VECS1) | \
>   		BIT(VCS0) | BIT(VCS2) | \
>   		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3)
>   
> +static const struct intel_display_device_info xe_hpd_display = {
> +	XE_LPD_FEATURES,
> +	.has_cdclk_squash = 1,
> +};
> +
>   static const struct intel_device_info dg2_info = {
>   	DG2_FEATURES,
> -	XE_LPD_FEATURES,
> +	XE_LPD_RUNTIME,
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +	.display = &xe_hpd_display,
>   };
>   
>   static const struct intel_device_info ats_m_info = {
> @@ -1174,11 +1386,9 @@ static const struct intel_device_info pvc_info = {
>   	PVC_CACHELEVEL,
>   };
>   
> -#define XE_LPDP_FEATURES	\
> -	XE_LPD_FEATURES,	\
> +#define XE_LPDP_RUNTIME	\
> +	XE_LPD_RUNTIME,	\
>   	.__runtime.display.ip.ver = 14,	\
> -	.display.has_cdclk_crawl = 1, \
> -	.display.has_cdclk_squash = 1, \
>   	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
>   
>   static const struct intel_gt_definition xelpmp_extra_gt[] = {
> @@ -1191,9 +1401,15 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
>   	{}
>   };
>   
> +static const struct intel_display_device_info xe_lpdp_display = {
> +	XE_LPD_FEATURES,
> +	.has_cdclk_crawl = 1,
> +	.has_cdclk_squash = 1,
> +};
> +
>   static const struct intel_device_info mtl_info = {
>   	XE_HP_FEATURES,
> -	XE_LPDP_FEATURES,
> +	XE_LPDP_RUNTIME,
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>   	/*
> @@ -1204,6 +1420,7 @@ static const struct intel_device_info mtl_info = {
>   	.__runtime.graphics.ip.rel = 70,
>   	.__runtime.media.ip.ver = 13,
>   	PLATFORM(INTEL_METEORLAKE),
> +	.display = &xe_lpdp_display,
>   	.extra_gt_list = xelpmp_extra_gt,
>   	.has_flat_ccs = 0,
>   	.has_gmd_id = 1,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 4e23be2995bf..d0bf626d0360 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -138,7 +138,7 @@ void intel_device_info_print(const struct intel_device_info *info,
>   
>   	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
>   
> -#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
> +#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))
>   	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
>   #undef PRINT_FLAG
>   
> @@ -388,6 +388,8 @@ mkwrite_device_info(struct drm_i915_private *i915)
>   	return (struct intel_device_info *)INTEL_INFO(i915);
>   }
>   
> +static const struct intel_display_device_info no_display = { 0 };
> +
>   /**
>    * intel_device_info_runtime_init - initialize runtime info
>    * @dev_priv: the i915 device
> @@ -538,7 +540,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   	if (!HAS_DISPLAY(dev_priv)) {
>   		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>   						   DRIVER_ATOMIC);
> -		memset(&info->display, 0, sizeof(info->display));
> +		info->display = &no_display;
>   
>   		runtime->cpu_transcoder_mask = 0;
>   		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 96f6bdb04b1b..f212e02e6582 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -259,7 +259,7 @@ struct intel_device_info {
>   	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>   #undef DEFINE_FLAG
>   
> -	struct intel_display_device_info display;
> +	const struct intel_display_device_info *display;
>   
>   	/*
>   	 * Initial runtime info. Do not access outside of i915_driver_create().

