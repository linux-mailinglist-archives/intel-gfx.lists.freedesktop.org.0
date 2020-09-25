Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF90E278ED4
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 18:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB256ECD7;
	Fri, 25 Sep 2020 16:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9C86ECD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 16:40:30 +0000 (UTC)
IronPort-SDR: jcH4BkPHbCJ23OXxzsWz529RZqq5HItE2p5JhGPzY5IuVeZvmzjgXhOYYiaEyZFgYsGwh4Eluz
 LNQC5pYodRSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="246366516"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="246366516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 09:40:30 -0700
IronPort-SDR: VO+AlG8ULL1V4K6AfTbCszZjRrg+0wZRjz75PeOuv1oNZPdCqccFBW86udIw/5djZOEPD4Tpwo
 fOp6JKjlioGA==
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="291837898"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 09:40:29 -0700
Date: Fri, 25 Sep 2020 19:40:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200925164025.GA365783@ideak-desk.fi.intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
 <20200924184805.294493-6-imre.deak@intel.com>
 <20200925160350.GS6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925160350.GS6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915: Switch to LTTPR
 transparent mode link training
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

On Fri, Sep 25, 2020 at 07:03:50PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Sep 24, 2020 at 09:48:04PM +0300, Imre Deak wrote:
> > By default LTTPRs should be in transparent link training mode,
> > nevertheless in this patch we switch to this default mode explicitly.
> > =

> > The DP Standard recommends this, supposedly because an LTTPR may be left
> > in the non-transparent mode (by BIOS, previous kernel, or after reset
> > due to a firmware bug). I haven't seen this happening, but let's follow
> > the DP Standard.
> > =

> > v2:
> > - Add a code comment about the explicit disabling of non-transparent
> >   mode.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 ++
> >  .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++++++++++++
> >  .../drm/i915/display/intel_dp_link_training.h |  2 +
> >  4 files changed, 58 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 3d4bf9b6a0a2..b04921eba73b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1280,6 +1280,7 @@ struct intel_dp {
> >  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> >  	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
> >  	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > +	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
> >  	u8 fec_capable;
> >  	/* source rates */
> >  	int num_source_rates;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index b21f42193a11..64bf4aa384d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4726,6 +4726,9 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
> >  {
> >  	int ret;
> >  =

> > +	if (!intel_dp_is_edp(intel_dp))
> > +		intel_dp_lttpr_init(intel_dp);
> =

> I was initially a bit confused why this is before we read dpcd[], but
> looks like the spec says that is the expected order.

Yes. It's strange but reading the spec makes me think that even reading
regs could have side-effects, here the LTTPR caps reading is the first
according to the spec.

Btw, the other less clearly specified things are the order of
(explicitly) switching to transparent mode vs. reading the LTTPR common
caps, and in what case to perform the switch. I decided the correct
order is to read the caps first, and switch unconditionally. The latter
has the downside of an AUX timeout/NAK on platforms w/o LTTPRs, but this
seemed to be the more robust way.

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks. I mucked up the eDP check, missing it from
intel_dp_start_link_train(), will move it to intel_dp_lttpr_init()
instead.

> =

> > +
> >  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd))
> >  		return false;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 38d4553670a1..4f8f42cc25fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -34,6 +34,52 @@ intel_dp_dump_link_status(const u8 link_status[DP_LI=
NK_STATUS_SIZE])
> >  		      link_status[3], link_status[4], link_status[5]);
> >  }
> >  =

> > +static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
> > +{
> > +	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> > +					  intel_dp->lttpr_common_caps) < 0) {
> > +		memset(intel_dp->lttpr_common_caps, 0,
> > +		       sizeof(intel_dp->lttpr_common_caps));
> > +		return false;
> > +	}
> > +
> > +	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> > +		    "LTTPR common capabilities: %*ph\n",
> > +		    (int)sizeof(intel_dp->lttpr_common_caps),
> > +		    intel_dp->lttpr_common_caps);
> > +
> > +	return true;
> > +}
> > +
> > +static bool
> > +intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool en=
able)
> > +{
> > +	u8 val =3D enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> > +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> > +
> > +	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, =
1) =3D=3D 1;
> > +}
> > +
> > +/**
> > + * intel_dp_lttpr_init - detect LTTPRs and init the LTTPR link trainin=
g mode
> > + * @intel_dp: Intel DP struct
> > + *
> > + * Read the LTTPR common capabilities and switch to transparent link t=
raining
> > + * mode.
> > + */
> > +int intel_dp_lttpr_init(struct intel_dp *intel_dp)
> > +{
> > +	intel_dp_read_lttpr_common_caps(intel_dp);
> > +
> > +	/*
> > +	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
> > +	 * non-transparent mode.
> > +	 */
> > +	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
> > +
> > +	return 0;
> > +}
> > +
> >  static u8 dp_voltage_max(u8 preemph)
> >  {
> >  	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> > @@ -471,6 +517,12 @@ static void intel_dp_schedule_fallback_link_traini=
ng(struct intel_dp *intel_dp)
> >   */
> >  void intel_dp_start_link_train(struct intel_dp *intel_dp)
> >  {
> > +	/*
> > +	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
> > +	 * HW state readout is added.
> > +	 */
> > +	intel_dp_lttpr_init(intel_dp);
> > +
> >  	if (!intel_dp_link_train(intel_dp))
> >  		intel_dp_schedule_fallback_link_training(intel_dp);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.h
> > index 518d834dbc98..3536ce73a123 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> > @@ -10,6 +10,8 @@
> >  =

> >  struct intel_dp;
> >  =

> > +int intel_dp_lttpr_init(struct intel_dp *intel_dp);
> > +
> >  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> >  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
> >  void intel_dp_start_link_train(struct intel_dp *intel_dp);
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
