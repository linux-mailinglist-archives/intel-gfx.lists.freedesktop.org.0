Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C34E86ED147
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 17:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED6B10E53A;
	Mon, 24 Apr 2023 15:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D16A10E535
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 15:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682350050; x=1713886050;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z47KdjMN1A7ZY87G8q+G+/xR7FhYmypDY1/OgQ00caY=;
 b=XVKmwUa7RodNclmwlOxWd/m4eyXtBQ9woWZV6bZmMUQJWjfd9RP3Rao3
 lUfAyE5mOWWW7p0UWr+73MCRspbghdPLqv3qvvqtgAcdjfN+CA9f4g/Po
 EDz83aKUJlbNLHzpVEz47vP2EKWDdCyqt94O1z+vvS86GIX9zh1vZJZiF
 AhH6UjXL2wLlTgu52Ew7SFPEhcdvYk18lxpowFUl6nBzqExMxlOEBHeg2
 QqyOJnj+qQU9kPWJnwvRxYULoCAin+Cl5SgKaOEfGJgNlp8I6id2n5ftx
 gXnGLsRMcpsHzMYOUMfwD8PNaho2Tr37xOcHEaQfGEO+hMGUzzfoxrY9z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="432755963"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="432755963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 08:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686888605"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="686888605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 08:27:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 18:27:25 +0300
Date: Mon, 24 Apr 2023 18:27:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <ZEaf3aaTJVJcEiCp@intel.com>
References: <20230417100021.3205172-1-arun.r.murthy@intel.com>
 <20230419022522.3457924-1-arun.r.murthy@intel.com>
 <875y9s1gsl.fsf@intel.com>
 <DM6PR11MB31774133756416CC0B8D0F75BA629@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87v8hsyz4k.fsf@intel.com>
 <DM6PR11MB3177F829830F9B226D7D560BBA629@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177F829830F9B226D7D560BBA629@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
 requirement
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

On Wed, Apr 19, 2023 at 10:07:46AM +0000, Murthy, Arun R wrote:
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Wednesday, April 19, 2023 3:26 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com
> > Subject: RE: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
> > requirement
> > 
> > On Wed, 19 Apr 2023, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> > >> -----Original Message-----
> > >> From: Nikula, Jani <jani.nikula@intel.com>
> > >> Sent: Wednesday, April 19, 2023 12:48 PM
> > >> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > >> gfx@lists.freedesktop.org
> > >> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > >> Subject: Re: [RESEND PATCHv2] drm/i915/display/dp: 128/132b LT
> > >> requirement
> > >>
> > >> On Wed, 19 Apr 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > >> > For 128b/132b LT prior to LT DPTX should set power state, DP
> > >> > channel coding and then link rate.
> > >> >
> > >> > v2: added separate function to avoid code duplication(Jani N)
> > >> >
> > >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > >>
> > >> RESEND for what reason?
> > > Typo is sending V2 patch hence corrected and sent it again.
> > >
> > >>
> > >> Two v2 and neither fixes
> > >> https://lore.kernel.org/r/87o7nmergw.fsf@intel.com
> > > This is pointing to the v1 patch.
> > > V2 patch addressing review comments can be located @
> > > https://lore.kernel.org/all/20230419022522.3457924-1-arun.r.murthy@int
> > > el.com/
> > 
> > Argh.
> > 
> > RESEND means you're sending the exact same patch again. Hence *re-send*.
> > That's what I thought. That's what everyone would think.
> > 
> > It's even documented in submitting-patches.rst [1].
> > 
> > ---
> > 
> > There's still the question of whether we could just change the order for
> > 8b/10b too [2]. On IRC, Ville thinks we could, "i don't think there is any order
> > specified. just use the same alwas imo".
> > 
> Spec DP2.1 section 3.5.1.2 (for 8b/10b LT)
> write the following Link Configuration parameters:
> * LINK_BW_SET register (DPCD 00100h)
> * LANE_COUNT_SET field in the LANE_COUNT_SET register (DPCD 00101h[4:0])
> * DOWNSPREAD_CTRL register (DPCD 00107h)
> * MAIN_LINK_CHANNEL_CODING_SET register (DPCD 00108h)

Looks like an unordered list to me

> 
> Whereas for 128b/132b section 3.5.2.16 says
> Prior to link training, a DPTX should perform the following:
> 1 Verify that the SET_POWER_STATE field in the
> SET_POWER_AND_SET_DP_PWR_VOLTAGE register is programmed to D0 normal
> operation (DPCD 00600h[2:0] = 001b).
> 2 Write DPCD 00108h = 02h to select 128b/132b DP channel coding.
> 3 Program the target link rate and lane count by way of an AUX write transaction to
> DPCD 00100h and 00101h, respectively

