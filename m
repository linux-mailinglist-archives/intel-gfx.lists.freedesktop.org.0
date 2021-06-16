Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9699C3A90FC
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 07:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B1C6E038;
	Wed, 16 Jun 2021 05:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6FF06E038
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 05:10:26 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id r20so962890qtp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 22:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iLn8eUCvJy2CWcSIXe6ohsWZex4qVXD74p7z6FMJPUo=;
 b=jDOToH5ThQyIZ/Z8kPwh8R97YYJUPgyXIvwYI7ELfesGT1LRFmc0oQizSpW5Du/1jT
 n8n511S9H2jKWIPPzwbEGsCQVrh6jqMZwL99GOCEoFmIgU2xBUW+YvuQbG8TA+PazhFY
 uMdw/pNT41Ub0lKjlBja/JS0DV7IUisf06CVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iLn8eUCvJy2CWcSIXe6ohsWZex4qVXD74p7z6FMJPUo=;
 b=o6qU5tyv4b/Vgo0DDUcqcMjl6aeKMMNNHM+bCEVMzcRaErXGhLgC7rEFpq6LAtXpKN
 K8CyQ2Dp4buSOLFsgahNJauASNwXmoL63GgLrWftH65S4Z9IjTuCNcy944ftf4k4FNCK
 YTBrd+HaKQa3/MQnG3ntD02/lROCHdd9yK7f+O3lZ+WSF/woVlDzy6+dE6aCnUv7xoeL
 bcb7s8jjVkiM3zxCsv3bul1Kzo6MEAHW1gnOYrzqkcwSWjkgMJZkdk1sGU2W0mdy/RmD
 SbWjtpPxpmummBaZBc9bjrHZ9ZQD0PO3daXEjMKY9AWrpO85WMqkdpNF23Qmym5NuoBk
 Iuhg==
X-Gm-Message-State: AOAM532s+4W9E6nVY2yCRTD+CKYwzv8b42/trnBKlk3JGVRpcpilm3Qy
 E0ZpZQ2b4U2YgX/aOUfbGkcXcKpAouAvhQ==
X-Google-Smtp-Source: ABdhPJxddPoJ3tWabRi2E4bLFPMAizizHa4kaPrMndxPirZeCV4dee8w/489oB5xW91T6euFSOWN9A==
X-Received: by 2002:aed:2162:: with SMTP id 89mr3355514qtc.182.1623820225742; 
 Tue, 15 Jun 2021 22:10:25 -0700 (PDT)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com.
 [209.85.222.169])
 by smtp.gmail.com with ESMTPSA id y128sm860224qke.113.2021.06.15.22.10.23
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Jun 2021 22:10:24 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id j62so1350684qke.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 22:10:23 -0700 (PDT)
X-Received: by 2002:a05:6638:151:: with SMTP id
 y17mr2452891jao.128.1623820213046; 
 Tue, 15 Jun 2021 22:10:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210616035240.840463-1-tientzu@chromium.org>
 <20210616035240.840463-10-tientzu@chromium.org>
 <CALiNf28=3vqAs+8HsjyBGOiPNR2F3yT6OGnLpZH_AkWqgTqgOA@mail.gmail.com>
 <20210616045918.GA27537@lst.de>
In-Reply-To: <20210616045918.GA27537@lst.de>
From: Claire Chang <tientzu@chromium.org>
Date: Wed, 16 Jun 2021 13:10:02 +0800
X-Gmail-Original-Message-ID: <CALiNf2-+vL8rw5fi=DcR=V7d55Ls3-OXoxC87Pvrf1Kz14D_+A@mail.gmail.com>
Message-ID: <CALiNf2-+vL8rw5fi=DcR=V7d55Ls3-OXoxC87Pvrf1Kz14D_+A@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
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
 grant.likely@arm.com, paulus@samba.org, Frank Rowand <frowand.list@gmail.com>,
 mingo@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
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

On Wed, Jun 16, 2021 at 12:59 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jun 16, 2021 at 12:04:16PM +0800, Claire Chang wrote:
> > Just noticed that after propagating swiotlb_force setting into
> > io_tlb_default_mem->force, the memory allocation behavior for
> > swiotlb_force will change (i.e. always skipping arch_dma_alloc and
> > dma_direct_alloc_from_pool).
>
> Yes, I think we need to split a "use_for_alloc" flag from the force flag.

How about splitting is_dev_swiotlb_force into is_swiotlb_force_bounce
(io_tlb_mem->force_bounce) and is_swiotlb_force_alloc
(io_tlb_mem->force_alloc)?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
