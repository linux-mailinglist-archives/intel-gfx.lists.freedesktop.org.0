Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7817A39739B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D01B6EA53;
	Tue,  1 Jun 2021 12:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8006E8BD;
 Thu, 27 May 2021 12:53:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B984D6109F;
 Thu, 27 May 2021 12:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622120018;
 bh=mnHenbEzMbQdhDrGu816+dyeKu927RlHNDgNBf8bfNk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T2Q+xyFZywvya0fPBfvK4sRdbR/bde8Rq8P4FN21AACPVaQSQsdEc0x2+0v5r+abP
 3/8E7TEJSHcMhmUgcHo1bhdAA9AfzEMLppzT6/0P8DePbBmTljtDkX4NEtYRaHLEM1
 Gnn3YP4aa748IT6RrSs7VU9Pqy8c4Xvink86bWS+UgwCuEehm3hOhTqBJaoQ8WPXJq
 ulYWtbHvYOw84jAR1SH3F2sv+RGThyTfyzG8N3saQSkF5BsBVg+8LW53nliUGD6EFQ
 5/RBGn2iLBX38fmxUgOxq5fMNgVhtClQMCVzqiJ/tPC3LfS/b2F3cV49KGjPHavT/f
 X+zziZDTtPkzw==
Date: Thu, 27 May 2021 13:53:28 +0100
From: Will Deacon <will@kernel.org>
To: Claire Chang <tientzu@chromium.org>
Message-ID: <20210527125328.GA22352@willie-the-truck>
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-15-tientzu@chromium.org>
 <20210526121322.GA19313@willie-the-truck>
 <20210526155321.GA19633@willie-the-truck>
 <CALiNf2_sVXnb97++yWusB5PWz8Pzfn9bCKZc6z3tY4bx6-nW8w@mail.gmail.com>
 <20210527113456.GA22019@willie-the-truck>
 <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Tue, 01 Jun 2021 12:51:14 +0000
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

On Thu, May 27, 2021 at 08:48:59PM +0800, Claire Chang wrote:
> On Thu, May 27, 2021 at 7:35 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, May 27, 2021 at 07:29:20PM +0800, Claire Chang wrote:
> > > On Wed, May 26, 2021 at 11:53 PM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Wed, May 26, 2021 at 01:13:22PM +0100, Will Deacon wrote:
> > > > > On Tue, May 18, 2021 at 02:42:14PM +0800, Claire Chang wrote:
> > > > > > @@ -138,4 +160,9 @@ one for multimedia processing (named multimedia-memory@77000000, 64MiB).
> > > > > >             memory-region = <&multimedia_reserved>;
> > > > > >             /* ... */
> > > > > >     };
> > > > > > +
> > > > > > +   pcie_device: pcie_device@0,0 {
> > > > > > +           memory-region = <&restricted_dma_mem_reserved>;
> > > > > > +           /* ... */
> > > > > > +   };
> > > > >
> > > > > I still don't understand how this works for individual PCIe devices -- how
> > > > > is dev->of_node set to point at the node you have above?
> > > > >
> > > > > I tried adding the memory-region to the host controller instead, and then
> > > > > I see it crop up in dmesg:
> > > > >
> > > > >   | pci-host-generic 40000000.pci: assigned reserved memory node restricted_dma_mem_reserved
> > > > >
> > > > > but none of the actual PCI devices end up with 'dma_io_tlb_mem' set, and
> > > > > so the restricted DMA area is not used. In fact, swiotlb isn't used at all.
> > > > >
> > > > > What am I missing to make this work with PCIe devices?
> > > >
> > > > Aha, looks like we're just missing the logic to inherit the DMA
> > > > configuration. The diff below gets things working for me.
> > >
> > > I guess what was missing is the reg property in the pcie_device node.
> > > Will update the example dts.
> >
> > Thanks. I still think something like my diff makes sense, if you wouldn't mind including
> > it, as it allows restricted DMA to be used for situations where the PCIe
> > topology is not static.
> >
> > Perhaps we should prefer dev->of_node if it exists, but then use the node
> > of the host bridge's parent node otherwise?
> 
> Sure. Let me add in the next version.

Brill, thanks! I'll take it for a spin once it lands on the list.

Will
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