whereas this is an ordered list.

> 
> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > 
> > BR,
> > Jani.
> > 
> > 
> > [1] https://docs.kernel.org/process/submitting-patches.html#don-t-get-
> > discouraged-or-impatient
> > [2] https://lore.kernel.org/r/87r0siernf.fsf@intel.com
> > 
> > 
> > 
> > 
> > 
> > 
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >>
> > >> BR,
> > >> Jani.
> > >>
> > >>
> > >> > ---
> > >> >  .../drm/i915/display/intel_dp_link_training.c | 62
> > >> > +++++++++++++------
> > >> >  1 file changed, 44 insertions(+), 18 deletions(-)
> > >> >
> > >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > >> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > >> > index 6aa4ae5e7ebe..e5809cf7d0c4 100644
> > >> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > >> > @@ -637,6 +637,37 @@ static bool
> > >> intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
> > >> >     return true;
> > >> >  }
> > >> >
> > >> > +static void
> > >> > +intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
> > >> > +                           const struct intel_crtc_state *crtc_state) {
> > >> > +   u8 link_config[2];
> > >> > +
> > >> > +   link_config[0] = crtc_state->vrr.flipline ?
> > >> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> > >> > +   link_config[1] = intel_dp_is_uhbr(crtc_state) ?
> > >> > +                    DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> > >> > +   drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> > >> link_config,
> > >> > +2); }
> > >> > +
> > >> > +static void
> > >> > +intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
> > >> > +                       const struct intel_crtc_state *crtc_state,
> > >> > +                       u8 link_bw, u8 rate_select) {
> > >> > +   u8 link_config[2];
> > >> > +
> > >> > +   /* Write the link configuration data */
> > >> > +   link_config[0] = link_bw;
> > >> > +   link_config[1] = crtc_state->lane_count;
> > >> > +   if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> > >> > +           link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> > >> > +   drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> > >> 2);
> > >> > +   /* eDP 1.4 rate select method. */
> > >> > +   if (!link_bw)
> > >> > +           drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> > >> > +                             &rate_select, 1); }
> > >> > +
> > >> >  /*
> > >> >   * Prepare link training by configuring the link parameters. On
> > >> > DDI
> > >> platforms
> > >> >   * also enable the port here.
> > >> > @@ -647,7 +678,6 @@ intel_dp_prepare_link_train(struct intel_dp
> > >> > *intel_dp,  {
> > >> >     struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > >> >     struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > >> > -   u8 link_config[2];
> > >> >     u8 link_bw, rate_select;
> > >> >
> > >> >     if (intel_dp->prepare_link_retrain) @@ -686,23 +716,19 @@
> > >> > intel_dp_prepare_link_train(struct intel_dp
> > >> *intel_dp,
> > >> >             drm_dbg_kms(&i915->drm,
> > >> >                         "[ENCODER:%d:%s] Using LINK_RATE_SET value
> > >> %02x\n",
> > >> >                         encoder->base.base.id, encoder->base.name,
> > >> rate_select);
> > >> > -
> > >> > -   /* Write the link configuration data */
> > >> > -   link_config[0] = link_bw;
> > >> > -   link_config[1] = crtc_state->lane_count;
> > >> > -   if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> > >> > -           link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> > >> > -   drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> > >> 2);
> > >> > -
> > >> > -   /* eDP 1.4 rate select method. */
> > >> > -   if (!link_bw)
> > >> > -           drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> > >> > -                             &rate_select, 1);
> > >> > -
> > >> > -   link_config[0] = crtc_state->vrr.flipline ?
> > >> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> > >> > -   link_config[1] = intel_dp_is_uhbr(crtc_state) ?
> > >> > -           DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
> > >> > -   drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> > >> link_config, 2);
> > >> > +   if (intel_dp_is_uhbr(crtc_state)) {
> > >> > +           /*
> > >> > +            * Spec DP2.1 Section 3.5.2.16
> > >> > +            * Prior to LT DPTX should set 128b/132b DP Channel
> > >> > + coding
> > >> and then set link rate
> > >> > +            */
> > >> > +           intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> > >> > +           intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
> > >> > +                                       rate_select);
> > >> > +   } else {
> > >> > +           intel_dp_update_link_bw_set(intel_dp, crtc_state, link_bw,
> > >> > +                                       rate_select);
> > >> > +           intel_dp_update_downspread_ctrl(intel_dp, crtc_state);
> > >> > +   }
> > >> >
> > >> >     return true;
> > >> >  }
> > >>
> > >> --
> > >> Jani Nikula, Intel Open Source Graphics Center
> > 
> > --
> > Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
