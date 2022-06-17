Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 804D654F23E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 09:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF70F10F4A3;
	Fri, 17 Jun 2022 07:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF8010EA12
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 07:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655452463; x=1686988463;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9qrFZBh6uJ4j+HEJLH0nF3K/w5w1QT78NBjYImIBF88=;
 b=ZYRRWD0DkAY85CpIK6Z7vKIhs85TOyTvXU+NJ3tjmXs8+5nl4nzA5Ho2
 FxY8A585ehokVaOVudFXlbHM7srctWDdIi5yTRC4FzcmcvHiolPrLOCgn
 P9cQ/k7fIFKDbBypV01HofU2IhBum0f+JAvzmtToKgVvKhO7VDDF7HmAf
 A3voApBDKkCHvN+SuVwglZsYDbxYUdB9fb1eC3yjz4lMZE8tX7JCSPcsP
 M2+9HLN1sPjNf4kPzJJeIy7CuZyGROnVnyTC6StV78KaNWH8qQ7ZivB57
 5hFDo0fkHqDqDXLZGzqOdTc1tmwDQQcfk57AlWAsChOmHarhBqqxMyq58 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259906386"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259906386"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 00:54:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="641937339"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.216.190])
 ([10.251.216.190])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 00:54:22 -0700
Message-ID: <878ef90b-0e7e-9e07-1a74-43f6bf096392@linux.intel.com>
Date: Fri, 17 Jun 2022 09:54:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
References: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
 <20220616151247.1192063-3-priyanka.dandamudi@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220616151247.1192063-3-priyanka.dandamudi@intel.com>
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


On 6/16/2022 5:12 PM, priyanka.dandamudi@intel.com wrote:
> From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
>
> For testing purposes, support forcing the lmem_bar_size through a new
> modparam. In CI we only have a limited number of configurations for DG2,
> but we still need to be reasonably sure we get a usable device (also
> verifying we report the correct values for things like
> probed_cpu_visible_size etc) with all the potential lmem_bar sizes that
> we might expect see in the wild.
>
> v2: Update commit message and a minor modification.(Matt)
>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c |  4 +++
>   drivers/gpu/drm/i915/i915_driver.c          | 28 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_params.c          |  2 ++
>   drivers/gpu/drm/i915/i915_params.h          |  1 +
>   4 files changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index e9c12e0d6f59..4614c30f878f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -111,6 +111,10 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>   		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>   
> +		/* XXX: Remove this once we have small-bar uapi bits */
> +		if (i915->params.lmem_bar_size > 0)
> +			lmem_size = pci_resource_len(pdev, 2);
> +
>   		/* FIXME: Remove this when we have small-bar enabled */
>   		if (pci_resource_len(pdev, 2) < lmem_size) {
>   			drm_err(&i915->drm, "System requires small-BAR support, which is currently unsupported on this kernel\n");
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 4bdb471cb2e2..b2763b032012 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -362,8 +362,34 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915)
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
> +			if (set_bit & rebar) {
> +				if (set_bit == lmem_bar_size) {
> +					rebar_size = 1ULL << (__fls(lmem_bar_size) +
> +							BAR_SIZE_SHIFT);


We have pci_rebar_bytes_to_size() helper function for this please use that.


Nirmoy

> +
> +					if (rebar_size == pci_resource_len(pdev, LMEM_BAR_NUM))
> +						return;
> +					break;
> +				}
> +			}
> +		}
> +	} else if (!rebar_size) {
>   		return;
> +	}
>   
>   	/* Find out if root bus contains 64bit memory addressing */
>   	while (root->parent)
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
