Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6766B186CE6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 15:18:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79F989C55;
	Mon, 16 Mar 2020 14:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2592E89F89;
 Mon, 16 Mar 2020 08:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7pDz5ADqTojT39uknaN/wTkWGyi3TS8NPv+4TYh5v3I=; b=bq/MSiU2m4+OhStcr92bexqdrY
 xXm4OjEzLuxQccuIZxS2Cnmc8fEo5hGe7oYOJVyK8LhJ0aLuhZit23uhRss8ySr2gjqIXvgUEGeAH
 6gHAckpYmwaW/45GXPI0wcFT5dQ7S+Da0TG1mTuoUNNoDlBV2kkM4q9xt9zGfzg82h9SOocWDINfn
 ttGpiVHVYNl6xPM8SNEQ75FyeWTPPZavoTVk2y8/VRk1J+W1G1ndVrYASq1frz5nEAQv6ZlHaMg1t
 L446+ceQ1rBHrOfA5i1JC6PntL5GoRHacJZ94WgN9/8nUOjxhofZ6gHyqrOQTvEjp3lO7hTA2BExY
 RN1PPV4A==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jDlYB-0004si-0O; Mon, 16 Mar 2020 08:56:43 +0000
Date: Mon, 16 Mar 2020 01:56:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200316085642.GC1831@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
 <20200313112139.GA4913@infradead.org>
 <20200313121742.GZ31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313121742.GZ31668@ziepe.ca>
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

On Fri, Mar 13, 2020 at 09:17:42AM -0300, Jason Gunthorpe wrote:
> On Fri, Mar 13, 2020 at 04:21:39AM -0700, Christoph Hellwig wrote:
> > On Thu, Mar 12, 2020 at 11:19:28AM -0300, Jason Gunthorpe wrote:
> > > The non-page scatterlist is also a big concern for RDMA as we have
> > > drivers that want the page list, so even if we did as this series
> > > contemplates I'd have still have to split the drivers and create the
> > > notion of a dma-only SGL.
> > 
> > The drivers I looked at want a list of IOVA address, aligned to the
> > device "page size".  What other data do drivers want?  Execept for the
> > software protocol stack drivers, which of couse need pages for the
> > stack futher down.
> 
> In principle it is possible to have just an aligned page list -
> however the page size is variable, following certain rules, and today
> the drivers still determine the correct page size largely on their
> own.  
> 
> Some progress was made recently to consolidate this, but more is
> needed.
> 
> If the common code doesn't know the device page size in advance then
> today's approach of sending largest possible dma mapped SGLs into the
> device driver is best. The driver only has to do splitting.

The point was that drivers don't need pages, drivers need IOVAs.  In
what form they are stuffed into the hardware is the drivers problem.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
