Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C6D3039DC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1896A893EC;
	Tue, 26 Jan 2021 10:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41512893EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 10:09:16 +0000 (UTC)
IronPort-SDR: yP0KJzuV7Yrp3RUITX5Amts/SlFlPQhwMaISY+ftmX65QOWwBaZQZAwAiuBCapTmHl0gmpItTI
 6eoy9Qiyk79w==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="179959030"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="179959030"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 02:09:15 -0800
IronPort-SDR: uVWCanJ4TRL/4Fkp18OGaQKggZxKXynU7BGzaus9wHJoKYAU+AJZgDJNvCtWCzGZKkNydr+8v/
 e6OSdiU18PZA==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="361931467"
Received: from jackedwa-mobl.ger.corp.intel.com (HELO [10.214.230.137])
 ([10.214.230.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 02:09:12 -0800
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210126094612.163290-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4868954d-e4a3-a72b-c114-39f8ee00404b@linux.intel.com>
Date: Tue, 26 Jan 2021 10:09:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: setup the LMEM region
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/01/2021 09:46, Matthew Auld wrote:
> Hook up the LMEM region. Addresses will start from zero, and for CPU
> access we get LMEM_BAR which is just a 1:1 mapping of said region.
> 
> Based on a patch from Michel Thierry.
> 
> v2 by Jani:
> - use intel_uncore_read/intel_uncore_write
> - remove trailing blank line
> 
> v3: s/drm_info/drm_dbg for info which in non-pertinent for the user
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 37 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_region_lmem.h |  2 ++
>   drivers/gpu/drm/i915/i915_reg.h             |  3 ++
>   drivers/gpu/drm/i915/intel_memory_region.c  | 11 +++++-
>   4 files changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 28a1d5e1fb92..bdd38efe0811 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -136,3 +136,40 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
>   
>   	return mem;
>   }
> +
> +static struct intel_memory_region *
> +setup_lmem(struct drm_i915_private *i915)
> +{ > +	struct pci_dev *pdev = i915->drm.pdev;
> +	struct intel_memory_region *mem;
> +	resource_size_t io_start;
> +	resource_size_t size;
> +
> +	/* Enables Local Memory functionality in GAM */
> +	intel_uncore_write(&i915->uncore, GEN12_LMEM_CFG_ADDR,
> +			   intel_uncore_read(&i915->uncore, GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);

You could use intel_uncore_rmw as well for some minimal improvement in 
readability. Just a passing by observation, no need to respin if it 
doesn't fit the schedules.

> +
> +	io_start = pci_resource_start(pdev, 2);
> +	size = pci_resource_len(pdev, 2);
> +
> +	mem = intel_memory_region_create(i915,
> +					 0,
> +					 size,
> +					 I915_GTT_PAGE_SIZE_4K,
> +					 io_start,
> +					 &intel_region_lmem_ops);
> +	if (!IS_ERR(mem)) {
> +		drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
> +		drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
> +			 &mem->io_start);
> +		drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n", &size);
> +	}
> +
> +	return mem;
> +}
> +
> +struct intel_memory_region *
> +i915_gem_setup_lmem(struct drm_i915_private *i915)
> +{
> +	return setup_lmem(i915);
> +}

Was it ever discussed if there was an easy way (and if it makes sense 
actually) to move this from GEM to GT (in name and input parameter?

Regards,

Tvrtko

> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.h b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
> index 8ea43e538dab..b32222bd493c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.h
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
> @@ -8,6 +8,8 @@
>   
>   struct drm_i915_private;
>   
> +struct intel_memory_region *i915_gem_setup_lmem(struct drm_i915_private *i915);
> +
>   struct intel_memory_region *
>   intel_setup_fake_lmem(struct drm_i915_private *i915);
>   
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e7e41a3c467e..28001b5a3cb5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12111,6 +12111,9 @@ enum skl_power_gate {
>   
>   #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
>   
> +#define GEN12_LMEM_CFG_ADDR		_MMIO(0xcf58)
> +#define   LMEM_ENABLE			(1 << 31)
> +
>   /* gamt regs */
>   #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
>   #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 1bfcdd89b241..9ce4a81c48b1 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -259,7 +259,16 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   			mem = i915_gem_stolen_setup(i915);
>   			break;
>   		case INTEL_MEMORY_LOCAL:
> -			mem = intel_setup_fake_lmem(i915);
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +			if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
> +				if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
> +				    i915->params.fake_lmem_start)
> +					mem = intel_setup_fake_lmem(i915);
> +			}
> +#endif
> +
> +			if (IS_ERR(mem))
> +				mem = i915_gem_setup_lmem(i915);
>   			break;
>   		}
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
