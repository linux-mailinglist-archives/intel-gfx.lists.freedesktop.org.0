Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4189460C6E2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 10:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7690D10E29C;
	Tue, 25 Oct 2022 08:50:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8440410E29C
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 08:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666687818; x=1698223818;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+sq3Tuq3OmApd38934B0rmhnfZ4wp2+OMxOZQWK5IZo=;
 b=Rc61xcXXQrW4T4fPoaMzRMeK10+kwNgBrTzlBd2wYlT34U9tqtGN11w0
 gnpXcPY/3SgBJ0zrq2Tyo7D/4l1uFgoUli3+68YE6yyW//fHSCQErC4/2
 xn9QvMXMmtz0tHpahoVqfyBfnuiPjcHkmA4SkdLLBoeZIU3mG9YvC8WDC
 7z9bUoZ+FhrUaiF8zPmgg1ZRI0BglfhtqtAwdHAPn2+rce/OOsXeEhLpZ
 TZeYeT6NoLeMHdmRJ/zpotS+5HAsrTDd92dqmgwJVPzVFKe6YvMPT3ed9
 iObrbP0JRgG4mB4mhhLhtY7iA+6/iALSkRwpoTipHUxge84qUl48Ig4rH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="288021751"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="288021751"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 01:50:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="700465631"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="700465631"
Received: from anagimen-mobl1.ger.corp.intel.com (HELO [10.213.203.143])
 ([10.213.203.143])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 01:50:16 -0700
Message-ID: <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
Date: Tue, 25 Oct 2022 09:50:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Mel Gorman <mgorman@techsingularity.net>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221024142321.f2etddxtqa47bib7@techsingularity.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] mm/huge_memory: do not clobber swp_entry_t during
 THP split
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
Cc: Linux MM <linux-mm@kvack.org>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>, Matthew Auld <matthew.auld@intel.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/10/2022 15:23, Mel Gorman wrote:
> On Mon, Oct 24, 2022 at 02:04:50PM +0100, Tvrtko Ursulin wrote:
>>
>> Hi Mel, mm experts,
>>
>> With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:
>>
> 
> Thanks for the report. As shmem pages pages are allocated via vma_alloc_folio
> and are compound pages, can you try the following patch please?  If it
> still triggers, please post the new oops as it'll include the tail page
> information.
> 
> --8<--
> From: Hugh Dickins <hughd@google.com>
> Subject: [PATCH] mm: prep_compound_tail() clear page->private
> 
> Although page allocation always clears page->private in the first page
> or head page of an allocation, it has never made a point of clearing
> page->private in the tails (though 0 is often what is already there).
> 
> But now commit 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t
> during THP split") issues a warning when page_tail->private is found to
> be non-0 (unless it's swapcache).
> 
> Change that warning to dump page_tail (which also dumps head), instead
> of just the head: so far we have seen dead000000000122, dead000000000003,
> dead000000000001 or 0000000000000002 in the raw output for tail private.
> 
> We could just delete the warning, but today's consensus appears to want
> page->private to be 0, unless there's a good reason for it to be set:
> so now clear it in prep_compound_tail() (more general than just for THP;
> but not for high order allocation, which makes no pass down the tails).
> 
> Fixes: 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split")
> Signed-off-by: Hugh Dickins <hughd@google.com>
> Cc: Mel Gorman <mgorman@techsingularity.net>
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: <stable@vger.kernel.org>
> ---
>   mm/huge_memory.c | 2 +-
>   mm/page_alloc.c  | 1 +
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/huge_memory.c b/mm/huge_memory.c
> index 03fc7e5edf07..561a42567477 100644
> --- a/mm/huge_memory.c
> +++ b/mm/huge_memory.c
> @@ -2462,7 +2462,7 @@ static void __split_huge_page_tail(struct page *head, int tail,
>   	 * Fix up and warn once if private is unexpectedly set.
>   	 */
>   	if (!folio_test_swapcache(page_folio(head))) {
> -		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, head);
> +		VM_WARN_ON_ONCE_PAGE(page_tail->private != 0, page_tail);
>   		page_tail->private = 0;
>   	}
>   
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index b5a6c815ae28..218b28ee49ed 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -807,6 +807,7 @@ static void prep_compound_tail(struct page *head, int tail_idx)
>   
>   	p->mapping = TAIL_MAPPING;
>   	set_compound_head(p, head);
> +	set_page_private(p, 0);
>   }
>   
>   void prep_compound_page(struct page *page, unsigned int order)

The patch seems to fix our CI runs. Is it considered final version? If 
so I can temporarily put it in until it arrives via the next rc - 
assuming that would be the flow from upstream pov?

Regards,

Tvrtko
