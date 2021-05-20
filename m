Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF40389E17
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 08:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D66E6EEA4;
	Thu, 20 May 2021 06:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB596EEA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 06:40:47 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id q15so11133370pgg.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 23:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oIhFsW3yOUmKSioHfdtl49xT1nsW2ymAOSCthcMXiio=;
 b=lM9veaUv42y4nXibj1lGSdifgvjsNbUKUEol+uJziWw6kVRwnZkDD52tXqcK/vhasS
 PUDj92pN5vsIbUfabcqexhaZYlSojZJ1wq1mzK9ZTms/+1Va4jsCnNJ6mu4u4DoMsmtY
 16/lsdYHKt3Z41zBC1z7c65B0IdsqOKp+QHbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oIhFsW3yOUmKSioHfdtl49xT1nsW2ymAOSCthcMXiio=;
 b=D9j776IZvueHHBlBiQGzXGX5wZ+yh7JeTfvKTGsygFrQmBC33TdsZROAq9Q0mjf+n3
 W3kgACU/rEUM6bjdMhgCb1UepMxx7cbmxoy+kKRbkvmVnq2Zl3LNf1T2rEvU0o2+i2vn
 xzpzbmtosMPlVwc3A6jvhnCSaByKETWzxYDKW0m3faKyYO4Lb/H5A07tAg4rruyg6URX
 hQHKKh7wbxlPDKGSPBO1HSlmr9otAMKEfGKFa561zs+xoGKV7mqXp34Tx1UlROm1Wi/e
 xxeju6GjXbsdZLkM0vW6bMD0ZzuIYGA0waAt8Dz06A+5xk7JifOtAGDYNxWe27DnD+3R
 OLAA==
X-Gm-Message-State: AOAM532CgWmJNKHHTiKzkFS3NNtbaNtHEJX6b47fFjlcdQHXYK/hS+cl
 0kPVXtJ+EpIROd1wEJFLy14dz9ZKSyg0oA==
X-Google-Smtp-Source: ABdhPJxlM7pZT7ZRx399D70eK6t4dFkxS/7hgsdrHGy+aVW6m1GKo9PwpXOk3+XuZRyUU0F7erTJxw==
X-Received: by 2002:a05:6a00:a:b029:2e0:d1b:59d6 with SMTP id
 h10-20020a056a00000ab02902e00d1b59d6mr3232941pfk.27.1621492846886; 
 Wed, 19 May 2021 23:40:46 -0700 (PDT)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com.
 [209.85.210.171])
 by smtp.gmail.com with ESMTPSA id v9sm3554672pjd.26.2021.05.19.23.40.45
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 May 2021 23:40:46 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id s19so9382611pfe.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 23:40:45 -0700 (PDT)
X-Received: by 2002:a5d:8c82:: with SMTP id g2mr3632711ion.34.1621492834046;
 Wed, 19 May 2021 23:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-2-tientzu@chromium.org>
 <170a54f2-be20-ec29-1d7f-3388e5f928c6@gmail.com>
In-Reply-To: <170a54f2-be20-ec29-1d7f-3388e5f928c6@gmail.com>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 20 May 2021 14:40:23 +0800
X-Gmail-Original-Message-ID: <CALiNf2-9fRbH3Xs=fA+N1iRztFxeC0iTsyOSZFe=F42uwXS0Sg@mail.gmail.com>
Message-ID: <CALiNf2-9fRbH3Xs=fA+N1iRztFxeC0iTsyOSZFe=F42uwXS0Sg@mail.gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v7 01/15] swiotlb: Refactor swiotlb init
 functions
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

On Thu, May 20, 2021 at 2:50 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/17/2021 11:42 PM, Claire Chang wrote:
> > Add a new function, swiotlb_init_io_tlb_mem, for the io_tlb_mem struct
> > initialization to make the code reusable.
> >
> > Note that we now also call set_memory_decrypted in swiotlb_init_with_tbl.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  kernel/dma/swiotlb.c | 51 ++++++++++++++++++++++----------------------
> >  1 file changed, 25 insertions(+), 26 deletions(-)
> >
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index 8ca7d505d61c..d3232fc19385 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -168,9 +168,30 @@ void __init swiotlb_update_mem_attributes(void)
> >       memset(vaddr, 0, bytes);
> >  }
> >
> > -int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> > +static void swiotlb_init_io_tlb_mem(struct io_tlb_mem *mem, phys_addr_t start,
> > +                                 unsigned long nslabs, bool late_alloc)
> >  {
> > +     void *vaddr = phys_to_virt(start);
> >       unsigned long bytes = nslabs << IO_TLB_SHIFT, i;
> > +
> > +     mem->nslabs = nslabs;
> > +     mem->start = start;
> > +     mem->end = mem->start + bytes;
> > +     mem->index = 0;
> > +     mem->late_alloc = late_alloc;
> > +     spin_lock_init(&mem->lock);
> > +     for (i = 0; i < mem->nslabs; i++) {
> > +             mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
> > +             mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
> > +             mem->slots[i].alloc_size = 0;
> > +     }
> > +
> > +     set_memory_decrypted((unsigned long)vaddr, bytes >> PAGE_SHIFT);
> > +     memset(vaddr, 0, bytes);
>
> You are doing an unconditional set_memory_decrypted() followed by a
> memset here, and then:
>
> > +}
> > +
> > +int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> > +{
> >       struct io_tlb_mem *mem;
> >       size_t alloc_size;
> >
> > @@ -186,16 +207,8 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> >       if (!mem)
> >               panic("%s: Failed to allocate %zu bytes align=0x%lx\n",
> >                     __func__, alloc_size, PAGE_SIZE);
> > -     mem->nslabs = nslabs;
> > -     mem->start = __pa(tlb);
> > -     mem->end = mem->start + bytes;
> > -     mem->index = 0;
> > -     spin_lock_init(&mem->lock);
> > -     for (i = 0; i < mem->nslabs; i++) {
> > -             mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
> > -             mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
> > -             mem->slots[i].alloc_size = 0;
> > -     }
> > +
> > +     swiotlb_init_io_tlb_mem(mem, __pa(tlb), nslabs, false);
>
> You convert this call site with swiotlb_init_io_tlb_mem() which did not
> do the set_memory_decrypted()+memset(). Is this okay or should
> swiotlb_init_io_tlb_mem() add an additional argument to do this
> conditionally?

I'm actually not sure if this it okay. If not, will add an additional
argument for it.

> --
> Florian
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
