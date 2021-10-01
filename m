Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7D941F38A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 19:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604CE6EE79;
	Fri,  1 Oct 2021 17:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A556EE79
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 17:45:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="205667218"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="205667218"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 10:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="521250175"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2021 10:45:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 20:45:49 +0300
Date: Fri, 1 Oct 2021 20:45:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YVdJTcAPlkujvqKT@intel.com>
References: <20210928185105.3030-1-ville.syrjala@linux.intel.com>
 <20151cd02fcc48c4ae7182792ef7c7e9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20151cd02fcc48c4ae7182792ef7c7e9@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop force enabling pipe bottom
 color gammma/csc
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

On Fri, Oct 01, 2021 at 05:12:03PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Wednesday, September 29, 2021 12:21 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH] drm/i915: Stop force enabling pipe bottom color
> > gammma/csc
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > While sanitizing the hardware state we're currently forcing the pipe bottom color
> > legacy csc/gamma bits on. That is not a good idea as BIOSen are likely to leave
> > gabage in the LUTs and so doing this causes ugly visual glitches if and when the
> > planes covering the background get disabled. This was exactly the case on this Dell
> > Precision 5560 tgl laptop.
> > 
> > On icl+ we don't normally even use these legacy bits anymore and instead use their
> > GAMMA_MODE counterparts.
> > On earlier platforms the bits are used, but we still shouldn't force them on without
> > knowing what's in the LUT.
> > 
> > So two options, get rid of the whole thing, or do what
> > intel_color_commit() does to make sure the bottom color state matches whatever
> > out hardware readout produced. I chose the latter since it'll match what happens on
> > older platforms when the primary plane gets turned off. In fact let's just call
> > intel_color_commit(). It'll also do some CSC programming but since we don't have
> > readout for that it'll actually just set to all zeros. So in the unlikely case of CSC
> > actually being enabld by the BIOS we'll end up with all black until the first atomic
> > commit happens.
> > 
> > Still not totally sure what we should do about color management features here in
> > general. Probably the safest  thing would be to force everything off exactly at the
> > same time when we disable the primary plane as there is no guarantees that
> > whatever the LUTs/CSCs contain make any sense whatsoever without the specific
> > pixel data in the BIOS fb. And if we preserve the primary plane then we should
> > disable the color management features exactly when the primary plane fb contents
> > first changes since the new content assumes more or less no transformations. But of
> > course synchronizing front buffer rendering with anything else is a bit hard...

After a second thought I think the safes option would be to:
- add full readout for all color management stuff (but IIRC
  the csc had some double buffering vs. readout problems on
  some platforms, so this needs a bit of extra care)
- disable all of it, and the primary plane, but only if any
  color management stuff was enabled by the BIOS
- make it all atomic so that no annoying colored blinky happens

That would guarantee that if any unknown color transformation
are applied to the data in the BIOS fb we don't do any of those
to whatever is the thing (fbcon or some userspace thing) that
takes over afterwards.

And if the BIOS is not using any transformations then we can
let the full BIOS fb takeover happen as it does today.

> > 
> 
> A nice catch.
> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Ta.

> 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3534
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 9 ++-------
> >  1 file changed, 2 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index f27c294beb92..17ce51576ed2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -11991,13 +11991,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
> >  				intel_plane_disable_noatomic(crtc, plane);
> >  		}
> > 
> > -		/*
> > -		 * Disable any background color set by the BIOS, but enable the
> > -		 * gamma and CSC to match how we program our planes.
> > -		 */
> > -		if (DISPLAY_VER(dev_priv) >= 9)
> > -			intel_de_write(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe),
> > -				       SKL_BOTTOM_COLOR_GAMMA_ENABLE |
> > SKL_BOTTOM_COLOR_CSC_ENABLE);
> > +		/* Disable any background color/etc. set by the BIOS */
> > +		intel_color_commit(crtc_state);
> >  	}
> > 
> >  	/* Adjust the state of the output pipe according to whether we
> > --
> > 2.32.0
> 

-- 
Ville Syrjälä
Intel
