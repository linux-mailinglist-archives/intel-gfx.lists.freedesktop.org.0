Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836979301A5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 23:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B23410EDA8;
	Fri, 12 Jul 2024 21:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZfhuurG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83A010EDA4;
 Fri, 12 Jul 2024 21:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720820068; x=1752356068;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nyj/DfqShmDUG4SbbGtYXNSkKupskPaDnQYBiLBo11E=;
 b=iZfhuurGnK8WbMc9B2Lsnh/ZmUslI72yUNIsLDDGubxdB+DFWVEjE3ps
 Ed29G44xMqRuGU707F/4t+WXi4Tqjt1kvLsWCAoM4U+a161L/uVSw/HZv
 pi4S9iHC7NHSBDM6b1JS+4c2V9TNiaTAR247UOMLi/FceyKaZGpFihzSX
 q1OxrETgworBQBDqY5MgTh+9r/q5mL3970RY7807u96lIDq7ZvgopmiYo
 ItkV7eez6bSVLyhgPqUQtD9qrzXvjnJh+b26LeHwtEA86ZfeLZoNILM+d
 e4mSm7xVPW1DVvJwFR0SByrMyhfIdBWVnf+s4B3J2HCsM8TI7JDjidxEw g==;
X-CSE-ConnectionGUID: 0/McO1lkR4SPwhGzJ3QYSQ==
X-CSE-MsgGUID: PCHR2qVMRZOYTLBD/6i9ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="29671415"
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="29671415"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 14:34:28 -0700
X-CSE-ConnectionGUID: /57YPDsBQBmmj7Ghjo5VHQ==
X-CSE-MsgGUID: SjpqDysmRHy0Yia8iYO21Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="48981958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Jul 2024 14:34:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 13 Jul 2024 00:34:24 +0300
Date: Sat, 13 Jul 2024 00:34:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 11/20] drm/i915/fbc: Extract intel_fbc_max_cfb_height()
Message-ID: <ZpGhYADsA4QRCACG@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-12-ville.syrjala@linux.intel.com>
 <DM4PR11MB63606CD88B0030C31E9CB869F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63606CD88B0030C31E9CB869F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Wed, Jul 10, 2024 at 08:26:54AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Friday, July 5, 2024 8:23 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH 11/20] drm/i915/fbc: Extract intel_fbc_max_cfb_height()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Pull the code to determine the maximum CFB height into a separate function. For
> > pre-HSW the maximum CFB height is the same as the maximum plane height (ie.
> > the older hardware supposedely doens't have the trick of leaving the extra lines
> > uncompressed).
> > 
> 
> Nit: Typo in supposedly and doesn't.
> 
> Limit is also altered along with refactor; would a separate patch be better ?

It doesn't actually change anything as that's just the max plane
height for older platforms, so anything taller would have been
already been rejected earlier.

I suppose I could have added the explicit limit first, and then
did the extraction. But seems harmless enough as is, so kept it
like this but adjusted the commit message a bit to highlight this
fact a little better.

> Leave it your judgement. Overall logic looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 27 ++++++++++++++++++------
> >  1 file changed, 20 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index cf5750ed4681..47b715e5d533 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -201,17 +201,30 @@ static unsigned int intel_fbc_cfb_stride(const struct
> > intel_plane_state *plane_s
> >  	return _intel_fbc_cfb_stride(display, width, stride);  }
> > 
> > -static unsigned int intel_fbc_cfb_size(const struct intel_plane_state
> > *plane_state)
> > +/*
> > + * Maximum height the hardware will compress, on HSW+
> > + * additional lines (up to the actual plane height) will
> > + * remain uncompressed.
> > + */
> > +static unsigned int intel_fbc_max_cfb_height(struct intel_display
> > +*display)
> >  {
> > -	struct intel_display *display = to_intel_display(plane_state->uapi.plane-
> > >dev);
> > -	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
> > +	struct drm_i915_private *i915 = to_i915(display->drm);
> > 
> >  	if (DISPLAY_VER(display) >= 8)
> > -		height = min(height, 2560);
> > -	else if (DISPLAY_VER(display) == 7)
> > -		height = min(height, 2048);
> > +		return 2560;
> > +	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
> > +		return 2048;
> > +	else
> > +		return 1536;
> > +}
> > 
> > -	return height * intel_fbc_cfb_stride(plane_state);
> > +static unsigned int intel_fbc_cfb_size(const struct intel_plane_state
> > +*plane_state) {
> > +	struct intel_display *display = to_intel_display(plane_state->uapi.plane-
> > >dev);
> > +	unsigned int height = drm_rect_height(&plane_state->uapi.src) >> 16;
> > +
> > +	return min(height, intel_fbc_max_cfb_height(display)) *
> > +		intel_fbc_cfb_stride(plane_state);
> >  }
> > 
> >  static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state
> > *plane_state)
> > --
> > 2.44.2
> 

-- 
Ville Syrjälä
Intel
