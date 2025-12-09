Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841BCCAFE32
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3FB10E53D;
	Tue,  9 Dec 2025 12:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HIkNes1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEAC910E537;
 Tue,  9 Dec 2025 12:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765282641; x=1796818641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aQAZdDtZrbRRFTEcTyZCSchEVdmGdZghUlwq74MIjxg=;
 b=HIkNes1e4pwFUvjhq/G+W/bmaKcuVGk0xwoIl65EeKMlQPGjNSKSBVrw
 awrGSgZ+Pmm1kBOOR74yPSpEJk1xedSjVQHfbWy8u0EbWWPd2FxWlsfyi
 0MqbSGnp2Tzm1ySFqdz/wXg6Hre+7Edmo3krL2foZjFwaO3rcYsZ0DZaf
 iQhkkbKiYb418YN178pFuF6ouGatiUYuSI0VbwWsIAk0Aghv4eWhODKOs
 f1ToFswCDl1yUM48bHwhzq0J4EED9hwZEauSOzrenkfR6U33Eaf5qREvY
 JqesuNSexQDljhdq8I3pxfuRnnsmi3IcrcYwJe2mMH9g5N90ZoZbGQZKr A==;
X-CSE-ConnectionGUID: XLhk1/yXTtyeFeIVAV4Kdw==
X-CSE-MsgGUID: DEuCUCxWQCKg2WzhG/7JXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67313637"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="67313637"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:17:21 -0800
X-CSE-ConnectionGUID: jWZrKqyuSAKPVpsziV3afA==
X-CSE-MsgGUID: SxJ7SO7dTgqn0ucIKR/x/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="233595349"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.194])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:17:20 -0800
Date: Tue, 9 Dec 2025 14:17:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/19] drm/i915/vga: Avoid VGA arbiter during
 intel_vga_disable() for iGPUs
Message-ID: <aTgTTD7Yha80zRmy@intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-8-ville.syrjala@linux.intel.com>
 <753969c83db9890a3556088630c9f079c584280a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <753969c83db9890a3556088630c9f079c584280a@intel.com>
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

On Tue, Dec 09, 2025 at 12:35:15PM +0200, Jani Nikula wrote:
> On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Avoid using the VGA arbiter during intel_vga_get() for iGPUs because
> > that will clobber the VGA routing for whatever external GPU is the
> > current VGA device. That will cause all reads from VGA memory to
> > come back as 0xff/white, and thus we get a white rectangle on screen
> > when the external GPU switches from vgacon to fbcon.
> >
> > The iGPU has the highest VGA decode priority so it will steal all
> > VGA register accesses whenever its IO decoding is enabled. We'll only
> > keep the IO decode enabled for a short time so hopefully we don't
> > end up eating too many unrelated VGA register accesses.
> >
> > For discrete GPUs we need all the bridges to have their VGA forwarding
> > bits correctly configured so we can't really avoid the VGA arbiter
> > there. Although we only do this stuff on dGPUs when the VGA plane was
> > actaully enabled, so the dGPU should be the current VGA device
> > and thus have VGA routed to it already anyway.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Again, I'll take your word for it.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
>

After sleeping on this, I think the proper thing would be to
change the VGA arbiter to be able to restore the previous VGA
routing after the put(). But that'll be quite a bit of work,
so this seems fine for now.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_vga.c | 54 ++++++++++++++++++++++--
> >  1 file changed, 50 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> > index 6a19fb242248..a2a1c33d053e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vga.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> > @@ -58,11 +58,58 @@ static bool has_vga_pipe_sel(struct intel_display *display)
> >  	return DISPLAY_VER(display) < 7;
> >  }
> >  
> > +static bool intel_pci_set_io_decode(struct pci_dev *pdev, bool enable)
> > +{
> > +	u16 old = 0, cmd;
> > +
> > +	pci_read_config_word(pdev, PCI_COMMAND, &old);
> > +	cmd = old & ~PCI_COMMAND_IO;
> > +	if (enable)
> > +		cmd |= PCI_COMMAND_IO;
> > +	pci_write_config_word(pdev, PCI_COMMAND, cmd);
> > +
> > +	return old & PCI_COMMAND_IO;
> > +}
> > +
> > +static bool intel_vga_get(struct intel_display *display)
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> > +
> > +	/* WaEnableVGAAccessThroughIOPort:ctg+ */
> > +
> > +	/*
> > +	 * Bypass the VGA arbiter on the iGPU and just enable
> > +	 * IO decode by hand. This avoids clobbering the VGA
> > +	 * routing for an external GPU when it's the current
> > +	 * VGA device, and thus prevents the all 0xff/white
> > +	 * readout from VGA memory when taking over from vgacon.
> > +	 *
> > +	 * The iGPU has the highest VGA decode priority so it will
> > +	 * grab any VGA IO access when IO decode is enabled, regardless
> > +	 * of how any other VGA routing bits are configured.
> > +	 */
> > +	if (display->platform.dgfx)
> > +		vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> > +
> > +	return intel_pci_set_io_decode(pdev, true);
> > +}
> > +
> > +static void intel_vga_put(struct intel_display *display, bool io_decode)
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> > +
> > +	/* see intel_vga_get() */
> > +	intel_pci_set_io_decode(pdev, io_decode);
> > +
> > +	if (display->platform.dgfx)
> > +		vga_put(pdev, VGA_RSRC_LEGACY_IO);
> > +}
> > +
> >  /* Disable the VGA plane that we never use */
> >  void intel_vga_disable(struct intel_display *display)
> >  {
> > -	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> >  	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
> > +	bool io_decode;
> >  	u8 msr, sr1;
> >  	u32 tmp;
> >  
> > @@ -106,8 +153,7 @@ void intel_vga_disable(struct intel_display *display)
> >  			goto reset_vgacntr;
> >  	}
> >  
> > -	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
> > -	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> > +	io_decode = intel_vga_get(display);
> >  
> >  	outb(0x01, VGA_SEQ_I);
> >  	sr1 = inb(VGA_SEQ_D);
> > @@ -129,7 +175,7 @@ void intel_vga_disable(struct intel_display *display)
> >  	msr &= ~VGA_MIS_COLOR;
> >  	outb(msr, VGA_MIS_W);
> >  
> > -	vga_put(pdev, VGA_RSRC_LEGACY_IO);
> > +	intel_vga_put(display, io_decode);
> >  
> >  	udelay(300);
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
