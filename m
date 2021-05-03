Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9998E37168F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 16:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C2D6E12C;
	Mon,  3 May 2021 14:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6AC6E12C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 14:26:24 +0000 (UTC)
Received: by mail-il1-x133.google.com with SMTP id p15so3814301iln.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 07:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ELcNibbwxopbe4wnzShPTb7xRMLVvYpqQ8un28QQp9U=;
 b=nOyrfh2thpmQagEkzKEHJkMTgRy+3FJJdT9Oo6MZndwooAl8msGQ2IZHFMeS6aJ6Md
 +OeRGM111zl+0t7XmNgYC8WpP2ka9OwZM9VN//prTwlXpUXb+Muztthx/dt4YfUeTqwD
 ene0+k2RSvchnHpwNfAnGfkLV6l7GmkYIbRvE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ELcNibbwxopbe4wnzShPTb7xRMLVvYpqQ8un28QQp9U=;
 b=GoGuN7Ud+7Hqa2PDZeheh5K/8WGrGkyUB4AdoFkweU/xor9Eh6bMczJt9ejfpBWC5d
 d7fmfT7KrFrIxG7EgxUIFRUmWnWzW7Pi40QyhAbFckBflFc/s1OIB10pi147hZ6XYa0Q
 wzOAdhNmlnz8wHYhheATB2Q5e0kxGGlBKdjMi7ywnXbjBa6Nbl13EC3ZhvHE5c8tOCxZ
 4MYs49qD0eG/PoRb0p55RvYzY/TJoM4Ov6sHabtMBI8xYNQJ168gaQP6cRXexM83emCG
 2cmQHp0Tyz068WSbGIMEidqi0Cd4jFro8VT83RSUvzI0/lF82Dk5V+9ixkArGGF7IwY/
 xWsg==
X-Gm-Message-State: AOAM531d0EFvKF4OgBfYnMs5NF+2T4H3UuYpMyDNMb4kr9Q2aX64l54O
 TAM7uAzWS9PVogSv+IR631z33VweptNOvw==
X-Google-Smtp-Source: ABdhPJx+SA3mTY0F4jJzFAs9NoKob1iLmh1cQizjUDmxNAbKyukHbHsOqrdGh3LEyX1Ew3bDsf/ZNw==
X-Received: by 2002:a92:d09:: with SMTP id 9mr16282467iln.229.1620051983064;
 Mon, 03 May 2021 07:26:23 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id f4sm4995788ilj.21.2021.05.03.07.26.22
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 May 2021 07:26:22 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id l21so4242931iob.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 07:26:22 -0700 (PDT)
X-Received: by 2002:a05:6e02:f4e:: with SMTP id
 y14mr3397094ilj.18.1620051971892; 
 Mon, 03 May 2021 07:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210422081508.3942748-1-tientzu@chromium.org>
 <20210422081508.3942748-15-tientzu@chromium.org>
 <70b895c2-4a39-bbbd-a719-5c8b6b922026@arm.com>
In-Reply-To: <70b895c2-4a39-bbbd-a719-5c8b6b922026@arm.com>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 3 May 2021 22:26:00 +0800
X-Gmail-Original-Message-ID: <CALiNf28cc5T-cMZxNPZnrTQvqu2Ge_MmZj-teN4mE_-E-6_6XQ@mail.gmail.com>
Message-ID: <CALiNf28cc5T-cMZxNPZnrTQvqu2Ge_MmZj-teN4mE_-E-6_6XQ@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [Intel-gfx] [PATCH v5 14/16] dma-direct: Allocate memory from
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
 Dan Williams <dan.j.williams@intel.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Bjorn Helgaas <bhelgaas@google.com>,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 chris@chris-wilson.co.uk, nouveau@lists.freedesktop.org,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Frank Rowand <frowand.list@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 23, 2021 at 9:46 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-04-22 09:15, Claire Chang wrote:
