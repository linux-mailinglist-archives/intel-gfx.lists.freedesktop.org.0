Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F4B51AF83
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4652410EDCE;
	Wed,  4 May 2022 20:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0BE10EDC6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651696850; x=1683232850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ySLYdAvwsqzWqCYOpmP5EMNegCMrGDRnZX4IJTrwYHk=;
 b=g2Hmrj1yjcpJN58hbnrP49qgFuJ/hqafoRvUKYShowAdBq9vfXwSw4lL
 6vFfRshIknlolsZP7fjAhgQ2lH4xLh8DIkguW3+cYSqzseo3mL6oAPvfY
 3b/Zt3bbV9PWk8sXHm4fdXU/ABVQfVEmWPhj8TT9lG2uNUk340A5xBqoR
 kh4mAeO5KFpXPJw1P6FX+Hh7lTfgDAPtgiDENjjEVOyR1uOAe0inf3Ier
 MoxZmTLr9C8RmkjG/pAjJYlpjXG0gdVeVjH6lmjVl1tf8R6sNudx5p+mb
 TRtLU7oyFFI0Y8ucpaJN2qUP+COgM/XclW03gYFnRYaMSkuCOZdrCQUxG w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330879702"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="330879702"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:40:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="734576172"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:40:49 -0700
Date: Wed, 4 May 2022 13:40:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLkzw2Q4E8n1k4m@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915: Drop has_gt_uc from device
 info
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 04, 2022 at 12:07:47PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as all platforms with graphics version 9 or newer has graphics
> microcontroller.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c    | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  4 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d23180d1b10cb..3a3d57485b09c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1357,7 +1357,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define HAS_FLAT_CCS(dev_priv)   (INTEL_INFO(dev_priv)->has_flat_ccs)
>  
> -#define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
> +#define HAS_GT_UC(dev_priv)	(GRAPHICS_VER(dev_priv) >= 9)
>  
>  #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 0512c66fa4f3f..5bd9cb8998527 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -2008,7 +2008,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
>  			return ERR_PTR(-ENOMEM);
>  		}
>  
> -		if (INTEL_INFO(i915)->has_gt_uc) {
> +		if (HAS_GT_UC(i915)) {
>  			error->gt->uc = gt_record_uc(error->gt, compress);
>  			if (error->gt->uc) {
>  				if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index fc3e7c8bc69d1..df20818ce8eae 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -644,7 +644,6 @@ static const struct intel_device_info chv_info = {
>  	GEN(9), \
>  	GEN9_DEFAULT_PAGE_SIZES, \
>  	.display.has_dmc = 1, \
> -	.has_gt_uc = 1, \
>  	.display.has_hdcp = 1, \
>  	.display.has_psr = 1, \
>  	.display.has_psr_hw_tracking = 1, \
> @@ -704,7 +703,6 @@ static const struct intel_device_info skl_gt4_info = {
>  	.has_rps = true, \
>  	.display.has_dp_mst = 1, \
>  	.has_logical_ring_contexts = 1, \
> -	.has_gt_uc = 1, \
>  	.dma_mask_size = 39, \
>  	.ppgtt_type = INTEL_PPGTT_FULL, \
>  	.ppgtt_size = 48, \
> @@ -1003,7 +1001,6 @@ static const struct intel_device_info adl_p_info = {
>  	.has_64bit_reloc = 1, \
>  	.has_flat_ccs = 1, \
>  	.has_global_mocs = 1, \
> -	.has_gt_uc = 1, \
>  	.has_llc = 1, \
>  	.has_logical_ring_contexts = 1, \
>  	.has_logical_ring_elsq = 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d16515cea22fd..6d2eafaab4ef0 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -146,7 +146,6 @@ enum intel_ppgtt_type {
>  	func(has_4tile); \
>  	func(has_flat_ccs); \
>  	func(has_global_mocs); \
> -	func(has_gt_uc); \
>  	func(has_heci_pxp); \
>  	func(has_heci_gscfi); \
>  	func(has_guc_deprivilege); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
