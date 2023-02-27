Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDD56A47C0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83A810E442;
	Mon, 27 Feb 2023 17:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4385110E442
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518403; x=1709054403;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=RzGYqFawluji2wMSMC/FqauxDfe27Yn4vuqXse2FaNQ=;
 b=DpEpW0GO3SQjhIwtNgwal3Bx8OUYV/Kdhn6vQKGOmGZXPC018HzFdjPk
 JiJYwx42b+wnlMs/kWdajrmt6CNfii6gXhPR8+70QFu8/1xrXGZDMtWuN
 XZxSXtqkjtVwivjSa6XSSYdSQSFwDxRz22FS8y9ovCHzppC8P7B3D/xmd
 H6DERDr8wEoDYHr6zbUZbFCqZJvXNxcCwZLVIUIyjT7+3kZua6BhP2Aeg
 czrc/YPnGMHFQBZOcRlYzVOYJzWdR2sXsV6vRRyFJPeoDB/ZTxGyu9x7X
 BaS4e8D0b3OJdGj46wneYzA6dsYF0DwoZIYLNyg7mfoL7jZ+JI2hcHoeP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331390229"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="331390229"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:20:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="673799737"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="673799737"
Received: from srampras-mobl3.ger.corp.intel.com (HELO [10.252.9.115])
 ([10.252.9.115])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:19:59 -0800
Message-ID: <e39fac4a-88cb-8984-5a84-97400180f82a@intel.com>
Date: Mon, 27 Feb 2023 17:19:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230227162108.2412264-1-jonathan.cavitt@intel.com>
 <20230227162108.2412264-2-jonathan.cavitt@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230227162108.2412264-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27/02/2023 16:21, Jonathan Cavitt wrote:
> Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock selftests into
> live selftests as their requirements have recently become platform-dependent.
> Additionally, apply necessary platform dependency checks to these tests.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

The patch order should be the other way around. When the series is 
applied to drm-intel-gt-next, every commit should pretty much always be 
functional/bisectable. In this case the first patch by itself will make 
the mock tests fail, if we don't already have this patch applied. It's 
only a selftest so likely meh in practice, but in general we should 
always try to keep every commit functional/bisectable.

Otherwise for the series,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   | 22 ++++++++++++++-----
>   1 file changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index defece0bcb81..375f119ab261 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -710,7 +710,7 @@ static void close_object_list(struct list_head *objects,
>   	}
>   }
>   
> -static int igt_mock_ppgtt_huge_fill(void *arg)
> +static int igt_ppgtt_huge_fill(void *arg)
>   {
>   	struct i915_ppgtt *ppgtt = arg;
>   	struct drm_i915_private *i915 = ppgtt->vm.i915;
> @@ -784,7 +784,8 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>   		GEM_BUG_ON(!expected_gtt);
>   		GEM_BUG_ON(size);
>   
> -		if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
> +		if (expected_gtt & I915_GTT_PAGE_SIZE_4K &&
> +		    GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>   			expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>   
>   		i915_vma_unpin(vma);
> @@ -831,7 +832,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>   	return err;
>   }
>   
> -static int igt_mock_ppgtt_64K(void *arg)
> +static int igt_ppgtt_64K(void *arg)
>   {
>   	struct i915_ppgtt *ppgtt = arg;
>   	struct drm_i915_private *i915 = ppgtt->vm.i915;
> @@ -913,6 +914,17 @@ static int igt_mock_ppgtt_64K(void *arg)
>   		unsigned int offset = objects[i].offset;
>   		unsigned int flags = PIN_USER;
>   
> +		/*
> +		 * For modern GTT models, the requirements for marking a page-table
> +		 * as 64K have been relaxed.  Account for this.
> +		 */
> +
> +		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> +			expected_gtt = 0;
> +			expected_gtt |= size & (SZ_64K | SZ_2M) ? I915_GTT_PAGE_SIZE_64K : 0;
> +			expected_gtt |= size & SZ_4K ? I915_GTT_PAGE_SIZE_4K : 0;
> +		}
> +
>   		for (single = 0; single <= 1; single++) {
>   			obj = fake_huge_pages_object(i915, size, !!single);
>   			if (IS_ERR(obj))
> @@ -1910,8 +1922,6 @@ int i915_gem_huge_page_mock_selftests(void)
>   		SUBTEST(igt_mock_exhaust_device_supported_pages),
>   		SUBTEST(igt_mock_memory_region_huge_pages),
>   		SUBTEST(igt_mock_ppgtt_misaligned_dma),
> -		SUBTEST(igt_mock_ppgtt_huge_fill),
> -		SUBTEST(igt_mock_ppgtt_64K),
>   	};
>   	struct drm_i915_private *dev_priv;
>   	struct i915_ppgtt *ppgtt;
> @@ -1962,6 +1972,8 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_ppgtt_sanity_check),
>   		SUBTEST(igt_ppgtt_compact),
>   		SUBTEST(igt_ppgtt_mixed),
> +		SUBTEST(igt_ppgtt_huge_fill),
> +		SUBTEST(igt_ppgtt_64K),
>   	};
>   
>   	if (!HAS_PPGTT(i915)) {
