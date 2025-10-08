Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CABC0BC5FBB
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 18:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4063C10E0A2;
	Wed,  8 Oct 2025 16:15:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDcyDm1/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7966210E0A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759940140; x=1791476140;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5jU0cuAKgxUZeMJF+RbNtZU8gr68yoR2w0lKR5V6lUw=;
 b=EDcyDm1/Fe1ayUoSQQ/l6Y9+/Xt8mvkW7uuwGBwEDfSJ+PdTHcIEAsoc
 Cca28952hQLMA4mHR+DY0BzM8qPuz7i7vQw5QVO5lge93wwHEPZC3qMS8
 D+sopjR4Ot2OhZvYZSkmyDpAsgk/AtPjik7B2dPKRl2G6LGS1weXpgw1X
 iNdoOMA7Mp0FjIL/nkPFuC4BOabgoI2bYkSylTOitsov4jOS4QprJSLCr
 6F2P/e6vkjg/mi+a6+3lrli4vTvwlwGz0jrzYCrPI9rqhe1RoegAUYqLd
 dw8N6Sfq7Hl2ETCodHVZcN3dBw1beroHzbn0goAbpCiNdwYLSJbMTzHYd w==;
X-CSE-ConnectionGUID: /z7QQ2joSpWyh8K+3ltvDQ==
X-CSE-MsgGUID: c4rTA/S3RFm8XH82gxD7JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72753253"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="72753253"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:15:40 -0700
X-CSE-ConnectionGUID: VAJE1FovSAyoaVN6276SRA==
X-CSE-MsgGUID: 2GyYLQnjSrqLjOxkPEeHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180892277"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:15:36 -0700
Date: Wed, 8 Oct 2025 19:15:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Yao, Jia" <jia.yao@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Zuo, Alex" <alex.zuo@intel.com>,
 "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Message-ID: <aOaOJ1YI-NgTloIy@intel.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
 <aOWFMICISzSZ_3nH@intel.com>
 <PH8PR11MB8040A2CB337190DC80B80BB3F4E0A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOZXVYNnUvxnrr-6@intel.com>
 <PH8PR11MB80407C75DF808C33C70B1FBDF4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH8PR11MB80407C75DF808C33C70B1FBDF4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 08, 2025 at 04:06:39PM +0000, Yao, Jia wrote:
> The actual bug is showing in https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> if CONFIG_INTEL_IOMMU_DEFAULT_ON=y  ,  that IOMMU prevent the invalid access,  but if  CONFIG_INTEL_IOMMU_DEFAULT_ON=n,   the invalid access will directly cause system crash after kexec reboot.

I was asking you whether that invalid access was caused by that
pxp stuff or not?

If yes, then just fix it.

If not, then I guess someone needs to keep on debugging.

> 
> -----Original Message-----
> From: Ville Syrjälä <ville.syrjala@linux.intel.com> 
> Sent: Wednesday, October 8, 2025 5:22 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when en/disabling i915
> 
> On Tue, Oct 07, 2025 at 09:40:45PM +0000, Yao, Jia wrote:
> > You mean  intel_pxp_fini(i915)  ?
> > This is because mei_me_shutdown  is called after i915_driver_shutdown 
> > in pci_device_shutdown sequence.  If we don't close pxp in advance, it 
> > will cause
> > 
> > [  295.584775] i915 0000:00:02.0: [drm] *ERROR* gt: MMIO unreliable (forcewake register returns 0xFFFFFFFF)!
> 
> So that is the actual bug you're trying to fix? Please just submit the pxp fix on its own.
> 
> > 
> > Since we disabled PCI_COMMAND_MEMORY in  i915_driver_shutdown
> > 
> > Thanks,
> > Jia
> > 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, October 7, 2025 2:25 PM
> > To: Yao, Jia <jia.yao@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; 
> > Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin 
> > <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson 
> > <chris.p.wilson@linux.intel.com>
> > Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access 
> > bit when en/disabling i915
> > 
> > On Tue, Oct 07, 2025 at 08:25:14PM +0000, Jia Yao wrote:
> > > Make i915's PCI device management more robust by always 
> > > setting/clearing the memory access bit when enabling/disabling the 
> > > device, and by consolidating this logic into helper functions.
> > > 
> > > It fixes kexec reboot issue by disabling memory access before 
> > > shutting down the device, which can block unsafe and unwanted access from DMA.
> > > 
> > > v2:
> > >   - follow brace style
> > > 
> > > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > > Cc: Alex Zuo <alex.zuo@intel.com>
> > > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > > Cc: Askar Safin <safinaskar@gmail.com>
> > > Cc: Pingfan Liu <piliu@redhat.com>
> > > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 35
> > > +++++++++++++++++++++++++++---
> > >  1 file changed, 32 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > b/drivers/gpu/drm/i915/i915_driver.c
> > > index b46cb54ef5dc..766f85726b67 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -118,6 +118,33 @@
> > >  
> > >  static const struct drm_driver i915_drm_driver;
> > >  
> > > +static int i915_enable_device(struct pci_dev *pdev) {
> > > +	u32 cmd;
> > > +	int ret;
> > > +
> > > +	ret = pci_enable_device(pdev);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > +	if (!(cmd & PCI_COMMAND_MEMORY))
> > > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd | 
> > > +PCI_COMMAND_MEMORY);
> > > +
> > > +	return 0;
> > > +}
> > 
> > NAK. If the pci code is broken then fix the problem there.
> > Do not add ugly hacks into random drivers.
> > 
> > > +
> > > +static void i915_disable_device(struct pci_dev *pdev) {
> > > +	u32 cmd;
> > > +
> > > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > +	if (cmd & PCI_COMMAND_MEMORY)
> > > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd & 
> > > +~PCI_COMMAND_MEMORY);
> > > +
> > > +	pci_disable_device(pdev);
> > > +}
> > > +
> > >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
> > >  	/*
> > > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > >  	struct intel_display *display;
> > >  	int ret;
> > >  
> > > -	ret = pci_enable_device(pdev);
> > > +	ret = i915_enable_device(pdev);
> > >  	if (ret) {
> > >  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> > >  		return ret;
> > > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, 
> > > const struct pci_device_id *ent)
> > >  
> > >  	i915 = i915_driver_create(pdev, ent);
> > >  	if (IS_ERR(i915)) {
> > > -		pci_disable_device(pdev);
> > > +		i915_disable_device(pdev);
> > >  		return PTR_ERR(i915);
> > >  	}
> > >  
> > > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > >  	i915_driver_late_release(i915);
> > >  out_pci_disable:
> > > -	pci_disable_device(pdev);
> > > +	i915_disable_device(pdev);
> > >  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> > >  	return ret;
> > >  }
> > > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct 
> > > drm_i915_private *i915)
> > >  
> > >  	intel_dmc_suspend(display);
> > >  
> > > +	intel_pxp_fini(i915);
> > 
> > What is that doing in this patch?
> > 
> > >  	i915_gem_suspend(i915);
> > >  
> > >  	/*
> > > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> > >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > >  
> > >  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > > +	i915_disable_device(to_pci_dev(i915->drm.dev));
> > >  }
> > >  
> > >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > > --
> > > 2.34.1
> > 
> > --
> > Ville Syrjälä
> > Intel
> 
> --
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
