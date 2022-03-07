Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1A14D0388
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 16:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AEC610E00F;
	Mon,  7 Mar 2022 15:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C549D10E00F;
 Mon,  7 Mar 2022 15:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WrCk5Zjz4zeQvJI59w3Y1NYye/gptEQDerS0Psr1TZ4=; b=wW7FyJ7wdAgP5ZxLNFEf3eQpn9
 s8zqFBSs7eoLCpygyX9Z4BS+JtlrW3VXFyql7r4copov9R+nc+r3Nnf6PiKouoQ3GnzE/lX4O9lA5
 qtqgL9RKeZTtgw8gRuuv/SFUIU5CglX+vJdOpIkh3XPo2fAv6370VZMHInrLYfgtq0VgKP8mbn98U
 BGM12OyvkgjC+U3Uz3Ql1bFFylM+W9CTN4fhip9qJ9LDDtx5Zwk0+/CZBJZu4TvAonJOfFmJNBQQj
 fG7eq9hrelFEh0pr9otbFYrrr622HUWFXIFB1E0lSVCG7DB/Ig2g5G/VZ49wcOXg1BS2R65TowNqr
 LeKXy8DQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nRFjB-000kY3-Ou; Mon, 07 Mar 2022 15:56:53 +0000
Date: Mon, 7 Mar 2022 07:56:53 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Jarkko Sakkinen <jarkko@kernel.org>
Message-ID: <YiYrRWMp1akXY8Vb@infradead.org>
References: <20220306053211.135762-1-jarkko@kernel.org>
 <YiSb7tsUEBRGS+HA@casper.infradead.org>
 <YiW4yurDXSifTYUt@infradead.org> <YiYIv9guOgClLKT8@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YiYIv9guOgClLKT8@iki.fi>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH RFC 0/3] MAP_POPULATE for device memory
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
Cc: Michal Hocko <mhocko@suse.com>, zhangyiru <zhangyiru3@huawei.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-unionfs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, codalist@coda.cs.cmu.edu,
 Christoph Hellwig <hch@infradead.org>, Matthew Auld <matthew.auld@intel.com>,
 Vasily Averin <vvs@virtuozzo.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, G@iki.fi, linux-mips@vger.kernel.org,
 Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>, linux-sgx@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 07, 2022 at 03:29:35PM +0200, Jarkko Sakkinen wrote:
> So what would you suggest to sort out the issue? I'm happy to go with
> ioctl if nothing else is acceptable.

PLenty of drivers treat all mmaps as if MAP_POPULATE was specified,
typically by using (io_)remap_pfn_range.  If there any reason to only
optionally have the pre-fault semantics for sgx?  If not this should
be really simple.  And if we have a real need for it to be optional
we'll just need to find a sane way to pass that information to ->mmap.
