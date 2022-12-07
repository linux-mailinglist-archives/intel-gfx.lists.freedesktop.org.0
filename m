Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC6B646353
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 22:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A64C10E420;
	Wed,  7 Dec 2022 21:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B9410E420
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 21:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670448928; x=1701984928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6kwxAKc86TnxZNM4B33XAyoqO8EZOUMmfsZlEcJ1Yig=;
 b=Gr+A9dNqzBenYNM1D0CzWF2PGBIkEmMpD6/OqpaTB09xsfE9wuZC/B0/
 ScrMc0XFwdPgs6G9gaTewdrTfc2TmnGJKGtPRob/ZRkTvXS9oHvwEVSPj
 D6NMQeNFOhKR9sUJs89kHpfkohHEX6rWEHFSMOuhxK1IAdwQEpb9BbLdS
 S+ykeRu8NrDYbqtliLUcGgvKQ9r5hhH5nhg84AKRwf3v/jl8XDV6U021k
 nANZ6DFLXwa2jC5q4NsiHq09c8qxYhnD1OO5Gj0vI9csNJJlImazBer+f
 dJoGdlFgS4fAEDQcBonV2PojT90K+5aTzUC4j0YldV/+X2qv+k+FkL5md A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="344051758"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="344051758"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 13:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624451380"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="624451380"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 07 Dec 2022 13:35:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Dec 2022 23:35:24 +0200
Date: Wed, 7 Dec 2022 23:35:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Y5EHHEUCdG3/IXHJ@intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-3-ville.syrjala@linux.intel.com>
 <20221205203425.GA1209420@mdnavare-mobl1.jf.intel.com>
 <Y5Cs/tILCmsuizzK@intel.com>
 <20221207210515.GA1306246@mdnavare-mobl1.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221207210515.GA1306246@mdnavare-mobl1.jf.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/vrr: Fix guardband/vblank exit
 length calculation for adl+
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

On Wed, Dec 07, 2022 at 01:05:15PM -0800, Navare, Manasi wrote:
> On Wed, Dec 07, 2022 at 05:10:54PM +0200, Ville Syrjälä wrote:
> > On Mon, Dec 05, 2022 at 12:34:25PM -0800, Navare, Manasi wrote:
> > > On Fri, Dec 02, 2022 at 03:44:10PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > We are miscalculating both the guardband value, and the resulting
> > > > vblank exit length on adl+. This means that our start of vblank
> > > > (double buffered register latch point) is incorrect, and we also
> > > > think that it's not where it actually is (hence vblank evasion/etc.
> > > > may not work properly). Fix up the calculations to match the real
> > > > hardware behaviour (as reverse engineered by intel_display_poller).
> > > > 
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > index 6655dd2c1684..753e7b211708 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > @@ -78,10 +78,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
> > > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > >  
> > > > -	/* The hw imposes the extra scanline before frame start */
> > > >  	if (DISPLAY_VER(i915) >= 13)
> > > > -		return crtc_state->vrr.guardband + crtc_state->framestart_delay + 1;
> > > > +		return crtc_state->vrr.guardband;
> > > 
> > > This makes sense since with guardband, there is no framestart delay
> > 
> > framestart delay is still a thing. But it's not something that
> > affects how the hardware interprets the guardband value.
> > 
> > > 
> > > >  	else
> > > > +		/* The hw imposes the extra scanline before frame start */
> > > >  		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
> > > >  }
> > > >  
> > > > @@ -151,7 +151,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> > > >  		 * number of scan lines. Assuming 0 for no DSB.
> > > >  		 */
> > > >  		crtc_state->vrr.guardband =
> > > > -			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
> > > > +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;
> > > 
> > > Why are we adding + 1 here? The bspec says guardband should be :
> > > Guardband = Vmin - Vactive - Window2 where in our case Window2 = 0
> > > If we need that + 1 to get this working, then perhaps we need to update
> > > Bspec?
> > 
> > flipline is what actaully determines the start of vblank, and
> > 'flipline>=vmin+1' always.
> 
> Flipline would be always >=vmin as per the bspec,

Not sure where in bspec you see that. All I see is >vmin,
and it even says you et an extra line if you try to set them
equal. Pretty sure I verified that behaviour on the hw on icl/tgl
since I put the extra -1 to the vmin calculation. Though I haven't
actually tested it on adl+.

> have we tried with
> that or if that definitely doesnt work then we need to have this changed
> in the bspec.
> 
> Either way if this is the only value that works then with this change
> added to bspec:
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> 
> Manasi
> 
> > 
> > > 
> > > I kind of want to see if this is still breaking if we dont have that +
> > > 1?
> > 
> > Without it start of vblank happens one line later than where we want it
> > to happen.
> > 
> > > 
> > > Manasi
> > > 
> > > >  	} else {
> > > >  		crtc_state->vrr.pipeline_full =
> > > >  			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> > > > -- 
> > > > 2.37.4
> > > > 
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
