Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E999876AF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 17:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593D010EB79;
	Thu, 26 Sep 2024 15:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IX/USTZH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5324010EB78
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 15:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727365281; x=1758901281;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4Bzaot7MgVM1GFyOyZP487LqA1KMGY3+cz8zUOkgGRk=;
 b=IX/USTZH2KmdUWg5SxwJsocBxGqPsdtZV1VEU23jAkBS9Vfp5N0Ho1a/
 sNE2r6MMSMjTcbMKZnK0n4+hf1auhP2BwhOIoAcHqTXVrb/Oif+1xxjEb
 J9h9ZURfRqNpRvzOsoBeAcWbXkZcCjUSu5FB1fvGlDKX7l7J/jKYk5BQX
 nGcdhLxIvytU/ELtVFafnA5VgLxZ8FVemza2mh/072gM/G2aFFyuEhgAh
 86txSWTwfAHoTmpVPXBS0kQvqMWGMaH4gcl6K7DwNBp51F4pW4uV3AmsW
 vl/7s9RAIXtb90cKln0AXAD+a8tYwLjIZ05HE5hiPOTIOyEnAQoUtgzS/ g==;
X-CSE-ConnectionGUID: UdBdWiVOQpyyjS+FmY9GGg==
X-CSE-MsgGUID: dt9h8g9ZQA2Swb4ov/Tmsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26344187"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26344187"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 08:41:21 -0700
X-CSE-ConnectionGUID: O+z0j7AIQCevB83ZmZJyMQ==
X-CSE-MsgGUID: ujZh6rwvQROi0Nw6iwar2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72349958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 08:41:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2024 18:41:17 +0300
Date: Thu, 26 Sep 2024 18:41:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Message-ID: <ZvWAndAvgfM6_eG1@intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
 <20240925144526.2482-3-ville.syrjala@linux.intel.com>
 <ZvVzCbkfUkDb_0Ch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvVzCbkfUkDb_0Ch@intel.com>
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

On Thu, Sep 26, 2024 at 10:43:21AM -0400, Rodrigo Vivi wrote:
> On Wed, Sep 25, 2024 at 05:45:22PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > driver/pci does the pci_save_state()+pci_set_power_state() from the
> > _noirq() pm hooks. Move our manual calls (needed for the hibernate+D3
> > workaround with buggy BIOSes) towards that same point. We currently
> > have no _noirq() hooks, so end of _late() hooks is the best we can
> > do right now.
> > 
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: linux-pci@vger.kernel.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 6dc0104a3e36..9d557ff8adf5 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1015,7 +1015,6 @@ static int i915_drm_suspend(struct drm_device *dev)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	struct intel_display *display = &dev_priv->display;
> > -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> >  	pci_power_t opregion_target_state;
> >  
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > @@ -1029,8 +1028,6 @@ static int i915_drm_suspend(struct drm_device *dev)
> >  		intel_display_driver_disable_user_access(dev_priv);
> >  	}
> >  
> > -	pci_save_state(pdev);
> > -
> >  	intel_display_driver_suspend(dev_priv);
> >  
> >  	intel_dp_mst_suspend(dev_priv);
> > @@ -1090,10 +1087,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
> >  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
> >  		intel_power_domains_resume(dev_priv);
> >  
> > -		goto out;
> > +		goto fail;
> >  	}
> >  
> > +	enable_rpm_wakeref_asserts(rpm);
> > +
> > +	if (!dev_priv->uncore.user_forcewake_count)
> > +		intel_runtime_pm_driver_release(rpm);
> > +
> 
> why do we need this?
> probably deserves a separate patch?

It was there already.

> 
> >  	pci_disable_device(pdev);
> > +
> >  	/*
> >  	 * During hibernation on some platforms the BIOS may try to access
> >  	 * the device even though it's already in D3 and hang the machine. So
> > @@ -1105,11 +1108,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
> >  	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
> >  	 * Fujitsu FSC S7110
> >  	 * Acer Aspire 1830T
> > +	 *
> > +	 * pci_save_state() is needed to prevent driver/pci from
> > +	 * automagically putting the device into D3.
> >  	 */
> 
> I'm still not convinced that this would automagically prevent the D3,
> specially in this part of the code.

You need to read pci_pm_poweroff_noirq()

> 
> I would prefer to simply remove this call, or keep it and move it
> here to be consistent with other drivers, but also add the restore
> portion of it for consistency and alignment...
> 
> > +	pci_save_state(pdev);
> >  	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
> >  		pci_set_power_state(pdev, PCI_D3hot);
> >  
> > -out:
> > +	return 0;
> > +
> > +fail:
> >  	enable_rpm_wakeref_asserts(rpm);
> >  	if (!dev_priv->uncore.user_forcewake_count)
> >  		intel_runtime_pm_driver_release(rpm);
> > -- 
> > 2.44.2
> > 

-- 
Ville Syrjälä
Intel
