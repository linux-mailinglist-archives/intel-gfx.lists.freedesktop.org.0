Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D773186CE5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 15:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA6489B00;
	Mon, 16 Mar 2020 14:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F5189D44;
 Mon, 16 Mar 2020 09:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=9gN1jKXfKNPlMClYtkwzgjKMpTWUcxSWGH8Lo5JSl80=; b=RQY0032qpY4gKVGok/AN5IZj+2
 Ed429Gy/OgVbQDSoOHin0HFOSvtFDlSueccW3iBGk30zgEfYdPvXEdbvEtMBwMKjHBcV9xOoF5ZFP
 hzo1WJbMtDHWzU4LGYKeZVCTcLAhxSMp2nZQLbUPpwwTFiFUtK9GBdnsi3cDVqqTYqdJ6C0AXbn4k
 qUSLNhAm4dxEbX6LLjkHwS3xhgCrFrRa/4NU9LkzfIRK+CtsZM3MacOUYXr7enCcRiUxgWOrGBYsG
 kOwvQJ3qOS51mtF1atRsdbzYohMh0Z/cYATwznyk1AT5KgP6tkinFNo8TTilHA16NbVX6plpPsRxU
 fm7JDlIw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jDmPt-0006MG-C7; Mon, 16 Mar 2020 09:52:13 +0000
Date: Mon, 16 Mar 2020 02:52:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200316095213.GA29212@infradead.org>
References: <20200311152838.GA24280@infradead.org>
 <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
 <20200312101943.GA14618@infradead.org>
 <b5db44eb-1dde-1671-feb0-9e47d120f172@amd.com>
 <20200312104729.GA26031@infradead.org>
 <20200312141928.GK31668@ziepe.ca>
 <20200313112139.GA4913@infradead.org>
 <20200313121742.GZ31668@ziepe.ca>
 <20200316085642.GC1831@infradead.org>
 <eb567569-426a-0845-b443-a20155897705@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb567569-426a-0845-b443-a20155897705@amd.com>
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
Cc: linaro-mm-sig@lists.linaro.org, David1.Zhou@amd.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Logan Gunthorpe <logang@deltatee.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 16, 2020 at 10:41:42AM +0100, Christian K=F6nig wrote:
> Well I would prefer if the drivers can somehow express their requirements
> and get IOVA structures already in the form they need.
> =

> Converting the IOVA data from one form to another is sometimes quite cost=
ly.
> Especially when it is only temporarily needed.

We basically have two ways to generate the IOVA:

  - a linear translation for the direct mapping case or some dumb IOMMU
    drivers - in that case case there is a 1:1 mapping between input
    segments and output segments in DMA mapping
  - a non-trivial IOMMU where all aligned segments are merged into
    a single IOVA range

So I don't really see how the dma layer could help much with any
limitation beyond existing max size and dma boundary ones.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
