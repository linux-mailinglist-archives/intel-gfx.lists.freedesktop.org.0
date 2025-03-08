Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA5FA596F9
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 15:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D993410E468;
	Mon, 10 Mar 2025 14:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="DP9QJhXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Sat, 08 Mar 2025 05:37:09 UTC
Received: from out30-131.freemail.mail.aliyun.com
 (out30-131.freemail.mail.aliyun.com [115.124.30.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B39A910E1FB
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Mar 2025 05:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1741412227; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
 bh=QwGokHK8MWELbszfeUznitYDMBt/G0N6Dzae0aons/k=;
 b=DP9QJhXXtN8oUBRQXnZpF2hMr2W3hGgGdfWzE5j1FylkQp5W15649pOQMiUKu20RiLFhnTTEkE3ztcR0Fh7EEHh6DMMxKyxHtKCBUXVLtg0Ov10L3ZUnZ6IwO1m+Fk3Ng+uDTb+bxxfO38lnR8O6VhOnDEM44NTPZNpTinD+xQY=
Received: from 30.221.80.100(mailfrom:baolin.wang@linux.alibaba.com
 fp:SMTPD_---0WQu7mhO_1741411914 cluster:ay36) by smtp.aliyun-inc.com;
 Sat, 08 Mar 2025 13:31:55 +0800
Message-ID: <88098e5c-1514-4d8d-a220-531a9b473ae3@linux.alibaba.com>
Date: Sat, 8 Mar 2025 13:31:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/11] shmem: Add shmem_writeout()
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
Cc: linux-mm@kvack.org, intel-gfx@lists.freedesktop.org
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-9-willy@infradead.org>
From: Baolin Wang <baolin.wang@linux.alibaba.com>
In-Reply-To: <20250307135414.2987755-9-willy@infradead.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 10 Mar 2025 14:02:27 +0000
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



On 2025/3/7 21:54, Matthew Wilcox (Oracle) wrote:
> This will be the replacement for shmem_writepage().
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

LGTM.
Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>

> ---
>   include/linux/shmem_fs.h |  7 ++++---
>   mm/shmem.c               | 20 ++++++++++++++------
>   2 files changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/include/linux/shmem_fs.h b/include/linux/shmem_fs.h
> index 0b273a7b9f01..5f03a39a26f7 100644
> --- a/include/linux/shmem_fs.h
> +++ b/include/linux/shmem_fs.h
> @@ -104,10 +104,11 @@ static inline bool shmem_mapping(struct address_space *mapping)
>   	return false;
>   }
>   #endif /* CONFIG_SHMEM */
> -extern void shmem_unlock_mapping(struct address_space *mapping);
> -extern struct page *shmem_read_mapping_page_gfp(struct address_space *mapping,
> +void shmem_unlock_mapping(struct address_space *mapping);
> +struct page *shmem_read_mapping_page_gfp(struct address_space *mapping,
>   					pgoff_t index, gfp_t gfp_mask);
> -extern void shmem_truncate_range(struct inode *inode, loff_t start, loff_t end);
> +int shmem_writeout(struct folio *folio, struct writeback_control *wbc);
> +void shmem_truncate_range(struct inode *inode, loff_t start, loff_t end);
>   int shmem_unuse(unsigned int type);
>   
>   #ifdef CONFIG_TRANSPARENT_HUGEPAGE
> diff --git a/mm/shmem.c b/mm/shmem.c
> index ba162e991285..427b7f70fffb 100644
> --- a/mm/shmem.c
> +++ b/mm/shmem.c
> @@ -1536,12 +1536,20 @@ int shmem_unuse(unsigned int type)
>   	return error;
>   }
>   
> -/*
> - * Move the page from the page cache to the swap cache.
> - */
>   static int shmem_writepage(struct page *page, struct writeback_control *wbc)
>   {
> -	struct folio *folio = page_folio(page);
> +	return shmem_writeout(page_folio(page), wbc);
> +}
> +
> +/**
> + * shmem_writeout - Write the folio to swap
> + * @folio: The folio to write
> + * @wbc: How writeback is to be done
> + *
> + * Move the folio from the page cache to the swap cache.
> + */
> +int shmem_writeout(struct folio *folio, struct writeback_control *wbc)
> +{
>   	struct address_space *mapping = folio->mapping;
>   	struct inode *inode = mapping->host;
>   	struct shmem_inode_info *info = SHMEM_I(inode);
> @@ -1586,9 +1594,8 @@ static int shmem_writepage(struct page *page, struct writeback_control *wbc)
>   try_split:
>   		/* Ensure the subpages are still dirty */
>   		folio_test_set_dirty(folio);
> -		if (split_huge_page_to_list_to_order(page, wbc->list, 0))
> +		if (split_folio_to_list(folio, wbc->list))
>   			goto redirty;
> -		folio = page_folio(page);
>   		folio_clear_dirty(folio);
>   	}
>   
> @@ -1660,6 +1667,7 @@ static int shmem_writepage(struct page *page, struct writeback_control *wbc)
>   	folio_unlock(folio);
>   	return 0;
>   }
> +EXPORT_SYMBOL_GPL(shmem_writeout);
>   
>   #if defined(CONFIG_NUMA) && defined(CONFIG_TMPFS)
>   static void shmem_show_mpol(struct seq_file *seq, struct mempolicy *mpol)
