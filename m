Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F162D6475CB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 19:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3751710E4C0;
	Thu,  8 Dec 2022 18:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 656B610E4C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 18:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670525484; x=1702061484;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ddboPiJKLoDpaih21yd25w/cVOInjTmSri0Xp6v59R8=;
 b=A6PCSsGogs60o2EQAq/zm8s62M9hRWDUBNmif73WO/AY+bfHfvfbLTY9
 /Uv17r3mF7S62q35XUYP6DwsHTQLVTWv/llXT2sGlucqDcbtZ4eooOHJu
 Z73u/D5BKT3l7w1BExys7YvJaGvvAzucWQyRuA6gq674cf9UV06ubtftc
 DP6JBzGZgnBiqyGjcn44fDd4XMM0YpNAigT0fl0RHTJ/cxnUennmMmd+5
 jaVnOFWqD+wIyn8hAgNee3oLpyIQmQvzyQcTiVqxoUljRipb3w2k9KRh9
 FwmXAmp7/JTseAYpAboexT/Tqmps9i+8uQw7k37LoZWnP7lW/PN2w7rad A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="379468270"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="379468270"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 10:42:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="624816496"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="624816496"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 10:42:13 -0800
Date: Thu, 8 Dec 2022 10:42:31 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20221208184231.GA1346170@mdnavare-mobl1.jf.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-3-ville.syrjala@linux.intel.com>
 <20221205203425.GA1209420@mdnavare-mobl1.jf.intel.com>
 <Y5Cs/tILCmsuizzK@intel.com>
 <20221207210515.GA1306246@mdnavare-mobl1.jf.intel.com>
 <Y5EHHEUCdG3/IXHJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y5EHHEUCdG3/IXHJ@intel.com>
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

On Wed, Dec 07, 2022 at 11:35:24PM +0200, Ville Syrj�l� wrote:
> On Wed, Dec 07, 2022 at 01:05:15PM -0800, Navare, Manasi wrote:
> > On Wed, Dec 07, 2022 at 05:10:54PM +0200, Ville Syrj�l� wrote:
> > > On Mon, Dec 05, 2022 at 12:34:25PM -0800, Navare, Manasi wrote:
> > > > On Fri, Dec 02, 2022 at 03:44:10PM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > We are miscalculating both the guardband value, and the resulting
> > > > > vblank exit length on adl+. This means that our start of vblank
> > > > > (double buffered register latch point) is incorrect, and we also
> > > > > think that it's not where it actually is (hence vblank evasion/etc.
> > > > > may not work properly). Fix up the calculations to match the real
> > > > > hardware behaviour (as reverse engineered by intel_display_poller).
> > > > > 
> > > > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_vrr.c | 6 +++---
> > > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > > index 6655dd2c1684..753e7b211708 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > > @@ -78,10 +78,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
> > > > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > > > >  
> > > > > -	/* The hw imposes the extra scanline before frame start */
> > > > >  	if (DISPLAY_VER(i915) >= 13)
> > > > > -		return crtc_state->vrr.guardband + crtc_state->framestart_delay + 1;
> > > > > +		return crtc_state->vrr.guardband;
> > > > 
> > > > This makes sense since with guardband, there is no framestart delay
> > > 
> > > framestart delay is still a thing. But it's not something that
> > > affects how the hardware interprets the guardband value.
> > > 
> > > > 
> > > > >  	else
> > > > > +		/* The hw imposes the extra scanline before frame start */
> > > > >  		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
> > > > >  }
> > > > >  
> > > > > @@ -151,7 +151,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> > > > >  		 * number of scan lines. Assuming 0 for no DSB.
> > > > >  		 */
> > > > >  		crtc_state->vrr.guardband =
> > > > > -			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
> > > > > +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;
> > > > 
> > > > Why are we adding + 1 here? The bspec says guardband should be :
> > > > Guardband = Vmin - Vactive - Window2 where in our case Window2 = 0
> > > > If we need that + 1 to get this working, then perhaps we need to update
> > > > Bspec?
> > > 
> > > flipline is what actaully determines the start of vblank, and
> > > 'flipline>=vmin+1' always.
> > 
> > Flipline would be always >=vmin as per the bspec,
> 
> Not sure where in bspec you see that. All I see is >vmin,
> and it even says you et an extra line if you try to set them
> equal. Pretty sure I verified that behaviour on the hw on icl/tgl
> since I put the extra -1 to the vmin calculation. Though I haven't
> actually tested it on adl+.

You are right for these current platforms it still needs >=Vmin + 1.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> 
> > have we tried with
> > that or if that definitely doesnt work then we need to have this changed
> > in the bspec.
> > 
> > Either way if this is the only value that works then with this change
> > added to bspec:
> > 
> > Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> > 
> > Manasi
> > 
> > > 
> > > > 
> > > > I kind of want to see if this is still breaking if we dont have that +
> > > > 1?
> > > 
> > > Without it start of vblank happens one line later than where we want it
> > > to happen.
> > > 
> > > > 
> > > > Manasi
> > > > 
> > > > >  	} else {
> > > > >  		crtc_state->vrr.pipeline_full =
> > > > >  			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> > > > > -- 
> > > > > 2.37.4
> > > > > 
> > > 
> > > -- 
> > > Ville Syrj�l�
> > > Intel
> 
> -- 
> Ville Syrj�l�
> Intel
