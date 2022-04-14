Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63879501CB4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 22:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B100110E33B;
	Thu, 14 Apr 2022 20:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C3210E325
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 20:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649968711; x=1681504711;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ByCuD3UVslIIcdZP5tcde8Dy+PVD6Mbbe+DIhpgL1/I=;
 b=arRQhKFl/itdmf4AoKub+omo+ncTxIIZBjlwd683ZPGoWGxMoQVCwXat
 B6O9G4V5Dy1ZFdXcSbzr7w7ySnoT5F2ewAUAWv+QyNvCEcWFtTY6S6lOG
 QI4IgYYLtwu4kEmetxyxQmhEpvzG9316UTe0XZcyTHsaAF7Xep4Tjdcm5
 MprzXbZ2xAEVhsYhwIRDYWunrOsHYRR7dXKR2Ci0u5kD6u9rRtY8ZXALC
 NIOHEBY6jtnsssFZrwblTCUfZWFy+GmKBHyQ7igWsosJfCjl3LI5I8O8L
 iySCDnfowpxA/G/JJmpvH5pzmtS3pBjVTp+L7X1ZxfcNRk2Hg28SyxgUK g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="260623235"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="260623235"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 13:38:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="661508342"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 13:38:30 -0700
Date: Thu, 14 Apr 2022 13:38:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YliGRVBTxMjJeUCw@mdroper-desk1.amr.corp.intel.com>
References: <20220414140626.2810550-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220414140626.2810550-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl-p: Add PCI IDs
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

On Thu, Apr 14, 2022 at 07:36:26PM +0530, Tejas Upadhyay wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> 
> Adding initial PCI ids for RPL-P.
> RPL-P behaves identically to ADL-P from i915's point of view.
> 
> Bspec: 55376
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  arch/x86/kernel/early-quirks.c           | 1 +
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.c | 9 +++++----
>  drivers/gpu/drm/i915/intel_device_info.h | 4 ++--
>  include/drm/i915_pciids.h                | 9 +++++++++
>  6 files changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 805596736e20..a6c1867fc7aa 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -558,6 +558,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
>  	INTEL_ADLP_IDS(&gen11_early_ops),
>  	INTEL_ADLN_IDS(&gen11_early_ops),
>  	INTEL_RPLS_IDS(&gen11_early_ops),
> +	INTEL_RPLP_IDS(&gen11_early_ops),
>  };
>  
>  struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9274417cd87a..edc1f45f4161 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1066,9 +1066,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_DG2_G12(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
>  #define IS_ADLS_RPLS(dev_priv) \
> -	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S)
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>  #define IS_ADLP_N(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> +#define IS_ADLP_RPLP(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 736e04078f56..e606a3288d9b 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1151,6 +1151,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
> +	INTEL_RPLP_IDS(&adl_p_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 5258687648e6..63e05cd15a90 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -181,8 +181,9 @@ static const u16 subplatform_n_ids[] = {
>  	INTEL_ADLN_IDS(0),
>  };
>  
> -static const u16 subplatform_rpls_ids[] = {
> +static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLS_IDS(0),
> +	INTEL_RPLP_IDS(0),
>  };
>  
>  static const u16 subplatform_g10_ids[] = {
> @@ -241,9 +242,9 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_n_ids,
>  				ARRAY_SIZE(subplatform_n_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_N);
> -	} else if (find_devid(devid, subplatform_rpls_ids,
> -			      ARRAY_SIZE(subplatform_rpls_ids))) {
> -		mask = BIT(INTEL_SUBPLATFORM_RPL_S);
> +	} else if (find_devid(devid, subplatform_rpl_ids,
> +			      ARRAY_SIZE(subplatform_rpl_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_RPL);
>  	} else if (find_devid(devid, subplatform_g10_ids,
>  			      ARRAY_SIZE(subplatform_g10_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G10);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index f9b955810593..7704a9d2589c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -114,8 +114,8 @@ enum intel_platform {
>  #define INTEL_SUBPLATFORM_G11	1
>  #define INTEL_SUBPLATFORM_G12	2
>  
> -/* ADL-S */
> -#define INTEL_SUBPLATFORM_RPL_S	0
> +/* ADL */
> +#define INTEL_SUBPLATFORM_RPL	0
>  
>  /* ADL-P */
>  #define INTEL_SUBPLATFORM_N    0

You've got a clash here.  If platform == ADL_P and subplatform == 0,
what does that translate to?  Right now subplatform 0 is used to
identify both ADL-N and RPL-P. 


Matt

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index a2b81a5b324a..74ffa293d6e8 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -720,4 +720,13 @@
>  	INTEL_ATS_M150_IDS(info), \
>  	INTEL_ATS_M75_IDS(info)
>  
> +/*RPL-P */
> +#define INTEL_RPLP_IDS(info) \
> +	INTEL_VGA_DEVICE(0xA720, info), \
> +	INTEL_VGA_DEVICE(0xA721, info), \
> +	INTEL_VGA_DEVICE(0xA7A0, info), \
> +	INTEL_VGA_DEVICE(0xA7A1, info), \
> +	INTEL_VGA_DEVICE(0xA7A8, info), \
> +	INTEL_VGA_DEVICE(0xA7A9, info)
> +
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
