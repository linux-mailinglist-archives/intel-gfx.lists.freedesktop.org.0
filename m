Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B948A786
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6941412A938;
	Tue, 11 Jan 2022 05:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF9E12A935
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641880642; x=1673416642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q3F5gWQIf8+cnyrESI9oUU85PUvNiqWsMjGhPirZ7J4=;
 b=h8Lo/tib1l7dj0rLDNTNph7bwVQw9YViJhT+Tn/VF8QMXN0d2e6kMpWE
 p7AGwR5axHFC8fm0sXiV3gIhK/6nhIDnlphAn39dnSCjN2/5529tOcaq3
 zAD85n1eVUGnuw42/OHY/XbbbCwW2MaUi8aa30TFDBRYPOiHKgk5mxfaa
 QD3220wpwsy9WYFg6J95+1E+BKwcgjdcy4g8qayf8Mod2+vh2aXPJl2TD
 QrzHXEbNU/63sReCAjeTJ+EmWFMVbtPyCQZQvAFCG5GHkxxTh+DJpjjcM
 blrXaTfRR/FKN5NJ2/JGyiWOeTNyHYA+ZmcHCWnVC9ONcXjbKvzNMp1QR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="329750974"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="329750974"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:57:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="622949747"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:57:22 -0800
Date: Mon, 10 Jan 2022 22:12:18 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Message-ID: <20220111061217.GA23358@labuser-Z97X-UD5H>
References: <20210914085958.GA27514@intel.com> <87k0jj2wjo.fsf@intel.com>
 <20210914130425.GA27850@intel.com>
 <20210914133223.GA28709@intel.com> <87bl4v2r2h.fsf@intel.com>
 <c3813f0b1b18411abfdd9004378f2329@intel.com>
 <87zgsf19dc.fsf@intel.com>
 <03b4a5dab8384622b5c9baa2f92a9469@intel.com>
 <20220110193634.GA12500@labuser-Z97X-UD5H>
 <16eadcc44975488696b036cf617b7a59@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <16eadcc44975488696b036cf617b7a59@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 10, 2022 at 08:24:54PM -0800, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Navare, Manasi D <manasi.d.navare@intel.com>
