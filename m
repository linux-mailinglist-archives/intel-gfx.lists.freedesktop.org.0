Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E00D8115BE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3AB10E072;
	Wed, 13 Dec 2023 15:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BAD10E072
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702479958; x=1734015958;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IS90ab+IizQm7rT2/hAE/Y2NVwJakoK9vA4tJZ/lYdw=;
 b=jx1fZIqcx/ppgVWnpxF0ylHsgWaZaqHkB0DzpUOAt0CEGIeqYqhw8T5J
 NUQ1Nt/QHYFh4oV9cdozWknRKvCittVALDJmt6wd7kbRZfAdKHqv1ljXM
 /r6OlnZzkeXthsS1vkLqb4vV8O5oYvD1eEDzEIr5vsUhsARUWOHWgHV7R
 Rtxpco4rrLLBryVXUh23M1IxW1BcNBl9s3xU7n5fl95W8cxCmyvjrkEh9
 3sDXibs0geooLyfbN7Yd3i15UTLNESlvLgndUu403TbUo+gnKwGnkrcNu
 fYGdVLuEpkzgbc3Jh9okKhI9hJ2w256Zh25bXJspIFEcK/EgTpvdlRQez w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="8367925"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="8367925"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:05:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="808187635"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="808187635"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:05:08 -0800
Date: Wed, 13 Dec 2023 17:05:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/dmc: Also disable HRR event on TGL main DMC
Message-ID: <ZXnIKSXG69SaRtyT@ideak-desk.fi.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
 <20231211213750.27109-4-ville.syrjala@linux.intel.com>
 <ZXlotrNjfr2yja5/@ideak-desk.fi.intel.com>
 <ZXl57Kgi78g9Wx-h@intel.com>
 <ZXmOQOgTOCOMbwkz@ideak-desk.fi.intel.com>
 <ZXnHnNIKaaCK1ddn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXnHnNIKaaCK1ddn@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 05:02:52PM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 12:58:08PM +0200, Imre Deak wrote:
> > On Wed, Dec 13, 2023 at 11:31:24AM +0200, Ville Syrjälä wrote:
> > > On Wed, Dec 13, 2023 at 10:17:58AM +0200, Imre Deak wrote:
> > > > On Mon, Dec 11, 2023 at 11:37:49PM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > Unlike later platforms TGL has the half refresh rate (HRR) event
> > > > > on the main DMC (as opposed to the pipe DMC). Since we're disabling
> > > > > that event on all later platforms already let's do the same on
> > > > > TGL as well.
> > > > > 
> > > > > There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
> > > > > the handler not do anything, but we don't currently have code
> > > > > to frob it. Though that bit should be off by default, the ADL+
> > > > > experience has shown us that trusting any of this isn't a good
> > > > > idea. So seems safer to just disable all event handlers we know
> > > > > that we don't need.
> > > > > 
> > > > > Also the TGL DMC firmware is apparently using the wrong event
> > > > > (undelayed vblank) here anyway. It should be using the delayed
> > > > > vblank event instead (like ADL+ firmware does), but they didn't
> > > > > release a firmware fix for this and instead just hacked around
> > > > > this in the Windows driver code :/
> > > > > 
> > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
> > > > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
> > > > >  2 files changed, 6 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > index 9385898e3aa5..0722d322ec63 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > @@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
> > > > >  	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
> > > > >  		return true;
> > > > >  
> > > > > +	/* also disable the HRR event on the main DMC on TGL */
> > > > > +	if (IS_TIGERLAKE(i915) &&
> > > > > +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)
> > > > 
> > > > The adls FW has the same event (but not the MSEC flip-queue one for some
> > > > reason).
> > > 
> > > I can't see it in the binary. Though I am using hexdump so it might
> > > also be that I'm looking in the wrong place :P
> > 
> > I see
> > dmc-dump -p 0 -i ~/Downloads/adls_dmc_ver2_01.bin
> > 
> > CSS module
> > =================================
> > Module type            : 9
> > Module header len      : 128 bytes
> > Module header version  : 1.0
> > Module id              : 0x00000000
> > Module vendor          : 0x00000000
> > Module build date      : 2020/05/26
> > Module size            : 18704 bytes
> > Module key size        : 0
> > Module modulus size    : 0
> > Module exponent size   : 0
> > Module version         : 2.1
> > Module kernel header   : 0x0
> > 
> > Package
> > ===================================
> > Package header len     : 400 bytes
> > Package header version : 2
> > Package payload entries: 2
> > 
> > Payload#0
> > -----------------------------------
> > Payload type           : main
> > Payload CPU stepping   : *
> > Payload CPU substepping: *
> > Payload file offset    : 528
> > -----------------------------------
> > FW signature           : 0x40403e3e
> > FW header len          : 256 bytes
> > FW header version      : 3
> > FW DMC HW version      : 12.2
> > FW Project             : 0x0c00
> > FW program size        : 16784 bytes
> > FW program area        : 0x080000 - 0x08418f
> > FW file offset         : 784
> > FW source version      : 0.1
> > FW fix MMIO count      : 7
> > FW fix MMIOs           :
> >   [8f074]=00086fc0
> >   [8f034]=c003b400
> >   [8f004]=01a40188
> >   [8f038]=c003b200
> >   [8f008]=3dc43bf4
> >   [8f03c]=c0033200
> >   [8f00c]=40b8408c
> 
> Hmm, yeah I see that now with hexdump as well. I think I was
> accidentally looking at rkl firmware previously. Dunno how I
> managed to mistyle "adls" as "rkl" though. Oh well, I'll respin
> with an adls check added.

I think no need and better as a follow-up to reduce CI latency.

> 
> > FW source file name    : d12adls_fw_main_0.1.d\x00-device\x00D1
> > 
> > > 
> > > > 
> > > > > +		return true;
> > > > > +
> > > > >  	return false;
> > > > >  }
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > > > index cf10094acae3..90d0dbb41cfe 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > > > @@ -60,6 +60,7 @@
> > > > >  
> > > > >  #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> > > > >  #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> > > > > +#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
> > > > >  /* An event handler scheduled to run at a 1 kHz frequency. */
> > > > >  #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> > > > >  
> > > > > -- 
> > > > > 2.41.0
> > > > > 
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
