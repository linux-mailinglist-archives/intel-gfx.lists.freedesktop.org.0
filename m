Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 403EE3A9050
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 06:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A836E4C9;
	Wed, 16 Jun 2021 04:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA796E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 04:04:38 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id i17so1112713ilj.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 21:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=480iw3RHEmaThOE/pnDPB0pRHOKUr78KviuFxgV2m28=;
 b=ZGcLRBiht0jP6J+AXrtU54w8Uc+zr833JxnoG08K94QWWjvLCllFqXgKhb1YXYtuSI
 H2kUoXb56/euW7L5KGDSV7c5wQp5UCbd+ujOwhBYXXWkAOagA4ahf3bI5zABwigXHQRs
 2V+ulAhHs0i9h1/h3ywLUL41gakNk5ma80vrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=480iw3RHEmaThOE/pnDPB0pRHOKUr78KviuFxgV2m28=;
 b=X5vx1U5LnSazY/NJTLpwUw5jZHBtErc8BG5xBeH1jV68NyG5Iq5pumytJERGY9DXla
 4qnFJBpyxCBV9euK+0kv23McT3CMyWVeoencI1rBJnEpORltgIcaUsF7ANGCbv5Vt4+g
 8IUG/+ZO96YJzi827rY3xpKHybKPbDuRDYxsP5jrP1K3mQQZxtxdDXTzGkaGhdia3tZT
 uzpyrivSAnxUd0e+rN4+A9yX4PLUMcaOiOR3cklHa9w2Q7gwCmlQYXeZOU5KbsyzvoSK
 ZBxC//iGKQ9nCB7bgK4GOVhENKyCqmUfoz5TISElQqE4rKM1NLqPUvcLPYV8nGdhfGFB
 jUkQ==
X-Gm-Message-State: AOAM531c+otywzPj0y0G0eBPdScLxwZPye1UNrG6rhVbok7ilevPaKal
 dsE/KfltlX7KunIhT7sbV5MbfCDTtIZi2g==
X-Google-Smtp-Source: ABdhPJxkaljxImCnCsiX51bSGFcPsHU6hP5NrLdb+6otbDHK+QuulKC3zncW1M/7+RvwkGMlxUWXLA==
X-Received: by 2002:a92:3610:: with SMTP id d16mr2039347ila.16.1623816278075; 
 Tue, 15 Jun 2021 21:04:38 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id y8sm579401ilg.27.2021.06.15.21.04.37
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Jun 2021 21:04:37 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q15so1581774ioi.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 21:04:37 -0700 (PDT)
X-Received: by 2002:a5e:8513:: with SMTP id i19mr1992773ioj.50.1623816266935; 
 Tue, 15 Jun 2021 21:04:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210616035240.840463-1-tientzu@chromium.org>
 <20210616035240.840463-10-tientzu@chromium.org>
In-Reply-To: <20210616035240.840463-10-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Wed, 16 Jun 2021 12:04:16 +0800
X-Gmail-Original-Message-ID: <CALiNf28=3vqAs+8HsjyBGOiPNR2F3yT6OGnLpZH_AkWqgTqgOA@mail.gmail.com>
Message-ID: <CALiNf28=3vqAs+8HsjyBGOiPNR2F3yT6OGnLpZH_AkWqgTqgOA@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v11 09/12] swiotlb: Add restricted DMA
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
 grant.likely@arm.com, paulus@samba.org, mingo@kernel.org,
 Jianxiong Gao <jxgao@google.com>, sstabellini@kernel.org,
 Saravana Kannan <saravanak@google.com>, xypron.glpk@gmx.de,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 airlied@linux.ie, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 16, 2021 at 11:54 AM Claire Chang <tientzu@chromium.org> wrote:
