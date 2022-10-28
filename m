Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBBC61149D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 16:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B726610E84B;
	Fri, 28 Oct 2022 14:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8CE10E84B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 14:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666967505; x=1698503505;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uXp1ziQcdU7RDx9b/VQICaOGXn83NMCgon+RYlAuPiY=;
 b=iYyQN+ctiJ9RMoXx9iWny1zQNR4ar8XK4dmjLZFlXZSaSqCpMsOSzID6
 wPYQTJwgH8IgHpmR8ms3Yb0GmRclU/nXpyPlZ1TPgJQKZLTRtBl/ecOFx
 5mVV0CB80zQjgJF5GnfedMw2RBSyPO3G9X2wa9/x1p6dZyASbvHdtjd+T
 Hwq9gWSYEsjs6Fu0KGb62r4b4/Owm8iUbmXv37TuNyWd9JXiZAXnup4Wx
 +WjXjQ8L7wDDw497IMCFSjNZh/nflQ1BrcnLPqXM6hDDRapS6RE0g6squ
 JQN6q2rWaKLGhcssUV2RPDl7DAZB9D8O8fhXr81LZi4XtH9hwEHMiFODv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="372715536"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="372715536"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 07:31:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="758097231"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="758097231"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.162])
 ([10.213.5.162])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 07:31:43 -0700
Message-ID: <e5f03801-01b4-0bc8-2104-3e5b60490613@intel.com>
Date: Fri, 28 Oct 2022 16:31:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221028130635.465839-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221028130635.465839-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/userptr: restore probe_range
 behaviour
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
Cc: Vlastimil Babka <vbabka@suse.cz>, Matthew Wilcox <willy@infradead.org>,
 kernel test robot <oliver.sang@intel.com>, Yu Zhao <yuzhao@google.com>,
 "Liam R . Howlett" <Liam.Howlett@Oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28.10.2022 15:06, Matthew Auld wrote:
> The conversion looks harmless, however the addr value is updated inside
> the loop with the previous vm_end, which then incorrectly leads to
> for_each_vma_range() iterating over stuff outside the range we care
> about. Fix this by storing the end value separately. Also fix the case
> where the range doesn't intersect with any vma, or if the vma itself
> doesn't extend the entire range, which must mean we have hole at the
> end. Both should result in an error, as per the previous behaviour.
> 
> v2: Fix the cases where the range is empty, or if there's a hole at
> the end of the range
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7247
> Testcase: igt@gem_userptr_blits@probe
> Fixes: f683b9d61319 ("i915: use the VMA iterator")
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: Liam R. Howlett <Liam.Howlett@Oracle.com>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Yu Zhao <yuzhao@google.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 1b1a22716722..ca7a388ba2bf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
>   {
>   	VMA_ITERATOR(vmi, mm, addr);
>   	struct vm_area_struct *vma;
> +	unsigned long end = addr + len;
>   
>   	mmap_read_lock(mm);
> -	for_each_vma_range(vmi, vma, addr + len) {
> +	for_each_vma_range(vmi, vma, end) {
>   		/* Check for holes, note that we also update the addr below */
>   		if (vma->vm_start > addr)
>   			break;
> @@ -441,7 +442,7 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
>   	}
>   	mmap_read_unlock(mm);
>   
> -	if (vma)
> +	if (vma || addr < end)
>   		return -EFAULT;
>   	return 0;
>   }

