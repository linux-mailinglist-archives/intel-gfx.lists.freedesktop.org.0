Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D7372A625
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jun 2023 00:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CED10E044;
	Fri,  9 Jun 2023 22:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A3710E044
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 22:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686348569; x=1717884569;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=JyKROlUh59LWiqVu8pN1iIJu6dhV7Bm4M5JDFHZtIcI=;
 b=W/09lT0V2fje8cwia9mG8visKMLSCrVnpzf36vr0eMKHvmuumWdC4i/8
 pU0eZDvrWFt9t+v9uWbcPuoI8tU1nj5xa7xuNY2AX+E40fFX8Uxx+Um9F
 QdPLTljiReAdnoSN/cROlxYwhwj7+mAYu2SX0yPgxvX9ldZFBY63HD3t0
 LqRgTCsHj/EXziC2wTTyW/Sn4lXko9H2Ak6Mjiur0vWacq3LWfU5W4a7c
 KsBDpOMlmmp59h74oYVvLdpjw1nCO/0Nfz2kzEK7bl8BqONR5m7QGW7IH
 4RqU0JzcTMxLF2CT4OuP2lMK12mOgik1QunUpnUvN8X+zTEaZ+CbVe4Ag A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386064700"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="386064700"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 15:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="854877369"
X-IronPort-AV: E=Sophos;i="6.00,230,1681196400"; d="scan'208";a="854877369"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2023 15:09:27 -0700
Received: from ralawler-mobl1.amr.corp.intel.com (unknown [10.209.72.97])
 by linux.intel.com (Postfix) with ESMTP id E9B9C580109;
 Fri,  9 Jun 2023 15:09:26 -0700 (PDT)
Message-ID: <fd3212e6f74dee60c66dee821f601e9440c5ae67.camel@linux.intel.com>
From: "David E. Box" <david.e.box@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Date: Fri, 09 Jun 2023 15:09:26 -0700
In-Reply-To: <20230608205208.GA1214785@bhelgaas>
References: <20230608205208.GA1214785@bhelgaas>
Organization: David E. Box
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
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
Reply-To: david.e.box@linux.intel.com
Cc: me@adhityamohan.in, kw@linux.com, lorenzo.pieralisi@arm.com,
 robh@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 rafael@kernel.org, linux-kernel@vger.kernel.org, hch@infradead.org,
 jonathan.derrick@linux.dev, bhelgaas@google.com, nirmal.patel@linux.intel.com,
 michael.a.bottini@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Bjorn,

On Thu, 2023-06-08 at 15:52 -0500, Bjorn Helgaas wrote:
> On Tue, Apr 11, 2023 at 02:33:23PM -0700, David E. Box wrote:
> > In commit f492edb40b54 ("PCI: vmd: Add quirk to configure PCIe ASPM and
> > LTR") the VMD driver calls pci_enabled_link_state as a callback from
> > pci_bus_walk. Both will acquire the pci_bus_sem lock leading to a lockd=
ep
> > warning. Instead of doing the pci_bus_walk, move the fix to quirks.c us=
ing
> > DECLARE_PCI_FIXUP_FINAL.
>=20
> s/pci_enabled_link_state/pci_enable_link_state/
>=20
> Add "()" after pci_enable_link_state() and pci_bus_walk() to make it
> obvious they're functions.
>=20
> > ...
> > +++ b/drivers/pci/quirks.c
> > @@ -6023,3 +6023,75 @@ DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x=
9a2d,
> > dpc_log_size);
> > =C2=A0DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x9a2f, dpc_log_siz=
e);
> > =C2=A0DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x9a31, dpc_log_siz=
e);
> > =C2=A0#endif
> > +
> > +#ifdef CONFIG_VMD
> > +/*
> > + * Enable ASPM on the PCIE root ports under VMD and set the default LT=
R of
> > the
> > + * storage devices on platforms where these values are not configured =
by
> > BIOS.
> > + * This is needed for laptops, which require these settings for proper
> > power
> > + * management of the SoC.
>=20
> s/PCIE/PCIe/ to match spec usage.
>=20
> > + */
> > +#define VMD_DEVICE_LTR=C2=A00x1003=C2=A0=C2=A0/* 3145728 ns */
>=20
> It would be nice to know how this value was derived.=C2=A0 But I know we
> had this hard-coded value before, so it's not new with this patch.

