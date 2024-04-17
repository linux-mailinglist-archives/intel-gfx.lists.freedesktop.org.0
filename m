Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34578A888A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 18:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B096C11368D;
	Wed, 17 Apr 2024 16:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNXEcJEA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C031F113681;
 Wed, 17 Apr 2024 16:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713370332; x=1744906332;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=n5yFWVIEom+oTBIaB2gJCUsYiOMqwG4hNCHVLo7ffrM=;
 b=BNXEcJEAl+H8DHzurWpBeAhqemdsHyNXinryTUuGldKlduD2QYdAvMy+
 j1Bb89vN5dKhqPFnCMSVuam+Y3nULoofZBCoH/Xx0FsSIr7vQPxNYzwWe
 Nz1ipukcCV6vXz+C37L7h61nhzA1WmNEqcCDb1THu8KZWSR8RNNkeTMXm
 iCkTHFEjddPJlQjVVOngO7YpS0jLLNbx0usDuld1Q5CXKfGklBLLwcGYv
 KN+UCnT0dHrki3B+Ms3Co3Yxfw8fh2/QM/N65VtspEEUexe4V/5fAfM7u
 AZjnWScdUs9GtlrN9tNTez393i1NVV/sYYF8P7WcXXZbQlOpuGRvq1EOj A==;
X-CSE-ConnectionGUID: pO3mB42DQ0SedRBiM3EHaA==
X-CSE-MsgGUID: sGU76kLCS0Wnml8drgFLyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19577427"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="19577427"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 09:12:11 -0700
X-CSE-ConnectionGUID: UcHZcT+NRUioq2Cj/un9Lg==
X-CSE-MsgGUID: t2jebe90S1uf3cgyK2HwFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27309342"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2024 09:12:09 -0700
Date: Wed, 17 Apr 2024 18:11:49 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev <igt-dev@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH i-g-t] i915/gem_mmap_offset: Partial mmap and munmap
Message-ID: <20240417161149.7c3iu4trx26l6sk2@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev <igt-dev@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@linux.intel.com>
References: <20240412004255.288046-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240412004255.288046-1-andi.shyti@linux.intel.com>
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

Hi Andi,
On 2024-04-12 at 02:42:55 +0200, Andi Shyti wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
> 
> Based on a test case developed by Lionel Landwerlin, this exercises
> creation of partial mmaps using both direct methods of a partial mmap()
> (where the mmap() only covers a portion of the object) and
> munmap() to do the same.
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  tests/intel/gem_mmap_offset.c | 84 +++++++++++++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> diff --git a/tests/intel/gem_mmap_offset.c b/tests/intel/gem_mmap_offset.c
> index 95d2158ca88f..0ba2f9591f85 100644
> --- a/tests/intel/gem_mmap_offset.c
> +++ b/tests/intel/gem_mmap_offset.c
> @@ -56,6 +56,8 @@
>   * SUBTEST: isolation
>   * SUBTEST: oob-read
>   * SUBTEST: open-flood
> + * SUBTEST: partial-mmap
> + * SUBTEST: partial-unmap
>   * SUBTEST: perf
>   * SUBTEST: pf-nonblock
>   * SUBTEST: ptrace
> @@ -874,6 +876,83 @@ static void blt_coherency(int i915)
>  	igt_assert_f(compare_ok, "Problem with coherency, flush is too late\n");
>  }
>  
> +static void partial_mmap(int i915)
> +{
> +	uint32_t handle;
> +
> +	handle = gem_create(i915, SZ_2M);
> +
> +	for_each_mmap_offset_type(i915, t) {
> +		struct drm_i915_gem_mmap_offset arg = {
> +			.handle = handle,
> +			.flags = t->type,
> +		};
> +		uint32_t *ptr;
> +
> +		if (mmap_offset_ioctl(i915, &arg))
> +			continue;
> +
> +		ptr = mmap(0, SZ_4K, PROT_WRITE, MAP_SHARED, i915, arg.offset);
> +		if (ptr == MAP_FAILED)
> +			continue;
> +
> +		memset(ptr, 0xcc, SZ_4K);
> +		munmap(ptr, SZ_4K);
> +
> +		ptr = mmap(0, SZ_4K, PROT_READ, MAP_SHARED, i915, arg.offset + SZ_2M - SZ_4K);
> +		igt_assert(ptr != MAP_FAILED);
> +
> +		for (uint32_t i = 0; i < SZ_4K / sizeof(uint32_t); i++)
> +			igt_assert_eq_u32(ptr[i], 0);
> +
> +		munmap(ptr, SZ_4K);
> +	}
> +
> +	gem_close(i915, handle);
> +}
> +
> +static void partial_unmap(int i915)
> +{
> +	uint32_t handle;
> +
> +	handle = gem_create(i915, SZ_2M);
> +
> +	for_each_mmap_offset_type(i915, t) {
> +		uint8_t *ptr_a, *ptr_b;
> +
> +		/* mmap the same GEM BO twice */
> +		ptr_a = __mmap_offset(i915, handle, 0, SZ_2M,
> +				PROT_READ | PROT_WRITE,
> +				t->type);
> +		if (!ptr_a)
> +			continue;
> +
> +		ptr_b = __mmap_offset(i915, handle, 0, SZ_2M,
> +				PROT_READ | PROT_WRITE,
> +				t->type);
> +		if (!ptr_b)
> +			continue;

Nit here: before continue ptr_a should be unmaped.

Regards,
Kamil

> +
> +		/* unmap the first mapping but the last 4k */
> +		munmap(ptr_a, SZ_2M - SZ_4K);
> +
> +		/* memset that remaining 4k with 0xcc */
> +		memset(ptr_a + SZ_2M - SZ_4K, 0xcc, SZ_4K);
> +
> +		/* memset the first page of the 2Mb with 0xdd */
> +		memset(ptr_b, 0xdd, SZ_4K);
> +
> +		for (uint32_t i = 0; i < SZ_4K; i++)
> +			igt_assert_eq_u32(ptr_a[SZ_2M - SZ_4K + i], 0xcc);
> +
> +		munmap(ptr_a + SZ_2M - SZ_4K, SZ_4K);
> +		memset(ptr_b, 0, SZ_2M);
> +		munmap(ptr_b, SZ_2M);
> +	}
> +
> +	gem_close(i915, handle);
> +}
> +
>  static int mmap_gtt_version(int i915)
>  {
>  	int gtt_version = -1;
> @@ -931,6 +1010,11 @@ igt_main
>  	igt_subtest_f("open-flood")
>  		open_flood(i915, 20);
>  
> +	igt_subtest_f("partial-mmap")
> +		partial_mmap(i915);
> +	igt_subtest_f("partial-unmap")
> +		partial_unmap(i915);
> +
>  	igt_subtest_with_dynamic("clear") {
>  		for_each_memory_region(r, i915) {
>  			igt_dynamic_f("%s", r->name)
> -- 
> 2.43.0
> 
