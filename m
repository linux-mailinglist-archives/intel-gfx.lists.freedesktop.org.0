Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1343856AF57
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 02:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D3910E4F1;
	Fri,  8 Jul 2022 00:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FFB10E49F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 00:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657240235; x=1688776235;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KGRllm2bFyCx4yRdpKEJgZwHi/Qk/P++eNIKez/OEGk=;
 b=A1iUqGfVNKIny6b4b4b36zy3IhgzDB58FuGZvQr+KIZD0nQ+P4eaUGOS
 0gCfG0tzgMLyJB7xBXokIJrwHjs3K/3Xr1kvlrpKlNN9qRyhUAhFNzvT0
 m7+q5UGUm56hjiRjUbp8NedObedxHIND0ctHSkRKVzKJWc/qUDiFtQYPt
 thQ0XZ+BRG9ln96gZBgyQiK+qKo1C5fA1DgkemyC3ZGUvgioQX0Vc0z2N
 fM3bdSb6OvfusDs2StclSO58JtqREl70ZmHKVC0MevhcFrcEFMdxkYZX8
 VTGFyA913z3tODx/ZgSOKwA98jB08lKZuWJ+c3KrTGZWMZJKtaMkvrJnJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="284894180"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="284894180"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:30:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="696701393"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 17:30:33 -0700
Date: Thu, 7 Jul 2022 17:30:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Ysd6qP1J4ky9JbTA@mdroper-desk1.amr.corp.intel.com>
References: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
 <20220708000335.2869311-3-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708000335.2869311-3-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 07, 2022 at 05:03:35PM -0700, Radhakrishna Sripada wrote:
> Add Meteorlake PCI IDs. Split into M, and P subplatforms.
> 
> v2: Update PCI id's
> v3: Move id 7d60 under MTL_M(MattR)
> 
> Bspec: 55420
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Since our hardware starts reporting IP version / platform identity
through MMIO registers starting with MTL, we'll likely start migrating
away from PCI ID as the primary means of platform identification in the
future.  But this looks good for getting the platform started in the
short term.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  4 ++++
>  drivers/gpu/drm/i915/i915_pci.c          |  1 +
>  drivers/gpu/drm/i915/intel_device_info.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/intel_device_info.h |  4 ++++
>  include/drm/i915_pciids.h                | 13 +++++++++++++
>  5 files changed, 36 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 00998a78a2ba..1744036bab10 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1019,6 +1019,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_ADLP_RPLP(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
>  #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
> +#define IS_METEORLAKE_M(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
> +#define IS_METEORLAKE_P(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 859d43c7d0a3..aacc10f2e73f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1214,6 +1214,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_RPLP_IDS(&adl_p_info),
>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
> +	INTEL_MTL_IDS(&mtl_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 27c343316afa..d98fbbd589aa 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -202,6 +202,14 @@ static const u16 subplatform_g12_ids[] = {
>  	INTEL_DG2_G12_IDS(0),
>  };
>  
> +static const u16 subplatform_m_ids[] = {
> +	INTEL_MTL_M_IDS(0),
> +};
> +
> +static const u16 subplatform_p_ids[] = {
> +	INTEL_MTL_P_IDS(0),
> +};
> +
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)
>  {
>  	for (; num; num--, p++) {
> @@ -256,6 +264,12 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_g12_ids,
>  			      ARRAY_SIZE(subplatform_g12_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G12);
> +	} else if (find_devid(devid, subplatform_m_ids,
> +			      ARRAY_SIZE(subplatform_m_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_M);
> +	} else if (find_devid(devid, subplatform_p_ids,
> +			      ARRAY_SIZE(subplatform_p_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_P);
>  	}
>  
>  	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 7ba9663213f4..23bf230aa104 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,6 +127,10 @@ enum intel_platform {
>   */
>  #define INTEL_SUBPLATFORM_N    1
>  
> +/* MTL */
> +#define INTEL_SUBPLATFORM_M	0
> +#define INTEL_SUBPLATFORM_P	1
> +
>  enum intel_ppgtt_type {
>  	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
>  	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1bd0420a213d..278031aa2e84 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -733,5 +733,18 @@
>  #define INTEL_ATS_M_IDS(info) \
>  	INTEL_ATS_M150_IDS(info), \
>  	INTEL_ATS_M75_IDS(info)
> +/* MTL */
> +#define INTEL_MTL_M_IDS(info) \
> +	INTEL_VGA_DEVICE(0x7D40, info), \
> +	INTEL_VGA_DEVICE(0x7D60, info)
> +
> +#define INTEL_MTL_P_IDS(info) \
> +	INTEL_VGA_DEVICE(0x7D45, info), \
> +	INTEL_VGA_DEVICE(0x7D55, info), \
> +	INTEL_VGA_DEVICE(0x7DD5, info)
> +
> +#define INTEL_MTL_IDS(info) \
> +	INTEL_MTL_M_IDS(info), \
> +	INTEL_MTL_P_IDS(info)
>  
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
