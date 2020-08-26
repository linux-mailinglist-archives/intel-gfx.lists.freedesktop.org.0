Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05E6253120
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FD56E3C7;
	Wed, 26 Aug 2020 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 046B989E3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:21:19 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id c12so1458584qtn.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9cipQfYQtv7cAiG+G38dpVGRbXrdKVedcuYm2vqWBLE=;
 b=r/aSAxJIwBhxZNYLfslR2WgJGk8qwXY7iEQclmhmk8/Z831e3QGoww9xiThSt0fEU1
 3PCNg6JDfrF1/obSDOg5HsFvZFIVHfQRu1wEC8OOFd01VUmXaBhZfoP40svMW802E1Tf
 3JM0RIrOw2BqmfIUSfn+mz+17yNzZAIeFBAzVEuU92gtGA0FhaBtdyMpFRnKxer1CMCB
 uRQRHSXbROCHtEjVH2hlrpYARZm43Cce7Ri3XnIpVGznmEarT4V3wLqHduh1Bx6VHn2P
 SpXJ+RpUhQnm0DVrncjQNiJ0vYYkEqEu1U1x+3Xu36kJKVEtOiBRhvf0vTaw+hdySoFf
 ns/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9cipQfYQtv7cAiG+G38dpVGRbXrdKVedcuYm2vqWBLE=;
 b=ZY1/ODYW2RvSHRKainCgmL00eYhTGVN+MGl9IJRUSIcZkYq9E2Z9W/xu/hRLEuY0NN
 xgkCvnRyJbv4sfwRhoSugNJgkmjBd5yO22+x/QOFvOzLhjWsF5B4r7FE3SnMgUPlXXyk
 wL+bkNhlLcOlSgaltTu5NBjR1U750vc3g/QRSLOr4f3hlWVb8n95teDA0n7bipshLpRA
 XXSOeblFB3bIcNYTkgKAMy0QuyqWKQthvvhyEUj0C7+8pZq6wzQUHzCcU494Y2boqFTc
 cyMMt5M+j+92rhSu2hUnYWHnR5sFid1d9Ftul9R3tq3YsWUUXsMawZRWSZge0IpJVwNr
 GLnQ==
X-Gm-Message-State: AOAM530ve6L0yQ4AvYCxWRMJd9ARB2N5kNU85WVdg1NfJu7ZlNv7eDON
 eL1gD6asqOoDDH8ybqtCCzdFXA==
X-Google-Smtp-Source: ABdhPJzkL+VbMNqXk0VI6usc3IzWafauyYNT0NkD01Zs9u4SVmyMN6cWX67eat1DeaEj/WIGp5aZEg==
X-Received: by 2002:ac8:7156:: with SMTP id h22mr14460468qtp.36.1598451678946; 
 Wed, 26 Aug 2020 07:21:18 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:4a00])
 by smtp.gmail.com with ESMTPSA id x29sm1976087qtv.80.2020.08.26.07.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 07:21:17 -0700 (PDT)
Date: Wed, 26 Aug 2020 10:20:02 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200826142002.GA988805@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-3-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-3-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 2/8] mm: Use find_get_swap_page in memcontrol
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 07:48:44PM +0100, Matthew Wilcox (Oracle) wrote:
> The current code does not protect against swapoff of the underlying
> swap device, so this is a bug fix as well as a worthwhile reduction in
> code complexity.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  mm/memcontrol.c | 25 ++-----------------------
>  1 file changed, 2 insertions(+), 23 deletions(-)
> 
> diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> index b807952b4d43..4075f214a841 100644
> --- a/mm/memcontrol.c
> +++ b/mm/memcontrol.c
> @@ -5539,35 +5539,14 @@ static struct page *mc_handle_swap_pte(struct vm_area_struct *vma,
>  static struct page *mc_handle_file_pte(struct vm_area_struct *vma,
>  			unsigned long addr, pte_t ptent, swp_entry_t *entry)
>  {
> -	struct page *page = NULL;
> -	struct address_space *mapping;
> -	pgoff_t pgoff;
> -
>  	if (!vma->vm_file) /* anonymous vma */
>  		return NULL;
>  	if (!(mc.flags & MOVE_FILE))
>  		return NULL;
>  
> -	mapping = vma->vm_file->f_mapping;
> -	pgoff = linear_page_index(vma, addr);
> -
>  	/* page is moved even if it's not RSS of this task(page-faulted). */
> -#ifdef CONFIG_SWAP
> -	/* shmem/tmpfs may report page out on swap: account for that too. */
> -	if (shmem_mapping(mapping)) {
> -		page = find_get_entry(mapping, pgoff);
> -		if (xa_is_value(page)) {
> -			swp_entry_t swp = radix_to_swp_entry(page);
> -			*entry = swp;
> -			page = find_get_page(swap_address_space(swp),
> -					     swp_offset(swp));
> -		}
> -	} else
> -		page = find_get_page(mapping, pgoff);
> -#else
> -	page = find_get_page(mapping, pgoff);
> -#endif
> -	return page;
> +	return find_get_swap_page(vma->vm_file->f_mapping,
> +			linear_page_index(vma, addr));

The refactor makes sense to me, but the name is confusing. We're not
looking for a swap page, we're primarily looking for a file page in
the page cache mapping that's handed in. Only in the special case
where it's a shmem mapping and there is a swap entry do we consult the
auxiliary swap cache.

How about find_get_page_or_swapcache()? find_get_page_shmemswap()?
Maybe you have a better idea. It's a fairly specialized operation that
isn't widely used, so a longer name isn't a bad thing IMO.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
