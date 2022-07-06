Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFDB568670
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 13:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333FB113BA6;
	Wed,  6 Jul 2022 11:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A35F113BA8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 11:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657105785; x=1688641785;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uUQJqbrwzjThlaQiX3NKtHSNY7YZUjChl4L5lpLygok=;
 b=a3xyPjR+bXP28/QIEg0AsT+hG7zXCIOBusB6nJp2vXPKo1LPPQsdBAGl
 r97iLYLPGlgIHFyOjFEjm+2gr1Cj7Qnbg1MogpaW9Yvm39kWm5+WBkR5t
 q6zoDTIbtTa1iEx9tMnBM9NOXnRzbQhQAiNrWUuI92WNOSBC97ET2IGhG
 Wcc+4ORK3I0g+M4t5HrWOn0vRgN/oSwMtg3JW6nvz6OVFoFioETBAsoD9
 PRXBiJXscJ+6sqlvE5UzBEiQRrq5U0hHN4O8N2SwPr+C/yap2shV+/oSV
 cmIvRO5Kd6mWw/aCtJi7VqUL1PLOV7Br2c/NasxesJv6CwBaN9bg5wd3r A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="309266093"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="309266093"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:09:44 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="735528811"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.17.138])
 ([10.252.17.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:09:43 -0700
Message-ID: <bf415381-fb3f-1242-34b3-6571dafefa73@linux.intel.com>
Date: Wed, 6 Jul 2022 13:09:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 nirmoy.das@intel.com, intel-gfx@lists.freedesktop.org
References: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
 <20220705115451.2438928-3-priyanka.dandamudi@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220705115451.2438928-3-priyanka.dandamudi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Add lmem_bar_size modparam
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


On 7/5/2022 1:54 PM, priyanka.dandamudi@intel.com wrote:
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
> v3: Optimised lmem bar size code and modified code to resize
> bar maximum upto lmem_size instead of maximum supported size.(Nirmoy)
>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 51 +++++++++++----------
>   drivers/gpu/drm/i915/i915_params.c          |  2 +
>   drivers/gpu/drm/i915/i915_params.h          |  1 +
>   3 files changed, 29 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 3e9ed395f408..2ed80c3f6064 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -14,6 +14,7 @@
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_mcr.h"
>   #include "gt/intel_gt_regs.h"
> +#include "../../../pci/pci.h"


We can avoid this, see  below.


>   
>   static void _release_bars(struct pci_dev *pdev)
>   {
> @@ -44,38 +45,38 @@ _resize_bar(struct drm_i915_private *i915, int resno, resource_size_t size)
>   	drm_info(&i915->drm, "BAR%d resized to %dM\n", resno, 1 << bar_size);
>   }
>   
> -/* BAR size starts from 1MB - 2^20 */
> -#define BAR_SIZE_SHIFT 20
> -static resource_size_t
> -_lmem_rebar_size(struct drm_i915_private *i915, int resno)
> -{
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> -	u32 rebar = pci_rebar_get_possible_sizes(pdev, resno);
> -	resource_size_t size;
> -
> -	if (!rebar)
> -		return 0;
> -
> -	size = 1ULL << (__fls(rebar) + BAR_SIZE_SHIFT);
> -
> -	if (size <= pci_resource_len(pdev, resno))
> -		return 0;
> -
> -	return size;
> -}


Fix the 1st patch instead and I think you should also take part of patch 
authorship with a "Co-developed-by".


> -
>   #define LMEM_BAR_NUM 2
> -static void i915_resize_lmem_bar(struct drm_i915_private *i915)
> +static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size)
>   {
>   	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>   	struct pci_bus *root = pdev->bus;
>   	struct resource *root_res;
> -	resource_size_t rebar_size = _lmem_rebar_size(i915, LMEM_BAR_NUM);
> +	resource_size_t rebar_size;
> +	resource_size_t current_size;
>   	u32 pci_cmd;
>   	int i;
>   
> -	if (!rebar_size)
> -		return;
> +	current_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
> +
> +	if (i915->params.lmem_bar_size) {


Here you can do:

                 u32 bar_sizes;

                 rebar_size = i915->params.lmem_bar_size * 
(resource_size_t) SZ_1M;;
                 bar_sizes = pci_rebar_get_possible_sizes(pdev, 
LMEM_BAR_NUM);

                 if (!(bar_sizes & 
BIT(pci_rebar_bytes_to_size(rebar_size);))) {

                         rebar_size = lmem_size;

                         /* print a debug_info */

                 }

and avoid usage of pci_rebar_size_to_bytes() and the #include 
"../../../pci/pci.h"


Nirmoy

> +		resource_size_t min_bar_size = pci_rebar_size_to_bytes
> +			(__ffs(pci_rebar_get_possible_sizes(pdev, LMEM_BAR_NUM)));
> +
> +		rebar_size = pci_rebar_size_to_bytes(__fls(i915->params.lmem_bar_size));
> +
> +		if (rebar_size == current_size)
> +			return;
> +
> +		if (rebar_size >= roundup_pow_of_two(lmem_size) || rebar_size < min_bar_size)
> +			rebar_size = lmem_size;
> +	} else {
> +		rebar_size = current_size;
> +
> +		if (rebar_size != roundup_pow_of_two(lmem_size))
> +			rebar_size = lmem_size;
> +		else
> +			return;
> +	}
>   
>   	/* Find out if root bus contains 64bit memory addressing */
>   	while (root->parent)
> @@ -217,7 +218,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
>   	}
>   
> -	i915_resize_lmem_bar(i915);
> +	i915_resize_lmem_bar(i915, lmem_size);
>   
>   	if (i915->params.lmem_size > 0) {
>   		lmem_size = min_t(resource_size_t, lmem_size,
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
