Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844E13B2720
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 08:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5B16E9F0;
	Thu, 24 Jun 2021 06:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F496E9F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 06:06:03 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id c8so4277091pfp.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 23:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=osJqntoZHJL8VeQbE2d8Gx1TrOiajWQXazXH9w70kIY=;
 b=f09JHaTt6yY9HlwcujpzmyCJbvbUoIE0cZNa0aICkCK68T/rODYze/6/aKRkuFqgtc
 aQSgGc4CEL1bXaOSKVo+xlBop7hH5m1EqqxXbZi8VyWUJmFL6g6BM4X4ZMkMlYffhkXb
 itPPZk67YIl+8XjGG/C0lboNwjIIr80wXQ+NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=osJqntoZHJL8VeQbE2d8Gx1TrOiajWQXazXH9w70kIY=;
 b=n1YPgOVQt8XfyOoV69XT9iKhhZkU7qg8TfDDSklIY6NuPTB2KcgBBo8UJ9XXUsPSir
 Ie6YSVVS1EFsV2BaZ+17nypINTJsf0069Upk0/HDYNVMZEbiCZ94WkdzGfvZMNJcLy7k
 ugyxLGFK0gCn35vx8dDLQFLRX9p9Y7+k2Lqy+HqnUdmdyngxbju1cHNxEPOvRQ64tNj+
 HSsvap1c/NV+LcASMNiGrLNbbyzuqKYL1uSqjiUnlQDN5g4oVk+vakJHo0SXR2x8r/j0
 bD2fBwOHLPckG0XiZoP8Om872k0N1HwrijNeKzZvNNNuV+YafynXGNNPgtFk7kQVeBUn
 hdBg==
X-Gm-Message-State: AOAM532fyroGqFw3qV2FY8N2tJf3JzfXI8cU4Xd4STUjOE8bWO/EfxtA
 /D+nCPGBqbrTwaKp1++WkHi2YgVP3cOy1Q==
X-Google-Smtp-Source: ABdhPJzf2fsp36DON5An5ElbppSBhIAmzgUFJVc6nJalUlhVTmSwOyvIS0awx+GKSqI0jUwg2Bu8dg==
X-Received: by 2002:a63:e453:: with SMTP id i19mr3347255pgk.134.1624514762465; 
 Wed, 23 Jun 2021 23:06:02 -0700 (PDT)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com.
 [209.85.215.175])
 by smtp.gmail.com with ESMTPSA id hk16sm1235593pjb.1.2021.06.23.23.06.00
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 23:06:01 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id e22so3835075pgv.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a92:750c:: with SMTP id q12mr2332407ilc.303.1624514749926; 
 Wed, 23 Jun 2021 23:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210619034043.199220-1-tientzu@chromium.org>
 <20210619034043.199220-7-tientzu@chromium.org>
 <76c3343d-72e5-9df3-8924-5474ee698ef4@quicinc.com>
 <20210623183736.GA472@willie-the-truck>
 <19d4c7a2-744d-21e0-289c-a576e1f0e6f3@quicinc.com>
 <20210624054315.GA25381@lst.de>
In-Reply-To: <20210624054315.GA25381@lst.de>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 24 Jun 2021 14:05:39 +0800
X-Gmail-Original-Message-ID: <CALiNf288ZLMhY3E8E3N+z9rkwi1viWNLm1wwMEwT4rNwh3FfwQ@mail.gmail.com>
Message-ID: <CALiNf288ZLMhY3E8E3N+z9rkwi1viWNLm1wwMEwT4rNwh3FfwQ@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH v14 06/12] swiotlb: Use
 is_swiotlb_force_bounce for swiotlb data bouncing
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
Cc: heikki.krogerus@linux.intel.com,
 linux-devicetree <devicetree@vger.kernel.org>, peterz@infradead.org,
 benh@kernel.crashing.org, dri-devel@lists.freedesktop.org,
 chris@chris-wilson.co.uk, grant.likely@arm.com, paulus@samba.org,
 Frank Rowand <frowand.list@gmail.com>, mingo@kernel.org,
 Jianxiong Gao <jxgao@google.com>, Stefano Stabellini <sstabellini@kernel.org>,
 Saravana Kannan <saravanak@google.com>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Dan Williams <dan.j.williams@intel.com>, matthew.auld@intel.com,
 Nicolas Boichat <drinkcat@chromium.org>, thomas.hellstrom@linux.intel.com,
 Jim Quinlan <james.quinlan@broadcom.com>, Will Deacon <will@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 intel-gfx@lists.freedesktop.org, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 airlied@linux.ie, Thierry Reding <treding@nvidia.com>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 Qian Cai <quic_qiancai@quicinc.com>, lkml <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 xypron.glpk@gmx.de, Tom Lendacky <thomas.lendacky@amd.com>,
 linuxppc-dev@lists.ozlabs.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 24, 2021 at 1:43 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jun 23, 2021 at 02:44:34PM -0400, Qian Cai wrote:
> > is_swiotlb_force_bounce at /usr/src/linux-next/./include/linux/swiotlb.h:119
> >
> > is_swiotlb_force_bounce() was the new function introduced in this patch here.
> >
> > +static inline bool is_swiotlb_force_bounce(struct device *dev)
> > +{
> > +     return dev->dma_io_tlb_mem->force_bounce;
> > +}
>
> To me the crash looks like dev->dma_io_tlb_mem is NULL.  Can you
> turn this into :
>
>         return dev->dma_io_tlb_mem && dev->dma_io_tlb_mem->force_bounce;
>
> for a quick debug check?

I just realized that dma_io_tlb_mem might be NULL like Christoph
pointed out since swiotlb might not get initialized.
However,  `Unable to handle kernel paging request at virtual address
dfff80000000000e` looks more like the address is garbage rather than
NULL?
I wonder if that's because dev->dma_io_tlb_mem is not assigned
properly (which means device_initialize is not called?).
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
