Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA8E6A8018
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 11:43:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F30D10E4BA;
	Thu,  2 Mar 2023 10:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C4710E4BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 10:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677753796; x=1709289796;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=caInCz/luBMhiBjS/YqX7S5j/CpHXon8s8v3Enwb+18=;
 b=Hb2S94dIKdzsppWuoRqEjQZJ9dss/ETFAObNpCqfJVci5MxQzaLNEL3Q
 WEsL4ZqRjsnO+36WF8Vq1tcXZtr/0x28QOiXdIUy/qCI1310DP2ysBPqV
 LSdRQ+nNQ/cIYq4l2zZqRZxIVk+QxmcuD/+8CX3xduXEyOjCNuLoX8CaE
 CwEMcfSxJmzqpjYfj8CSifmD1dMOInWyH9x3Qg3Pxt5OmPoRos4wk7QbO
 geV6Be1oX/kmy2oR9C67ZNn/QUdS6km7MqE8fKT3cRQuIIOTJqGxGflae
 tcyJQ2jOybz5roFGiSNc3P9VauiHdTmf/3dgqMBHnzRXsAaiNM8CqxiUU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="318485910"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="318485910"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 02:43:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="743810520"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="743810520"
Received: from jackonei-mobl2.ger.corp.intel.com (HELO [10.213.216.245])
 ([10.213.216.245])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 02:43:13 -0800
Message-ID: <947b8217-7d3e-974f-8690-7cfdfcbeb516@linux.intel.com>
Date: Thu, 2 Mar 2023 10:43:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230208105130.3233420-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: add guard page to
 ggtt->error_capture
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/02/2023 10:51, Andrzej Hajda wrote:
> Write-combining memory allows speculative reads by CPU.
> ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
> to prefetch memory beyond the error_capture, ie it tries
> to read memory pointed by next PTE in GGTT.
> If this PTE points to invalid address DMAR errors will occur.
> This behaviour was observed on ADL, RPL, DG2 platforms.
> To avoid it, guard scratch page should be added after error_capture.
> The patch fixes the most annoying issue with error capture but
> since WC reads are used also in other places there is a risk similar
> problem can affect them as well.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Research tells the explanation is plausible so:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On patch details below.

What about "simiar risk in other places" - are there any plans to asses 
the potential impact elsewhere?

> ---
> This patch tries to diminish plague of DMAR read errors present
> in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
> CI is usually tolerant for these errors, so the scale of the problem
> is not really visible.
> To show it I have counted lines containing DMAR read errors in dmesgs
> produced by CI for all three versions of the patch, but in contrast to v2
> I have grepped only for lines containing "PTE Read access".
> Below stats for kernel w/o patch vs patched one.
> v1: 210 vs 0
> v2: 201 vs 0
> v3: 214 vs 0
> Apparently the patch fixes all common PTE read errors.
> 
> In previous version there were different numbers due to less exact grepping,
> "grep DMAR" catched write errors and "DMAR: DRHD: handling fault status reg"
> lines, anyway the actual number of errors is much bigger - DMAR errors
> are rate-limited.
> 
> [1]: http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt
> 
> Changelog:
> v2:
>      - modified commit message (I hope the diagnosis is correct),
>      - added bug checks to ensure scratch is initialized on gen3 platforms.
>        CI produces strange stacktrace for it suggesting scratch[0] is NULL,
>        to be removed after resolving the issue with gen3 platforms.
> v3:
>      - removed bug checks, replaced with gen check.
> v4:
>      - change code for scratch page insertion to support all platforms,
>      - add info in commit message there could be more similar issues
> 
> Regards
> Andrzej
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 31 ++++++++++++++++++++++++----
>   1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 842e69c7b21e49..6566d2066f1f8b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -503,6 +503,21 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
>   	mutex_destroy(&ggtt->error_mutex);
>   }
>   
> +static void
> +ggtt_insert_scratch_pages(struct i915_ggtt *ggtt, u64 offset, u64 length)
> +{
> +	struct i915_address_space *vm = &ggtt->vm;
> +
> +	if (GRAPHICS_VER(ggtt->vm.i915) < 8)
> +		return vm->clear_range(vm, offset, length);
> +	/* clear_range since gen8 is nop */

It would also work to simply drop the <gen8 case and just do the loop 
below, right? If so would that be clearer?

> +	while (length > 0) {

Maybe add a GEM_BUG_ON if length is not aligned? Granted it may be a 
huge stretch of imagination..

Regards,

Tvrtko

> +		vm->insert_page(vm, px_dma(vm->scratch[0]), offset, I915_CACHE_NONE, 0);
> +		offset += I915_GTT_PAGE_SIZE;
> +		length -= I915_GTT_PAGE_SIZE;
> +	}
> +}
> +
>   static int init_ggtt(struct i915_ggtt *ggtt)
>   {
>   	/*
> @@ -551,8 +566,12 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   		 * paths, and we trust that 0 will remain reserved. However,
>   		 * the only likely reason for failure to insert is a driver
>   		 * bug, which we expect to cause other failures...
> +		 *
> +		 * Since CPU can perform speculative reads on error capture
> +		 * (write-combining allows it) add scratch page after error
> +		 * capture to avoid DMAR errors.
>   		 */
> -		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
> +		ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
>   		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
>   		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
>   			drm_mm_insert_node_in_range(&ggtt->vm.mm,
> @@ -562,11 +581,15 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   						    0, ggtt->mappable_end,
>   						    DRM_MM_INSERT_LOW);
>   	}
> -	if (drm_mm_node_allocated(&ggtt->error_capture))
> +	if (drm_mm_node_allocated(&ggtt->error_capture)) {
> +		u64 start = ggtt->error_capture.start;
> +		u64 size = ggtt->error_capture.size;
> +
> +		ggtt_insert_scratch_pages(ggtt, start, size);
>   		drm_dbg(&ggtt->vm.i915->drm,
>   			"Reserved GGTT:[%llx, %llx] for use by error capture\n",
> -			ggtt->error_capture.start,
> -			ggtt->error_capture.start + ggtt->error_capture.size);
> +			start, start + size);
> +	}
>   
>   	/*
>   	 * The upper portion of the GuC address space has a sizeable hole