>
> Add the functions, swiotlb_{alloc,free} to support the memory allocation
> from restricted DMA pool.
>
> The restricted DMA pool is preferred if available.
>
> Note that since coherent allocation needs remapping, one must set up
> another device coherent pool by shared-dma-pool and use
> dma_alloc_from_dev_coherent instead for atomic coherent allocation.
>
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/swiotlb.h | 15 +++++++++++++
>  kernel/dma/direct.c     | 50 ++++++++++++++++++++++++++++++-----------
>  kernel/dma/swiotlb.c    | 45 +++++++++++++++++++++++++++++++++++--
>  3 files changed, 95 insertions(+), 15 deletions(-)
>
> diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> index efcd56e3a16c..2d5ec670e064 100644
> --- a/include/linux/swiotlb.h
> +++ b/include/linux/swiotlb.h
> @@ -156,4 +156,19 @@ static inline void swiotlb_adjust_size(unsigned long size)
>  extern void swiotlb_print_info(void);
>  extern void swiotlb_set_max_segment(unsigned int);
>
> +#ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *swiotlb_alloc(struct device *dev, size_t size);
> +bool swiotlb_free(struct device *dev, struct page *page, size_t size);
> +#else
> +static inline struct page *swiotlb_alloc(struct device *dev, size_t size)
> +{
> +       return NULL;
> +}
> +static inline bool swiotlb_free(struct device *dev, struct page *page,
> +                               size_t size)
> +{
> +       return false;
> +}
> +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> +
>  #endif /* __LINUX_SWIOTLB_H */
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 3713461d6fe0..da0e09621230 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -75,6 +75,15 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
>                 min_not_zero(dev->coherent_dma_mask, dev->bus_dma_limit);
>  }
>
> +static void __dma_direct_free_pages(struct device *dev, struct page *page,
> +                                   size_t size)
> +{
> +       if (IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL) &&
> +           swiotlb_free(dev, page, size))
> +               return;
> +       dma_free_contiguous(dev, page, size);
> +}
> +
>  static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>                 gfp_t gfp)
>  {
> @@ -86,7 +95,16 @@ static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>
>         gfp |= dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
>                                            &phys_limit);
> -       page = dma_alloc_contiguous(dev, size, gfp);
> +       if (IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL)) {
> +               page = swiotlb_alloc(dev, size);
> +               if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> +                       __dma_direct_free_pages(dev, page, size);
> +                       return NULL;
> +               }
> +       }
> +
> +       if (!page)
> +               page = dma_alloc_contiguous(dev, size, gfp);
>         if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
>                 dma_free_contiguous(dev, page, size);
>                 page = NULL;
> @@ -142,7 +160,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>                 gfp |= __GFP_NOWARN;
>
>         if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> -           !force_dma_unencrypted(dev)) {
> +           !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
>                 page = __dma_direct_alloc_pages(dev, size, gfp & ~__GFP_ZERO);
>                 if (!page)
>                         return NULL;
> @@ -155,18 +173,23 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>         }
>
>         if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> -           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> -           !dev_is_dma_coherent(dev))
> +           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> +           !is_dev_swiotlb_force(dev))
>                 return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);

Just noticed that after propagating swiotlb_force setting into
io_tlb_default_mem->force, the memory allocation behavior for
swiotlb_force will change (i.e. always skipping arch_dma_alloc and
dma_direct_alloc_from_pool).

>
>         /*
>          * Remapping or decrypting memory may block. If either is required and
>          * we can't block, allocate the memory from the atomic pools.
> +        * If restricted DMA (i.e., is_dev_swiotlb_force) is required, one must
> +        * set up another device coherent pool by shared-dma-pool and use
> +        * dma_alloc_from_dev_coherent instead.
>          */
>         if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
>             !gfpflags_allow_blocking(gfp) &&
>             (force_dma_unencrypted(dev) ||
> -            (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev))))
> +            (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> +             !dev_is_dma_coherent(dev))) &&
> +           !is_dev_swiotlb_force(dev))
>                 return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);

And here.

