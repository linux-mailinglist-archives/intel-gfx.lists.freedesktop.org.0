Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BEE1830EF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BBF56EAAB;
	Thu, 12 Mar 2020 13:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C276E141;
 Thu, 12 Mar 2020 10:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=UVHnNH3XWYbjZb8nMNymVIJ9pi6e9Dc3rOLERfjpDFo=; b=QKUZg3AGQLjAH14xpMe2/UTccF
 Y8y8S4cqaokwjZAhHEpSgKcyobmBn2jKSRM0nSB83wxCl/tGN3sC303I8LEmW793/UEh+mSUlsE4j
 7aZpIfccDmu/8NuRsVMhhhKH7I6vgQpYeuQu3Z/22sKc4dpVff59glp0nhDLlfPXvG2iA7Ayn92ig
 9eNKbZCIbn8ykxBz1R4R5R/t8FfO8/JVKvWPT/MKE8Z7v6q7mN4P6CpgmxTsIDlUq86z9UJUIMPxs
 Q8/UYY7CjZ4Yk+k0sWEg9z9KBaRZMLDkb7Eqt5lqbalr980jHyRqWXwTjGZP7B36CTIVvTED9vNEF
 dws2omZQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCLNB-0000ce-O1; Thu, 12 Mar 2020 10:47:29 +0000
Date: Thu, 12 Mar 2020 03:47:29 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200312104729.GA26031@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Thu, 12 Mar 2020 13:13:09 +0000
Subject: Re: [Intel-gfx] [PATCH 1/6] lib/scatterlist: add sg_set_dma_addr()
 function
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
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 jgg@ziepe.ca, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 11:31:35AM +0100, Christian K=F6nig wrote:
> But how should we then deal with all the existing interfaces which already
> take a scatterlist/sg_table ?
>
> The whole DMA-buf design and a lot of drivers are build around
> scatterlist/sg_table and to me that actually makes quite a lot of sense.
> =


Replace them with a saner interface that doesn't take a scatterlist.
At very least for new functionality like peer to peer DMA, but
especially this code would also benefit from a general move away
from the scatterlist.

> For TTM I'm also trying for quite a while to just nuke the manual
> dma_address arrays we have and switch over to scatterlist/sg_table.

Which is a move in the wrong direction.

> I mean we could come up with a new structure for this, but to me that just
> looks like reinventing the wheel. Especially since drivers need to be able
> to handle both I/O to system memory and I/O to PCIe BARs.

The structure for holding the struct page side of the scatterlist is
called struct bio_vec, so far mostly used by the block and networking
code.  The structure for holding dma addresses doesn't really exist
in a generic form, but would be an array of these structures:

struct dma_sg {
	dma_addr_t	addr;
	u32		len;
};

Keeping them separate is important as most IOMMU drivers will return
less entries than you can feed them.  E.g. if your input boundaries
are 4k aligned you will usually just get a single IOVA entry back.
I will soon also have a dma mapping interface that will take advantage
of that fact.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
