Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF536B6F2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 18:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C01489BF1;
	Mon, 26 Apr 2021 16:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3171489CF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 16:37:43 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id w20so1527975pge.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 09:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w+xLIOm1aUR+ojar7SxT7aE31iJaS6lTTL9NFfLTdqs=;
 b=ctSitjX8LR7O2ZMk4lsR8Irz6egx7wTYNYpP5lwZVohPuAIjgk70gq0rLgnAswDS5J
 OwrGL0fnjKjd/25GMaUPOEt1BY6NfF//O6cQPXnTolYLDRghV+Gs0xVvNzh51W3LGUxd
 u8ZH2pOBpUkLUeomCja6RAPBZaNGl3ag01nF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w+xLIOm1aUR+ojar7SxT7aE31iJaS6lTTL9NFfLTdqs=;
 b=NV/jPVYhesxs7PVkZEhkCO2Z/JUzUh30D2ZHio3w0COh93FfQ9FX2eC5TEjQFCJn8o
 a52BhXLdeEIO4DbX8XX6WaiFadE6C2PmUj2kn8yPN6PpmkUubwCwcaKS6WcVir2oEcG7
 obsvOO6Jo6nk1km35E5R6PxjJ8nQQsRjWfkmetfcrgJLU6l4RQ7Za7gLqsQIV75/Bw9h
 gxgIOBkeZOl4hNNyaXCWXg5wohxH+ssOUwhXF9AN84U4xQaatqieNPkHjCoP46mjXKH0
 HeHhMBAMm3Oha3Trcr6982RxijvzstyfxKjn0vY5mGjAWM3pcxur4XcBCy2YUopE5k8M
 bEdw==
X-Gm-Message-State: AOAM530QlNvuIvUrVwk8GzZCy4sAfuNlw4ov5mZ7kqoLOVTsSdHc4UOK
 65gjC4q2KBXkSooF4Z6zv6GryD1tLR9RPw==
X-Google-Smtp-Source: ABdhPJwWWyL8/NyZHpi/k0Y6mM/CNRi/NVmlxCEhd/a5BeG9razxINlIqKN3rp5OtisVcX9QqkXwcA==
X-Received: by 2002:aa7:87d5:0:b029:25a:b5f8:15ab with SMTP id
 i21-20020aa787d50000b029025ab5f815abmr18750317pfo.22.1619455062017; 
 Mon, 26 Apr 2021 09:37:42 -0700 (PDT)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com.
 [209.85.210.177])
 by smtp.gmail.com with ESMTPSA id h20sm200662pfh.192.2021.04.26.09.37.40
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Apr 2021 09:37:41 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id w6so24805952pfc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 09:37:40 -0700 (PDT)
X-Received: by 2002:a5d:8c82:: with SMTP id g2mr15143365ion.34.1619455049397; 
 Mon, 26 Apr 2021 09:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210422081508.3942748-1-tientzu@chromium.org>
 <20210422081508.3942748-6-tientzu@chromium.org>
 <c9abca62-328d-d0d6-a8a6-a67475171f92@arm.com>
In-Reply-To: <c9abca62-328d-d0d6-a8a6-a67475171f92@arm.com>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 27 Apr 2021 00:37:18 +0800
X-Gmail-Original-Message-ID: <CALiNf2_tffc65PhLxCr3-+gmVYKGO2HjYiJVkBNa5U5HYdi9pg@mail.gmail.com>
Message-ID: <CALiNf2_tffc65PhLxCr3-+gmVYKGO2HjYiJVkBNa5U5HYdi9pg@mail.gmail.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [Intel-gfx] [PATCH v5 05/16] swiotlb: Add restricted DMA pool
 initialization
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
 dri-devel@lists.freedesktop.org, lkml <linux-kernel@vger.kernel.org>,
 grant.likely@arm.com, paulus@samba.org, Will Deacon <will@kernel.org>,
 mingo@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 xypron.glpk@gmx.de, Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 Jianxiong Gao <jxgao@google.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, airlied@linux.ie,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Boichat <drinkcat@chromium.org>, Bjorn Helgaas <bhelgaas@google.com>,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 chris@chris-wilson.co.uk, nouveau@lists.freedesktop.org,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Frank Rowand <frowand.list@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, Robin Murphy <robin.murphy@arm.com>,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 23, 2021 at 7:34 PM Steven Price <steven.price@arm.com> wrote:
