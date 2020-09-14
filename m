Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D78268A05
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 13:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5408389E7B;
	Mon, 14 Sep 2020 11:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52EC889E7B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 11:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3a9YiCRLSdfxT+zjyDP/va2bUubeehwvzanOvcg0GxQ=; b=ZnFpgSWDEryPzF8z+fHhQ7Shl2
 hBFm8DenBw+/t889jQOCGrpQ0rDHOLM5QHUJqsC7TICkw+13dTLpYnqWx0CdPTLoOyu8laVcTlmOI
 yxVmM2AFdyZUGoWpMbvqHA5MZw4ppabm02Qyz8GBvL0/8wsASVW0xm3Y+5PhYEfz90lpQXdG97AoZ
 /tzQ02AOeLp7eJnKP/zIe+sMez7ySzubAluHZ3CsL8xYtrxf6O0oJArjOA4k1S28+zlTh5aIiJELq
 b2uZ3guQq9luXS2rnz4d3U2dyMC2M1lebD8l63wWox7AXf2XZ0FgL6q14dyqyK+5EkK3hNS7GkwPW
 wkHTxNDA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kHme2-0005if-Uf; Mon, 14 Sep 2020 11:27:39 +0000
Date: Mon, 14 Sep 2020 12:27:38 +0100
From: Matthew Wilcox <willy@infradead.org>
To: kernel test robot <lkp@intel.com>
Message-ID: <20200914112738.GM6583@casper.infradead.org>
References: <20200910183318.20139-7-willy@infradead.org>
 <20200914085545.GB28738@shao2-debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914085545.GB28738@shao2-debian>
Subject: Re: [Intel-gfx] [mm] 2037ab69a5: BUG:KASAN:null-ptr-deref_in_t
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
 intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org, lkp@lists.01.org,
 Matthew Auld <matthew.auld@intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 14, 2020 at 04:55:45PM +0800, kernel test robot wrote:
> Greeting,
> 
> FYI, we noticed the following commit (built with gcc-9):
> 
> commit: 2037ab69a5cd8afe58347135010f6160ea368dd0 ("mm: Convert find_get_entry to return the head page")

Thank you!

diff --git a/mm/swap_state.c b/mm/swap_state.c
index c2fb62f660a5..a22c2430e80c 100644
--- a/mm/swap_state.c
+++ b/mm/swap_state.c
@@ -427,6 +427,8 @@ struct page *find_get_incore_page(struct address_space *mapping, pgoff_t index)
 	struct swap_info_struct *si;
 	struct page *page = find_get_entry(mapping, index);
 
+	if (!page)
+		return page;
 	if (!xa_is_value(page))
 		return find_subpage(page, index);
 	if (!shmem_mapping(mapping))

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
