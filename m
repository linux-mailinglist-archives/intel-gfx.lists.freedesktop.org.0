Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50B72A659
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jun 2023 00:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B734C10E034;
	Fri,  9 Jun 2023 22:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A2C10E034
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 22:46:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EF9D865BAF;
 Fri,  9 Jun 2023 22:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BDEDC433D2;
 Fri,  9 Jun 2023 22:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1686350799;
 bh=FtH2QZMQ1JGLR5r1ba0Fxz9Y54cyrhKmVHcch9tZEDk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Agn8Af7OQtIjX5cP6IES+ilkotj4Z7zQAzTJvkjdjpvLFieQB8/DcAAfHtq8cCIWw
 KW23YjJGYbnv/V3p+6deXqEdKK+HuLpcMqkCq+6n0oc0msVhsyOMAxYRNXasoYXazH
 qHFkyo3Dz/Cvjci/qnvPUy3ZzjI9mErBKxNExx0/PviMNEdSyWfmV4MNUbRJgoOjWR
 JPW1XVMlet6/b4aiIaybZbaLpy1BIPle9ohpdvyx+BRXe1UZVF/WQrHSRpiGsak3Ws
 +y5v3zA/ixzLke0yyAlzeo9VUwpSR13uFfR4x+z7MOmncuwsrJ7QpFEnw0Gldy52o8
 fWHM4wAGZFYFA==
Date: Fri, 9 Jun 2023 17:46:37 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "David E. Box" <david.e.box@linux.intel.com>
Message-ID: <20230609224637.GA1267887@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fd3212e6f74dee60c66dee821f601e9440c5ae67.camel@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] PCI: Move VMD ASPM/LTR fix to PCI quirk
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
Cc: me@adhityamohan.in, kw@linux.com, lorenzo.pieralisi@arm.com,
 robh@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 rafael@kernel.org, linux-kernel@vger.kernel.org, hch@infradead.org,
 jonathan.derrick@linux.dev, bhelgaas@google.com, nirmal.patel@linux.intel.com,
 michael.a.bottini@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 09, 2023 at 03:09:26PM -0700, David E. Box wrote:
> Hi Bjorn,
> 
> On Thu, 2023-06-08 at 15:52 -0500, Bjorn Helgaas wrote:
> > On Tue, Apr 11, 2023 at 02:33:23PM -0700, David E. Box wrote:
> > > In commit f492edb40b54 ("PCI: vmd: Add quirk to configure PCIe ASPM and
> > > LTR") the VMD driver calls pci_enabled_link_state as a callback from
> > > pci_bus_walk. Both will acquire the pci_bus_sem lock leading to a lockdep
> > > warning. Instead of doing the pci_bus_walk, move the fix to quirks.c using
> > > DECLARE_PCI_FIXUP_FINAL.

> > > +#define VMD_DEVICE_LTR 0x1003  /* 3145728 ns */
> > 
> > It would be nice to know how this value was derived.  But I know we
> > had this hard-coded value before, so it's not new with this patch.
> 
> Do you mean to show the multiplier that determines that value or to
> say why this particular number was chosen? For the latter, it the
> largest that could be set (given the multipier options) that will
> allow the SoC to get to it's lowest power state. And it's the same
> so far on all the SoCs covered by the VMD driver.

Oh, sorry, I meant "why this number was chosen".  PCIe r6.0, sec
7.8.2, says this capability allows software to provide "platform
latency information," so I assume this is somehow dependent on
platform, but I really don't understand the details of how LTR works,
and we didn't have an explanation before, so this was just a "if you
happen to know, it might be useful here" comment.

> > > +static void quirk_intel_vmd(struct pci_dev *pdev)
> > 
> > I think this quirk could possibly stay in
> > drivers/pci/controller/vmd.c, couldn't it?  It has a lot of
> > VMD-specific knowledge that it would nice to contain in vmd.c.
> 
> I may have misunderstood your comment on V1 then. But you suggested
> that this would be typically done as PCI_FIXUP so that the PCI core
> could call it and we could avoid the locking issue that was seen
> while walking the bus in vmd.c.

Right, I think it makes sense to be a DECLARE_PCI_FIXUP_CLASS_FINAL(),
but I was thinking that it could be implemented in vmd.c and still be
called by the PCI core.

But now I'm uncertain since vmd.c can be compiled as a module, and I'm
not sure how that could work, since pci_fixup_device() calls things in
the __start_pci_fixups_final[] table, and I don't see how loading a
module would insert the fixup entry into that table.

So maybe it needs to be in quirks.c after all.

I think my only remaining questions here are about how to identify
devices below VMD and the order of enabling ASPM states vs setting
LTR.

Bjorn
