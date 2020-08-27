Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 403C625458F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 15:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ACFA6E0ED;
	Thu, 27 Aug 2020 13:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A726E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 13:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4Wky95+cp9t6Uc0O4qIN4Z6xGmvHn/NYIHDQjQIG07k=; b=b0qtqXGspyLjHuQD/EC9RMu68r
 R4fF8h5wxyM0dri1npgOSvdmAI/vTKaEGhRhGKIrKQsm7aXqeN9M/UQ2CnRm04AYEzZVa3InvywX7
 5f8OAOsZcoB7dBqYf7rax9NJJ5xzMQmikW+Ac6/+magIzfZJxDzbUjykY06V4w4GJ/Ui4XIEr8TRk
 GU6JX3PMGMkRr2HkVT+SpoitNA3ZB9usoyi4IMxXcUgYV408ZEfevURTjgH8kr/n9GiB3y9XsSVbS
 8zT0raF2qOSRpWk3ZVrteE0+kcDtbDRp+QLBtSHGg6QIfJNfA69Pet3xluPeLDchpOtD1B9/0WEcK
 cZJ/zZiQ==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kBHVF-00043a-G7; Thu, 27 Aug 2020 12:59:41 +0000
Date: Thu, 27 Aug 2020 13:59:41 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Johannes Weiner <hannes@cmpxchg.org>
Message-ID: <20200827125941.GG14765@casper.infradead.org>
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
> The refactor makes sense to me, but the name is confusing. We're not
> looking for a swap page, we're primarily looking for a file page in
> the page cache mapping that's handed in. Only in the special case
> where it's a shmem mapping and there is a swap entry do we consult the
> auxiliary swap cache.
> 
> How about find_get_page_or_swapcache()? find_get_page_shmemswap()?
> Maybe you have a better idea. It's a fairly specialized operation that
> isn't widely used, so a longer name isn't a bad thing IMO.

Got it.  find_get_incore_page().  I was going to go with inmem, but that
it matches mincore sold me on it.

/**
 * find_get_incore_page - Find and get a page from the page or swap caches.
 * @mapping: The address_space to search.
 * @index: The page cache index.
 *
 * This differs from find_get_page() in that it will also look for the
 * page in the swap cache.
 *
 * Return: The found page or %NULL.
 */

I was focusing too much on what the function did, not why it was doing it.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
