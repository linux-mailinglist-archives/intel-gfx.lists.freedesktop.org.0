Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F285739D375
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 05:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364EB6E0BA;
	Mon,  7 Jun 2021 03:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 396486E0BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 03:29:17 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id b14so14486586ilq.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Jun 2021 20:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zXJrYShxgIyQHo1wYCS3F9rVjXIqXzIl9+OOmY4aJuc=;
 b=lXhSyF7uZrXQiHjN4kEdhtrYYO4eYXTtv+MmIVlkaYfrDj3gFF3i6zdq9V6t5fEQPA
 Q41l6xsOf6kbnxwhiHTDBcVDInxTuXTZ4PeJVzQkTroJzwWh+Feq2JO3lXBrruik9rJE
 v5bJs9UlwmvhYXAJ0FNY04iCN48TAqVGzZPFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXJrYShxgIyQHo1wYCS3F9rVjXIqXzIl9+OOmY4aJuc=;
 b=NbJEja7ogUH0Z4tKCgFlFp34kNJom1hiX4NbZuXFHqk96AmqzRrBF/GQjNAbiWi9rv
 4+Kmd0N8AJXPmx+IvvIRIi93rfc4PHtyo1g65yL9MmblAADJ5QIw0cyWpaKTAZH8tOG1
 fUu5acOiUGHMETS1FwS1P9kyyPq7FkvZlbluPEuAqoZpe9VzbE+8liYAt0efoV+BOots
 KmswgGjpZaNvuuJR/vzHhc1mCjfHBKasvns7YqkiAylmPrgBmWprnfBq39raI5K7APv6
 N68PjYXHiwmiWAcWmytONn6H36KCGGVrvoPC2dExrk2sGtiZnhmMfyMjzVkmZMeHdEd1
 Jtyw==
X-Gm-Message-State: AOAM530D2hYp4R9xO2WjitEQ2HxvkyL1uoCuBbBqUvX2R2rrFvWtwVC6
 ofTYluNqXStzcYmV2dzcU+I1huRsFacJig==
X-Google-Smtp-Source: ABdhPJyrwik51iRMBnnVP3j47J0H6nc43JpHVFpuMOAlwCAOzl28QJWKZpjTxeslPAci+Nq81jfzqA==
X-Received: by 2002:a05:6e02:5c7:: with SMTP id
 l7mr12804572ils.283.1623036556080; 
 Sun, 06 Jun 2021 20:29:16 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id j4sm7774915iom.28.2021.06.06.20.29.14
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Jun 2021 20:29:15 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id f10so2314317iok.6
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Jun 2021 20:29:14 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a44:: with SMTP id
 u4mr1746214ilv.64.1623036543940; 
 Sun, 06 Jun 2021 20:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210527125845.1852284-1-tientzu@chromium.org>
 <20210604174818.GC3703@willie-the-truck>
In-Reply-To: <20210604174818.GC3703@willie-the-truck>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 7 Jun 2021 11:28:53 +0800
X-Gmail-Original-Message-ID: <CALiNf29=z2uBM1ZA_GTu04iFS2dJwH0npdGvid1PL5KQM_HrxA@mail.gmail.com>
Message-ID: <CALiNf29=z2uBM1ZA_GTu04iFS2dJwH0npdGvid1PL5KQM_HrxA@mail.gmail.com>
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

On Sat, Jun 5, 2021 at 1:48 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Claire,
>
> On Thu, May 27, 2021 at 08:58:30PM +0800, Claire Chang wrote:
> > This series implements mitigations for lack of DMA access control on
> > systems without an IOMMU, which could result in the DMA accessing the
> > system memory at unexpected times and/or unexpected addresses, possibly
> > leading to data leakage or corruption.
> >
> > For example, we plan to use the PCI-e bus for Wi-Fi and that PCI-e bus is
> > not behind an IOMMU. As PCI-e, by design, gives the device full access to
> > system memory, a vulnerability in the Wi-Fi firmware could easily escalate
> > to a full system exploit (remote wifi exploits: [1a], [1b] that shows a
> > full chain of exploits; [2], [3]).
> >
> > To mitigate the security concerns, we introduce restricted DMA. Restricted
> > DMA utilizes the existing swiotlb to bounce streaming DMA in and out of a
> > specially allocated region and does memory allocation from the same region.
> > The feature on its own provides a basic level of protection against the DMA
> > overwriting buffer contents at unexpected times. However, to protect
> > against general data leakage and system memory corruption, the system needs
> > to provide a way to restrict the DMA to a predefined memory region (this is
> > usually done at firmware level, e.g. MPU in ATF on some ARM platforms [4]).
> >
> > [1a] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_4.html
> > [1b] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_11.html
> > [2] https://blade.tencent.com/en/advisories/qualpwn/
> > [3] https://www.bleepingcomputer.com/news/security/vulnerabilities-found-in-highly-popular-firmware-for-wifi-chips/
> > [4] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132
> >
> > v8:
> > - Fix reserved-memory.txt and add the reg property in example.
> > - Fix sizeof for of_property_count_elems_of_size in
> >   drivers/of/address.c#of_dma_set_restricted_buffer.
> > - Apply Will's suggestion to try the OF node having DMA configuration in
> >   drivers/of/address.c#of_dma_set_restricted_buffer.
> > - Fix typo in the comment of drivers/of/address.c#of_dma_set_restricted_buffer.
> > - Add error message for PageHighMem in
> >   kernel/dma/swiotlb.c#rmem_swiotlb_device_init and move it to
> >   rmem_swiotlb_setup.
> > - Fix the message string in rmem_swiotlb_setup.
>
> Thanks for the v8. It works for me out of the box on arm64 under KVM, so:
>
> Tested-by: Will Deacon <will@kernel.org>
>
> Note that something seems to have gone wrong with the mail threading, so
> the last 5 patches ended up as a separate thread for me. Probably worth
> posting again with all the patches in one place, if you can.

Thanks for testing.

Christoph also added some comments in v7, so I'll prepare v9.

>
> Cheers,
>
> Will
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
