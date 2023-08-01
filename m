Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D2576AA76
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 10:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0690110E317;
	Tue,  1 Aug 2023 08:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6424B10E317
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 08:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690876962; x=1722412962;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=tizGouOK01rK9uiLv+bNgwtGEBvpPmAQ+I75Rj+PH/4=;
 b=CR8gUZuPji4at7PG/3/0hncBOFOn+I7UCkOsJ1XDff3Euu8mdYCIImZw
 UQiHoIXjiIwKGA+KRL1ZuhMgBakKsSlop9MD19qkUTYgbiV9bm0WGeKSI
 /c67GL60D4VXYFoO/gHQvRGA2yRxK+7dUgeTTrrXETHUFl4jAV5EQqDXG
 InX9Fa88s3yKPgJJIXWWppqdtD2qeaiwHCJdw0CTsPC44chLmDtPgss9t
 6AGwdN+XF1VhUCazKth/GpYL7FNZM0jOQ+HK93SUWWYjlvI5ts6MpE7/y
 ZU4xGDOIlCHVA9hKI9XnabeZESN2w5zeUEkdDBzzU4OXf5gE7A2pKB7RC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="435552747"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="435552747"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 01:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="871985491"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.39.50])
 ([10.249.39.50])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 01:02:42 -0700
Message-ID: <b948b6a1-03c3-364c-fd55-b50b4e10d63d@linux.intel.com>
Date: Tue, 1 Aug 2023 10:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230614051731.745821-1-jouni.hogander@intel.com>
 <20230614051731.745821-2-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230614051731.745821-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Move stolen memory
 handling into i915_gem_stolen
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

Hi Jouni,

