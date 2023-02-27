Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00396A407A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 12:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE5410E3B3;
	Mon, 27 Feb 2023 11:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E5710E3B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 11:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677496828; x=1709032828;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=h6qOw4EZmAr/NoYU09F9GuyPssUpMwvlKnQXaOTO5zg=;
 b=nQtg8WC/GEovtsbqWLMnQVTbLmsYu3PLF6B4xZ5AMUatOkY7kwGVhXfG
 i8vnbVFZbPMxDNxJqbjkcnB6O1Wz4VNxNSZmQLw/QZFNpCYISgVKhMEoK
 wBTKEAw6RfjUJEk4T35IhiHxsQKYRxc6Bj+yUcL2tbr6Jn+YsJUXx3ae+
 vX4fqP+BEgAullGleHCm4VQ5hG9SxhwoFMh/5i7TDxg4qIO+rzFC7HXCL
 tA/Y7NmQumJNgIL9n5vKFFbLjtYrktcsvEWvjV/22QXpUm+nmIkIdONdo
 1LApRnY2rxBr1KDvwgh9lutd17Q6nya2OnEUOlXmI1gwIFFNXG/PhIqV5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="396389067"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="396389067"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 03:20:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="797595794"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="797595794"
Received: from srampras-mobl3.ger.corp.intel.com (HELO [10.252.9.115])
 ([10.252.9.115])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 03:20:24 -0800
Message-ID: <2f0b0fa0-d1d9-465b-a0ec-10a7f04b1765@intel.com>
Date: Mon, 27 Feb 2023 11:20:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct huge page manager for
 MTL
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

On 24/02/2023 17:40, Jonathan Cavitt wrote:
> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.  This is because
> MTL reports as not supporting 64K pages, or more accurately, the system that reports
> whether a platform has 64K pages reports false for MTL.  This is only half correct,
> as the 64K page support reporting system only cares about 64K page support for LMEM,
> which MTL doesn't have.
> 
> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing over to
> using that manager doesn't resolve the issue because MTL is expecting the virtual
> address space for the page table to be flushed after initialization, so we must also
> add a flush statement there.
> 
> The changes made to the huge page manager selection indirectly impacted some of the
> mock hugepage selftests.  Due to the use of pte level hints, rather than pde level
> hints, we now expect 64K page sizes to be properly reported by the GTT, so we should
> correct the expected test results to reflect this change.

For future submissions, please add the version number for each new 
submission of the same patch, and also please include the changelog.

> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 11 ++++-------
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c            |  3 ++-
>   2 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index defece0bcb81..06554717495f 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -784,9 +784,6 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>   		GEM_BUG_ON(!expected_gtt);
>   		GEM_BUG_ON(size);
>   
> -		if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
> -			expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
> -
>   		i915_vma_unpin(vma);
>   
>   		if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
> @@ -849,7 +846,7 @@ static int igt_mock_ppgtt_64K(void *arg)
>   		},
>   		{
>   			.size = SZ_64K + SZ_4K,
> -			.gtt = I915_GTT_PAGE_SIZE_4K,
> +			.gtt = I915_GTT_PAGE_SIZE_64K | I915_GTT_PAGE_SIZE_4K,
>   			.offset = 0,
>   		},
>   		{
> @@ -864,7 +861,7 @@ static int igt_mock_ppgtt_64K(void *arg)
>   		},
>   		{
>   			.size = SZ_2M - SZ_4K,
> -			.gtt = I915_GTT_PAGE_SIZE_4K,
> +			.gtt = I915_GTT_PAGE_SIZE_64K | I915_GTT_PAGE_SIZE_4K,
>   			.offset = 0,
>   		},
>   		{
> @@ -886,12 +883,12 @@ static int igt_mock_ppgtt_64K(void *arg)
>   		{
>   			.size = SZ_64K,
>   			.offset = SZ_2M,
> -			.gtt = I915_GTT_PAGE_SIZE_4K,
> +			.gtt = I915_GTT_PAGE_SIZE_64K,
>   		},
>   		{
>   			.size = SZ_128K,
>   			.offset = SZ_2M - SZ_64K,
> -			.gtt = I915_GTT_PAGE_SIZE_4K,
> +			.gtt = I915_GTT_PAGE_SIZE_64K,
>   		},

Did you consider the suggestion with possibly making this a live test 
instead?

The first comment in igt_mock_ppgtt_64K() describing the test is:

/*
  * Sanity check some of the trickiness with 64K pages -- either we can
  * safely mark the whole page-table(2M block) as 64K, or we have to
  * always fallback to 4K.
  */

That doesn't really apply to the new 64K GTT model it seems (which is 
why it now fails), so trying to adjust the test just because the mock 
device underneath is now using the newer model doesn't seem correct to 
me. If we instead make it a live test and only run it on devices with 
the old 64K GTT model, then we still retain the same test coverage. 
Alternatively, we could potentially run on both HW models with slightly 
different test expectations. IMO the test is too HW specific for a mock 
test.

>   	};
>   	struct i915_vma *vma;
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 4daaa6f55668..9c571185395f 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -570,6 +570,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
>   			}
>   		} while (rem >= page_size && index < max);
>   
> +		drm_clflush_virt_range(vaddr, PAGE_SIZE);
>   		vma_res->page_sizes_gtt |= page_size;
>   	} while (iter->sg && sg_dma_len(iter->sg));
>   }
> @@ -707,7 +708,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>   	struct sgt_dma iter = sgt_dma(vma_res);
>   
>   	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
> -		if (HAS_64K_PAGES(vm->i915))
> +		if (GRAPHICS_VER_FULL(vm->i915) >= IP_VER(12, 50))
>   			xehpsdv_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>   		else
>   			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
