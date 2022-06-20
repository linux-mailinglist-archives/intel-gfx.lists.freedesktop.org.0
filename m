Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E923C551071
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 08:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA66110E8B2;
	Mon, 20 Jun 2022 06:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E721A10E321;
 Mon, 20 Jun 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dHzVAyfIa/3nUl03RRG8Cmy2hok3UdrVa+qW5Pr02mE=; b=yBNK9/iQ57Apbwe6zABDPWJp37
 E8Ny/XDv27hw5gPa1YKZtipXrzgP+LPGxmCNoEaUheLXIMLuaUIlyr0NVoGs+jdbuxZiuHAu7/g6I
 g6mkZOqpUFGMGjvrCqFRr115ypKBrOMSJeYUbkYKWCZ3ZSCA8vqmk2lSoBnknvsWL+DS45YPJoXFV
 sKBq5PwAzbPjE4F/WdFJr/NHRRm8ywRkc8wS5B/Wa3xynH5FpC2L/a5erXySws2U1s7PWrAe7Dlwc
 /8ykwpyAdHXI3jPjJ7gNwcYk6wriBBhiRewtRqKTgvtvXQqnypmijFGaRg7KFgdAPKUxbzJ3ekfnY
 UHO9EwvA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o3B2h-00GSAz-PA; Mon, 20 Jun 2022 06:37:47 +0000
Date: Sun, 19 Jun 2022 23:37:47 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YrAVuxMEkV4Wytci@infradead.org>
References: <20220616235212.15185-1-nicolinc@nvidia.com>
 <20220616235212.15185-7-nicolinc@nvidia.com>
 <YqxBLbu8yPJiwK6Z@infradead.org> <20220620030046.GB5219@nvidia.com>
 <YrAK87zjdOqUF6gB@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YrAK87zjdOqUF6gB@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [RFT][PATCH v1 6/6] vfio: Replace phys_pfn with
 phys_page for vfio_pin_pages()
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
Cc: mjrosato@linux.ibm.com, linux-doc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kwankhede@nvidia.com, vneethv@linux.ibm.com, agordeev@linux.ibm.com,
 pasic@linux.ibm.com, kvm@vger.kernel.org, corbet@lwn.net,
 Christoph Hellwig <hch@infradead.org>, Nicolin Chen <nicolinc@nvidia.com>,
 borntraeger@linux.ibm.com, intel-gfx@lists.freedesktop.org,
 jjherne@linux.ibm.com, farman@linux.ibm.com, jchrist@linux.ibm.com,
 gor@linux.ibm.com, linux-s390@vger.kernel.org, hca@linux.ibm.com,
 freude@linux.ibm.com, rodrigo.vivi@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com, cohuck@redhat.com,
 oberpar@linux.ibm.com, svens@linux.ibm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jun 19, 2022 at 10:51:47PM -0700, Christoph Hellwig wrote:
> On Mon, Jun 20, 2022 at 12:00:46AM -0300, Jason Gunthorpe wrote:
> > On Fri, Jun 17, 2022 at 01:54:05AM -0700, Christoph Hellwig wrote:
> > > There is a bunch of code an comments in the iommu type1 code that
> > > suggest we can pin memory that is not page backed.  
> > 
> > AFAIK you can.. The whole follow_pte() mechanism allows raw PFNs to be
> > loaded into the type1 maps and the pin API will happily return
> > them. This happens in almost every qemu scenario because PCI MMIO BAR
> > memory ends up routed down this path.
> 
> Indeed, my read wasn't deep enough.  Which means that we can't change
> the ->pin_pages interface to return a struct pages array, as we don't
> have one for those.

Actually.  gvt requires a struct page, and both s390 seem to require
normal non-I/O, non-remapped kernel pointers.  So I think for the
vfio_pin_pages we can assume that we only want page backed memory and
remove the follow_fault_pfn case entirely.   But we'll probably have
to keep it for the vfio_iommu_replay case that is not tied to
emulated IOMMU drivers.
