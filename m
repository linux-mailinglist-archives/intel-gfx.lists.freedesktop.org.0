Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAFD3A5CFF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 08:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDE389D84;
	Mon, 14 Jun 2021 06:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A91E89D84;
 Mon, 14 Jun 2021 06:25:33 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id BF02567373; Mon, 14 Jun 2021 08:25:30 +0200 (CEST)
Date: Mon, 14 Jun 2021 08:25:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Claire Chang <tientzu@chromium.org>
Message-ID: <20210614062530.GG28343@lst.de>
References: <20210611152659.2142983-1-tientzu@chromium.org>
 <20210611152659.2142983-8-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611152659.2142983-8-tientzu@chromium.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v9 07/14] swiotlb: Bounce data from/to
 restricted DMA pool if available
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

On Fri, Jun 11, 2021 at 11:26:52PM +0800, Claire Chang wrote:
> Regardless of swiotlb setting, the restricted DMA pool is preferred if
> available.
> 
> The restricted DMA pools provide a basic level of protection against the
> DMA overwriting buffer contents at unexpected times. However, to protect
> against general data leakage and system memory corruption, the system
> needs to provide a way to lock down the memory access, e.g., MPU.
> 
> Note that is_dev_swiotlb_force doesn't check if
> swiotlb_force == SWIOTLB_FORCE. Otherwise the memory allocation behavior
> with default swiotlb will be changed by the following patche
> ("dma-direct: Allocate memory from restricted DMA pool if available").
> 
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> ---
>  include/linux/swiotlb.h | 10 +++++++++-
>  kernel/dma/direct.c     |  3 ++-
>  kernel/dma/direct.h     |  3 ++-
>  kernel/dma/swiotlb.c    |  1 +
>  4 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> index 06cf17a80f5c..8200c100fe10 100644
> --- a/include/linux/swiotlb.h
> +++ b/include/linux/swiotlb.h
> @@ -85,6 +85,7 @@ extern enum swiotlb_force swiotlb_force;
>   *		unmap calls.
>   * @debugfs:	The dentry to debugfs.
>   * @late_alloc:	%true if allocated using the page allocator
> + * @force_swiotlb: %true if swiotlb is forced
>   */
>  struct io_tlb_mem {
>  	phys_addr_t start;
> @@ -95,6 +96,7 @@ struct io_tlb_mem {
>  	spinlock_t lock;
>  	struct dentry *debugfs;
>  	bool late_alloc;
> +	bool force_swiotlb;
>  	struct io_tlb_slot {
>  		phys_addr_t orig_addr;
>  		size_t alloc_size;
> @@ -115,6 +117,11 @@ static inline void swiotlb_set_io_tlb_default_mem(struct device *dev)
>  	dev->dma_io_tlb_mem = io_tlb_default_mem;
>  }
>  
> +static inline bool is_dev_swiotlb_force(struct device *dev)
> +{
> +	return dev->dma_io_tlb_mem->force_swiotlb;
> +}
> +
>  void __init swiotlb_exit(void);
>  unsigned int swiotlb_max_segment(void);
>  size_t swiotlb_max_mapping_size(struct device *dev);
> @@ -126,8 +133,9 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
>  {
>  	return false;
>  }
> -static inline void swiotlb_set_io_tlb_default_mem(struct device *dev)
> +static inline bool is_dev_swiotlb_force(struct device *dev)
>  {
> +	return false;
>  }
>  static inline void swiotlb_exit(void)
>  {
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 7a88c34d0867..078f7087e466 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -496,7 +496,8 @@ size_t dma_direct_max_mapping_size(struct device *dev)
>  {
>  	/* If SWIOTLB is active, use its maximum mapping size */
>  	if (is_swiotlb_active(dev) &&
> -	    (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE))
> +	    (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE ||
> +	     is_dev_swiotlb_force(dev)))

I think we can remove the extra swiotlb_force check here if the
swiotlb_force setting is propagated into io_tlb_default_mem->force
when that is initialized. This avoids an extra check in the fast path.

> -	if (unlikely(swiotlb_force == SWIOTLB_FORCE))
> +	if (unlikely(swiotlb_force == SWIOTLB_FORCE) ||
> +	    is_dev_swiotlb_force(dev))

Same here.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