>
>         /* we always manually zero the memory once we are done */
> @@ -237,7 +260,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>                         return NULL;
>         }
>  out_free_pages:
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>         return NULL;
>  }
>
> @@ -247,15 +270,15 @@ void dma_direct_free(struct device *dev, size_t size,
>         unsigned int page_order = get_order(size);
>
>         if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> -           !force_dma_unencrypted(dev)) {
> +           !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
>                 /* cpu_addr is a struct page cookie, not a kernel address */
>                 dma_free_contiguous(dev, cpu_addr, size);
>                 return;
>         }
>
>         if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> -           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> -           !dev_is_dma_coherent(dev)) {
> +           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> +           !is_dev_swiotlb_force(dev)) {
>                 arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
>                 return;
>         }
> @@ -273,7 +296,7 @@ void dma_direct_free(struct device *dev, size_t size,
>         else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_CLEAR_UNCACHED))
>                 arch_dma_clear_uncached(cpu_addr, size);
>
> -       dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
> +       __dma_direct_free_pages(dev, dma_direct_to_page(dev, dma_addr), size);
>  }
>
>  struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
> @@ -283,7 +306,8 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
>         void *ret;
>
>         if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
> -           force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp))
> +           force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp) &&
> +           !is_dev_swiotlb_force(dev))
>                 return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);
>
>         page = __dma_direct_alloc_pages(dev, size, gfp);
> @@ -310,7 +334,7 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
>         *dma_handle = phys_to_dma_direct(dev, page_to_phys(page));
>         return page;
>  out_free_pages:
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>         return NULL;
>  }
>
> @@ -329,7 +353,7 @@ void dma_direct_free_pages(struct device *dev, size_t size,
>         if (force_dma_unencrypted(dev))
>                 set_memory_encrypted((unsigned long)vaddr, 1 << page_order);
>
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>  }
>
>  #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
> diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> index fec4934b9926..6ad85b48f101 100644
> --- a/kernel/dma/swiotlb.c
> +++ b/kernel/dma/swiotlb.c
> @@ -462,8 +462,9 @@ static int swiotlb_find_slots(struct device *dev, phys_addr_t orig_addr,
>
>         index = wrap = wrap_index(mem, ALIGN(mem->index, stride));
>         do {
> -               if ((slot_addr(tbl_dma_addr, index) & iotlb_align_mask) !=
> -                   (orig_addr & iotlb_align_mask)) {
> +               if (orig_addr &&
> +                   (slot_addr(tbl_dma_addr, index) & iotlb_align_mask) !=
> +                           (orig_addr & iotlb_align_mask)) {
>                         index = wrap_index(mem, index + 1);
>                         continue;
>                 }
> @@ -702,3 +703,43 @@ static int __init swiotlb_create_default_debugfs(void)
>  late_initcall(swiotlb_create_default_debugfs);
>
>  #endif
> +
> +#ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *swiotlb_alloc(struct device *dev, size_t size)
> +{
> +       struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
> +       phys_addr_t tlb_addr;
> +       int index;
> +
> +       /*
> +        * Skip io_tlb_default_mem since swiotlb_alloc doesn't support atomic
> +        * coherent allocation. Otherwise might break existing devices.
> +        * One must set up another device coherent pool by shared-dma-pool and
> +        * use dma_alloc_from_dev_coherent instead for atomic coherent
> +        * allocation to avoid memory remapping.
> +        */
> +       if (!mem || mem == io_tlb_default_mem)
> +               return NULL;
> +
> +       index = swiotlb_find_slots(dev, 0, size);
> +       if (index == -1)
> +               return NULL;
> +
> +       tlb_addr = slot_addr(mem->start, index);
> +
> +       return pfn_to_page(PFN_DOWN(tlb_addr));
> +}
> +
> +bool swiotlb_free(struct device *dev, struct page *page, size_t size)
> +{
> +       phys_addr_t tlb_addr = page_to_phys(page);
> +
> +       if (!is_swiotlb_buffer(dev, tlb_addr))
> +               return false;
> +
> +       swiotlb_release_slots(dev, tlb_addr);
> +
> +       return true;
> +}
> +
> +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> --
> 2.32.0.272.g935e593368-goog
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
