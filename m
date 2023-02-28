Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBC06A5A99
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 15:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E66610E200;
	Tue, 28 Feb 2023 14:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBCD10E200
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677593333; x=1709129333;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hDW5fM7kPcYrMpWbLIxJw/aYCPTiJH/zRN7/g033tDE=;
 b=YIEZtjLbktUDcZ5d7ox7vYTMR/zrUut3bm5AfV7JVzqWUMC3cwJJDABz
 qeOcNKJiVcDMAsNe07//6E8O/AvxloK6RZuug2GKL9c99zCwSrNZLywxh
 ZZhv+8X/f5rfKiQb/rRsRrMkyOJoOot27vr69b/VoGKhNRT6gyGweo7Hy
 r8HeYPnQFAeVXRjj8o0DvwkWKBemdhXrxkTEye34VRKe0pZswfw1vUk+z
 e+bASxhMItJ1UeiI2/bqUNUIFFOoT6Q8QvS3J/4xBIarQDrcYBLek+JpV
 JEEzhJqGmO5uVIwJX6nN6sUBe52/ZnvNxc7kz8tpQgsiPfMjO1D8bsa3U g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="317940394"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="317940394"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 06:08:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="738174878"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="738174878"
Received: from mistoan-mobl.ger.corp.intel.com (HELO [10.252.9.93])
 ([10.252.9.93])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 06:08:50 -0800
Message-ID: <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
Date: Tue, 28 Feb 2023 14:08:48 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
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

On 27/02/2023 17:19, Jonathan Cavitt wrote:
> Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock selftests into
> live selftests as their requirements have recently become platform-dependent.
> Additionally, apply necessary platform dependency checks to these tests.
> 
> v2: Reorder
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

r-b still stands for the series. Note that CI is busted atm though, so 
we can't merge this yet. Likely need to re-trigger testing for the 
series once CI/drm-tip is working again.


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
