Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7DC392E3E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 14:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F2A6E459;
	Thu, 27 May 2021 12:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEF46E459
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 12:49:23 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 o17-20020a17090a9f91b029015cef5b3c50so2271586pjp.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 05:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t9nQbEpq5kzp2vshpX/2KDY0MEdzNS47SlLJX4RAhzA=;
 b=XnDncQEfy0WK93TP5b5iaOvQy6p3tli5hK7U2lnqkRYfpimdp+9WScU0B/bVffV6lu
 KHvuv/cILlR7hwxjPwG4fSm8TLb0M0uiiQtfQGCy1lJiDeCNSlZdr9ro+4UoS7qK25VN
 Vwx6crrIG7NXb3xhmTS0AaKdDSprMjL64yAgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t9nQbEpq5kzp2vshpX/2KDY0MEdzNS47SlLJX4RAhzA=;
 b=OJ3ILxf2CR71nAT7irPt4q16GrV8Kl83BdQE3R4hQgVgRLUqnSwKGNjO99ZJ4KyK8J
 5PKxjl0FE8AQPCr0DJcgzVXNvmi7e6ono9WL6HoYnwWEMWcMcPAgh6kujWZ3zGqhUUlS
 tolwJNjMlYGeY9lmNwX2pwIVkIDUEquRwjUZsoPdYYKf75yaV4LduXuCqPLYkxgD6nqZ
 LBNeuLwfoOUZqpYUzktXHli/ahzx9dQQ6VWXup0gIVgsPMva1fBXDosjQKSVBcOxSnVe
 AI/wrOBMr8+0O7o7tZ3eI/ROkrGv4BHWv2iK0JdR2tXycsKlSRvG3ot/vQ7SlxcO6ZSA
 xsvg==
X-Gm-Message-State: AOAM530UojUPFXFQN4qwv0AgCf2heyvKz+4ti3l//DtRf0wKkwupIAuH
 Ne89UXI8HtEEsi0FJIPAYtorFqHWclduFw==
X-Google-Smtp-Source: ABdhPJxax5Y/J9kFQUNIQBYiFQJ3ONk0XNBM/Inr8VbnkjOh7xLjsc69MHyjecPtMWVYR6okJYlkRw==
X-Received: by 2002:a17:90a:2:: with SMTP id 2mr9303801pja.107.1622119762812; 
 Thu, 27 May 2021 05:49:22 -0700 (PDT)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com.
 [209.85.215.181])
 by smtp.gmail.com with ESMTPSA id m2sm1904893pgu.85.2021.05.27.05.49.21
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 May 2021 05:49:22 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id r1so3614232pgk.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 05:49:21 -0700 (PDT)
X-Received: by 2002:a92:2907:: with SMTP id l7mr2908573ilg.64.1622119750871;
 Thu, 27 May 2021 05:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-15-tientzu@chromium.org>
 <20210526121322.GA19313@willie-the-truck>
 <20210526155321.GA19633@willie-the-truck>
 <CALiNf2_sVXnb97++yWusB5PWz8Pzfn9bCKZc6z3tY4bx6-nW8w@mail.gmail.com>
 <20210527113456.GA22019@willie-the-truck>
In-Reply-To: <20210527113456.GA22019@willie-the-truck>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 27 May 2021 20:48:59 +0800
X-Gmail-Original-Message-ID: <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
Message-ID: <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v7 14/15] dt-bindings: of: Add restricted
 DMA pool
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
Cc: Jim Quinlan <james.quinlan@broadcom.com>, heikki.krogerus@linux.intel.com,
 linux-devicetree <devicetree@vger.kernel.org>, peterz@infradead.org,
 benh@kernel.crashing.org, dri-devel@lists.freedesktop.org,
 chris@chris-wilson.co.uk, grant.likely@arm.com, paulus@samba.org,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Jianxiong Gao <jxgao@google.com>, sstabellini@kernel.org,
 Saravana Kannan <saravanak@google.com>, mpe@ellerman.id.au,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, mingo@kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, matthew.auld@intel.com,
 Nicolas Boichat <drinkcat@chromium.org>, thomas.hellstrom@linux.intel.com,
 jgross@suse.com, Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 intel-gfx@lists.freedesktop.org, Robin Murphy <robin.murphy@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 boris.ostrovsky@oracle.com, airlied@linux.ie,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 xypron.glpk@gmx.de, linuxppc-dev@lists.ozlabs.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 27, 2021 at 7:35 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 27, 2021 at 07:29:20PM +0800, Claire Chang wrote:
> > On Wed, May 26, 2021 at 11:53 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Wed, May 26, 2021 at 01:13:22PM +0100, Will Deacon wrote:
> > > > On Tue, May 18, 2021 at 02:42:14PM +0800, Claire Chang wrote:
> > > > > @@ -138,4 +160,9 @@ one for multimedia processing (named multimedia-memory@77000000, 64MiB).
> > > > >             memory-region = <&multimedia_reserved>;
> > > > >             /* ... */
> > > > >     };
> > > > > +
> > > > > +   pcie_device: pcie_device@0,0 {
> > > > > +           memory-region = <&restricted_dma_mem_reserved>;
> > > > > +           /* ... */
> > > > > +   };
> > > >
> > > > I still don't understand how this works for individual PCIe devices -- how
> > > > is dev->of_node set to point at the node you have above?
> > > >
> > > > I tried adding the memory-region to the host controller instead, and then
> > > > I see it crop up in dmesg:
> > > >
> > > >   | pci-host-generic 40000000.pci: assigned reserved memory node restricted_dma_mem_reserved
> > > >
> > > > but none of the actual PCI devices end up with 'dma_io_tlb_mem' set, and
> > > > so the restricted DMA area is not used. In fact, swiotlb isn't used at all.
> > > >
> > > > What am I missing to make this work with PCIe devices?
> > >
> > > Aha, looks like we're just missing the logic to inherit the DMA
> > > configuration. The diff below gets things working for me.
> >
> > I guess what was missing is the reg property in the pcie_device node.
> > Will update the example dts.
>
> Thanks. I still think something like my diff makes sense, if you wouldn't mind including
> it, as it allows restricted DMA to be used for situations where the PCIe
> topology is not static.
>
> Perhaps we should prefer dev->of_node if it exists, but then use the node
> of the host bridge's parent node otherwise?

Sure. Let me add in the next version.

>
> Will
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
