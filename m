Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DEB07B84
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 18:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8866B10E29C;
	Wed, 16 Jul 2025 16:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="pz5eVTiJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5396910E29C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 16:49:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D358A5C6072;
 Wed, 16 Jul 2025 16:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32AE8C4CEE7;
 Wed, 16 Jul 2025 16:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1752684592;
 bh=liIfcYmsV5Bqmav5u2P+qV8+Km4h6RRZ9U78F89rTnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pz5eVTiJko5J+kBwtNqAYSqoxOsLmPhb5grxjVOE6UVzqdvvwvcbT00KTePaUT63l
 01TzqhBddUABBbbNeOcYpptfFMqH3m9avfhv6Dy6hfI8hkck9jBCNlmOPEUmCsIjvl
 pmseJWG7pOGukW/TMAFTCee5JEDQEmmChzTkNTp4=
Date: Wed, 16 Jul 2025 18:49:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>
Subject: Re: [PATCH 1/2] mei: me: Add exported function to check ME device
 availabiliy
Message-ID: <2025071653-outdoors-elusive-dcf4@gregkh>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
 <20250715225959.488109-5-daniele.ceraolospurio@intel.com>
 <2025071622-frequency-sneer-0ad9@gregkh>
 <5d588a32-fbe5-41c8-8cd5-0d53b1b44637@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d588a32-fbe5-41c8-8cd5-0d53b1b44637@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 16, 2025 at 09:38:09AM -0700, Daniele Ceraolo Spurio wrote:
> 
> 
> On 7/15/2025 10:10 PM, Greg Kroah-Hartman wrote:
> > On Tue, Jul 15, 2025 at 04:00:01PM -0700, Daniele Ceraolo Spurio wrote:
> > > The intel GFX drivers (i915/xe) interface with the ME device for some of
> > > their features (e.g. PXP, HDCP) via the component interface. Given that
> > > the MEI device can be hidden by BIOS/Coreboot, the GFX drivers need a
> > > way to check if the device is available before attempting to bind the
> > > component, otherwise they'll go ahead and initialize features that will
> > > never work.
> > > The simplest way to check if the device is available is to check the
> > > available devices against the PCI ID list of the mei_me driver. To avoid
> > > duplication of the list, the function to do such a check is added to
> > > the mei_me driver and exported so that the GFX driver can call it
> > > directly.
> > > 
> > > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > ---
> > >   drivers/misc/mei/pci-me.c | 17 +++++++++++++++++
> > >   include/linux/mei_me.h    | 20 ++++++++++++++++++++
> > >   2 files changed, 37 insertions(+)
> > >   create mode 100644 include/linux/mei_me.h
> > > 
> > > diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> > > index 3f9c60b579ae..16e9a11eb286 100644
> > > --- a/drivers/misc/mei/pci-me.c
> > > +++ b/drivers/misc/mei/pci-me.c
> > > @@ -18,6 +18,7 @@
> > >   #include <linux/pm_runtime.h>
> > >   #include <linux/mei.h>
> > > +#include <linux/mei_me.h>
> > >   #include "mei_dev.h"
> > >   #include "client.h"
> > > @@ -133,6 +134,22 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
> > >   MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
> > > +/**
> > > + * mei_me_device_present - check if an ME device is present on the system
> > > + *
> > > + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
> > > + * features (e.g., PXP, HDCP). However, the ME device can be hidden by
> > > + * BIOS/coreboot, so this function offers a way for those drivers to check if
> > > + * the device is available before attempting to interface with it.
> > > + *
> > > + * Return: true if an ME device is available, false otherwise
> > > + */
> > > +bool mei_me_device_present(void)
> > > +{
> > > +	return pci_dev_present(mei_me_pci_tbl);
> > And what happens if the device goes away right after you call this?
> 
> Both intel graphics drivers do already handle the device being missing or
> going away, it's just not very clean. Behavior changes based on when this
> happens:
> 
> - if the device is never there or disappears before the component binds, we
> timeout waiting for the bind
> - if the device disappears after the bind, we handle the case as part of the
> component unbind call
> 
> The timeout is quite long and can therefore impact/delay userspace, so the
> aim here is to mitigate that impact in the case where the device is just
> never there, which is easy to check and more likely to happen compared to
> the device going away after initially being there.
> 
> Should I add a note about the device going away to the function doc?
> Something like "Callers are still expected to handle the case where the
> device goes away after this check is performed".

My point is that calls like this are pointless without a lock, as the
state that you think the device is in (which this function returns), is
just a lie as it could have already changed.

So look into what you are really wanting to do here, as what this
function does is not what you think it is doing :)

> > > +}
> > > +EXPORT_SYMBOL(mei_me_device_present);
> > EXPORT_SYMBOL_GPL()?  I have to ask, sorry.
> 
> The non-GPL version seemed more appropriate to me because I didn't think
> calling this function qualified as "derivative work", but I don't really
> care either way because both i915 and Xe are part of the kernel and
> GPL-compatible, so I can switch to the GPL version.

All other mei_* exports are EXPORT_SYMBOL_GPL(), please don't break that
pattern without a whole lot of documentation and reasons to back it up.

thanks,

greg k-h
