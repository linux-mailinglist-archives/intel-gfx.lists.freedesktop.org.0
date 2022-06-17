Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B4054F350
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 10:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C04511AAD6;
	Fri, 17 Jun 2022 08:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C95111AAD2;
 Fri, 17 Jun 2022 08:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cRcPliFH8a5nYGYbcpuAxJdVHyV2ltCZ23v97rgf1A4=; b=KiuwHF6aDNvC5t/LWv3aUEPzwE
 KBgvUpfkf5qDI6GElmlPwqGlCsWtGNTsSld0WuZewPo0/4mkHtzAiWM6dEK1eY4RySKpAlhO65R1D
 WAwqSuEBlSHCf5DkNowUItxtdZkM4ZA/lqbf20XRt3tR3vQic1RG+gSiipHa082lrFeJntOO3nL6y
 th0tSkAnySXos78OuuOupQOTbIqiHOC5RM5RDCtt86BUATvPwCygEQGPiY1c2rMXDglxq26ZxUHjd
 msVefU68/GFcLY3Vs1Mt7LyDHUYqx6nUIuYz/IWEJAxO+kEDCvTyVrRF9ed8BsbP8AEHXp6NHAjQ4
 s9lEnYkg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o27ag-006QLd-PI; Fri, 17 Jun 2022 08:44:30 +0000
Date: Fri, 17 Jun 2022 01:44:30 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <Yqw+7gM3Lz96UFdz@infradead.org>
References: <20220616235212.15185-1-nicolinc@nvidia.com>
 <20220616235212.15185-6-nicolinc@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616235212.15185-6-nicolinc@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [RFT][PATCH v1 5/6] vfio/ccw: Add kmap_local_page()
 for memcpy
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
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, corbet@lwn.net,
 pasic@linux.ibm.com, jgg@nvidia.com, borntraeger@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, jjherne@linux.ibm.com, farman@linux.ibm.com,
 jchrist@linux.ibm.com, gor@linux.ibm.com, hca@linux.ibm.com,
 freude@linux.ibm.com, rodrigo.vivi@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com, cohuck@redhat.com,
 oberpar@linux.ibm.com, svens@linux.ibm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 16, 2022 at 04:52:11PM -0700, Nicolin Chen wrote:
> The pinned PFN list returned from vfio_pin_pages() is simply converted
> using page_to_pfn() without protection, so direct access via memcpy()
> will crash on S390 if the PFN is an IO PFN. Instead, the pages should
> be touched using kmap_local_page().

I don't see how this helps.  kmap_local_page only works for either
pages in the kernel direct map or highmem, but not for memory that needs
to be ioremapped.  And there is no highmem on s390.
