Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8F53A5D11
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 08:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3646589D84;
	Mon, 14 Jun 2021 06:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE8F89D84;
 Mon, 14 Jun 2021 06:26:16 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1F6F967373; Mon, 14 Jun 2021 08:26:14 +0200 (CEST)
Date: Mon, 14 Jun 2021 08:26:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Claire Chang <tientzu@chromium.org>
Message-ID: <20210614062613.GI28343@lst.de>
References: <20210611152659.2142983-1-tientzu@chromium.org>
 <20210611152659.2142983-10-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611152659.2142983-10-tientzu@chromium.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v9 09/14] swiotlb: Refactor
 swiotlb_tbl_unmap_single
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

On Fri, Jun 11, 2021 at 11:26:54PM +0800, Claire Chang wrote:
> Add a new function, release_slots, to make the code reusable for supporting
> different bounce buffer pools, e.g. restricted DMA pool.
> 
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> ---
>  kernel/dma/swiotlb.c | 35 ++++++++++++++++++++---------------
>  1 file changed, 20 insertions(+), 15 deletions(-)
> 
> diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> index 364c6c822063..a6562573f090 100644
> --- a/kernel/dma/swiotlb.c
> +++ b/kernel/dma/swiotlb.c
> @@ -554,27 +554,15 @@ phys_addr_t swiotlb_tbl_map_single(struct device *dev, phys_addr_t orig_addr,
>  	return tlb_addr;
>  }
>  
> -/*
> - * tlb_addr is the physical address of the bounce buffer to unmap.
> - */
> -void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
> -			      size_t mapping_size, enum dma_data_direction dir,
> -			      unsigned long attrs)
> +static void release_slots(struct device *dev, phys_addr_t tlb_addr)
>  {
> -	struct io_tlb_mem *mem = hwdev->dma_io_tlb_mem;
> +	struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
>  	unsigned long flags;
> -	unsigned int offset = swiotlb_align_offset(hwdev, tlb_addr);
> +	unsigned int offset = swiotlb_align_offset(dev, tlb_addr);
>  	int index = (tlb_addr - offset - mem->start) >> IO_TLB_SHIFT;
>  	int nslots = nr_slots(mem->slots[index].alloc_size + offset);
>  	int count, i;
>  
> -	/*
> -	 * First, sync the memory before unmapping the entry
> -	 */
> -	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
> -	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
> -		swiotlb_bounce(hwdev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
> -
>  	/*
>  	 * Return the buffer to the free list by setting the corresponding
>  	 * entries to indicate the number of contiguous entries available.
> @@ -609,6 +597,23 @@ void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
>  	spin_unlock_irqrestore(&mem->lock, flags);
>  }
>  
> +/*
> + * tlb_addr is the physical address of the bounce buffer to unmap.
> + */
> +void swiotlb_tbl_unmap_single(struct device *dev, phys_addr_t tlb_addr,
> +			      size_t mapping_size, enum dma_data_direction dir,
> +			      unsigned long attrs)
> +{
> +	/*
> +	 * First, sync the memory before unmapping the entry
> +	 */
> +	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
> +	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
> +		swiotlb_bounce(dev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
> +
> +	release_slots(dev, tlb_addr);

Can you give this a swiotlb_ prefix?

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
