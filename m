Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8EF45044E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 13:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B9BA6EA8B;
	Mon, 15 Nov 2021 12:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792E66EA6A
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 12:20:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="213462419"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="213462419"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:20:11 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="453799927"
Received: from rmcgrady-mobl.ger.corp.intel.com (HELO [10.213.210.19])
 ([10.213.210.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:20:09 -0800
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-2-anusha.srivatsa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <044a62c0-a02c-ff37-e53c-8e3db551cddd@linux.intel.com>
Date: Mon, 15 Nov 2021 12:20:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211112210825.1489596-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/rpl-s: Add PCI IDS
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


On 12/11/2021 21:08, Anusha Srivatsa wrote:
> Adding PCI ids for RPL-S. Introducing RPL-S as a
> subplatform of ADL-S. From graphics POV,RPL-S is
> the same as ADL-S.
> 
> BSpec: 53655
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>   arch/x86/kernel/early-quirks.c           |  1 +
>   drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>   drivers/gpu/drm/i915/i915_pci.c          |  1 +
>   drivers/gpu/drm/i915/intel_device_info.c |  7 +++++++
>   drivers/gpu/drm/i915/intel_device_info.h |  3 +++
>   include/drm/i915_pciids.h                | 11 +++++++++++
>   6 files changed, 25 insertions(+)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 391a4e2b8604..fd2d3ab38ebb 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
>   	INTEL_RKL_IDS(&gen11_early_ops),
>   	INTEL_ADLS_IDS(&gen11_early_ops),
>   	INTEL_ADLP_IDS(&gen11_early_ops),
> +	INTEL_RPLS_IDS(&gen11_early_ops),
>   };
>   
>   struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 21ff781b8149..406b9204d34b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1470,6 +1470,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>   #define IS_DG2_G11(dev_priv) \
>   	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> +#define IS_RAPTORLAKE_S(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>   #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>   				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>   #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 5e6795853dc3..9c33ae887f2e 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1117,6 +1117,7 @@ static const struct pci_device_id pciidlist[] = {
>   	INTEL_ADLS_IDS(&adl_s_info),
>   	INTEL_ADLP_IDS(&adl_p_info),
>   	INTEL_DG1_IDS(&dg1_info),
> +	INTEL_RPLS_IDS(&adl_s_info),
>   	{0, 0, 0}
>   };
>   MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 6e6b317bc33c..565b50c3f34f 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -182,6 +182,10 @@ static const u16 subplatform_portf_ids[] = {
>   	INTEL_ICL_PORT_F_IDS(0),
>   };
>   
> +static const u16 subplatform_rpl_ids[] = {
> +	INTEL_RPLS_IDS(0),
> +};
> +
>   static bool find_devid(u16 id, const u16 *p, unsigned int num)
>   {
>   	for (; num; num--, p++) {
> @@ -218,6 +222,9 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>   	} else if (find_devid(devid, subplatform_portf_ids,
>   			      ARRAY_SIZE(subplatform_portf_ids))) {
>   		mask = BIT(INTEL_SUBPLATFORM_PORTF);
> +	} else if (find_devid(devid, subplatform_rpl_ids,
> +			      ARRAY_SIZE(subplatform_rpl_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_RPL);
>   	}
>   
>   	if (IS_TIGERLAKE(i915)) {
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 669f0d26c3c3..186e773fd0da 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -110,6 +110,9 @@ enum intel_platform {
>   #define INTEL_SUBPLATFORM_G10	0
>   #define INTEL_SUBPLATFORM_G11	1
>   
> +/* RPL */
> +#define INTEL_SUBPLATFORM_RPL	0

The comment here should say to which platform the subplatform bits 
apply. In this case that seems to be ADL_S.

Regards,

Tvrtko

> +
>   enum intel_ppgtt_type {
>   	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
>   	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index c00ac54692d7..00deb011b74c 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -666,4 +666,15 @@
>   	INTEL_VGA_DEVICE(0x46C2, info), \
>   	INTEL_VGA_DEVICE(0x46C3, info)
>   
> +/* RPL-S */
> +#define INTEL_RPLS_IDS(info) \
> +	INTEL_VGA_DEVICE(0xA780, info), \
> +	INTEL_VGA_DEVICE(0xA781, info), \
> +	INTEL_VGA_DEVICE(0xA782, info), \
> +	INTEL_VGA_DEVICE(0xA783, info), \
> +	INTEL_VGA_DEVICE(0xA788, info), \
> +	INTEL_VGA_DEVICE(0xA789, info), \
> +	INTEL_VGA_DEVICE(0xA78A, info), \
> +	INTEL_VGA_DEVICE(0xA78B, info)
> +
>   #endif /* _I915_PCIIDS_H */
> 
