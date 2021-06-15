Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F5F3A8109
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7916E2D8;
	Tue, 15 Jun 2021 13:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDB16E2D8;
 Tue, 15 Jun 2021 13:42:11 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3D5CB67373; Tue, 15 Jun 2021 15:42:09 +0200 (CEST)
Date: Tue, 15 Jun 2021 15:42:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Claire Chang <tientzu@chromium.org>
Message-ID: <20210615134208.GJ20389@lst.de>
References: <20210615132711.553451-1-tientzu@chromium.org>
 <20210615132711.553451-11-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615132711.553451-11-tientzu@chromium.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v10 10/12] swiotlb: Add restricted DMA
 alloc/free support
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
Cc: heikki.krogerus@linux.intel.com, thomas.hellstrom@linux.intel.com,
 peterz@infradead.org, benh@kernel.crashing.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 grant.likely@arm.com, paulus@samba.org, Frank Rowand <frowand.list@gmail.com>,
 mingo@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 jxgao@google.com, Will Deacon <will@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, airlied@linux.ie,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, bhelgaas@google.com,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 Nicolas Boichat <drinkcat@chromium.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 tfiga@chromium.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, xypron.glpk@gmx.de,
 Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 15, 2021 at 09:27:09PM +0800, Claire Chang wrote:
> Add the functions, swiotlb_{alloc,free} to support the memory allocation
> from restricted DMA pool.
> 
> The restricted DMA pool is preferred if available.
> 
> Note that since coherent allocation needs remapping, one must set up
> another device coherent pool by shared-dma-pool and use
> dma_alloc_from_dev_coherent instead for atomic coherent allocation.

Note: when applied this should go before the next patch to make sure
bisection works fine.

>  #ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *swiotlb_alloc(struct device *dev, size_t size)
> +{
> +	struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
> +	phys_addr_t tlb_addr;
> +	int index;
> +
> +	/*
> +	 * Skip io_tlb_default_mem since swiotlb_alloc doesn't support atomic
> +	 * coherent allocation. Otherwise might break existing devices.
> +	 * One must set up another device coherent pool by shared-dma-pool and
> +	 * use dma_alloc_from_dev_coherent instead for atomic coherent
> +	 * allocation to avoid mempry remapping.

s/mempry/memory/g

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