Do you mean to show the multiplier that determines that value or to say why=
 this
particular number was chosen? For the latter, it the largest that could be =
set
(given the multipier options) that will allow the SoC to get to it's lowest
power state. And it's the same so far on all the SoCs covered by the VMD dr=
iver.

>=20
> > +static void quirk_intel_vmd(struct pci_dev *pdev)
>=20
> I think this quirk could possibly stay in
> drivers/pci/controller/vmd.c, couldn't it?=C2=A0 It has a lot of
> VMD-specific knowledge that it would nice to contain in vmd.c.

I may have misunderstood your comment on V1 then. But you suggested that th=
is
would be typically done as PCI_FIXUP so that the PCI core could call it and=
 we
could avoid the locking issue that was seen while walking the bus in vmd.c.

https://lore.kernel.org/lkml/ab9bf3032ed46fc0586e089edc5aac6e71b331d8.camel=
@linux.intel.com/T/#m09dc05ef56b8d9f104f91594f582251b6088d24d

>=20
> > +{
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci_dev *parent;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 ltr =3D VMD_DEVICE_LTR;
>=20
> I don't think "ltr" is an improvement over using "VMD_DEVICE_LTR"
> below.
>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 ltr_reg;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int pos;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Check in VMD domain */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pci_domain_nr(pdev->bus)=
 < 0x10000)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
>=20
> If in vmd.c, maybe could identify devices under a VMD by checking
> pdev->bus->ops as vmd_acpi_find_companion() does?
>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Get Root Port */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0parent =3D pci_upstream_brid=
ge(pdev);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!parent || parent->vendo=
r !=3D PCI_VENDOR_ID_INTEL)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Get VMD Host Bridge */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0parent =3D to_pci_dev(parent=
->dev.parent);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!parent)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Get RAID controller */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0parent =3D to_pci_dev(parent=
->dev.parent);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!parent)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (parent->device) {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0x467f:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0x4c3d:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0xa77f:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0x7d0b:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0xad0b:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 0x9a0b:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0break;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default:
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_enable_link_state(pdev, =
PCIE_LINK_STATE_ALL);
>=20
> Seems like you would want to set LTR *before* enabling the link
> states?

Yes that would be better. We'll still want to check if the LTR is set first
though because if it is then we don't need to do either.

David

>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pos =3D pci_find_ext_capabil=
ity(pdev, PCI_EXT_CAP_ID_LTR);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!pos)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Skip if the max snoop LTR=
 is non-zero, indicating BIOS has set it
> > */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_read_config_dword(pdev, =
pos + PCI_LTR_MAX_SNOOP_LAT, &ltr_reg);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!!(ltr_reg & (PCI_LTR_VA=
LUE_MASK | PCI_LTR_SCALE_MASK)))
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Set the LTR values to the=
 maximum required by the platform to
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * allow the deepest power m=
anagement savings. Write as a DWORD
> > where
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * the lower word is the max=
 snoop latency and the upper word is the
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * max non-snoop latency.
>=20
> This comment suggests that the LTR value is platform-dependent, which
> is what I would expect, but the code and the hard-coded VMD_DEVICE_LTR
> value don't have any platform dependencies.=C2=A0 Again, nothing new in
> *this* patch; that's true in the current tree, too.
>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ltr_reg =3D (ltr << 16) | lt=
r;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_write_config_dword(pdev,=
 pos + PCI_LTR_MAX_SNOOP_LAT, ltr_reg);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_info(pdev, "LTR set by V=
MD PCI quick\n");
>=20
> s/quick/quirk/
>=20
> > +
> > +}
> > +DECLARE_PCI_FIXUP_CLASS_FINAL(PCI_ANY_ID, PCI_ANY_ID,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 PCI_CLASS_STORAGE_EXPRESS, 0,
> > quirk_intel_vmd);
> > +#endif
> > --=20
> > 2.34.1
> >=20

