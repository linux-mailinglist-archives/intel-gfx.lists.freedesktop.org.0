Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9736B72C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 18:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89936E84F;
	Mon, 26 Apr 2021 16:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE1026E84F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 16:45:45 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id t22so5182103pgu.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 09:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cFKXKq/sKurvSVgvNvGkxgOiMlOZ5bG92GQyZxG6/Ow=;
 b=hQyrvIvY0OkwlUkO65L/o3TMJboyrA/EOLuUe0Pq7KgqeFtR8O9LJWrjeU2EQISYlu
 bJHPBsPqEo2jNERM7Qly7inrbryADiFPyU5whSnn5mfATXbgH1UnC4GjWrov7E7itgl/
 y/vmAUUGiGEmxu0IFynSQLccMWdifgG50rRhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cFKXKq/sKurvSVgvNvGkxgOiMlOZ5bG92GQyZxG6/Ow=;
 b=fKRmxwQym++Q3VcORR2HqqJM1q0QtvUJaySZWSnUO1ds4XW4GghkTNh0o9BrBIUr7a
 jyfr+Ox3JAii6izThtfMlPO4rQk4J1JLo2uZD0eB/aC0qTSTBJ8QZgsP7lsQ7rIiItio
 VaIMHf0836XWMkKrxxttHMDB3mKz4vf8JxsgRLminAgoE7Q4r8x+w3gwFQfs3dAUSO23
 kHxXRHh1pwEmVm/Yhq7OsfFW2gJ7pfSbgn3QXX4d5nFIndL5Ay99/qKnhgR+/RSjEZUM
 nyvN2s66SbT4m2EpT/rPyNzL8bRgLrXFCHY/ejWq72KHZCHrmnDEmMjbnZlCavdP6mnd
 OrTQ==
X-Gm-Message-State: AOAM531zgiBZUu8rdVOBVC/q8KpQHBNOrG0+DIXrp8WJJi3NC1eqQKjM
 NR+Hl3/HPD9m6Wi376tZLtiqjd3hVuyJLQ==
X-Google-Smtp-Source: ABdhPJxQP7DIP+TJEdEufOw3Z94L40YGZzxt/60EqkAEvXdA60QR0CmIDk4EAmGaer+IT3tIcwKAWw==
X-Received: by 2002:aa7:9f02:0:b029:25d:26b2:ecac with SMTP id
 g2-20020aa79f020000b029025d26b2ecacmr18958004pfr.61.1619455545109; 
 Mon, 26 Apr 2021 09:45:45 -0700 (PDT)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com.
 [209.85.215.177])
 by smtp.gmail.com with ESMTPSA id u18sm249694pfm.4.2021.04.26.09.45.44
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Apr 2021 09:45:44 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id f29so3308691pgm.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 09:45:44 -0700 (PDT)
X-Received: by 2002:a92:7307:: with SMTP id o7mr14655769ilc.5.1619455077553;
 Mon, 26 Apr 2021 09:37:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210422081508.3942748-1-tientzu@chromium.org>
 <20210422081508.3942748-9-tientzu@chromium.org>
 <1f84aa4c-f966-0986-b5a4-eecbf3b454ec@arm.com>
In-Reply-To: <1f84aa4c-f966-0986-b5a4-eecbf3b454ec@arm.com>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 27 Apr 2021 00:37:46 +0800
X-Gmail-Original-Message-ID: <CALiNf29N3U5GZKNN90NzjSeQ0WG4dxyRzU97fJ-r9OuChzLWKA@mail.gmail.com>
Message-ID: <CALiNf29N3U5GZKNN90NzjSeQ0WG4dxyRzU97fJ-r9OuChzLWKA@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [Intel-gfx] [PATCH v5 08/16] swiotlb: Update is_swiotlb_active
 to add a struct device argument
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

