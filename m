Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A17A13301
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 07:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD4F10E1AD;
	Thu, 16 Jan 2025 06:18:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="f/9vKTmt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C024310E1AD;
 Thu, 16 Jan 2025 06:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BwenzUwAE3QjZlUTg3HaFn6rqngicIwXNfQ8pFKmwdY=; b=f/9vKTmt1wc30CXs5Ywuc87B+B
 OG5Q6qmdeJdMbSH6xuuIVrgCzmA1giyEXJJplJKcQfOZbmaTRlvh7a6A3wnnip2UQe6PwsNbTDtKS
 GrkEgZR8RGpQ95xHQUzyvKyORMa2khfNA8BTDVTlWtbHv6N9UQrfO2UqBH9D3URF+BBolHd57qb1M
 M7oES8gWAj19SRw85jBkWh37NxuVlehOCIEXuzmEocHQ+K7JB6Q5DkVXet4F8P7bn4nrl0QdA0H5u
 UN/U6QfRrMFB5rWj59Pt//nTUezjY/NaA9/mNGs7QCeOM8EKOMmszwCh6YZwjRJLpoHigcLM9gie8
 LF9SAB5A==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tYJCq-0000000DwEd-2aQg; Thu, 16 Jan 2025 06:18:16 +0000
Date: Wed, 15 Jan 2025 22:18:16 -0800
From: Christoph Hellwig <hch@infradead.org>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Jens Axboe <axboe@kernel.dk>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, David Airlie <airlied@gmail.com>,
 David Hildenbrand <david@redhat.com>, Hao Ge <gehao@kylinos.cn>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>,
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Steven Rostedt <rostedt@goodmis.org>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Vlastimil Babka <vbabka@suse.cz>,
 Yosry Ahmed <yosryahmed@google.com>, Yu Zhao <yuzhao@google.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-mm@kvack.org, linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCHv2 11/11] mm: Rename PG_dropbehind to PG_reclaim
Message-ID: <Z4ikqJBQ-fBFM6UL@infradead.org>
References: <20250115093135.3288234-1-kirill.shutemov@linux.intel.com>
 <20250115093135.3288234-12-kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250115093135.3288234-12-kirill.shutemov@linux.intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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

On Wed, Jan 15, 2025 at 11:31:35AM +0200, Kirill A. Shutemov wrote:
> Now as PG_reclaim is gone, its name can be reclaimed for better
> use :)
> 
> Rename PG_dropbehind to PG_reclaim and rename all helpers around it.

Why?  reclaim is completely generic and reclaim can mean many
different things.  dropbehind is much more specific.

