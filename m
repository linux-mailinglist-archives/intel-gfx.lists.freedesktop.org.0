Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDFB7B8C3E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 21:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4A210E1A8;
	Wed,  4 Oct 2023 19:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4765C10E1A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 19:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696446249; x=1727982249;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9dSMO7cuXf+C+ZK2fRUxle5Q7SK/sqK6kG6e9DY0Nns=;
 b=EQ4FR/tvDo9ww/EtwJuVUviL68C1/z7A05G6smwhSCk6fdbM9AlHYPeV
 RZfUyIxeIyS699Wea3Ggtd6kG2HCigfxJ5/WcZnVYjlefUf1rvYl/pITV
 +6Gj6n3HRHOGknd/09wAZEGkvuxKveHMXxB2m4v0fpmu8Qs4ygSn8KeNH
 d9PfQXziX2dRtmEW3Z3mtrAsIvhh8qCTtoHckk86EKwhJGCTZa+2Yp2Ql
 BEHy4eiWhnP6kGlk64z9pAj4rn0jN+S99yWxKwtVzFnYx8+qcuu6vPzwe
 VL6mUSxcwHizb6LusmAliK9C1hN0DPwoEx4gNA+cNYvbX8JEthAwsdljb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="373611551"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="373611551"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:04:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="780914698"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="780914698"
Received: from nurf174x-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.147.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:04:02 -0700
Date: Wed, 4 Oct 2023 21:03:54 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZR23GiB9UzY4OYLg@ashyti-mobl2.lan>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915: Add GuC TLB Invalidation
 pci tags
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Wed, Oct 04, 2023 at 11:36:22AM -0700, Jonathan Cavitt wrote:
> Add pci (device info) tags for if GuC TLB Invalidation is enabled.
> Since GuC based TLB invalidation is only strictly necessary for MTL
> resently, only enable GuC based TLB invalidations for MTL.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Jani was mentioning that the pci tags is not a proper title.

No need to resend, I think I will merge this series, so that, if
you agree, I can change /pci tags/pci flag/ before pushing.

In any case.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 1 +
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>  3 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2b7a6db4d0d44..1e25cc1e3dba1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -807,4 +807,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>  				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>  
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index df7c261410f79..c3a5d5efb45d1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -837,6 +837,7 @@ static const struct intel_device_info mtl_info = {
>  	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
>  	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>  	.require_force_probe = 1,
> +	.has_guc_tlb_invalidation = 1,
>  	MTL_CACHELEVEL,
>  };
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..ad54db0a22470 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -173,7 +173,8 @@ enum intel_ppgtt_type {
>  	func(has_coherent_ggtt); \
>  	func(tuning_thread_rr_after_dep); \
>  	func(unfenced_needs_alignment); \
> -	func(hws_needs_physical);
> +	func(hws_needs_physical); \
> +	func(has_guc_tlb_invalidation);
>  
>  struct intel_ip_version {
>  	u8 ver;
> -- 
> 2.25.1
