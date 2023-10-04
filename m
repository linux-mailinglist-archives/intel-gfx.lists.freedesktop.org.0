Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4277B7D04
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D10710E0F0;
	Wed,  4 Oct 2023 10:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74EE10E0F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696415017; x=1727951017;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ClnttCWlXHslpjqGRsiymUHIzwvJeoHHhvSBEG3kFM0=;
 b=CofeRJ3BKyZapwKCU1CkkBAVRLPlG09M1PQHFj232EqYaWndricfXtze
 mD3GAh0a26a69TW5u+Ensu4vuns/BmqoicVLYrl1PCCCZSav8fg6UfdA3
 XnSoDwcZNXwH1dZ2fT8USi6o1BWiRxXs8gzKhqg7CMwWiwm16EaTfw6OT
 p/0vCmUwW2ZBXA8+oWSU0sm8bgL0r3iXF/VO0CBxbw0t+GL86180wf64C
 Bui1JunCKlkbABHKYnF4/gPpFSXYlccMMDwPZWSuPgaiR5l0+ANhCVy2f
 pzb2Kxvbjoh84D6Z7g5r7bPI+3rVN7PQEynZtCo9+FURuTV/bxnhm5fhD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="1726992"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; 
   d="scan'208";a="1726992"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="841758721"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="841758721"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:23:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231003210156.1172732-1-jonathan.cavitt@intel.com>
Date: Wed, 04 Oct 2023 13:23:32 +0300
Message-ID: <877co2fzyz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915: Add GuC TLB Invalidation
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Oct 2023, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Add device info tags for if GuC TLB Invalidation is enabled.  Since GuC
> based TLB invalidation is only strictly necessary for MTL presently,
> only enable GuC based TLB invalidations for MTL.

In the subject, what's a "pci tag"?

BR,
Jani.


>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 1 +
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>  3 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b4fa81cab92d7..154f004373a9c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -821,4 +821,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

-- 
Jani Nikula, Intel
