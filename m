Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5569EAA1728
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 19:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8547110E06A;
	Tue, 29 Apr 2025 17:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNaG82Lm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D8810E06A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 17:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745948678; x=1777484678;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YihdS4lIlPx1QvCRHI6VlfjDGJoGrUsNEFaaqylzs1A=;
 b=MNaG82Lmq/6t9cU+0R9nXMKUFSINNJDHxdJfccBp9sCmyHC0AjO8/NqY
 PfO5R7DMYtGh0agzv5ACO567Stlh0PWFr7kDmuwo+ul+QtRRjR/uQ19G3
 KuyFxS1mLm1NCgK/g7IJd/w3LsqX0bUEZV5jLnbNuEhXxsRRIYI+my4pe
 bY6CpYxKU5yXwrB7W84MuVjOA8aj6V9dvra1i17yksNdKjufEb+EQg9m2
 YGufhHYl2UXLboAqBN9C7hBM9R5Lu0VYuVnArH3hvi/K3mbG8WEtcVQIJ
 j4FJe0mW2/QpRHmHVS7m4Fqz5MkV/mnHkaPRgUYNQDCB2NMoiNfEVes+Q g==;
X-CSE-ConnectionGUID: q8Ezj3l+QrSxGVmJhDfGyQ==
X-CSE-MsgGUID: u0aJnkCKR6OU8Fw4fPlgiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="64999829"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="64999829"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 10:44:34 -0700
X-CSE-ConnectionGUID: 71ZXWDiaR8mGsyo071y1aQ==
X-CSE-MsgGUID: ZUYBiCRvRZWmgpkXX6ipMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="139077844"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 29 Apr 2025 10:44:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Apr 2025 20:44:27 +0300
Date: Tue, 29 Apr 2025 20:44:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Baolin Wang <baolin.wang@linux.alibaba.com>
Cc: akpm@linux-foundation.org, hughd@google.com, willy@infradead.org,
 david@redhat.com, wangkefeng.wang@huawei.com, 21cnbao@gmail.com,
 ryan.roberts@arm.com, ioworker0@gmail.com, da.gomez@samsung.com,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Eero Tamminen <eero.t.tamminen@intel.com>
Subject: [REGRESSION] Re: [PATCH v3 3/6] mm: shmem: add large folio support
 for tmpfs
Message-ID: <aBEP-6iFhIC87zmb@intel.com>
References: <cover.1732779148.git.baolin.wang@linux.alibaba.com>
 <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <035bf55fbdebeff65f5cb2cdb9907b7d632c3228.1732779148.git.baolin.wang@linux.alibaba.com>
X-Patchwork-Hint: comment
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

On Thu, Nov 28, 2024 at 03:40:41PM +0800, Baolin Wang wrote:
> Add large folio support for tmpfs write and fallocate paths matching the
> same high order preference mechanism used in the iomap buffered IO path
> as used in __filemap_get_folio().
> 
> Add shmem_mapping_size_orders() to get a hint for the orders of the folio
> based on the file size which takes care of the mapping requirements.
> 
> Traditionally, tmpfs only supported PMD-sized large folios. However nowadays
> with other file systems supporting any sized large folios, and extending
> anonymous to support mTHP, we should not restrict tmpfs to allocating only
> PMD-sized large folios, making it more special. Instead, we should allow
> tmpfs can allocate any sized large folios.
> 
> Considering that tmpfs already has the 'huge=' option to control the PMD-sized
> large folios allocation, we can extend the 'huge=' option to allow any sized
> large folios. The semantics of the 'huge=' mount option are:
> 
> huge=never: no any sized large folios
> huge=always: any sized large folios
> huge=within_size: like 'always' but respect the i_size
> huge=advise: like 'always' if requested with madvise()
> 
> Note: for tmpfs mmap() faults, due to the lack of a write size hint, still
> allocate the PMD-sized huge folios if huge=always/within_size/advise is set.
> 
> Moreover, the 'deny' and 'force' testing options controlled by
> '/sys/kernel/mm/transparent_hugepage/shmem_enabled', still retain the same
> semantics. The 'deny' can disable any sized large folios for tmpfs, while
> the 'force' can enable PMD sized large folios for tmpfs.
> 
> Co-developed-by: Daniel Gomez <da.gomez@samsung.com>
> Signed-off-by: Daniel Gomez <da.gomez@samsung.com>
> Signed-off-by: Baolin Wang <baolin.wang@linux.alibaba.com>