> > Sent: Tuesday, January 11, 2022 1:07 AM
> > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Cc: Nikula, Jani <jani.nikula@intel.com>; Lisovskiy, Stanislav
> > <stanislav.lisovskiy@intel.com>; Ville Syrjälä <ville.syrjala@linux.intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
> > engine for higher moderates
> > 
> > Thankf for revisiting this thread. The use of max_cdclk is currently in 2 places
> > in DSC code 1. . if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq)
> > {
> >                 if (pipe_config->dsc.slice_count > 1) {
> >                         pipe_config->dsc.dsc_split = true; 2. if (bigjoiner) {
> >                 u32 max_bpp_bigjoiner =
> >                         i915->max_cdclk_freq * 48 /
> >                         intel_dp_mode_to_fec_clock(mode_clock);
> > 
> >                 DRM_DEBUG_KMS("Max big joiner bpp: %u\n",
> > max_bpp_bigjoiner);
> >                 bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
> >         }
> > 
> > In both these places, using max_cdclk can cause problems, like for
> > compressed bpp it can give a higher bpp based on max_cdclk and we might
> > actually end up chosing lower cdclk at what point this will cause underruns.
> > 
> > So when I was discussing with Ville on this, my first thought was also to use
> > the cdclk_state->actual_cdclk but like Ville mentioned later in the review
> > comments the challenge there was that actual cdclk does get computed
> > much later than dsc_compute_config.
> > 
> > So I think as suggested in one of the reviews we just to check if DSC is
> > enabled then we dont allow lowering the cdclk which would also prevent
> > underruns caused by possibly setting up higher bpp based on max cdclk.
> 
> Thanks for the review.
> This is taken care now, in case if we cannot split, then we already are using max_cdclk.
> Regarding the bigjoiner_bpp, you may need to make the change if you need it to be set to max cdclk.
> As we all of us here agree that we do not have computed cd clk at that time.
>

So the resolution was to keep it at max_cdclock when we set the dsc.split  and decide to use 2 VDSC engines? Is this change merged upstream now?
For bpp calculation, that was pointed out by Srikanth that they were seeing underruns and was a bug they had found in their code.
And infact there we dont want to set it to max_cdclk because if we lower the cdclk later then that bpp will cause underuns.
One of the comments in here was to then check if DSC enabled in function that tries to lower the cdclk and not allow if DSC enabled.
Are you already working on that change or do I need to follow up on that with Ville/ Jani?

Manasi
 
> > 
> > @Ville @Jani does this sound like a good approach. Then @Vandita we can
> > pursue that change.
> > 
> > Regards
> > Manasi
> > 
> > On Sun, Jan 09, 2022 at 11:15:04PM -0800, Kulkarni, Vandita wrote:
> > > Revisiting this thread after update from the bspec.
> > >
> > > > -----Original Message-----
> > > > From: Nikula, Jani <jani.nikula@intel.com>
> > > > Sent: Tuesday, September 14, 2021 8:40 PM
> > > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lisovskiy,
> > > > Stanislav <stanislav.lisovskiy@intel.com>
> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>; intel-
> > > > gfx@lists.freedesktop.org; Navare, Manasi D
> > > > <manasi.d.navare@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Enable second
> > > > VDSC engine for higher moderates
> > > >
> > > > On Tue, 14 Sep 2021, "Kulkarni, Vandita"
> > > > <vandita.kulkarni@intel.com>
> > > > wrote:
> > > > >> -----Original Message-----
> > > > >> From: Nikula, Jani <jani.nikula@intel.com>
> > > > >> Sent: Tuesday, September 14, 2021 7:33 PM
> > > > >> To: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > > > >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>; Kulkarni,
> > > > >> Vandita <vandita.kulkarni@intel.com>;
> > > > >> intel-gfx@lists.freedesktop.org; Navare, Manasi D
> > > > >> <manasi.d.navare@intel.com>
> > > > >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second
> > > > >> VDSC engine for higher moderates
> > > > >>
> > > > >> On Tue, 14 Sep 2021, "Lisovskiy, Stanislav"
> > > > >> <stanislav.lisovskiy@intel.com>
> > > > >> wrote:
> > > > >> > On Tue, Sep 14, 2021 at 04:04:25PM +0300, Lisovskiy, Stanislav wrote:
> > > > >> >> On Tue, Sep 14, 2021 at 03:04:11PM +0300, Jani Nikula wrote:
> > > > >> >> > On Tue, 14 Sep 2021, "Lisovskiy, Stanislav"
> > > > >> <stanislav.lisovskiy@intel.com> wrote:
> > > > >> >> > > On Tue, Sep 14, 2021 at 10:48:46AM +0300, Ville Syrjälä wrote:
> > > > >> >> > >> On Tue, Sep 14, 2021 at 07:31:46AM +0000, Kulkarni,
> > > > >> >> > >> Vandita
> > > > wrote:
> > > > >> >> > >> > > -----Original Message-----
> > > > >> >> > >> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > >> >> > >> > > Sent: Tuesday, September 14, 2021 12:59 PM
> > > > >> >> > >> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > > >> >> > >> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > > >> >> > >> > > <jani.nikula@intel.com>; Navare, Manasi D
> > > > >> >> > >> > > <manasi.d.navare@intel.com>
> > > > >> >> > >> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display:
> > > > >> >> > >> > > Enable second VDSC engine for higher moderates
> > > > >> >> > >> > >
> > > > >> >> > >> > > On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita
> > > > >> >> > >> > > Kulkarni
> > > > >> wrote:
> > > > >> >> > >> > > > Each VDSC operates with 1ppc throughput, hence
> > > > >> >> > >> > > > enable the second VDSC engine when moderate is
> > > > >> >> > >> > > > higher that the current
> > > > >> cdclk.
> > > > >> >> > >> > > >
> > > > >> >> > >> > > > Signed-off-by: Vandita Kulkarni
> > > > >> >> > >> > > > <vandita.kulkarni@intel.com>
> > > > >> >> > >> > > > ---
> > > > >> >> > >> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 12
> > > > >> >> > >> > > > ++++++++++--
> > > > >> >> > >> > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > > >> >> > >> > > >
> > > > >> >> > >> > > > diff --git
> > > > >> >> > >> > > > a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > >> >> > >> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > >> >> > >> > > > index 161c33b2c869..55878f65f724 100644
> > > > >> >> > >> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > >> >> > >> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > >> >> > >> > > > @@ -70,6 +70,7 @@
> > > > >> >> > >> > > >  #include "intel_tc.h"
> > > > >> >> > >> > > >  #include "intel_vdsc.h"
> > > > >> >> > >> > > >  #include "intel_vrr.h"
> > > > >> >> > >> > > > +#include "intel_cdclk.h"
> > > > >> >> > >> > > >
> > > > >> >> > >> > > >  #define DP_DPRX_ESI_LEN 14
> > > > >> >> > >> > > >
> > > > >> >> > >> > > > @@ -1291,10 +1292,13 @@ static int
> > > > >> >> > >> > > > intel_dp_dsc_compute_config(struct
> > > > >> >> > >> > > intel_dp *intel_dp,
> > > > >> >> > >> > > >  				       struct
> > > > drm_connector_state
> > > > >> *conn_state,
> > > > >> >> > >> > > >  				       struct link_config_limits
> > > > *limits)  {
> > > > >> >> > >> > > > +	struct intel_cdclk_state *cdclk_state;
> > > > >> >> > >> > > >  	struct intel_digital_port *dig_port =
> > > > >> dp_to_dig_port(intel_dp);
> > > > >> >> > >> > > >  	struct drm_i915_private *dev_priv =
> > > > to_i915(dig_port-
> > > > >> >> > >> > > >base.base.dev);
> > > > >> >> > >> > > >  	const struct drm_display_mode *adjusted_mode =
> > > > >> >> > >> > > >  		&pipe_config->hw.adjusted_mode;
> > > > >> >> > >> > > > +	struct intel_atomic_state *state =
> > > > >> >> > >> > > > +
> > > > 	to_intel_atomic_state(pipe_config-
> > > > >> >> > >> > > >uapi.state);
> > > > >> >> > >> > > >  	int pipe_bpp;
> > > > >> >> > >> > > >  	int ret;
> > > > >> >> > >> > > >
> > > > >> >> > >> > > > @@ -1373,12 +1377,16 @@ static int
> > > > >> >> > >> > > > intel_dp_dsc_compute_config(struct
> > > > >> >> > >> > > intel_dp *intel_dp,
> > > > >> >> > >> > > >  		}
> > > > >> >> > >> > > >  	}
> > > > >> >> > >> > > >
> > > > >> >> > >> > > > +	cdclk_state = intel_atomic_get_cdclk_state(state);
> > > > >> >> > >> > > > +	if (IS_ERR(cdclk_state))
> > > > >> >> > >> > > > +		return PTR_ERR(cdclk_state);
> > > > >> >> > >> > > > +
> > > > >> >> > >> > > >  	/*
> > > > >> >> > >> > > >  	 * VDSC engine operates at 1 Pixel per clock, so
> > > > >> >> > >> > > > if peak pixel
> > > > >> rate
> > > > >> >> > >> > > > -	 * is greater than the maximum Cdclock and if slice
> > > > count is
> > > > >> even
> > > > >> >> > >> > > > +	 * is greater than the current Cdclock and if
> > > > >> >> > >> > > > +slice count is even
> > > > >> >> > >> > > >  	 * then we need to use 2 VDSC instances.
> > > > >> >> > >> > > >  	 */
> > > > >> >> > >> > > > -	if (adjusted_mode->crtc_clock > dev_priv-
> > > > >max_cdclk_freq
> > > > >> ||
> > > > >> >> > >> > > > +	if (adjusted_mode->crtc_clock >
> > > > >> >> > >> > > > +cdclk_state->actual.cdclk ||
> > > > >> >> > >> > >
> > > > >> >> > >> > > This is wrong. We compute the cdclk based on the
> > > > >> >> > >> > > requirements of the mode/etc., not the other way
> > around.
> > > > >> >> > >
> > > > >> >> > > According to BSpec guideline, we decide whether we enable
> > > > >> >> > > or disable second VDSC engine, based on that condition. As
> > > > >> >> > > I understand that one is about DSC config calculation,
> > > > >> >> > > based on CDCLK
> > > > >> which was calculated.
> > > > >> >> >
> > > > >> >> > Point is, at the time compute_config gets called, what
> > > > >> >> > guarantees are there that cdclk_state->actual.cdclk contains
> > > > anything useful?
> > > > >> >> > This is the design we have.
> > > > >> >>
> > > > >> >> That is actually good question, was willing to check that as well.
> > > > >> >>
> > > > >> >> >
> > > > >> >> > > If we bump up CDCLK, to avoid this, will we even then use
> > > > >> >> > > a second
> > > > >> VDSC ever?
> > > > >> >> >
> > > > >> >> > I think we'll eventually need better logic than
> > > > >> >> > unconditionally bumping to max, and it needs to take *both*
> > > > >> >> > the cdclk and the number of dsc engines into account. The
> > > > >> >> > referenced bspec only has the vdsc clock perspective, not overall
> > perspective.
> > > > >> >>
> > > > >> >> What we need to clarify here is that how this is supposed to
> > > > >> >> work in
> > > > >> theory.
> > > > >> >> Basically same issue can be fixed by both increasing the CDCLK
> > > > >> >> or enabling 2nd VDSC engine.
> > > > >> >> There should be some guideline telling us, how to prioritize.
> > > > >> >> From overall perspective as I understand, by default, we are
> > > > >> >> able to keep CDCLK 2 times less than pixel rate(see
> > > > >> >> intel_pixel_rate_to_cdclk), however due to that VDSC
> > > > >> >> limitation that it can use only 1 ppc this becomes, not
> > > > >> >> applicable anymore(at least as of BSpec 49259), so we have to
> > > > >> >> increase amount of VDSC instances
> > > > >> then.
> > > > >> >>
> > > > >> >> So the question is now - what is more optimal here?
> > > > >> >> Also if we bump up CDCLK(which we have done many times
> > already
> > > > >> >> in fact), we then need to add some logic to
> > > > >> >> intel_compute_min_cdclk to check if we are using DSC or not,
> > > > >> >> because otherwise we don't really need
> > > > >> to do that.
> > > > >>
> > > > >> intel_compute_min_cdclk() already needs to be dsc aware when
> > > > >> slice count is 1 and we can't use two dsc engines anyway. See the
> > > > >> recent commit fe01883fdcef ("drm/i915: Get proper min cdclk if vDSC
> > enabled").
> > > > >>
> > > > >> Looking again, I'm not sure that does the right decision for when
> > > > >> dsc.slice_count > 1, but dsc.split == false. It should probably
> > > > >> use dsc.split for the decision.
> > > > >>
> > > > >> >>
> > > > >> >> Stan
> > > > >> >
> > > > >> > Checked and indeed, encoder->compute_config is called way
> > > > >> > before, basically CDCLK calculation is called almost in the end
> > > > >> > of atomic_check, so in compute_config, there would be an old
> > > > >> > CDCLK value copied from previous cdclk state, but not the last one.
> > > > >> >
> > > > >> > Vandita, this means we actually can't do it that way, if you
> > > > >> > want to do anything with VDSC based on CDCLK this has to be
> > > > >> > done _after_ intel_compute_min_cdclk was called. Which is not
> > very sweet, I guess.
> > > > >> >
> > > > >> > So as of current architecture, it seems that the easiest way is
> > > > >> > indeed to bump the CDCLK or we need to figure the way how to
> > > > >> > enable 2nd VDSC somewhere else, after CDCLK was calculated.
> > > > >>
> > > > >> Alternatively, we could use two dsc engines more aggressively,
> > > > >> but that decision currently can't take overall chosen cdclk into account.
> > > > >>
> > > > >> We'll end up sometimes unnecessarily using a too high cdclk or
> > > > >> two dsc engines, just have to pick the poison.
> > > > >>
> > > > >> I think trying to do dsc decisions after
> > > > >> intel_compute_min_cdclk() gets way too complicated.
> > > > >
> > > > > In this case, can we just use the 2nd VDSC engine if slice_count
> > > > > is 2 or
> > > > more?
> > > > > Which would mean we always operate in joiner enabled mode(small
> > > > > joiner) of all the compression modes of operation mentioned in the
> > > > > table bspec: 49259 Because we are still going to hit the max cdclk
> > > > > restriction
> > > > for higher resolutions, and many lower resolutions wouldn’t need max
> > cdclk.
> > > > > And eventually once we have more details on cd clk vs 2VDSC engine
> > > > > we could add the logic to choose one over the other?
> > > > >
> > > > > I see that in case of DSI we do split = true, for slice_count > 1
> > > > > but that
> > > > would need a different set of checks, thats a TBD.
> > > > >
> > > > > Or Do you suggest I just do this for now max cdclk when
> > > > > slice_count =1 (what we are doing now) replace with compression =
> > > > > true and split = false
> > > >
> > > > I think the check in intel_compute_min_cdclk() should be:
> > > >
> > > > 	if (crtc_state->dsc.compression_enable && !crtc_state-
> > > > >dsc.dsc_split)
> > > >
> > > > That's a separate change.
> > > >
> > > > Enabling two dsc engines more aggressively... I don't mind doing it
> > > > unconditionally when slice count > 1 for starters. But I think we'll
> > > > need to improve this going forward, including fixing the mode valid
> > > > checks etc. as we've discussed.
> > >
> > > Design recommendation is to use 2 VDSC instances while meeting the
> > following constraint so that cdclk can stay as low as possible.
> > > DP/HDMI PPR spec provided slice size < DPCD provided MaxSliceWidth
> 
> Based on the hw recommendation to me it looks like, as @Nikula, Jani suggested
> We can set split to true based on " DP/HDMI PPR spec provided slice size < DPCD provided MaxSliceWidth"
> 
> In such cases we can avoid bumping up to max cdclk for vdsc reasons.
> Will make this change and float V2.
> 
> Thanks,
> Vandita
> > >
> > > Thanks,
> > > Vandita
> > > >
> > > > Ville, any objections?
> > > >
> > > > BR,
> > > > Jani.
> > > >
> > > >
> > > > >
> > > > > Thanks,
> > > > > Vandita
> > > > >>
> > > > >> BR,
> > > > >> Jani
> > > > >>
> > > > >>
> > > > >>
> > > > >>
> > > > >> >
> > > > >> > Stan
> > > > >> >
> > > > >> >>
> > > > >> >> >
> > > > >> >> > BR,
> > > > >> >> > Jani.
> > > > >> >> >
> > > > >> >> > > Another thing is that probably enabling second VDSC is
> > > > >> >> > > cheaper in terms of power consumption, than bumping up the
> > CDCLK.
> > > > >> >> > >
> > > > >> >> > > Stan
> > > > >> >> > >
> > > > >> >> > >> >
> > > > >> >> > >> > Okay , So you suggest that we set the cd clock to max
> > > > >> >> > >> > when we
> > > > >> have such requirement, than enabling the second engine?
> > > > >> >> > >>
> > > > >> >> > >> That seems like the easiest solution. Another option
> > > > >> >> > >> might be to come up with some lower dotclock limit for
> > > > >> >> > >> the use of the second vdsc. But not sure we know where
> > > > >> >> > >> the tipping point is wrt. powr
> > > > >> consumption.
> > > > >> >> > >>
> > > > >> >> > >> --
> > > > >> >> > >> Ville Syrjälä
> > > > >> >> > >> Intel
> > > > >> >> >
> > > > >> >> > --
> > > > >> >> > Jani Nikula, Intel Open Source Graphics Center
> > > > >>
> > > > >> --
> > > > >> Jani Nikula, Intel Open Source Graphics Center
> > > >
> > > > --
> > > > Jani Nikula, Intel Open Source Graphics Center
