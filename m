Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B617810F14
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:58:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC9C10E74D;
	Wed, 13 Dec 2023 10:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A0410E74D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702465085; x=1734001085;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LELM2Jwz8QEQK9IJDTBc4Xy4PFABVMhQ8wnPN9dEHQk=;
 b=aBRsFCXO4smh+3dTEf0cO6G2p1cIU6XzB+C7ubzROWew6ViLkqsY9L93
 hZFHB/UI/52nSylA/K9/zbOZi5+jTTewMOtk8rz8UGfFudU4VYzgpYDHv
 Hu9kPzvUgtARyUxxgir4oA80uCU5C13vUakVmOtHInzVW+U05SWqhwkuq
 qUojKHO2G7LGt3Mw9C7SiVj3zhCFWjidbpRH/g9pHlJFOrfZ3Tv9glj9Y
 hkl1SPfEm4gI0UjHQ3Wgzk6zacmREq90+s++82YYD8WKyx4J1+4bQOqs5
 dmsDblb+RZsw0W3ajYtCmpH6CmTPY5AJncGmLaV/togVuv7Jgn8Up5VTR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="392122002"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="392122002"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:58:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="802841882"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="802841882"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:58:03 -0800
Date: Wed, 13 Dec 2023 12:58:08 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/dmc: Also disable HRR event on TGL main DMC
Message-ID: <ZXmOQOgTOCOMbwkz@ideak-desk.fi.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
 <20231211213750.27109-4-ville.syrjala@linux.intel.com>
 <ZXlotrNjfr2yja5/@ideak-desk.fi.intel.com>
 <ZXl57Kgi78g9Wx-h@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXl57Kgi78g9Wx-h@intel.com>
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

On Wed, Dec 13, 2023 at 11:31:24AM +0200, Ville Syrjälä wrote:
> On Wed, Dec 13, 2023 at 10:17:58AM +0200, Imre Deak wrote:
> > On Mon, Dec 11, 2023 at 11:37:49PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Unlike later platforms TGL has the half refresh rate (HRR) event
> > > on the main DMC (as opposed to the pipe DMC). Since we're disabling
> > > that event on all later platforms already let's do the same on
> > > TGL as well.
> > > 
> > > There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
> > > the handler not do anything, but we don't currently have code
> > > to frob it. Though that bit should be off by default, the ADL+
> > > experience has shown us that trusting any of this isn't a good
> > > idea. So seems safer to just disable all event handlers we know
> > > that we don't need.
> > > 
> > > Also the TGL DMC firmware is apparently using the wrong event
> > > (undelayed vblank) here anyway. It should be using the delayed
> > > vblank event instead (like ADL+ firmware does), but they didn't
> > > release a firmware fix for this and instead just hacked around
> > > this in the Windows driver code :/
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
> > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
> > >  2 files changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 9385898e3aa5..0722d322ec63 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
> > >  	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
> > >  		return true;
> > >  
> > > +	/* also disable the HRR event on the main DMC on TGL */
> > > +	if (IS_TIGERLAKE(i915) &&
> > > +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)
> > 
> > The adls FW has the same event (but not the MSEC flip-queue one for some
> > reason).
> 
> I can't see it in the binary. Though I am using hexdump so it might
> also be that I'm looking in the wrong place :P

I see
dmc-dump -p 0 -i ~/Downloads/adls_dmc_ver2_01.bin

CSS module
=================================
Module type            : 9
Module header len      : 128 bytes
Module header version  : 1.0
Module id              : 0x00000000
Module vendor          : 0x00000000
Module build date      : 2020/05/26
Module size            : 18704 bytes
Module key size        : 0
Module modulus size    : 0
Module exponent size   : 0
Module version         : 2.1
Module kernel header   : 0x0

Package
===================================
Package header len     : 400 bytes
Package header version : 2
Package payload entries: 2

Payload#0
-----------------------------------
Payload type           : main
Payload CPU stepping   : *
Payload CPU substepping: *
Payload file offset    : 528
-----------------------------------
FW signature           : 0x40403e3e
FW header len          : 256 bytes
FW header version      : 3
FW DMC HW version      : 12.2
FW Project             : 0x0c00
FW program size        : 16784 bytes
FW program area        : 0x080000 - 0x08418f
FW file offset         : 784
FW source version      : 0.1
FW fix MMIO count      : 7
FW fix MMIOs           :
  [8f074]=00086fc0
  [8f034]=c003b400
  [8f004]=01a40188
  [8f038]=c003b200
  [8f008]=3dc43bf4
  [8f03c]=c0033200
  [8f00c]=40b8408c
FW source file name    : d12adls_fw_main_0.1.d\x00-device\x00D1

> 
> > 
> > > +		return true;
> > > +
> > >  	return false;
> > >  }
> > >  
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > index cf10094acae3..90d0dbb41cfe 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > > @@ -60,6 +60,7 @@
> > >  
> > >  #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> > >  #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> > > +#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
> > >  /* An event handler scheduled to run at a 1 kHz frequency. */
> > >  #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> > >  
> > > -- 
> > > 2.41.0
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
