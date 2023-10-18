Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C7E7CDCD5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 15:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DC010E3EE;
	Wed, 18 Oct 2023 13:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2BA10E3EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 13:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697634676; x=1729170676;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YHnKyq7Die4h8KGQ/GXOt0baEMlWvJj0PztkgBoJItw=;
 b=MueD0ZCOX253DZjtcMhbyu9x/6EOj4+X2WZ5rU6BR0ifJROe6g1D400B
 m3KD/m+ibK5vD+QJhEmInNdN+cCo08m350F78Z9mf3d52G22t0Kzh9fVQ
 kyhfgWJOY9CGy7Go+1eUpFyzxOlk3xRAUxEwdmscwEmrVHNVnpJjqw2Ze
 ZyJj9k3D8bivhbPwbnRMiRGMstT4T4lA5QAhs5MC1aaX0u5TBptN8upXx
 LYonNNu6Mbl0cgAs+ZqS85kGd/ALLNG5HxqkcK73AnS+z37QhgrA2ntvv
 kHj82h9N3gqeHkK80ZjD987+pKZHpKf9SxTZNCIWdQvxrDkARY4v5q3b3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450231866"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="450231866"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="826886974"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="826886974"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.191])
 ([10.213.19.191])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:11:13 -0700
Message-ID: <00ea81d5-0bac-47f9-a15a-f520e6b203d2@intel.com>
Date: Wed, 18 Oct 2023 15:11:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
 <20230920210704.3624771-2-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230920210704.3624771-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 1/4] drm/i915: Enable NULL PTE support
 for vm scratch
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
Cc: andi.shyti@intel.com, matthew.d.roper@intel.com, tomasz.mistat@intel.com,
 rodrigo.vivi@intel.com, gregory.f.germano@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.09.2023 23:07, Jonathan Cavitt wrote:
> Enable NULL PTE support for vm scratch pages.
> 
> The use of NULL PTEs in teh vm scratch pages requires us to change how
> the i915 gem_contexts live selftest perform vm_isolation: instead of
> checking the scratch pages are isolated and don't affect each other, we
> check that all changes to the scratch pages are voided.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 ++++++
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c                  | 3 +++
>   drivers/gpu/drm/i915/gt/intel_gtt.h                   | 1 +
>   drivers/gpu/drm/i915/i915_drv.h                       | 2 ++
>   drivers/gpu/drm/i915/i915_pci.c                       | 2 ++
>   drivers/gpu/drm/i915/intel_device_info.h              | 1 +
>   6 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 7021b6e9b219e..48fc5990343bc 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1751,6 +1751,12 @@ static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
>   	if (!vm)
>   		return -ENODEV;
>   
> +	if (HAS_NULL_PAGE(vm->i915)) {
> +		if (out)
> +			*out = 0;
> +		return 0;
> +	}
> +
>   	if (!vm->scratch[0]) {
>   		pr_err("No scratch page!\n");
>   		return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 9895e18df0435..84aa29715e0ac 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -855,6 +855,9 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>   						      I915_CACHE_NONE),
>   			       pte_flags);
>   
> +	if (HAS_NULL_PAGE(vm->i915))
> +		vm->scratch[0]->encode |= PTE_NULL_PAGE;
> +
>   	for (i = 1; i <= vm->top; i++) {
>   		struct drm_i915_gem_object *obj;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 346ec8ec2edda..153ddfca0ae18 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -151,6 +151,7 @@ typedef u64 gen8_pte_t;
>   
>   #define GEN8_PAGE_PRESENT		BIT_ULL(0)
>   #define GEN8_PAGE_RW			BIT_ULL(1)
> +#define PTE_NULL_PAGE			BIT_ULL(9)
>   
>   #define GEN8_PDE_IPS_64K BIT(11)
>   #define GEN8_PDE_PS_2M   BIT(7)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 87ffc477c3b1a..687a8fcdc3d54 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -782,6 +782,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>    */
>   #define HAS_FLAT_CCS(i915)   (INTEL_INFO(i915)->has_flat_ccs)
>   
> +#define HAS_NULL_PAGE(dev_priv) (INTEL_INFO(dev_priv)->has_null_page)
> +
>   #define HAS_GT_UC(i915)	(INTEL_INFO(i915)->has_gt_uc)
>   
>   #define HAS_POOLED_EU(i915)	(RUNTIME_INFO(i915)->has_pooled_eu)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index df7c261410f79..80a65ea192107 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -642,6 +642,7 @@ static const struct intel_device_info jsl_info = {
>   	GEN(12), \
>   	TGL_CACHELEVEL, \
>   	.has_global_mocs = 1, \
> +	.has_null_page = 1, \
>   	.has_pxp = 1, \
>   	.max_pat_index = 3
>   
> @@ -721,6 +722,7 @@ static const struct intel_device_info adl_p_info = {
>   	.has_mslice_steering = 1, \
>   	.has_oa_bpc_reporting = 1, \
>   	.has_oa_slice_contrib_limits = 1, \
> +	.has_null_page = 1, \

Shouldn't be alpabetical order.


>   	.has_oam = 1, \
>   	.has_rc6 = 1, \
>   	.has_reset_engine = 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..252f8dc0fe790 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -162,6 +162,7 @@ enum intel_ppgtt_type {
>   	func(has_mslice_steering); \
>   	func(has_oa_bpc_reporting); \
>   	func(has_oa_slice_contrib_limits); \
> +	func(has_null_page); \

ditto

Beside this:

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Btw do you want/have time to continue working on the series? If not I 
can take it over.

Regards
Andrzej

>   	func(has_oam); \
>   	func(has_one_eu_per_fuse_bit); \
>   	func(has_pxp); \

