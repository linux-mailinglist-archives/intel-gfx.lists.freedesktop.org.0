Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B92340C73
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709656E946;
	Thu, 18 Mar 2021 18:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9AC6E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:06:52 +0000 (UTC)
IronPort-SDR: T2sqP3lGB7T/pCJqW9WZ4tVdJWS8AgGdI7/uOd6MEata0fjIu91iRxrlLjbW1d0rJ+5+x6rsq9
 spRV7ZoOpN6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="177333952"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="177333952"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:06:51 -0700
IronPort-SDR: HjnhsBYeWgaTAzaXecStL7K+WgtrbSJ1FWlPSG37Kulm/E1GpNomg+SfEgAMxQCe9nTk2O4bsb
 2h2URXxwdfWg==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="606278851"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:06:49 -0700
Date: Thu, 18 Mar 2021 20:06:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210318180645.GG4128033@ideak-desk.fi.intel.com>
References: <20210317184901.4029798-1-imre.deak@intel.com>
 <20210317184901.4029798-2-imre.deak@intel.com>
 <YFOO4FOmOB8yp3me@intel.com>
 <20210318174907.GE4128033@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318174907.GE4128033@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/ilk-glk: Fix link training
 on links with LTTPRs
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
Cc: Bodo Graumann <mail@bodograumann.de>,
 Santiago Zarate <santiago.zarate@suse.com>, Takashi Iwai <tiwai@suse.de>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 18, 2021 at 07:49:13PM +0200, Imre Deak wrote:
> On Thu, Mar 18, 2021 at 07:33:20PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Mar 17, 2021 at 08:48:59PM +0200, Imre Deak wrote:
> > > The spec requires to use at least 3.2ms for the AUX timeout period if
> > > there are LT-tunable PHY Repeaters on the link (2.11.2). An upcoming
> > > spec update makes this more specific, by requiring a 3.2ms minimum
> > > timeout period for the LTTPR detection reading the 0xF0000-0xF0007
> > > range (3.6.5.1).
> > =

> > I'm pondering if we could reduce the timeout after having determined
> > wherther LTTPRs are present or not? But maybe that wouldn't really speed
> > up anything since we can't reduce the timeout until after detecting
> > *something*. And once there is something there we shouldn't really get
> > any more timeouts I guess. So probably a totally stupid idea.
> =

> Right, if something is connected it would take anyway as much time as it
> takes for the sink to reply whether or not we decreased the timeout.
> =

> However if nothing is connected, we have the excessive timeout Khaled
> already noticed (160 * 4ms =3D 6.4 sec on ICL+). I think to improve that
> we could scale the total number of retries by making it
> total_timeout/platform_specific_timeout (letting total_timeout=3D2sec for
> instance) or just changing the drm retry logic to be time based instead
> of the number of retries we use atm. =


Doh, reducing simply the HW timeouts would be enough to fix this.

> > Anyways, this seems about the only thing we can do given the limited
> > hw capabilities.
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > > Accordingly disable LTTPR detection until GLK, where the maximum time=
out
> > > we can set is only 1.6ms.
> > > =

> > > Link training in the non-transparent mode is known to fail at least on
> > > some SKL systems with a WD19 dock on the link, which exposes an LTTPR
> > > (see the References below). While this could have different reasons
> > > besides the too short AUX timeout used, not detecting LTTPRs (and so =
not
> > > using the non-transparent LT mode) fixes link training on these syste=
ms.
> > > =

> > > While at it add a code comment about the platform specific maximum
> > > timeout values.
> > > =

> > > v2: Add a comment about the g4x maximum timeout as well. (Ville)
> > > =

> > > Reported-by: Takashi Iwai <tiwai@suse.de>
> > > Reported-and-tested-by: Santiago Zarate <santiago.zarate@suse.com>
> > > Reported-and-tested-by: Bodo Graumann <mail@bodograumann.de>
> > > References: https://gitlab.freedesktop.org/drm/intel/-/issues/3166
> > > Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode =
link training")
> > > Cc: <stable@vger.kernel.org> # v5.11
> > > Cc: Takashi Iwai <tiwai@suse.de>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_aux.c       |  7 +++++++
> > >  .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++-=
--
> > >  2 files changed, 19 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gp=
u/drm/i915/display/intel_dp_aux.c
> > > index eaebf123310a..10fe17b7280d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > > @@ -133,6 +133,7 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *=
intel_dp,
> > >  	else
> > >  		precharge =3D 5;
> > >  =

> > > +	/* Max timeout value on G4x-BDW: 1.6ms */
> > >  	if (IS_BROADWELL(dev_priv))
> > >  		timeout =3D DP_AUX_CH_CTL_TIME_OUT_600us;
> > >  	else
> > > @@ -159,6 +160,12 @@ static u32 skl_get_aux_send_ctl(struct intel_dp =
*intel_dp,
> > >  	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> > >  	u32 ret;
> > >  =

> > > +	/*
> > > +	 * Max timeout values:
> > > +	 * SKL-GLK: 1.6ms
> > > +	 * CNL: 3.2ms
> > > +	 * ICL+: 4ms
> > > +	 */
> > >  	ret =3D DP_AUX_CH_CTL_SEND_BUSY |
> > >  	      DP_AUX_CH_CTL_DONE |
> > >  	      DP_AUX_CH_CTL_INTERRUPT |
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/=
drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 19ba7c7cbaab..c0e25c75c105 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -82,6 +82,18 @@ static void intel_dp_read_lttpr_phy_caps(struct in=
tel_dp *intel_dp,
> > >  =

> > >  static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_d=
p)
> > >  {
> > > +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > > +
> > > +	if (intel_dp_is_edp(intel_dp))
> > > +		return false;
> > > +
> > > +	/*
> > > +	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> > > +	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
> > > +	 */
> > > +	if (INTEL_GEN(i915) < 10)
> > > +		return false;
> > > +
> > >  	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> > >  					  intel_dp->lttpr_common_caps) < 0) {
> > >  		memset(intel_dp->lttpr_common_caps, 0,
> > > @@ -127,9 +139,6 @@ int intel_dp_lttpr_init(struct intel_dp *intel_dp)
> > >  	bool ret;
> > >  	int i;
> > >  =

> > > -	if (intel_dp_is_edp(intel_dp))
> > > -		return 0;
> > > -
> > >  	ret =3D intel_dp_read_lttpr_common_caps(intel_dp);
> > >  	if (!ret)
> > >  		return 0;
> > > -- =

> > > 2.25.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
