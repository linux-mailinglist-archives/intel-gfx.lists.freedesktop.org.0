Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51762810D7A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD39510E0CE;
	Wed, 13 Dec 2023 09:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0828A10E0CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459888; x=1733995888;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k7Tlxl8ELNC7LemYv09sVTct9hiPN+CLAX6EJpY5so0=;
 b=lrfhlyj5cRXqTppdJsSXC+LrWrqg4pFGCeQzoZDHDJeoTHFt+e14YxkQ
 bDs+5Oh0RIVTN3HYqUspsH3+LmVtXiyv4xjcEftlBafZp5/6VowOoOqKr
 xfOpM4AS5Fh0p+vMpPjl+ypk6jiQdhqWsrFVon5fUIAbqapk2LduCBL+q
 uIprrfNnmrTsKcHICx6KqnkLWrcv53UcgWQomZldxy+QwhYxPTxjvdVgX
 KDN8292xgpMlCbKIluCEFtlF9GZKouuGJmdj3jreqT8wQCegH0cITe+5z
 tOcGONw0A/22tkyN+/9tqrqMI7oOIwSc1873ObKGjpMpZKGpDrJ9iwjc8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="8299935"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="8299935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:31:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767149610"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767149610"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 01:31:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 11:31:24 +0200
Date: Wed, 13 Dec 2023 11:31:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/dmc: Also disable HRR event on TGL main DMC
Message-ID: <ZXl57Kgi78g9Wx-h@intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
 <20231211213750.27109-4-ville.syrjala@linux.intel.com>
 <ZXlotrNjfr2yja5/@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXlotrNjfr2yja5/@ideak-desk.fi.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 10:17:58AM +0200, Imre Deak wrote:
> On Mon, Dec 11, 2023 at 11:37:49PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Unlike later platforms TGL has the half refresh rate (HRR) event
> > on the main DMC (as opposed to the pipe DMC). Since we're disabling
> > that event on all later platforms already let's do the same on
> > TGL as well.
> > 
> > There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
> > the handler not do anything, but we don't currently have code
> > to frob it. Though that bit should be off by default, the ADL+
> > experience has shown us that trusting any of this isn't a good
> > idea. So seems safer to just disable all event handlers we know
> > that we don't need.
> > 
> > Also the TGL DMC firmware is apparently using the wrong event
> > (undelayed vblank) here anyway. It should be using the delayed
> > vblank event instead (like ADL+ firmware does), but they didn't
> > release a firmware fix for this and instead just hacked around
> > this in the Windows driver code :/
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
> >  2 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 9385898e3aa5..0722d322ec63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
> >  	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
> >  		return true;
> >  
> > +	/* also disable the HRR event on the main DMC on TGL */
> > +	if (IS_TIGERLAKE(i915) &&
> > +	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)
> 
> The adls FW has the same event (but not the MSEC flip-queue one for some
> reason).

I can't see it in the binary. Though I am using hexdump so it might
also be that I'm looking in the wrong place :P

> 
> > +		return true;
> > +
> >  	return false;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index cf10094acae3..90d0dbb41cfe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -60,6 +60,7 @@
> >  
> >  #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
> >  #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
> > +#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
> >  /* An event handler scheduled to run at a 1 kHz frequency. */
> >  #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
> >  
> > -- 
> > 2.41.0
> > 

-- 
Ville Syrjälä
Intel
