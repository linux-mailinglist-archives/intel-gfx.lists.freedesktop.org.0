Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D50168DCEE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 16:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BAD10E540;
	Tue,  7 Feb 2023 15:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFEE410E540
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 15:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675783480; x=1707319480;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BAxIRxcw4ex1j+xWKuW26isQihCVTEGkeF2hbb7Lbns=;
 b=iKhg/1xSnYZeBwCn9zCwo3sd62NkxYBgrtB5G1gSctSrgV5vpl12rcJ1
 MqNFiDiTyWYXVLYwl04rZdX1IPnz3KKVK2R52LcqvLO97ZjrSkpeqEX+m
 runX/fvO1HurQXSUdMzinTrvl2x1IfhXKw64rrL9WS6UeTFpwkf7nEt7O
 CtjNYWiX9SckvdSkj/t2Yx7Thn6qlMlEVj3//eRfKBS3+i46U+ovHQn/H
 Yt8ME9SaRnoiOb1UnLAQOpN9KniSHABt+kZgvnR0rU+jj5P6x9VIojXyv
 l+YytXK/wE+f4uJJUWBDqbNd0R8Un3TL6WfO3qHhGlSnSZw6JRV7pcuIZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330825494"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="330825494"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 07:24:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="840795814"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840795814"
Received: from isergee-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.137])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 07:24:36 -0800
Date: Tue, 7 Feb 2023 16:24:33 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y+JtMQdX/BuH/YcB@ashyti-mobl2.lan>
References: <20230206090327.2081853-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230206090327.2081853-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: add guard page to
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
Cc: intel-gfx@lists.freedesktop.org,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Feb 06, 2023 at 10:03:27AM +0100, Andrzej Hajda wrote:
> Write-combining memory allows speculative reads by CPU.
> ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
> to prefetch memory beyond the error_capture, ie it tries
> to read memory pointed by next PTE in GGTT.
> If this PTE points to invalid address DMAR errors will occur.
> This behaviour was observed on ADL, RPL, DG2 platforms.
> To avoid it, guard scratch page should be added after error_capture.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

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
>     - modified commit message (I hope the diagnosis is correct),
>     - added bug checks to ensure scratch is initialized on gen3 platforms.
>       CI produces strange stacktrace for it suggesting scratch[0] is NULL,
>       to be removed after resolving the issue with gen3 platforms.
> v3:
>     - removed bug checks, replaced with gen check.
> 
> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 30 +++++++++++++++++++++++++---
>  1 file changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 842e69c7b21e49..15eb2d4158d679 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -503,6 +503,13 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
>  	mutex_destroy(&ggtt->error_mutex);
>  }
>  
> +static void ggtt_insert_scratch_page(struct i915_ggtt *ggtt, u64 offset)
> +{
> +	struct i915_address_space *vm = &ggtt->vm;
> +
> +	vm->insert_page(vm, px_dma(vm->scratch[0]), offset, I915_CACHE_NONE, 0);
> +}
> +
>  static int init_ggtt(struct i915_ggtt *ggtt)
>  {
>  	/*
> @@ -553,6 +560,13 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>  		 * bug, which we expect to cause other failures...
>  		 */
>  		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
> +		/*
> +		 * Since CPU can perform speculative reads on error capture
> +		 * (write-combining allows it) and since gen12 it really happens
> +		 * add scratch page after error capture to avoid DMAR errors.
> +		 */
> +		if (GRAPHICS_VER(ggtt->vm.i915) >= 12)
> +			ggtt->error_capture.size += I915_GTT_PAGE_SIZE;
>  		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
>  		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
>  			drm_mm_insert_node_in_range(&ggtt->vm.mm,
> @@ -562,11 +576,21 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>  						    0, ggtt->mappable_end,
>  						    DRM_MM_INSERT_LOW);
>  	}
> -	if (drm_mm_node_allocated(&ggtt->error_capture))
> +	if (drm_mm_node_allocated(&ggtt->error_capture)) {
> +		u64 start = ggtt->error_capture.start;
> +		u64 end = ggtt->error_capture.start + ggtt->error_capture.size;
> +		u64 i;
> +
> +		/*
> +		 * During error capture, memcpying from the GGTT is triggering a
> +		 * prefetch of the following PTE, so fill it with a guard page.
> +		 */
> +		for (i = start + I915_GTT_PAGE_SIZE; i < end; i += I915_GTT_PAGE_SIZE)
> +			ggtt_insert_scratch_page(ggtt, i);
>  		drm_dbg(&ggtt->vm.i915->drm,
>  			"Reserved GGTT:[%llx, %llx] for use by error capture\n",
> -			ggtt->error_capture.start,
> -			ggtt->error_capture.start + ggtt->error_capture.size);
> +			start, end);
> +	}
>  
>  	/*
>  	 * The upper portion of the GuC address space has a sizeable hole
> -- 
> 2.34.1