On Fri, Apr 23, 2021 at 9:31 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-04-22 09:15, Claire Chang wrote:
> > Update is_swiotlb_active to add a struct device argument. This will be
> > useful later to allow for restricted DMA pool.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_internal.c | 2 +-
> >   drivers/gpu/drm/nouveau/nouveau_ttm.c        | 2 +-
> >   drivers/pci/xen-pcifront.c                   | 2 +-
> >   include/linux/swiotlb.h                      | 4 ++--
> >   kernel/dma/direct.c                          | 2 +-
> >   kernel/dma/swiotlb.c                         | 4 ++--
> >   6 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> > index ce6b664b10aa..7d48c433446b 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
> > @@ -42,7 +42,7 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
> >
> >       max_order = MAX_ORDER;
> >   #ifdef CONFIG_SWIOTLB
> > -     if (is_swiotlb_active()) {
> > +     if (is_swiotlb_active(NULL)) {
> >               unsigned int max_segment;
> >
> >               max_segment = swiotlb_max_segment();
> > diff --git a/drivers/gpu/drm/nouveau/nouveau_ttm.c b/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > index e8b506a6685b..2a2ae6d6cf6d 100644
> > --- a/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > +++ b/drivers/gpu/drm/nouveau/nouveau_ttm.c
> > @@ -321,7 +321,7 @@ nouveau_ttm_init(struct nouveau_drm *drm)
> >       }
> >
> >   #if IS_ENABLED(CONFIG_SWIOTLB) && IS_ENABLED(CONFIG_X86)
> > -     need_swiotlb = is_swiotlb_active();
> > +     need_swiotlb = is_swiotlb_active(NULL);
> >   #endif
> >
> >       ret = ttm_device_init(&drm->ttm.bdev, &nouveau_bo_driver, drm->dev->dev,
> > diff --git a/drivers/pci/xen-pcifront.c b/drivers/pci/xen-pcifront.c
> > index b7a8f3a1921f..6d548ce53ce7 100644
> > --- a/drivers/pci/xen-pcifront.c
> > +++ b/drivers/pci/xen-pcifront.c
> > @@ -693,7 +693,7 @@ static int pcifront_connect_and_init_dma(struct pcifront_device *pdev)
> >
> >       spin_unlock(&pcifront_dev_lock);
> >
> > -     if (!err && !is_swiotlb_active()) {
> > +     if (!err && !is_swiotlb_active(NULL)) {
> >               err = pci_xen_swiotlb_init_late();
> >               if (err)
> >                       dev_err(&pdev->xdev->dev, "Could not setup SWIOTLB!\n");
> > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > index 2a6cca07540b..c530c976d18b 100644
> > --- a/include/linux/swiotlb.h
> > +++ b/include/linux/swiotlb.h
> > @@ -123,7 +123,7 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
> >   void __init swiotlb_exit(void);
> >   unsigned int swiotlb_max_segment(void);
> >   size_t swiotlb_max_mapping_size(struct device *dev);
> > -bool is_swiotlb_active(void);
> > +bool is_swiotlb_active(struct device *dev);
> >   void __init swiotlb_adjust_size(unsigned long size);
> >   #else
> >   #define swiotlb_force SWIOTLB_NO_FORCE
> > @@ -143,7 +143,7 @@ static inline size_t swiotlb_max_mapping_size(struct device *dev)
> >       return SIZE_MAX;
> >   }
> >
> > -static inline bool is_swiotlb_active(void)
> > +static inline bool is_swiotlb_active(struct device *dev)
> >   {
> >       return false;
> >   }
> > diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> > index 84c9feb5474a..7a88c34d0867 100644
> > --- a/kernel/dma/direct.c
> > +++ b/kernel/dma/direct.c
> > @@ -495,7 +495,7 @@ int dma_direct_supported(struct device *dev, u64 mask)
> >   size_t dma_direct_max_mapping_size(struct device *dev)
> >   {
> >       /* If SWIOTLB is active, use its maximum mapping size */
> > -     if (is_swiotlb_active() &&
> > +     if (is_swiotlb_active(dev) &&
> >           (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE))
>
> I wonder if it's worth trying to fold these other conditions into
> is_swiotlb_active() itself? I'm not entirely sure what matters for Xen,
> but for the other cases it seems like they probably only care about
> whether bouncing may occur for their particular device or not (possibly
> they want to be using dma_max_mapping_size() now anyway - TBH I'm
> struggling to make sense of what the swiotlb_max_segment business is
> supposed to mean).

I think leaving those conditions outside of is_swiotlb_active() might
help avoid confusion with is_dev_swiotlb_force() in patch #9? We need
is_dev_swiotlb_force() only because the restricted DMA pool supports
memory allocation, but the default swiotlb doesn't.

>
> Otherwise, patch #9 will need to touch here as well to make sure that
> per-device forced bouncing is reflected correctly.

You're right. Otherwise, is_dev_swiotlb_force is needed here.


>
> Robin.
>
> >               return swiotlb_max_mapping_size(dev);
> >       return SIZE_MAX;
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index ffbb8724e06c..1d221343f1c8 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -659,9 +659,9 @@ size_t swiotlb_max_mapping_size(struct device *dev)
> >       return ((size_t)IO_TLB_SIZE) * IO_TLB_SEGSIZE;
> >   }
> >
> > -bool is_swiotlb_active(void)
> > +bool is_swiotlb_active(struct device *dev)
> >   {
> > -     return io_tlb_default_mem != NULL;
> > +     return get_io_tlb_mem(dev) != NULL;
> >   }
> >   EXPORT_SYMBOL_GPL(is_swiotlb_active);
> >
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
