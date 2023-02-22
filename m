Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C5469F86E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 16:56:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19E810EA36;
	Wed, 22 Feb 2023 15:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83A610EA36
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 15:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677081388; x=1708617388;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XDiUnX2k9f5h/9q+BmYq7OjFagxS4U4ARM+TYfa/HqQ=;
 b=bbQEmDX+AfkNQbh/VkfrVD58ojQW3EVFx1nf1BxL/YKTf75qlGd0tWgo
 nTGMWdFV054qsDMaPwNcJHhT/iZUv/ki95LQxngHg4D1CzZLW1fbGJZFl
 hvot0W/fVfTc35qgu3kVEtu+79SW1FJ35MU21o7MZd+ivnK5xCLh4H/sl
 H/zYn6ECO7oCwntapPigsL3lknQyQ7+93qDveACyQQJIzLLBpKRSc2oe9
 cI5LvMq2XKwyJufbzNYGIhV2tXVeRqmfTSHs+Ux/FwcEg3rFTePCKk1sX
 LEvZI9n/WGvXBcOGdbH+4Wd9i/mOf46c62m1THX8uVJkm4R17y8c/fjmE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="395440266"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="395440266"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:56:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="704502565"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="704502565"
Received: from fmkearin-mobl.ger.corp.intel.com (HELO [10.252.9.26])
 ([10.252.9.26])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:56:25 -0800
Message-ID: <76d0d9cd-5672-2e57-ca56-5dafdce1c2c6@intel.com>
Date: Wed, 22 Feb 2023 15:56:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.7.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230222152641.1491307-1-jonathan.cavitt@intel.com>
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

On 22/02/2023 15:26, Jonathan Cavitt wrote:
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
> remove the check that asserts otherwise.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Hopefully CI will be happy now,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 3 ---
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c            | 3 ++-
>   2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index defece0bcb81..1659ada4ce33 100644
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