> > The restricted DMA pool is preferred if available.
> >
> > The restricted DMA pools provide a basic level of protection against the
> > DMA overwriting buffer contents at unexpected times. However, to protect
> > against general data leakage and system memory corruption, the system
> > needs to provide a way to lock down the memory access, e.g., MPU.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >   kernel/dma/direct.c | 35 ++++++++++++++++++++++++++---------
> >   1 file changed, 26 insertions(+), 9 deletions(-)
> >
> > diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> > index 7a27f0510fcc..29523d2a9845 100644
> > --- a/kernel/dma/direct.c
> > +++ b/kernel/dma/direct.c
> > @@ -78,6 +78,10 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
> >   static void __dma_direct_free_pages(struct device *dev, struct page *page,
> >                                   size_t size)
> >   {
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     if (swiotlb_free(dev, page, size))
> > +             return;
> > +#endif
> >       dma_free_contiguous(dev, page, size);
> >   }
> >
> > @@ -92,7 +96,17 @@ static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
> >
> >       gfp |= dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
> >                                          &phys_limit);
> > -     page = dma_alloc_contiguous(dev, size, gfp);
> > +
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     page = swiotlb_alloc(dev, size);
> > +     if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> > +             __dma_direct_free_pages(dev, page, size);
> > +             page = NULL;
> > +     }
> > +#endif
> > +
> > +     if (!page)
> > +             page = dma_alloc_contiguous(dev, size, gfp);
> >       if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> >               dma_free_contiguous(dev, page, size);
> >               page = NULL;
> > @@ -148,7 +162,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
> >               gfp |= __GFP_NOWARN;
> >
> >       if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> > -         !force_dma_unencrypted(dev)) {
> > +         !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
> >               page = __dma_direct_alloc_pages(dev, size, gfp & ~__GFP_ZERO);
> >               if (!page)
> >                       return NULL;
> > @@ -161,8 +175,8 @@ void *dma_direct_alloc(struct device *dev, size_t size,
> >       }
> >
> >       if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> > -         !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> > -         !dev_is_dma_coherent(dev))
> > +         !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> > +         !is_dev_swiotlb_force(dev))
> >               return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);
> >
> >       /*
> > @@ -172,7 +186,9 @@ void *dma_direct_alloc(struct device *dev, size_t size,
> >       if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
> >           !gfpflags_allow_blocking(gfp) &&
> >           (force_dma_unencrypted(dev) ||
> > -          (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev))))
> > +          (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> > +           !dev_is_dma_coherent(dev))) &&
> > +         !is_dev_swiotlb_force(dev))
> >               return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);
> >
> >       /* we always manually zero the memory once we are done */
> > @@ -253,15 +269,15 @@ void dma_direct_free(struct device *dev, size_t size,
> >       unsigned int page_order = get_order(size);
> >
> >       if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> > -         !force_dma_unencrypted(dev)) {
> > +         !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
> >               /* cpu_addr is a struct page cookie, not a kernel address */
> >               dma_free_contiguous(dev, cpu_addr, size);
> >               return;
> >       }
> >
> >       if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> > -         !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> > -         !dev_is_dma_coherent(dev)) {
> > +         !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> > +         !is_dev_swiotlb_force(dev)) {
> >               arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
> >               return;
> >       }
> > @@ -289,7 +305,8 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
> >       void *ret;
> >
> >       if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
> > -         force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp))
> > +         force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp) &&
> > +         !is_dev_swiotlb_force(dev))
> >               return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);
>
> Wait, this seems broken for non-coherent devices - in that case we need
> to return a non-cacheable address, but we can't simply fall through into
> the remapping path below in GFP_ATOMIC context. That's why we need the
> atomic pool concept in the first place :/

Sorry for the late reply. I'm not very familiar with this. I wonder if
the memory returned here must be coherent. If yes, could we say for
this case, one must set up another device coherent pool
(shared-dma-pool) and go with dma_alloc_from_dev_coherent()[1]?

[1] https://elixir.bootlin.com/linux/v5.12/source/kernel/dma/mapping.c#L435

>
> Unless I've overlooked something, we're still using the regular
> cacheable linear map address of the dma_io_tlb_mem buffer, no?
>
> Robin.
>
> >
> >       page = __dma_direct_alloc_pages(dev, size, gfp);
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
