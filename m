Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02A23A456C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 17:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11006EF21;
	Fri, 11 Jun 2021 15:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC586EF21
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 15:32:15 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id k5so21770457iow.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=89FDdm5otB6kfSIY1wN8GtI+ciQx5v+glSl+A+k1+x0=;
 b=UdgbVNlCM2Z2m4AZZMvHuq5iZqq6a6B1k1NgNWN8Vbr0FhlXEkOMcXQOmqkTt81W9l
 ZZvZ8qEfilw4IVJQmcyphxlOFoGk0yzalYprjSKjTm0i0iDciVsO4hDbAAQ2CGlI10y9
 ZbSgy3asVidQE8sG2vEkYEnh2JJM0V3DCy6O0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=89FDdm5otB6kfSIY1wN8GtI+ciQx5v+glSl+A+k1+x0=;
 b=WtYQJ0/4zPtLsj00JSvMaNNsSzBdx9e3ug6vTW9oXOKDnOPdkvyx1ada1U2rJfDtD6
 sy9514qTVMty6xCsvNYIi80fqrsX+7PVB+KJAW8VUSoZEFLUApsflT0g7jUmNKIWR46C
 TxWlsC54rGpiGkwtSlc4u8Zcak6alCdy5UDgCulR2moxZPqSvT6AenQJBagfW472+WBe
 5Whu8rkqK5gZurc611Tz0yWfYWyGG+ftRmNnwpf/wFaTc/PXNzA3ePJ2pkaOVR0qoYKC
 2Y1HGXrsPsBUI8HHpMFLsmhIs83n/G1Sq2seIYHQwsne5ixC19wgnN3EUs9AxJ6do+Oq
 Eetw==
X-Gm-Message-State: AOAM532rGbI7cAthVXArcJVsdq9zKtfG81iu89euzpjrKaXFD4uaSpZW
 HKjfwyI5k/SOdrSp2Yuofh92iJ6BWy4J2w==
X-Google-Smtp-Source: ABdhPJzD/y6wl6bzXjrhfAv+CSv864Uj8q9F+24TFDMxb7aNvIyLmyTajbIoqgmVDwZSE5r3H4biyQ==
X-Received: by 2002:a5d:934d:: with SMTP id i13mr2821837ioo.164.1623425534777; 
 Fri, 11 Jun 2021 08:32:14 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id a19sm3560005ioe.22.2021.06.11.08.32.13
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jun 2021 08:32:14 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id a6so31636344ioe.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:32:13 -0700 (PDT)
X-Received: by 2002:a05:6638:151:: with SMTP id
 y17mr4471864jao.128.1623425522838; 
 Fri, 11 Jun 2021 08:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210527125845.1852284-1-tientzu@chromium.org>
 <20210604174818.GC3703@willie-the-truck>
 <CALiNf29=z2uBM1ZA_GTu04iFS2dJwH0npdGvid1PL5KQM_HrxA@mail.gmail.com>
In-Reply-To: <CALiNf29=z2uBM1ZA_GTu04iFS2dJwH0npdGvid1PL5KQM_HrxA@mail.gmail.com>
From: Claire Chang <tientzu@chromium.org>
Date: Fri, 11 Jun 2021 23:31:52 +0800
X-Gmail-Original-Message-ID: <CALiNf29RGoFq7L+t_Bi6TsE-93-=m49DdV6QrVBV=pvoAjKsvw@mail.gmail.com>
Message-ID: <CALiNf29RGoFq7L+t_Bi6TsE-93-=m49DdV6QrVBV=pvoAjKsvw@mail.gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v8 00/15] Restricted DMA
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
 Jianxiong Gao <jxgao@google.com>,
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

v9 here: https://lore.kernel.org/patchwork/cover/1445081/

On Mon, Jun 7, 2021 at 11:28 AM Claire Chang <tientzu@chromium.org> wrote:
>
> On Sat, Jun 5, 2021 at 1:48 AM Will Deacon <will@kernel.org> wrote:
> >
> > Hi Claire,
> >
> > On Thu, May 27, 2021 at 08:58:30PM +0800, Claire Chang wrote:
> > > This series implements mitigations for lack of DMA access control on
> > > systems without an IOMMU, which could result in the DMA accessing the
> > > system memory at unexpected times and/or unexpected addresses, possibly
> > > leading to data leakage or corruption.
> > >
> > > For example, we plan to use the PCI-e bus for Wi-Fi and that PCI-e bus is
> > > not behind an IOMMU. As PCI-e, by design, gives the device full access to
> > > system memory, a vulnerability in the Wi-Fi firmware could easily escalate
> > > to a full system exploit (remote wifi exploits: [1a], [1b] that shows a
> > > full chain of exploits; [2], [3]).
> > >
> > > To mitigate the security concerns, we introduce restricted DMA. Restricted
> > > DMA utilizes the existing swiotlb to bounce streaming DMA in and out of a
> > > specially allocated region and does memory allocation from the same region.
> > > The feature on its own provides a basic level of protection against the DMA
> > > overwriting buffer contents at unexpected times. However, to protect
> > > against general data leakage and system memory corruption, the system needs
> > > to provide a way to restrict the DMA to a predefined memory region (this is
> > > usually done at firmware level, e.g. MPU in ATF on some ARM platforms [4]).
> > >
> > > [1a] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_4.html
> > > [1b] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_11.html
> > > [2] https://blade.tencent.com/en/advisories/qualpwn/
> > > [3] https://www.bleepingcomputer.com/news/security/vulnerabilities-found-in-highly-popular-firmware-for-wifi-chips/
> > > [4] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132
> > >
> > > v8:
> > > - Fix reserved-memory.txt and add the reg property in example.
> > > - Fix sizeof for of_property_count_elems_of_size in
> > >   drivers/of/address.c#of_dma_set_restricted_buffer.
> > > - Apply Will's suggestion to try the OF node having DMA configuration in
> > >   drivers/of/address.c#of_dma_set_restricted_buffer.
> > > - Fix typo in the comment of drivers/of/address.c#of_dma_set_restricted_buffer.
> > > - Add error message for PageHighMem in
> > >   kernel/dma/swiotlb.c#rmem_swiotlb_device_init and move it to
> > >   rmem_swiotlb_setup.
> > > - Fix the message string in rmem_swiotlb_setup.
> >
> > Thanks for the v8. It works for me out of the box on arm64 under KVM, so:
> >
> > Tested-by: Will Deacon <will@kernel.org>
> >
> > Note that something seems to have gone wrong with the mail threading, so
> > the last 5 patches ended up as a separate thread for me. Probably worth
> > posting again with all the patches in one place, if you can.
>
> Thanks for testing.
>
> Christoph also added some comments in v7, so I'll prepare v9.
>
> >
> > Cheers,
> >
> > Will
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
