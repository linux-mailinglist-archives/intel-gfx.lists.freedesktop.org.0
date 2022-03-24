Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B854E6654
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 16:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E60E10E9A9;
	Thu, 24 Mar 2022 15:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D465D10E9A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 15:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648137205; x=1679673205;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8uzzQjE0B/ScQeWlwlY55L7frx+dmAzxylrOpRvwXYQ=;
 b=Jl4MnH7hpr7hsBScZmMIRBz8EuwaZ/l9wFD/lYJvuYYOObCLIGk8t7kr
 b3qz9FUWS+qUvorfSA1tiK7aw7qbeqsNOL2zUAr310Px0iTWM4sNUWaId
 4zsbgaoRiz9BhgRW3SVO7pcwn5r1EBjzNVkiL8sUj7BQdBbVsM2mbNBjK
 CuFcCqnOr3Q5o0TmXOnkHWb++wIRc8NZAPCZtA+RjgRQdjKVuA2orG5I/
 +m8Jp/OGlyfQCZNHTHyRvOCPVsFOB/dbM93ATMBsP4SvZr8T7UYB+5Ul2
 q56NYEkyvie/BIIqI35QneLzV04zzNKNSvt5QEaPDeBzk5x4iSc5W/991 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258121471"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258121471"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 08:51:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="561430955"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.56.159])
 ([10.252.56.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 08:51:58 -0700
Message-ID: <6a57e82d-8d6e-88fd-551d-b66fe7af4d9a@linux.intel.com>
Date: Thu, 24 Mar 2022 16:51:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220324143123.348590-1-matthew.auld@intel.com>
 <20220324143123.348590-2-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220324143123.348590-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI 1/1] drm/i915: add lmem_size modparam
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 3/24/2022 3:31 PM, Matthew Auld wrote:
> From: CQ Tang <cq.tang@intel.com>
>
> lmem_size is used to limit the amount of lmem. Default is to use
> hardware available lmem size, when setting this modpraram which is in MB
> unit.
>
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++++
>   drivers/gpu/drm/i915/i915_params.c          | 3 +++
>   drivers/gpu/drm/i915/i915_params.h          | 1 +
>   3 files changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 783d81072c3b..f5111c0a0060 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -123,6 +123,10 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
>   	}
>   
> +	if (i915->params.lmem_size > 0) {
> +		lmem_size = min_t(resource_size_t, lmem_size,
> +				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
> +	}
>   
>   	io_start = pci_resource_start(pdev, 2);
>   	io_size = min(pci_resource_len(pdev, 2), lmem_size);
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 5ad071e09301..701fbc98afa0 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -202,6 +202,9 @@ i915_param_named_unsafe(request_timeout_ms, uint, 0600,
>   			"Default request/fence/batch buffer expiration timeout.");
>   #endif
>   
> +i915_param_named_unsafe(lmem_size, uint, 0400,
> +			"Set the lmem size(in MiB) for each region. (default: 0, all memory)");
> +
>   static __always_inline void _print_param(struct drm_printer *p,
>   					 const char *name,
>   					 const char *type,
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index c779a6f85c7e..b5e7ea45d191 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -73,6 +73,7 @@ struct drm_printer;
>   	param(int, enable_dpcd_backlight, -1, 0600) \
>   	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>   	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
> +	param(unsigned int, lmem_size, 0, 0400) \
>   	/* leave bools at the end to not create holes */ \
>   	param(bool, enable_hangcheck, true, 0600) \
>   	param(bool, load_detect_test, false, 0600) \
