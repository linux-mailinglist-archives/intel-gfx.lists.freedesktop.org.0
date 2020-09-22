Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE4827479F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 19:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7679B6E2B8;
	Tue, 22 Sep 2020 17:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1083A6E2B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 17:41:42 +0000 (UTC)
IronPort-SDR: MGzN9+lQ9YgsSWvrWGaAI/aM6R9wUDNrfGfYhrbeTj9IOY3NbbbuLraUHZ61b5eYnLx5fiWqSV
 Vru6ObrJAxgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158047396"
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="158047396"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 10:41:39 -0700
IronPort-SDR: Zy8E3kbAZlTbAfL2mDouaeXmAG5TYx5sAM35WVoxXqsRE7pwgQARR5U4h3IF8QAbY9pI30yFV/
 ZL7QmkELWarw==
X-IronPort-AV: E=Sophos;i="5.77,291,1596524400"; d="scan'208";a="454574167"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 10:41:38 -0700
Date: Tue, 22 Sep 2020 20:41:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200922174128.GK23028@ideak-desk.fi.intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-5-imre.deak@intel.com>
 <20200922165420.GU6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922165420.GU6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Factor out a helper to
 disable the DPCD training pattern
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 07:54:20PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 22, 2020 at 03:51:03PM +0300, Imre Deak wrote:
> > To prepare for a follow-up LTTPR change factor out a helper to disable
> > the training pattern in DPCD. We'll need to do this for each LTTPR
> > (without programming the port to output the idle pattern) when training
> > in LTTPR non-transparent mode.
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 28 +++++++++++--------
> >  1 file changed, 16 insertions(+), 12 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 0c3809891bd2..6994a32244dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -102,30 +102,34 @@ void intel_dp_get_adjust_train(struct intel_dp *i=
ntel_dp,
> >  		intel_dp->train_set[lane] =3D v | p;
> >  }
> >  =

> > +static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *in=
tel_dp)
> > +{
> > +	u8 val =3D DP_TRAINING_PATTERN_DISABLE;
> > +
> > +	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET, &va=
l, 1) =3D=3D 1;
> > +}
> =

> =

> > +
> >  static bool
> >  intel_dp_set_link_train(struct intel_dp *intel_dp,
> >  			u8 dp_train_pat)
> >  {
> >  	u8 buf[sizeof(intel_dp->train_set) + 1];
> > -	int ret, len;
> > +	int len;
> >  =

> >  	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
> >  =

> > -	buf[0] =3D dp_train_pat;
> >  	if ((dp_train_pat & ~DP_LINK_SCRAMBLING_DISABLE) =3D=3D
> > -	    DP_TRAINING_PATTERN_DISABLE) {
> > +	    DP_TRAINING_PATTERN_DISABLE)
> >  		/* don't write DP_TRAINING_LANEx_SET on disable */
> =

> As mentioned in the other patch I think we're doing things in the wrong
> order here. I suspect it'll be cleaner to just stop doing
> intel_dp_set_link_train(DISABLE) entirely and just have a dedicated
> function for disabling link training. We can then trivially do a
> followup to swap the order of operations to match the spec.

intel_dp_disable_dpcd_training_pattern() would be needed after each
LTTPR link training phase, where the port should not output idle
patterns, that's the only reason for this change.

Do you mean to remove intel_dp_stop_link_train() then and do the idle
pattern programming + corresponding DPCD training pattern disable
programming at the end of the link training sequence (and remove the
DP_TRAINING_PATTERN_DISABLE case handling from above)? I agree with
that, but I see that too as a follow-up material (along with changing
the order as you suggested).


> =

> > -		len =3D 1;
> > -	} else {
> > -		/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> > -		memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
> > -		len =3D intel_dp->lane_count + 1;
> > -	}
> > +		return intel_dp_disable_dpcd_training_pattern(intel_dp);
> >  =

> > -	ret =3D drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> > -				buf, len);
> > +	buf[0] =3D dp_train_pat;
> > +	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> > +	memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
> > +	len =3D intel_dp->lane_count + 1;
> >  =

> > -	return ret =3D=3D len;
> > +	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> > +				 buf, len) =3D=3D len;
> >  }
> >  =

> >  static bool
> > -- =

> > 2.17.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
