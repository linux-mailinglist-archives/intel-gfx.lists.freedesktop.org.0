Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EE12138FD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 12:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584206EB53;
	Fri,  3 Jul 2020 10:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B676EB53
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 10:56:26 +0000 (UTC)
IronPort-SDR: W3qRFcV/D+NqwvdnyrYlv4TqHmhGtRgZF924WWUelGPo4qq2BDhtyPSQ5xx9rTpV74mGJ3mnXk
 O3YNW6HJdd7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="208644281"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="208644281"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 03:56:26 -0700
IronPort-SDR: SAFFYdZoEyDYuuvhcDyrYApCmi+ZiKzdcCV1O0el036pYYmip+ThECSqckaHqYnLddtjvYoC6m
 xQRWVVnaI6QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="282268796"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 03 Jul 2020 03:56:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Jul 2020 13:56:23 +0300
Date: Fri, 3 Jul 2020 13:56:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200703105623.GJ6112@intel.com>
References: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
 <20200702182450.6804-2-ville.syrjala@linux.intel.com>
 <20200702192741.GA32432@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702192741.GA32432@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the training pattern
 debug print
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 02, 2020 at 12:27:42PM -0700, Manasi Navare wrote:
> On Thu, Jul 02, 2020 at 09:24:50PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Currently we claim to use TPS7 when using TPS4. That is just
> > confusing, so let's fix the debug print.
> > =

> > And while we're touching this let's add the customary
> > encoder id/name as well.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++-----
> >  1 file changed, 21 insertions(+), 5 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 5ac182357fc9..eba97b1f5839 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4353,17 +4353,33 @@ void intel_dp_set_signal_levels(struct intel_dp=
 *intel_dp)
> >  	intel_dp->set_signal_levels(intel_dp);
> >  }
> >  =

> > +static char dp_training_pattern_name(u8 train_pat)
> > +{
> > +	switch (train_pat) {
> > +	case DP_TRAINING_PATTERN_1:
> > +	case DP_TRAINING_PATTERN_2:
> > +	case DP_TRAINING_PATTERN_3:
> > +		return '0' + train_pat;
> > +	case DP_TRAINING_PATTERN_4:
> > +		return '4';
> > +	default:
> > +		return '?';
> =

> Shouldnt this be a WARN? If we just return a ? it might result into failu=
re without any warn

Only if decide that this functions's purpose is to validate the rest of
the code isn't broken and using bogus training patterns.

> =

> Other than that I like that now it will say TPS4 instead of misleading TP=
S7
> So with a default WARN,
> =

> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> =

> Manasi
> =

> > +	}
> > +}
> > +
> >  void
> >  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
> >  				       u8 dp_train_pat)
> >  {
> > -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > -	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
> > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	u8 train_pat =3D dp_train_pat & drm_dp_training_pattern_mask(intel_dp=
->dpcd);
> >  =

> > -	if (dp_train_pat & train_pat_mask)
> > +	if (train_pat)
> >  		drm_dbg_kms(&dev_priv->drm,
> > -			    "Using DP training pattern TPS%d\n",
> > -			    dp_train_pat & train_pat_mask);
> > +			    "[ENCODER:%d:%s] Using DP training pattern TPS%c\n",
> > +			    encoder->base.base.id, encoder->base.name,
> > +			    dp_training_pattern_name(train_pat));
> >  =

> >  	intel_dp->set_link_train(intel_dp, dp_train_pat);
> >  }
> > -- =

> > 2.26.2
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
