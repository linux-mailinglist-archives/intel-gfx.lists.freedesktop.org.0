Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7662389E0D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 08:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAA56EEA3;
	Thu, 20 May 2021 06:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE85F6EEA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 06:39:33 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id o27so15147839qkj.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 23:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e/NSxqpkIDrHAb8EdngT+J5y92xOhsZUELUZeumbo14=;
 b=XZhu4NB364LO5HgzFR5xaRq+2+Ny8I/tbuM557W/djcP2WZR5/YY1P3k16G0KqQZ5g
 9wOC75EFGAaEHt77aJ4y5qFZynUNK1/otklqj7so1biOf1FGROrwm/ILpXyxkwLvM+aC
 k3452c8bAQ6BEmJklQOi+zYSoBDbgxiFQQFO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/NSxqpkIDrHAb8EdngT+J5y92xOhsZUELUZeumbo14=;
 b=bf4Nqper38lhpKK6356xPGCpADoyCD3v2UyZ/uCmWCEuRLflyIepCd5HNxC1JBGU4E
 mKtZFyxbp8y9DqBf2TqHBWujrqSYdxWFPSqc0LsaRokjvwCofIAQyPA4CXUek98ldsBB
 JnYAY76GIPJ00w5padBtpxaEY33IYX2hLVboJX04rMdjXTcRMSXf3fnDcoqn0rDoz+gj
 suDMaRj1idzVQ7AkV0RR2kM/rQU+U5NYNV/REGZHPGdn1tRuYCBk8c6kyCwjRyJRbxR9
 uTyEhfMIAXuoWfSvo4KSlvOU1Ir44tKy/fmcFQB7lLqsYyrrieYYmEdF6OqsMLt2p8sb
 m4Lg==
X-Gm-Message-State: AOAM533fLVLZkRQ3BTLA+uUUfxnlaS+GRg/seq8VshFeQnzwDw4W7vL/
 nXTKkR6zVNEUuilhk465ulnLvmysln6+QA==
X-Google-Smtp-Source: ABdhPJyzeP1RW2CKI4o8GdG8q5k+NovD7fnVxN17X3M/RRgHpHJmj2ybBRPwkP4acLdwP3c/CeXVNQ==
X-Received: by 2002:a37:a357:: with SMTP id m84mr3378632qke.48.1621492771741; 
 Wed, 19 May 2021 23:39:31 -0700 (PDT)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com.
 [209.85.222.172])
 by smtp.gmail.com with ESMTPSA id r186sm1324737qke.97.2021.05.19.23.39.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 May 2021 23:39:30 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id a2so15149688qkh.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 23:39:30 -0700 (PDT)
X-Received: by 2002:a05:6638:14ce:: with SMTP id
 l14mr3931980jak.90.1621492759440; 
 Wed, 19 May 2021 23:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-5-tientzu@chromium.org>
 <ae050c36-8179-e465-84f0-e46c361bd71e@gmail.com>
In-Reply-To: <ae050c36-8179-e465-84f0-e46c361bd71e@gmail.com>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 20 May 2021 14:39:08 +0800
X-Gmail-Original-Message-ID: <CALiNf29jpi7=UKFPc7TK8wiNbq6TL=Uj-Mvmj9HRvOLnr-r_Ow@mail.gmail.com>
Message-ID: <CALiNf29jpi7=UKFPc7TK8wiNbq6TL=Uj-Mvmj9HRvOLnr-r_Ow@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v7 04/15] swiotlb: Add restricted DMA pool
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
 Jianxiong Gao <jxgao@google.com>, Will Deacon <will@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, airlied@linux.ie,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 Nicolas Boichat <drinkcat@chromium.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, xypron.glpk@gmx.de,
 Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 20, 2021 at 2:54 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/17/2021 11:42 PM, Claire Chang wrote:
> > Add the initialization function to create restricted DMA pools from
> > matching reserved-memory nodes.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  include/linux/device.h  |  4 +++
> >  include/linux/swiotlb.h |  3 +-
> >  kernel/dma/swiotlb.c    | 76 +++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 82 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/device.h b/include/linux/device.h
> > index 38a2071cf776..4987608ea4ff 100644
> > --- a/include/linux/device.h
> > +++ b/include/linux/device.h
> > @@ -416,6 +416,7 @@ struct dev_links_info {
> >   * @dma_pools:       Dma pools (if dma'ble device).
> >   * @dma_mem: Internal for coherent mem override.
> >   * @cma_area:        Contiguous memory area for dma allocations
> > + * @dma_io_tlb_mem: Internal for swiotlb io_tlb_mem override.
> >   * @archdata:        For arch-specific additions.
> >   * @of_node: Associated device tree node.
> >   * @fwnode:  Associated device node supplied by platform firmware.
> > @@ -521,6 +522,9 @@ struct device {
> >  #ifdef CONFIG_DMA_CMA
> >       struct cma *cma_area;           /* contiguous memory area for dma
> >                                          allocations */
> > +#endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     struct io_tlb_mem *dma_io_tlb_mem;
> >  #endif
> >       /* arch specific additions */
> >       struct dev_archdata     archdata;
> > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > index 216854a5e513..03ad6e3b4056 100644
> > --- a/include/linux/swiotlb.h
> > +++ b/include/linux/swiotlb.h
> > @@ -72,7 +72,8 @@ extern enum swiotlb_force swiotlb_force;
> >   *           range check to see if the memory was in fact allocated by this
> >   *           API.
> >   * @nslabs:  The number of IO TLB blocks (in groups of 64) between @start and
> > - *           @end. This is command line adjustable via setup_io_tlb_npages.
> > + *           @end. For default swiotlb, this is command line adjustable via
> > + *           setup_io_tlb_npages.
> >   * @used:    The number of used IO TLB block.
> >   * @list:    The free list describing the number of free entries available
> >   *           from each index.
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index b849b01a446f..1d8eb4de0d01 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -39,6 +39,13 @@
> >  #ifdef CONFIG_DEBUG_FS
> >  #include <linux/debugfs.h>
> >  #endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +#include <linux/io.h>
> > +#include <linux/of.h>
> > +#include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> > +#include <linux/slab.h>
> > +#endif
> >
> >  #include <asm/io.h>
> >  #include <asm/dma.h>
> > @@ -690,3 +697,72 @@ static int __init swiotlb_create_default_debugfs(void)
> >  late_initcall(swiotlb_create_default_debugfs);
> >
> >  #endif
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
> > +     /*
> > +      * Since multiple devices can share the same pool, the private data,
> > +      * io_tlb_mem struct, will be initialized by the first device attached
> > +      * to it.
> > +      */
> > +     if (!mem) {
> > +             mem = kzalloc(struct_size(mem, slots, nslabs), GFP_KERNEL);
> > +             if (!mem)
> > +                     return -ENOMEM;
> > +
> > +             if (PageHighMem(pfn_to_page(PHYS_PFN(rmem->base)))) {
> > +                     kfree(mem);
> > +                     return -EINVAL;
>
> This could probably deserve a warning here to indicate that the reserved
> area must be accessible within the linear mapping as I would expect a
> lot of people to trip over that.

Ok. Will add it.

>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> --
> Florian
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
