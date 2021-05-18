Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 717EB3872C8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 09:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC636E819;
	Tue, 18 May 2021 07:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA336E819
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 07:02:47 +0000 (UTC)
Received: by mail-io1-xd33.google.com with SMTP id r4so7679725iol.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 00:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XgyF0OvHzw8KTyadFBcEzsCamkUD+/ukWzei3hnGvkc=;
 b=VO0BvOlWIIiGkUdtOb1VSOWiBrk2KLMr0fiDCPwaBrvrf/j2/7hCX1JlEDcxzMqFmv
 42I6m34flwgfsu+jKFLERtm6bjzporQ7M0BTCF240tpdoJChz4PcESq3XpYvN81Vfxez
 ZW4CMor3EwZRISv4nvwP/XJ/8ZZ+MrGyZniYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XgyF0OvHzw8KTyadFBcEzsCamkUD+/ukWzei3hnGvkc=;
 b=dKYu76Klw1HXqeLdAaA4ejcgFvym64zCCCrBYoxc7MSCLr9ZGTPhSKGhYy8pnowwwR
 LagmWukt+G9uVm1b3egqWJunAgTFHpteTv5F4+9S3iUoSDg/sAVFTxXAImdGVQXoJBAQ
 o+zKGCSc+U7RlcMjzwDf7U5GwwjVYyh0BNHp5cBDSve0OxcGMjwdzdQuIz+QEAz73mFq
 /sgZJZfLQNVlPSt276a6P+ieRn1n61vp07JPJWEG8W3HgTQTPrmWc4UX2hJwlVLcd5di
 PjlcdK6OqQN++qrJwhUeYgyV26XlAo5N6qRBi0vUdP2ldNS6QGrkws5tuyKheEyGcXLg
 9slA==
X-Gm-Message-State: AOAM5318umvhq7EBGL4KLZljVeoCVomC2zLQyx16X9lbwEd9CGNfe1ny
 hd5MWazenEk4LnEmMDpWuVmvzB1l2w/dGQ==
X-Google-Smtp-Source: ABdhPJz0/jbVE99GOz98+uh0rcN7HMJNKpspAEvqbs/b054bmHYzsdcqTrbg7OkNPMpKFAUzxWiG6w==
X-Received: by 2002:a05:6638:1650:: with SMTP id
 a16mr3977998jat.23.1621321366296; 
 Tue, 18 May 2021 00:02:46 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id t8sm10286205ilj.56.2021.05.18.00.02.45
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 May 2021 00:02:46 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id k16so8376991ios.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 00:02:45 -0700 (PDT)
X-Received: by 2002:a05:6638:10e4:: with SMTP id
 g4mr3960623jae.90.1621320877050; 
 Mon, 17 May 2021 23:54:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210510095026.3477496-1-tientzu@chromium.org>
In-Reply-To: <20210510095026.3477496-1-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 18 May 2021 14:54:26 +0800
X-Gmail-Original-Message-ID: <CALiNf2-LhQqAX3kJSETOxG4ipu9Nhs97yYiGm0XZKG7vBQ_hNQ@mail.gmail.com>
Message-ID: <CALiNf2-LhQqAX3kJSETOxG4ipu9Nhs97yYiGm0XZKG7vBQ_hNQ@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v6 00/15] Restricted DMA
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
 nouveau@lists.freedesktop.org, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v7: https://lore.kernel.org/patchwork/cover/1431031/

On Mon, May 10, 2021 at 5:50 PM Claire Chang <tientzu@chromium.org> wrote:
>
> From: Claire Chang <tientzu@google.com>
>
> This series implements mitigations for lack of DMA access control on
> systems without an IOMMU, which could result in the DMA accessing the
> system memory at unexpected times and/or unexpected addresses, possibly
> leading to data leakage or corruption.
>
> For example, we plan to use the PCI-e bus for Wi-Fi and that PCI-e bus is
> not behind an IOMMU. As PCI-e, by design, gives the device full access to
> system memory, a vulnerability in the Wi-Fi firmware could easily escalate
> to a full system exploit (remote wifi exploits: [1a], [1b] that shows a
> full chain of exploits; [2], [3]).
>
> To mitigate the security concerns, we introduce restricted DMA. Restricted
> DMA utilizes the existing swiotlb to bounce streaming DMA in and out of a
> specially allocated region and does memory allocation from the same region.
> The feature on its own provides a basic level of protection against the DMA
> overwriting buffer contents at unexpected times. However, to protect
> against general data leakage and system memory corruption, the system needs
> to provide a way to restrict the DMA to a predefined memory region (this is
> usually done at firmware level, e.g. MPU in ATF on some ARM platforms [4]).
>
> [1a] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_4.html
> [1b] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_11.html
> [2] https://blade.tencent.com/en/advisories/qualpwn/
> [3] https://www.bleepingcomputer.com/news/security/vulnerabilities-found-in-highly-popular-firmware-for-wifi-chips/
> [4] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132
>
> v6:
> Address the comments in v5
>
> v5:
> Rebase on latest linux-next
> https://lore.kernel.org/patchwork/cover/1416899/
>
> v4:
> - Fix spinlock bad magic
> - Use rmem->name for debugfs entry
> - Address the comments in v3
> https://lore.kernel.org/patchwork/cover/1378113/
>
> v3:
> Using only one reserved memory region for both streaming DMA and memory
> allocation.
> https://lore.kernel.org/patchwork/cover/1360992/
>
> v2:
> Building on top of swiotlb.
> https://lore.kernel.org/patchwork/cover/1280705/
>
> v1:
> Using dma_map_ops.
> https://lore.kernel.org/patchwork/cover/1271660/
> *** BLURB HERE ***
>
> Claire Chang (15):
>   swiotlb: Refactor swiotlb init functions
>   swiotlb: Refactor swiotlb_create_debugfs
>   swiotlb: Add DMA_RESTRICTED_POOL
>   swiotlb: Add restricted DMA pool initialization
>   swiotlb: Add a new get_io_tlb_mem getter
>   swiotlb: Update is_swiotlb_buffer to add a struct device argument
>   swiotlb: Update is_swiotlb_active to add a struct device argument
>   swiotlb: Bounce data from/to restricted DMA pool if available
>   swiotlb: Move alloc_size to find_slots
>   swiotlb: Refactor swiotlb_tbl_unmap_single
>   dma-direct: Add a new wrapper __dma_direct_free_pages()
>   swiotlb: Add restricted DMA alloc/free support.
>   dma-direct: Allocate memory from restricted DMA pool if available
>   dt-bindings: of: Add restricted DMA pool
>   of: Add plumbing for restricted DMA pool
>
>  .../reserved-memory/reserved-memory.txt       |  27 ++
>  drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   2 +-
>  drivers/gpu/drm/nouveau/nouveau_ttm.c         |   2 +-
>  drivers/iommu/dma-iommu.c                     |  12 +-
>  drivers/of/address.c                          |  25 ++
>  drivers/of/device.c                           |   3 +
>  drivers/of/of_private.h                       |   5 +
>  drivers/pci/xen-pcifront.c                    |   2 +-
>  drivers/xen/swiotlb-xen.c                     |   2 +-
>  include/linux/device.h                        |   4 +
>  include/linux/swiotlb.h                       |  41 ++-
>  kernel/dma/Kconfig                            |  14 +
>  kernel/dma/direct.c                           |  63 +++--
>  kernel/dma/direct.h                           |   9 +-
>  kernel/dma/swiotlb.c                          | 242 +++++++++++++-----
>  15 files changed, 356 insertions(+), 97 deletions(-)
>
> --
> 2.31.1.607.g51e8a6a459-goog
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