Hi,

This causes a huge regression in Intel iGPU texturing performance.

I haven't had time to look at this in detail, but presumably the
problem is that we're no longer getting huge pages from our
private tmpfs mount (done in i915_gemfs_init()).

Some more details at
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13845

> ---
>  mm/shmem.c | 99 ++++++++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 81 insertions(+), 18 deletions(-)
> 
> diff --git a/mm/shmem.c b/mm/shmem.c
> index 7595c3db4c1c..54eaa724c153 100644
> --- a/mm/shmem.c
> +++ b/mm/shmem.c
> @@ -554,34 +554,100 @@ static bool shmem_confirm_swap(struct address_space *mapping,
>  
>  static int shmem_huge __read_mostly = SHMEM_HUGE_NEVER;
>  
> +/**
> + * shmem_mapping_size_orders - Get allowable folio orders for the given file size.
> + * @mapping: Target address_space.
> + * @index: The page index.
> + * @write_end: end of a write, could extend inode size.
> + *
> + * This returns huge orders for folios (when supported) based on the file size
> + * which the mapping currently allows at the given index. The index is relevant
> + * due to alignment considerations the mapping might have. The returned order
> + * may be less than the size passed.
> + *
> + * Return: The orders.
> + */
> +static inline unsigned int
> +shmem_mapping_size_orders(struct address_space *mapping, pgoff_t index, loff_t write_end)
> +{
> +	unsigned int order;
> +	size_t size;
> +
> +	if (!mapping_large_folio_support(mapping) || !write_end)
> +		return 0;
> +
> +	/* Calculate the write size based on the write_end */
> +	size = write_end - (index << PAGE_SHIFT);
> +	order = filemap_get_order(size);
> +	if (!order)
> +		return 0;
> +
> +	/* If we're not aligned, allocate a smaller folio */
> +	if (index & ((1UL << order) - 1))
> +		order = __ffs(index);
> +
> +	order = min_t(size_t, order, MAX_PAGECACHE_ORDER);
> +	return order > 0 ? BIT(order + 1) - 1 : 0;
> +}
> +
>  static unsigned int shmem_huge_global_enabled(struct inode *inode, pgoff_t index,
>  					      loff_t write_end, bool shmem_huge_force,
> +					      struct vm_area_struct *vma,
>  					      unsigned long vm_flags)
>  {
> +	unsigned int maybe_pmd_order = HPAGE_PMD_ORDER > MAX_PAGECACHE_ORDER ?
> +		0 : BIT(HPAGE_PMD_ORDER);
> +	unsigned long within_size_orders;
> +	unsigned int order;
> +	pgoff_t aligned_index;
>  	loff_t i_size;
>  
> -	if (HPAGE_PMD_ORDER > MAX_PAGECACHE_ORDER)
> -		return 0;
>  	if (!S_ISREG(inode->i_mode))
>  		return 0;
>  	if (shmem_huge == SHMEM_HUGE_DENY)
>  		return 0;
>  	if (shmem_huge_force || shmem_huge == SHMEM_HUGE_FORCE)
> -		return BIT(HPAGE_PMD_ORDER);
> +		return maybe_pmd_order;
>  
> +	/*
> +	 * The huge order allocation for anon shmem is controlled through
> +	 * the mTHP interface, so we still use PMD-sized huge order to
> +	 * check whether global control is enabled.
> +	 *
> +	 * For tmpfs mmap()'s huge order, we still use PMD-sized order to
> +	 * allocate huge pages due to lack of a write size hint.
> +	 *
> +	 * Otherwise, tmpfs will allow getting a highest order hint based on
> +	 * the size of write and fallocate paths, then will try each allowable
> +	 * huge orders.
> +	 */
>  	switch (SHMEM_SB(inode->i_sb)->huge) {
>  	case SHMEM_HUGE_ALWAYS:
> -		return BIT(HPAGE_PMD_ORDER);
> +		if (vma)
> +			return maybe_pmd_order;
> +
> +		return shmem_mapping_size_orders(inode->i_mapping, index, write_end);
>  	case SHMEM_HUGE_WITHIN_SIZE:
> -		index = round_up(index + 1, HPAGE_PMD_NR);
> -		i_size = max(write_end, i_size_read(inode));
> -		i_size = round_up(i_size, PAGE_SIZE);
> -		if (i_size >> PAGE_SHIFT >= index)
> -			return BIT(HPAGE_PMD_ORDER);
> +		if (vma)
> +			within_size_orders = maybe_pmd_order;
> +		else
> +			within_size_orders = shmem_mapping_size_orders(inode->i_mapping,
> +								       index, write_end);
> +
> +		order = highest_order(within_size_orders);
> +		while (within_size_orders) {
> +			aligned_index = round_up(index + 1, 1 << order);
> +			i_size = max(write_end, i_size_read(inode));
> +			i_size = round_up(i_size, PAGE_SIZE);
> +			if (i_size >> PAGE_SHIFT >= aligned_index)
> +				return within_size_orders;
> +
> +			order = next_order(&within_size_orders, order);
> +		}
>  		fallthrough;
>  	case SHMEM_HUGE_ADVISE:
>  		if (vm_flags & VM_HUGEPAGE)
> -			return BIT(HPAGE_PMD_ORDER);
> +			return maybe_pmd_order;
>  		fallthrough;
>  	default:
>  		return 0;
> @@ -781,6 +847,7 @@ static unsigned long shmem_unused_huge_shrink(struct shmem_sb_info *sbinfo,
>  
>  static unsigned int shmem_huge_global_enabled(struct inode *inode, pgoff_t index,
>  					      loff_t write_end, bool shmem_huge_force,
> +					      struct vm_area_struct *vma,
>  					      unsigned long vm_flags)
>  {
>  	return 0;
> @@ -1176,7 +1243,7 @@ static int shmem_getattr(struct mnt_idmap *idmap,
>  			STATX_ATTR_NODUMP);
>  	generic_fillattr(idmap, request_mask, inode, stat);
>  
> -	if (shmem_huge_global_enabled(inode, 0, 0, false, 0))
> +	if (shmem_huge_global_enabled(inode, 0, 0, false, NULL, 0))
>  		stat->blksize = HPAGE_PMD_SIZE;
>  
>  	if (request_mask & STATX_BTIME) {
> @@ -1693,14 +1760,10 @@ unsigned long shmem_allowable_huge_orders(struct inode *inode,
>  		return 0;
>  
>  	global_orders = shmem_huge_global_enabled(inode, index, write_end,
> -						  shmem_huge_force, vm_flags);
> -	if (!vma || !vma_is_anon_shmem(vma)) {
> -		/*
> -		 * For tmpfs, we now only support PMD sized THP if huge page
> -		 * is enabled, otherwise fallback to order 0.
> -		 */
> +						  shmem_huge_force, vma, vm_flags);
> +	/* Tmpfs huge pages allocation */
> +	if (!vma || !vma_is_anon_shmem(vma))
>  		return global_orders;
> -	}
>  
>  	/*
>  	 * Following the 'deny' semantics of the top level, force the huge
> -- 
> 2.39.3
> 

-- 
Ville Syrjälä
Intel