On 6/14/2023 7:17 AM, Jouni Högander wrote:
> We are preparing for Xe. Xe stolen memory handling differs from i915 so we
> want to move stolen memory handling details into i915_gem_stolen.
>
> Also add a common type for fbc compressed fb and use it from fbc code
> instead of underlying type directly. This way we can have common type
> i915_stolen_fb for both i915 and Xe.
>
> v2: Fix couple of checkpatch warnings
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c   | 46 +++++++++++-----------
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 36 +++++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.h | 13 ++++++
>   3 files changed, 73 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 7f8b2d7713c7..a18e84efe911 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -94,8 +94,7 @@ struct intel_fbc {
>   	struct mutex lock;
>   	unsigned int busy_bits;
>   
> -	struct drm_mm_node compressed_fb;
> -	struct drm_mm_node compressed_llb;
> +	struct i915_stolen_fb compressed_fb, compressed_llb;
>   
>   	enum intel_fbc_id id;
>   
> @@ -332,15 +331,16 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>   {
>   	struct drm_i915_private *i915 = fbc->i915;
>   
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
> -					 fbc->compressed_fb.start, U32_MAX));
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
> -					 fbc->compressed_llb.start, U32_MAX));
> -
> +	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> +					 i915_gem_stolen_node_offset(&fbc->compressed_fb),
> +					 U32_MAX));
> +	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> +					 i915_gem_stolen_node_offset(&fbc->compressed_llb),
> +					 U32_MAX));
>   	intel_de_write(i915, FBC_CFB_BASE,
> -		       i915->dsm.stolen.start + fbc->compressed_fb.start);
> +		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
>   	intel_de_write(i915, FBC_LL_BASE,
> -		       i915->dsm.stolen.start + fbc->compressed_llb.start);
> +		       i915_gem_stolen_node_address(i915, &fbc->compressed_llb));
>   }
>   
>   static const struct intel_fbc_funcs i8xx_fbc_funcs = {
> @@ -447,7 +447,8 @@ static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
>   {
>   	struct drm_i915_private *i915 = fbc->i915;
>   
> -	intel_de_write(i915, DPFC_CB_BASE, fbc->compressed_fb.start);
> +	intel_de_write(i915, DPFC_CB_BASE,
> +		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
>   }
>   
>   static const struct intel_fbc_funcs g4x_fbc_funcs = {
> @@ -498,7 +499,8 @@ static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>   {
>   	struct drm_i915_private *i915 = fbc->i915;
>   
> -	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id), fbc->compressed_fb.start);
> +	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id),
> +		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
>   }
>   
>   static const struct intel_fbc_funcs ilk_fbc_funcs = {
> @@ -713,7 +715,7 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
>   	 * underruns, even if that range is not reserved by the BIOS. */
>   	if (IS_BROADWELL(i915) ||
>   	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
> -		end = resource_size(&i915->dsm.stolen) - 8 * 1024 * 1024;
> +		end = i915_gem_stolen_area_size(i915) - 8 * 1024 * 1024;
>   	else
>   		end = U64_MAX;
>   
> @@ -770,9 +772,9 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
>   	int ret;
>   
>   	drm_WARN_ON(&i915->drm,
> -		    drm_mm_node_allocated(&fbc->compressed_fb));
> +		    i915_gem_stolen_node_allocated(&fbc->compressed_fb));
>   	drm_WARN_ON(&i915->drm,
> -		    drm_mm_node_allocated(&fbc->compressed_llb));
> +		    i915_gem_stolen_node_allocated(&fbc->compressed_llb));
>   
>   	if (DISPLAY_VER(i915) < 5 && !IS_G4X(i915)) {
>   		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
> @@ -792,15 +794,14 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
>   
>   	drm_dbg_kms(&i915->drm,
>   		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
> -		    fbc->compressed_fb.size, fbc->limit);
> -
> +		    i915_gem_stolen_node_size(&fbc->compressed_fb), fbc->limit);
>   	return 0;
>   
>   err_llb:
> -	if (drm_mm_node_allocated(&fbc->compressed_llb))
> +	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
>   		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
>   err:
> -	if (drm_mm_initialized(&i915->mm.stolen))
> +	if (i915_gem_stolen_initialized(i915))
>   		drm_info_once(&i915->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
>   	return -ENOSPC;
>   }
> @@ -825,9 +826,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>   	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>   		return;
>   
> -	if (drm_mm_node_allocated(&fbc->compressed_llb))
> +	if (i915_gem_stolen_node_allocated(&fbc->compressed_llb))
>   		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
> -	if (drm_mm_node_allocated(&fbc->compressed_fb))
> +	if (i915_gem_stolen_node_allocated(&fbc->compressed_fb))
>   		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
>   }
>   
> @@ -1030,7 +1031,8 @@ static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
>   	struct intel_fbc *fbc = plane->fbc;
>   
>   	return intel_fbc_min_limit(plane_state) <= fbc->limit &&
> -		intel_fbc_cfb_size(plane_state) <= fbc->compressed_fb.size * fbc->limit;
> +		intel_fbc_cfb_size(plane_state) <= fbc->limit *
> +			i915_gem_stolen_node_size(&fbc->compressed_fb);
>   }
>   
>   static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
> @@ -1707,7 +1709,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
>   {
>   	enum intel_fbc_id fbc_id;
>   
> -	if (!drm_mm_initialized(&i915->mm.stolen))
> +	if (!i915_gem_stolen_initialized(i915))
>   		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
>   
>   	if (need_fbc_vtd_wa(i915))
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 3b094d36a0b0..78bac1e611dd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -974,3 +974,39 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj)
>   {
>   	return obj->ops == &i915_gem_object_stolen_ops;
>   }
> +
> +bool i915_gem_stolen_initialized(const struct drm_i915_private *i915)
> +{
> +	return drm_mm_initialized(&i915->mm.stolen);
> +}
> +
> +u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915)
> +{
> +	return i915->dsm.stolen.start;
> +}
> +
> +u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915)
> +{
> +	return resource_size(&i915->dsm.stolen);
> +}
> +
> +u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
> +				 const struct drm_mm_node *node)
> +{
> +	return i915->dsm.stolen.start + i915_gem_stolen_node_offset(node);
> +}
> +
> +bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node)
> +{
> +	return drm_mm_node_allocated(node);
> +}
> +
> +u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node)
> +{
> +	return node->start;
> +}
> +
> +u64 i915_gem_stolen_node_size(const struct drm_mm_node *node)
> +{
> +	return node->size;


Above 3 functions are core drm functions/struct and not related to 
stolen so I don't think

they deserve special functions in stolen code.


Regards,

Nirmoy

> +}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> index d5005a39d130..258381d1c054 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
> @@ -12,6 +12,8 @@ struct drm_i915_private;
>   struct drm_mm_node;
>   struct drm_i915_gem_object;
>   
> +#define i915_stolen_fb drm_mm_node
> +
>   int i915_gem_stolen_insert_node(struct drm_i915_private *dev_priv,
>   				struct drm_mm_node *node, u64 size,
>   				unsigned alignment);
> @@ -36,4 +38,15 @@ bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
>   
>   #define I915_GEM_STOLEN_BIAS SZ_128K
>   
> +bool i915_gem_stolen_initialized(const struct drm_i915_private *i915);
> +u64 i915_gem_stolen_area_address(const struct drm_i915_private *i915);
> +u64 i915_gem_stolen_area_size(const struct drm_i915_private *i915);
> +
> +u64 i915_gem_stolen_node_address(const struct drm_i915_private *i915,
> +				 const struct drm_mm_node *node);
> +
> +bool i915_gem_stolen_node_allocated(const struct drm_mm_node *node);
> +u64 i915_gem_stolen_node_offset(const struct drm_mm_node *node);
> +u64 i915_gem_stolen_node_size(const struct drm_mm_node *node);
> +
>   #endif /* __I915_GEM_STOLEN_H__ */
