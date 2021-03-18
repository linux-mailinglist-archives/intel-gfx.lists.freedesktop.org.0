Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23DC340C6E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264796E932;
	Thu, 18 Mar 2021 18:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53166E932
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:05:29 +0000 (UTC)
IronPort-SDR: mdLZUeBegNzMhTKrV8749mlYAC9sympqfucI8TU2eJpcV0xT+qzgLWPem7qdurti9dk92f31hr
 yzGmrQ6MwPIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274799550"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="274799550"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:05:28 -0700
IronPort-SDR: 3/+8XQA6e+LNogfzwvMcoRWl6Ipael3saBWTyh3ZDRIhMn5bCEcAuj3nTFaGN9kXqjxLR/eJup
 duna0w000XSg==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="413184224"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:05:27 -0700
Date: Thu, 18 Mar 2021 20:05:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210318180523.GF4128033@ideak-desk.fi.intel.com>
References: <20210317184901.4029798-3-imre.deak@intel.com>
 <20210317190149.4032966-1-imre.deak@intel.com>
 <YFOUgp1QvipUwSGR@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFOUgp1QvipUwSGR@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Disable LTTPR support when
 the DPCD rev < 1.4
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 18, 2021 at 07:57:22PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 17, 2021 at 09:01:49PM +0200, Imre Deak wrote:
> > By the specification the 0xF0000-0xF02FF range is only valid when the
> > DPCD revision is 1.4 or higher. Disable LTTPR support if this isn't so.
> > =

> > Trying to detect LTTPRs returned corrupted values for the above DPCD
> > range at least on a Skylake host with an LG 43UD79-B monitor with a DPCD
> > revision 1.2 connected.
> > =

> > v2: Add the actual version check.
> > =

> > Fixes: 7b2a4ab8b0ef ("drm/i915: Switch to LTTPR transparent mode link t=
raining")
> > Cc: <stable@vger.kernel.org> # v5.11
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> >  .../drm/i915/display/intel_dp_link_training.c | 48 ++++++++++++++-----
> >  .../drm/i915/display/intel_dp_link_training.h |  2 +-
> >  3 files changed, 39 insertions(+), 15 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index b6b5776f5a66..873684da0cd4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3711,9 +3711,7 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
> >  {
> >  	int ret;
> >  =

> > -	intel_dp_lttpr_init(intel_dp);
> > -
> > -	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd))
> > +	if (intel_dp_init_lttpr_and_dprx_caps(intel_dp) < 0)
> >  		return false;
> >  =

> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index c0e25c75c105..5a821d644e9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -35,6 +35,11 @@ intel_dp_dump_link_status(struct drm_device *drm,
> >  		    link_status[3], link_status[4], link_status[5]);
> >  }
> >  =

> > +static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
> > +{
> > +	memset(&intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common=
_caps));
> > +}
> > +
> >  static void intel_dp_reset_lttpr_count(struct intel_dp *intel_dp)
> >  {
> >  	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_CNT -
> > @@ -96,8 +101,7 @@ static bool intel_dp_read_lttpr_common_caps(struct i=
ntel_dp *intel_dp)
> >  =

> >  	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> >  					  intel_dp->lttpr_common_caps) < 0) {
> > -		memset(intel_dp->lttpr_common_caps, 0,
> > -		       sizeof(intel_dp->lttpr_common_caps));
> > +		intel_dp_reset_lttpr_common_caps(intel_dp);
> >  		return false;
> >  	}
> >  =

> > @@ -119,30 +123,49 @@ intel_dp_set_lttpr_transparent_mode(struct intel_=
dp *intel_dp, bool enable)
> >  }
> >  =

> >  /**
> > - * intel_dp_lttpr_init - detect LTTPRs and init the LTTPR link trainin=
g mode
> > + * intel_dp_init_lttpr_and_dprx_caps - detect LTTPR and DPRX caps, ini=
t the LTTPR link training mode
> >   * @intel_dp: Intel DP struct
> >   *
> > - * Read the LTTPR common capabilities, switch to non-transparent link =
training
> > - * mode if any is detected and read the PHY capabilities for all detec=
ted
> > - * LTTPRs. In case of an LTTPR detection error or if the number of
> > + * Read the LTTPR common and DPRX capabilities and switch to non-trans=
parent
> > + * link training mode if any is detected and read the PHY capabilities=
 for all
> > + * detected LTTPRs. In case of an LTTPR detection error or if the numb=
er of
> >   * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
> >   * transparent mode link training mode.
> >   *
> >   * Returns:
> > - *   >0  if LTTPRs were detected and the non-transparent LT mode was s=
et
> > + *   >0  if LTTPRs were detected and the non-transparent LT mode was s=
et. The
> > + *       DPRX capabilities are read out.
> >   *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case o=
f a
> > - *       detection failure and the transparent LT mode was set
> > + *       detection failure and the transparent LT mode was set. The DP=
RX
> > + *       capabilities are read out.
> > + *   <0  Reading out the DPRX capabilities failed.
> >   */
> > -int intel_dp_lttpr_init(struct intel_dp *intel_dp)
> > +int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> >  {
> >  	int lttpr_count;
> >  	bool ret;
> >  	int i;
> >  =

> >  	ret =3D intel_dp_read_lttpr_common_caps(intel_dp);
> > +
> > +	/* The DPTX shall read the DRPX caps after LTTPR detection. */
> > +	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) {
> > +		intel_dp_reset_lttpr_common_caps(intel_dp);
> > +		return -EIO;
> > +	}
> > +
> >  	if (!ret)
> >  		return 0;
> >  =

> > +	/*
> > +	 * The 0xF0000-0xF02FF range is only valid if the DPCD revision is
> > +	 * at least 1.4.
> > +	 */
> > +	if (intel_dp->dpcd[DP_DPCD_REV] < 0x14) {
> > +		intel_dp_reset_lttpr_common_caps(intel_dp);
> > +		return 0;
> > +	}
> =

> Slight chicken vs. egg I guess. Seems ok

Yes, reading 0xF0000-0xF0007 has a side effect and I suppose the LTTPRs
could change something in the returned DPRX caps, depending on whether
the read happened or not.

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +
> >  	lttpr_count =3D drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
> >  	/*
> >  	 * Prevent setting LTTPR transparent mode explicitly if no LTTPRs are
> > @@ -182,7 +205,7 @@ int intel_dp_lttpr_init(struct intel_dp *intel_dp)
> >  =

> >  	return lttpr_count;
> >  }
> > -EXPORT_SYMBOL(intel_dp_lttpr_init);
> > +EXPORT_SYMBOL(intel_dp_init_lttpr_and_dprx_caps);
> >  =

> >  static u8 dp_voltage_max(u8 preemph)
> >  {
> > @@ -817,7 +840,10 @@ void intel_dp_start_link_train(struct intel_dp *in=
tel_dp,
> >  	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
> >  	 * HW state readout is added.
> >  	 */
> > -	int lttpr_count =3D intel_dp_lttpr_init(intel_dp);
> > +	int lttpr_count =3D intel_dp_init_lttpr_and_dprx_caps(intel_dp);
> > +
> > +	if (lttpr_count < 0)
> > +		return;
> >  =

> >  	if (!intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count))
> >  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.h
> > index 6a1f76bd8c75..9cb7c28027f0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > @@ -11,7 +11,7 @@
> >  struct intel_crtc_state;
> >  struct intel_dp;
> >  =

> > -int intel_dp_lttpr_init(struct intel_dp *intel_dp);
> > +int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
> >  =

> >  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> >  			       const struct intel_crtc_state *crtc_state,
> > -- =

> > 2.25.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
