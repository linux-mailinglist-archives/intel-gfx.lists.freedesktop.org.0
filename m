Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE7A253251
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B916E135;
	Wed, 26 Aug 2020 14:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97A36E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZzsUdze8ZxaoitbjHVszLwTb08J5c1Hia45JcEtljE4=; b=jgWPg7Yh9RXA+VJEzrAs7yZ/cv
 +6tN1LkkGojOebzqvD2JVawUFjCGG8yz0u3rvFz6guuz0w3WLWXCE2k+oUxZZAW0Pw8Z4yBYImyEb
 eDFlYc5+atk/9+/V+mG6AfdNRYL1RsPPEgmLItcpiUa60+BoQv8XhlBO6Mg9Y50S1qMzHBW7biAD6
 IKG4ppnZvdtgSSnPglew/3F6cvM+/E0QB+NL0Bz4Cd/IsDMhZIcs2xcP6T3HvkjVevxf54/EddYV7
 1s2e3+aaPq/jvT8+AYFsONTFGnqNFl/zEhPqPGbwgccPvl9AACur8zEmREPk7vnlcEvygyUxxt5YY
 lRKWXq3Q==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kAwoY-0001wl-7b; Wed, 26 Aug 2020 14:54:14 +0000
Date: Wed, 26 Aug 2020 15:54:14 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Weiner <hannes@cmpxchg.org>
Message-ID: <20200826145414.GS17456@casper.infradead.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-3-willy@infradead.org>
 <20200826142002.GA988805@cmpxchg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826142002.GA988805@cmpxchg.org>
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

On Wed, Aug 26, 2020 at 10:20:02AM -0400, Johannes Weiner wrote:
> On Wed, Aug 19, 2020 at 07:48:44PM +0100, Matthew Wilcox (Oracle) wrote:
> > +	return find_get_swap_page(vma->vm_file->f_mapping,
> > +			linear_page_index(vma, addr));
> 
> The refactor makes sense to me, but the name is confusing. We're not
> looking for a swap page, we're primarily looking for a file page in
> the page cache mapping that's handed in. Only in the special case
> where it's a shmem mapping and there is a swap entry do we consult the
> auxiliary swap cache.
> 
> How about find_get_page_or_swapcache()? find_get_page_shmemswap()?
> Maybe you have a better idea. It's a fairly specialized operation that
> isn't widely used, so a longer name isn't a bad thing IMO.

Yeah, I had trouble with the naming here too.

get_page_even_from_swap()
find_get_shmem_page()

or maybe refactor the whole thing:

	struct page *page = find_get_entry(mapping, index);
	page = find_swap_page(mapping, page);

struct page *find_swap_page(struct address_space *mapping, struct page *page)
{
	swp_entry_t swp;
	struct swap_info_struct *si;

	if (!xa_is_value(page))
		return page;
	if (!shmem_mapping(mapping))
		return NULL;

	...
}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