>
> On 22/04/2021 09:14, Claire Chang wrote:
> > Add the initialization function to create restricted DMA pools from
> > matching reserved-memory nodes.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >   include/linux/device.h  |  4 +++
> >   include/linux/swiotlb.h |  3 +-
> >   kernel/dma/swiotlb.c    | 80 +++++++++++++++++++++++++++++++++++++++++
> >   3 files changed, 86 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/device.h b/include/linux/device.h
> > index 38a2071cf776..4987608ea4ff 100644
> > --- a/include/linux/device.h
> > +++ b/include/linux/device.h
> > @@ -416,6 +416,7 @@ struct dev_links_info {
> >    * @dma_pools:      Dma pools (if dma'ble device).
> >    * @dma_mem:        Internal for coherent mem override.
> >    * @cma_area:       Contiguous memory area for dma allocations
> > + * @dma_io_tlb_mem: Internal for swiotlb io_tlb_mem override.
> >    * @archdata:       For arch-specific additions.
> >    * @of_node:        Associated device tree node.
> >    * @fwnode: Associated device node supplied by platform firmware.
> > @@ -521,6 +522,9 @@ struct device {
> >   #ifdef CONFIG_DMA_CMA
> >       struct cma *cma_area;           /* contiguous memory area for dma
> >                                          allocations */
> > +#endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     struct io_tlb_mem *dma_io_tlb_mem;
> >   #endif
> >       /* arch specific additions */
> >       struct dev_archdata     archdata;
> > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > index 216854a5e513..03ad6e3b4056 100644
> > --- a/include/linux/swiotlb.h
> > +++ b/include/linux/swiotlb.h
> > @@ -72,7 +72,8 @@ extern enum swiotlb_force swiotlb_force;
> >    *          range check to see if the memory was in fact allocated by this
> >    *          API.
> >    * @nslabs: The number of IO TLB blocks (in groups of 64) between @start and
> > - *           @end. This is command line adjustable via setup_io_tlb_npages.
> > + *           @end. For default swiotlb, this is command line adjustable via
> > + *           setup_io_tlb_npages.
> >    * @used:   The number of used IO TLB block.
> >    * @list:   The free list describing the number of free entries available
> >    *          from each index.
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index 57a9adb920bf..ffbb8724e06c 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -39,6 +39,13 @@
> >   #ifdef CONFIG_DEBUG_FS
> >   #include <linux/debugfs.h>
> >   #endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +#include <linux/io.h>
> > +#include <linux/of.h>
> > +#include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> > +#include <linux/slab.h>
> > +#endif
> >
> >   #include <asm/io.h>
> >   #include <asm/dma.h>
> > @@ -681,3 +688,76 @@ static int __init swiotlb_create_default_debugfs(void)
> >   late_initcall(swiotlb_create_default_debugfs);
> >
> >   #endif
> > +
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
> > +                                 struct device *dev)
> > +{
> > +     struct io_tlb_mem *mem = rmem->priv;
> > +     unsigned long nslabs = rmem->size >> IO_TLB_SHIFT;
> > +
> > +     if (dev->dma_io_tlb_mem)
> > +             return 0;
> > +
> > +     /* Since multiple devices can share the same pool, the private data,
> > +      * io_tlb_mem struct, will be initialized by the first device attached
> > +      * to it.
> > +      */
> > +     if (!mem) {
> > +             mem = kzalloc(struct_size(mem, slots, nslabs), GFP_KERNEL);
> > +             if (!mem)
> > +                     return -ENOMEM;
> > +#ifdef CONFIG_ARM
> > +             if (!PageHighMem(pfn_to_page(PHYS_PFN(rmem->base)))) {
> > +                     kfree(mem);
> > +                     return -EINVAL;
> > +             }
> > +#endif /* CONFIG_ARM */
> > +             swiotlb_init_io_tlb_mem(mem, rmem->base, nslabs, false);
> > +
> > +             rmem->priv = mem;
> > +     }
> > +
> > +#ifdef CONFIG_DEBUG_FS
> > +     if (!io_tlb_default_mem->debugfs)
> > +             io_tlb_default_mem->debugfs =
> > +                     debugfs_create_dir("swiotlb", NULL);
>
> At this point it's possible for io_tlb_default_mem to be NULL, leading
> to a splat.

Thanks for pointing this out.

>
> But even then if it's not and we have the situation where debugfs==NULL
> then the debugfs_create_dir() here will cause a subsequent attempt in
> swiotlb_create_debugfs() to fail (directory already exists) leading to
> mem->debugfs being assigned an error value. I suspect the creation of
> the debugfs directory needs to be separated from io_tlb_default_mem
> being set.

debugfs creation should move into the if (!mem) {...} above to avoid
duplication.
I think having a separated struct dentry pointer for the default
debugfs should be enough?

if (!debugfs)
    debugfs = debugfs_create_dir("swiotlb", NULL);
swiotlb_create_debugfs(mem, rmem->name, debugfs);

>
> Other than that I gave this series a go with our prototype of Arm's
> Confidential Computer Architecture[1] - since the majority of the
> guest's memory is protected from the host the restricted DMA pool allows
> (only) a small area to be shared with the host.
>
> After fixing (well hacking round) the above it all seems to be working
> fine with virtio drivers.
>
> Thanks,
>
> Steve
>
> [1]
> https://www.arm.com/why-arm/architecture/security-features/arm-confidential-compute-architecture
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
