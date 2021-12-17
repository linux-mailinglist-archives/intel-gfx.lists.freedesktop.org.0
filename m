Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 466D6478C50
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 14:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCF810F9F0;
	Fri, 17 Dec 2021 13:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F1510F9F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 13:28:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239976949"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239976949"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 05:28:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="615561055"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 05:28:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Fri, 17 Dec 2021 15:27:57 +0200
Message-ID: <87r1ab1huq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
Cc: x86@kernel.org, linux-pci@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Dec 2021, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> Adding PCI device ids and enabling ADL-N platform.
> ADL-N from i915 point of view is subplatform of ADL-P.
>
> BSpec: 68397
>
> Changes since V2:
> 	- Added version log history
> Changes since V1:
> 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Cc: x86 maintainers & lists

Ack for merging the arch/x86/kernel/early-quirks.c PCI ID update via
drm-intel?

I note not all such changes in git log have your acks recorded, though
most do. Do you want us to be more careful about Cc'ing you for acks on
PCI ID changes every time going forward?

BR,
Jani.


> ---
>  arch/x86/kernel/early-quirks.c           | 1 +
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
>  drivers/gpu/drm/i915/intel_device_info.h | 3 +++
>  include/drm/i915_pciids.h                | 6 ++++++
>  6 files changed, 20 insertions(+)
>
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index fd2d3ab38ebb..1ca3a56fdc2d 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
>  	INTEL_RKL_IDS(&gen11_early_ops),
>  	INTEL_ADLS_IDS(&gen11_early_ops),
>  	INTEL_ADLP_IDS(&gen11_early_ops),
> +	INTEL_ADLN_IDS(&gen11_early_ops),
>  	INTEL_RPLS_IDS(&gen11_early_ops),
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a0f54a69b11d..b2ec85a3e40a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1283,6 +1283,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
>  #define IS_ADLS_RPLS(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S)
> +#define IS_ADLP_N(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 708a23415e9c..6a19e9da53cc 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1132,6 +1132,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_RKL_IDS(&rkl_info),
>  	INTEL_ADLS_IDS(&adl_s_info),
>  	INTEL_ADLP_IDS(&adl_p_info),
> +	INTEL_ADLN_IDS(&adl_p_info),
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	{0, 0, 0}
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index a3446a2abcb2..54944d87cd3c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] = {
>  	INTEL_ICL_PORT_F_IDS(0),
>  };
>  
> +static const u16 subplatform_n_ids[] = {
> +	INTEL_ADLN_IDS(0),
> +};
> +
>  static const u16 subplatform_rpls_ids[] = {
>  	INTEL_RPLS_IDS(0),
>  };
> @@ -210,6 +214,9 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_portf_ids,
>  			      ARRAY_SIZE(subplatform_portf_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_PORTF);
> +	} else if (find_devid(devid, subplatform_n_ids,
> +				ARRAY_SIZE(subplatform_n_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_N);
>  	} else if (find_devid(devid, subplatform_rpls_ids,
>  			      ARRAY_SIZE(subplatform_rpls_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL_S);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 213ae2c07126..e341d90f28a2 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -113,6 +113,9 @@ enum intel_platform {
>  /* ADL-S */
>  #define INTEL_SUBPLATFORM_RPL_S	0
>  
> +/* ADL-P */
> +#define INTEL_SUBPLATFORM_N    0
> +
>  enum intel_ppgtt_type {
>  	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
>  	INTEL_PPGTT_ALIASING = I915_GEM_PPGTT_ALIASING,
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index baf3d1d3d566..533890dc9da1 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -666,6 +666,12 @@
>  	INTEL_VGA_DEVICE(0x46C2, info), \
>  	INTEL_VGA_DEVICE(0x46C3, info)
>  
> +/* ADL-N */
> +#define INTEL_ADLN_IDS(info) \
> +	INTEL_VGA_DEVICE(0x46D0, info), \
> +	INTEL_VGA_DEVICE(0x46D1, info), \
> +	INTEL_VGA_DEVICE(0x46D2, info)
> +
>  /* RPL-S */
>  #define INTEL_RPLS_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA780, info), \

-- 
Jani Nikula, Intel Open Source Graphics Center
