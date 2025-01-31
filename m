Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D0BA25075
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2025 23:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A52410E346;
	Sun,  2 Feb 2025 22:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.dev header.i=@linux.dev header.b="lrsblSRz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 414 seconds by postgrey-1.36 at gabe;
 Fri, 31 Jan 2025 20:34:44 UTC
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com
 [95.215.58.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F6610E1FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 20:34:44 +0000 (UTC)
Date: Fri, 31 Jan 2025 12:27:40 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1738355268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7BhC7vLoh7VtzfmXLESUsTqxQbrPIF6WzzF0QtgvNjc=;
 b=lrsblSRzlb3U+VBSguFAbcREpGVVQMrtG0UN6409a/fosRBCk4L0jLE6FhAQypEB2fAOSm
 N2A2tLZnVmRItxbwLORJuWRgDvy7Gkv2CDnNDSNBFBiBFJxyAqrUf95g9+GCYJkAmPEa8U
 BHDzzwIL0WWDQKyoESpoRnvF5jGA2nk=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Shakeel Butt <shakeel.butt@linux.dev>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, 
 David Airlie <airlied@gmail.com>, David Hildenbrand <david@redhat.com>,
 Hao Ge <gehao@kylinos.cn>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>, 
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, 
 Steven Rostedt <rostedt@goodmis.org>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Vlastimil Babka <vbabka@suse.cz>, Yosry Ahmed <yosryahmed@google.com>,
 Yu Zhao <yuzhao@google.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCHv3 02/11] drm/i915/gem: Convert __shmem_writeback() to
 folios
Message-ID: <gtknttjvbestmrulqy2w5afqzcdetnrrgcgcfz4fwqb5zg2p4e@pow2uwawcjt4>
References: <20250130100050.1868208-1-kirill.shutemov@linux.intel.com>
 <20250130100050.1868208-3-kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130100050.1868208-3-kirill.shutemov@linux.intel.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Sun, 02 Feb 2025 22:57:10 +0000
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

On Thu, Jan 30, 2025 at 12:00:40PM +0200, Kirill A. Shutemov wrote:
> Use folios instead of pages.
> 
> This is preparation for removing PG_reclaim.
> 
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Acked-by: David Hildenbrand <david@redhat.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index fe69f2c8527d..9016832b20fc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -320,25 +320,25 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
>  
>  	/* Begin writeback on each dirty page */
>  	for (i = 0; i < size >> PAGE_SHIFT; i++) {

With folio conversion, should the iteration step be folio_nr_pages()
instead of 1?

> -		struct page *page;
> +		struct folio *folio;
>  
> -		page = find_lock_page(mapping, i);
> -		if (!page)
> +		folio = filemap_lock_folio(mapping, i);
> +		if (!folio)
>  			continue;
>  
> -		if (!page_mapped(page) && clear_page_dirty_for_io(page)) {
> +		if (!folio_mapped(folio) && folio_clear_dirty_for_io(folio)) {
>  			int ret;
>  
> -			SetPageReclaim(page);
> -			ret = mapping->a_ops->writepage(page, &wbc);
> +			folio_set_reclaim(folio);
> +			ret = mapping->a_ops->writepage(&folio->page, &wbc);
>  			if (!PageWriteback(page))
> -				ClearPageReclaim(page);
> +				folio_clear_reclaim(folio);
>  			if (!ret)
>  				goto put;
>  		}
> -		unlock_page(page);
> +		folio_unlock(folio);
>  put:
> -		put_page(page);
> +		folio_put(folio);
>  	}
>  }
>  
> -- 
> 2.47.2
> 
