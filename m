Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ABF54C5B0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 12:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C108B10E0CF;
	Wed, 15 Jun 2022 10:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE48B10E0CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 10:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655288238; x=1686824238;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=YPxNBhi9N7X9nIsAjyELX4pMv9Imedn0tya3eBmkQns=;
 b=IKVbJYAeByjS5k3mBFwGU7RnlLTDn9szzyfHfYT6F+MPtZ2JvwGPzzxG
 gc6zPYIzjm1HDOsGFR3tyjInxuaEwaQTrvskR9HmaKgIcv7MiTz56Lpxy
 wvCdTNVXeKKchKEq6D7CbGUbCMOCjn/9REXQdQG+WnfpbDUUwvQMktLnw
 auXc/rlXFxWYkPsrfyvuoBaX2du9DVRkKeW/tVkn2npVGYwAIZXyHoNPN
 my7dMqdpnGJv1kiGEon3pgzmURQSLXGVkNZ3MDvnysla7mSCWCKtEBJjV
 rnnIrQTTLaFHuObFq8yBnrhTG78v/wCMYkCpJfBzVl+BUbK2Zm+F+j5RC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="342869699"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="342869699"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:17:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="712877486"
Received: from roluwafu-mobl1.ger.corp.intel.com (HELO [10.213.196.200])
 ([10.213.196.200])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 03:17:17 -0700
Message-ID: <8b10bba4-ee04-b316-4f70-4ee2d17d6d58@intel.com>
Date: Wed, 15 Jun 2022 11:17:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: priyanka.dandamudi@intel.com, intel-gfx@lists.freedesktop.org
References: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
 <20220615054306.1175736-3-priyanka.dandamudi@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220615054306.1175736-3-priyanka.dandamudi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add lmem_bar_size modparam
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

On 15/06/2022 06:43, priyanka.dandamudi@intel.com wrote:
> From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> 
> lmem_bar_size is used to resize lmem bar.
> It sets to only one of the supported sizes.
> Setting this param will be in MB unit.

Maybe add some more information here for why we want to add this?

Something like:

"For testing purposes, support forcing the lmem_bar size through a new 
modparam. In CI we only have a limited number of configurations for DG2, 
but we still need to be reasonably sure we get a usable device (also 
verifying we report the correct values for things like 
probed_cpu_visible_size etc) with all the potential lmem_bar sizes that 
we might expect see in the wild."

?

> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c |  3 +++
>   drivers/gpu/drm/i915/i915_driver.c          | 25 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_params.c          |  2 ++
>   drivers/gpu/drm/i915/i915_params.h          |  1 +
>   4 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 119e53f5d9b1..d73d8b2adfa2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -132,6 +132,9 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
>   	}
>   
> +	if (i915->params.lmem_bar_size > 0)
> +		lmem_size = pci_resource_len(pdev, 2);

This is just a temporary hack until we have all the small-bar stuff 
landed, right? If so, maybe annotate with:

/* XXX: remove once we land small-bar uapi bits */

So we don't forget to remove this.

> +
>   	io_start = pci_resource_start(pdev, 2);
>   	io_size = min(pci_resource_len(pdev, 2), lmem_size);
>   	if (!io_size)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8d33a6a31675..2f5d7a1f1a7b 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -371,7 +371,30 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915)
>   	u32 pci_cmd;
>   	int i;
>   
> -	if (!rebar_size)
> +	if (i915->params.lmem_bar_size > 0) {
> +		u32 lmem_bar_size;
> +		u32 set_bit;
> +		u32 rebar;
> +		u32 msb;
> +		int k;
> +
> +		lmem_bar_size = i915->params.lmem_bar_size;
> +		rebar = pci_rebar_get_possible_sizes(pdev, LMEM_BAR_NUM);
> +		msb = __fls(rebar);
> +
> +		for (k = msb; k >= 0; k--) {
> +			set_bit = (1 << k);
> +
> +			if (set_bit & rebar)
> +				if (set_bit == lmem_bar_size) {
> +					rebar_size = 1ULL << (__fls(lmem_bar_size) + BAR_SIZE_SHIFT);
> +
> +					if (rebar_size == pci_resource_len(pdev, LMEM_BAR_NUM))
> +						return;
> +					break;
> +				}
> +		}
> +	} else if (!rebar_size)
>   		return;
>   
>   	/* Find out if root bus contains 64bit memory addressing */
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 701fbc98afa0..6fc475a5db61 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -204,6 +204,8 @@ i915_param_named_unsafe(request_timeout_ms, uint, 0600,
>   
>   i915_param_named_unsafe(lmem_size, uint, 0400,
>   			"Set the lmem size(in MiB) for each region. (default: 0, all memory)");
> +i915_param_named_unsafe(lmem_bar_size, uint, 0400,
> +			"Set the lmem bar size(in MiB).");
>   
>   static __always_inline void _print_param(struct drm_printer *p,
>   					 const char *name,
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index b5e7ea45d191..2733cb6cfe09 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -74,6 +74,7 @@ struct drm_printer;
>   	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>   	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
>   	param(unsigned int, lmem_size, 0, 0400) \
> +	param(unsigned int, lmem_bar_size, 0, 0400) \
>   	/* leave bools at the end to not create holes */ \
>   	param(bool, enable_hangcheck, true, 0600) \
>   	param(bool, load_detect_test, false, 0600) \
