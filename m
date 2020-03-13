Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8562186CE7
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 15:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B1E89C13;
	Mon, 16 Mar 2020 14:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4C26EBC3;
 Fri, 13 Mar 2020 11:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Rv37TTvDXMKXSf9nWVLZq3eHbdVPw8ZGX2/Nn/G4sVU=; b=kdedZGj/MWBq2T0fpkvEfIv1Sk
 XUTkiylcJbLDcp+FEwlayl0OQ5pvhc2qdfHYEWgeA2z0XbG0Qw8ChZkp7dUVh1TJTHt3eJVARuiBh
 mcVni/WOnkLkoS0Iqg6/1FeGZ2jSunWLZB6h4XPsZhjsAkbSsaZWSmmiTwJjefjz2PVpMl4CYIOWT
 VtipZLfEJByB3ry8rZt3PhYXOwgrkdAokSMv43ftOdLwqaCQoS//1dSpWlsKNN/1zq41hos9E2V7o
 /WQ1wWstql22PI57OWx2ELzzi6b9tdSmR5ZPbXurv8GE/OtGWRphBElkWmt3JoirOMWLMbfKEL7mX
 O2keLzzw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jCiNn-0002g5-RY; Fri, 13 Mar 2020 11:21:39 +0000
Date: Fri, 13 Mar 2020 04:21:39 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200313112139.GA4913@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312141928.GK31668@ziepe.ca>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Mon, 16 Mar 2020 14:17:55 +0000
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
Cc: David1.Zhou@amd.com, Logan Gunthorpe <logang@deltatee.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 12, 2020 at 11:19:28AM -0300, Jason Gunthorpe wrote:
> The non-page scatterlist is also a big concern for RDMA as we have
> drivers that want the page list, so even if we did as this series
> contemplates I'd have still have to split the drivers and create the
> notion of a dma-only SGL.

The drivers I looked at want a list of IOVA address, aligned to the
device "page size".  What other data do drivers want?  Execept for the
software protocol stack drivers, which of couse need pages for the
stack futher down.

> I haven't used bio_vecs before, do they support chaining like SGL so
> they can be very big? RDMA dma maps gigabytes of memory

bio_vecs itself don't have the chaining, but the bios build around them
do.  But each entry can map a huge pile.  If needed we could use the
same chaining scheme we use for scatterlists for bio_vecs as well, but
lets see if we really end up needing that.

> So I'm guessing the path forward is something like
> 
>  - Add some generic dma_sg data structure and helper
>  - Add dma mapping code to go from pages to dma_sg

That has been on my todo list for a while.  All the DMA consolidatation
is to prepare for that and we're finally getting close.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
