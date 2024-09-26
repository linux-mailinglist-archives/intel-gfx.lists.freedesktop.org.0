Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA97C98772C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 18:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5054E10EB81;
	Thu, 26 Sep 2024 16:03:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKGT3/Ym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5DD10EB81
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 16:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727366601; x=1758902601;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iS4XdGEXA35R7XLIj3MIc6c+NzZuiuTakb4v+rwMwRI=;
 b=QKGT3/Ymll2KFC0KXVpFU1ClxOfhURVhl6Vq9SYfCbD+mP8v2OkoQBHK
 KtORQD4m7i8pnO/PyPSe7Vj554wUpkApjRx/his+ZCwNH+VzfuXOBzeDS
 yno8cz2ry00dbpdeWlpHnzgPN6Il/KdM4eMLVwp9bXmJtSEWp7hTRhGbt
 PP+n0ecy2xmL+fLxJqMl8qaD3F+fVZc0ZEQcM8zVQJQbx4RdF15zlzQSR
 8wU7izvF+EjySqeI5w08KSSGk/DxT7Lv6+lv+mcD8oEpACKiGPtDCHkWX
 C+wOSSaD0v9eaBpy+SFTOQ7ZF/Z0ZFbs8a+U+vKE96o376j+nNv+QB9uP Q==;
X-CSE-ConnectionGUID: Ib/EVFg5REm01F623OjwHg==
X-CSE-MsgGUID: jo9vxFJ7QAWQh5HYOFTpRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26614155"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26614155"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:03:21 -0700
X-CSE-ConnectionGUID: 549A197EQZ2w/i93E1GhHA==
X-CSE-MsgGUID: ZyVuzXG5ScaZLgt/y6oHpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72359356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 09:03:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 19:03:16 +0300
Date: Thu, 26 Sep 2024 19:03:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/6] PCI/PM: Respect pci_dev->skip_bus_pm in the
 .poweroff() path
Message-ID: <ZvWFxLZwRWL3DCeX@intel.com>
References: <20240925144526.2482-2-ville.syrjala@linux.intel.com>
 <20240925192842.GA9182@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925192842.GA9182@bhelgaas>
X-Patchwork-Hint: comment
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

On Wed, Sep 25, 2024 at 02:28:42PM -0500, Bjorn Helgaas wrote:
> On Wed, Sep 25, 2024 at 05:45:21PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On some older laptops i915 needs to leave the GPU in
> > D0 when hibernating the system, or else the BIOS
> > hangs somewhere. Currently that is achieved by calling
> > pci_save_state() ahead of time, which then skips the
> > whole pci_prepare_to_sleep() stuff.
> 
> IIUC this refers to pci_pm_suspend_noirq(), which has this:
> 
>   if (!pci_dev->state_saved) {
>     pci_save_state(pci_dev);
>     if (!pci_dev->skip_bus_pm && pci_power_manageable(pci_dev))
>       pci_prepare_to_sleep(pci_dev);
>   }
> 
> Would be good if the commit log included the name of the function
> where pci_prepare_to_sleep() is skipped.

Sure, I can amend the commit msg.

> 
> If there's a general requirement to leave all devices in D0 when
> hibernating, it would be nice to have have some documentation like an
> ACPI spec reference.

No, IIRC the ACPI spec even says that you must (or at least
should) put devices into D3. But the buggy BIOS on some old
laptops keels over when you do that. Hence we need this quirk.

> Or if this is some i915-specific thing, maybe a pointer to history
> like a lore or bugzilla reference.

The two relevant commits I can find are:

commit 54875571bbfd ("drm/i915: apply the PCI_D0/D3 hibernation
workaround everywhere on pre GEN6")
commit ab3be73fa7b4 ("drm/i915: gen4: work around hang during
hibernation")

> 
> > It feels to me that this approach could lead to unintended
> > side effects as it causes the pci code to deviate from the
> > standard path in various ways. In order to keep i915
> > behaviour more standard it seems preferrable to use
> > pci_dev->skip_bus_pm here. Duplicate the relevant logic
> > from pci_pm_suspend_noirq() in pci_pm_poweroff_noirq().
> > 
> > It also looks like the current code is may put the parent
> > bridge into D3 despite leaving the device in D0. Though
> > perhaps the host bridge (which is where the integrated
> > GPU lives) always has subordinates, which would make
> > this a non-issue for i915. But maybe this could be a
> > problem for other devices. Utilizing skip_bus_pm will
> > make the behaviour of leaving the bridge in D0 a bit
> > more explicit if nothing else.
> 
> s/is may/may/
> 
> Rewrap to fill 75 columns.  Could apply to all patches in the series.
> 
> Will need an ack from Rafael, author of:
> 
>   d491f2b75237 ("PCI: PM: Avoid possible suspend-to-idle issue")
>   3e26c5feed2a ("PCI: PM: Skip devices in D0 for suspend-to-idle")
> 
> which added .skip_bus_pm and its use in pci_pm_suspend_noirq().
> 
> IIUC this is a cleanup that doesn't fix any known problem?  The
> overall diffstat doesn't make it look like a simplification, although
> it might certainly be cleaner somehow:

My main concern is that using pci_save_state() might cause the pci
code to deviate from the normal path in more ways than just skipping
the D0->D3 transition. And then we might end up constantly chasing
after driver/pci changes in order to match its behaviour.

Not to mention that having the pci_save_state() in the driver code
is clearly confusing a bunch of our developers.

> 
> > drivers/gpu/drm/i915/i915_driver.c | 121 +++++++++++++++++++----------
> > drivers/pci/pci-driver.c           |  16 +++-
> > 2 files changed, 94 insertions(+), 43 deletions(-)
> 
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: linux-pci@vger.kernel.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/pci/pci-driver.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> > index f412ef73a6e4..ef436895939c 100644
> > --- a/drivers/pci/pci-driver.c
> > +++ b/drivers/pci/pci-driver.c
> > @@ -1142,6 +1142,8 @@ static int pci_pm_poweroff(struct device *dev)
> >  	struct pci_dev *pci_dev = to_pci_dev(dev);
> >  	const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : NULL;
> >  
> > +	pci_dev->skip_bus_pm = false;
> > +
> >  	if (pci_has_legacy_pm_support(pci_dev))
> >  		return pci_legacy_suspend(dev, PMSG_HIBERNATE);
> >  
> > @@ -1206,9 +1208,21 @@ static int pci_pm_poweroff_noirq(struct device *dev)
> >  			return error;
> >  	}
> >  
> > -	if (!pci_dev->state_saved && !pci_has_subordinate(pci_dev))
> > +	if (!pci_dev->state_saved && !pci_dev->skip_bus_pm &&
> > +	    !pci_has_subordinate(pci_dev))
> >  		pci_prepare_to_sleep(pci_dev);
> >  
> > +	if (pci_dev->current_state == PCI_D0) {
> > +		pci_dev->skip_bus_pm = true;
> > +		/*
> > +		 * Per PCI PM r1.2, table 6-1, a bridge must be in D0 if any
> > +		 * downstream device is in D0, so avoid changing the power state
> > +		 * of the parent bridge by setting the skip_bus_pm flag for it.
> > +		 */
> > +		if (pci_dev->bus->self)
> > +			pci_dev->bus->self->skip_bus_pm = true;
> > +	}
> > +
> >  	/*
> >  	 * The reason for doing this here is the same as for the analogous code
> >  	 * in pci_pm_suspend_noirq().
> > -- 
> > 2.44.2
> > 

-- 
Ville Syrjälä
Intel
