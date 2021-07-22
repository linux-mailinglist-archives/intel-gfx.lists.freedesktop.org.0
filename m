Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33893D2457
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 15:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AB66E9AE;
	Thu, 22 Jul 2021 13:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8286E9AE;
 Thu, 22 Jul 2021 13:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+mjAA153JG0Ln8wFYY041kj2Rsi0lJ7YGWt7SwKJF/8=; b=PCpF0eOlIHL6HnaeLDPKGuJyur
 Pj7KAq8ENbbzU+SxmHu185G55Dox0US5sMQr1fkTbdb/zTJoE2dUMURZfqMgPvnY8Hw0Llq333J0/
 oYE1BbgMLmoWGIzHtyuYyyCjalyd5tJdIFcFM4VCDTmiZoYCPAA7QYxkWdeGOKGZNvkzZQGuGbuAu
 Jk2CxbLLWhfMRsoZbr62BVyBGiSsCcw0KdRDbcOTDQaShIX0iKY0n7puoBCH+YYkpr1ODbfZcIDZr
 VPW+l2FIH+WqntMDhWe4muRuevFo7ZNkAA3hAJHgAoXtN3DhasPfQxNY3uEhb/YUUsj/C4mQgg8Tr
 QgC9QV6w==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1m6YQZ-00AHI5-Mg; Thu, 22 Jul 2021 13:07:53 +0000
Date: Thu, 22 Jul 2021 14:07:51 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YPltp39n9URglTXT@infradead.org>
References: <cover.1626605893.git.leonro@nvidia.com>
 <36d655a0ff45f4c86762358c7b6a7b58939313fb.1626605893.git.leonro@nvidia.com>
 <20210722130040.GH1117491@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722130040.GH1117491@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH rdma-next v2 1/2] lib/scatterlist: Fix wrong
 update of orig_nents
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
Cc: David Airlie <airlied@linux.ie>,
 Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
 dri-devel@lists.freedesktop.org, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Leon Romanovsky <leon@kernel.org>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 linux-rdma@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Doug Ledford <dledford@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 intel-gfx@lists.freedesktop.org, Roland Scheidegger <sroland@vmware.com>,
 Maxime Ripard <mripard@kernel.org>, Yishai Hadas <yishaih@nvidia.com>,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Maor Gottlieb <maorg@nvidia.com>, Zack Rusin <zackr@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 10:00:40AM -0300, Jason Gunthorpe wrote:
> this is better:
> 
>    struct sg_append_table state;
> 
>    sg_append_init(&state, sgt, gfp_mask);
> 
>    while (..)
>      ret = sg_append_pages(&state, pages, n_pages, ..)
>      if (ret)
> 	 sg_append_abort(&state); // Frees the sgt and puts it to NULL
>    sg_append_complete(&state)
> 
> Which allows sg_alloc_table_from_pages() to be written as
> 
>    struct sg_append_table state;
>    sg_append_init(&state, sgt, gfp_mask);
>    ret = sg_append_pages(&state,pages, n_pages, offset, size, UINT_MAX)
>    if (ret) {
>       sg_append_abort(&state);
>       return ret;
>    }
>    sg_append_complete(&state);
>    return 0;
> 
> And then the API can manage all of this in some sane and
> understandable way.

That would be a lot easier to use for sure.  Not sure how invasive the
changes would be, though.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
