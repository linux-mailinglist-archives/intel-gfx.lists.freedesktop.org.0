Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D0A221637
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 22:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082356EC14;
	Wed, 15 Jul 2020 20:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134DD6EC14
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 20:27:28 +0000 (UTC)
IronPort-SDR: FtAQifffpWUWsE6o7AU2a2m1k3avKAr2C9LwE0Cb9BGs6vVrn1tuQeAHs7mK0rtgqug0pZAcEJ
 OQtLGY+gC57g==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="136712904"
X-IronPort-AV: E=Sophos;i="5.75,356,1589266800"; d="scan'208";a="136712904"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 13:27:27 -0700
IronPort-SDR: 85gluGGg9xVPUV1wp+AwUTpthGOESft2oZmBYUM82u2xBt+PPmuveYbOGcSuVuTdkSoo0x94fB
 wMg/pyPmV+sA==
X-IronPort-AV: E=Sophos;i="5.75,356,1589266800"; d="scan'208";a="460217719"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 13:27:25 -0700
Date: Wed, 15 Jul 2020 23:27:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200715202715.GB25551@ideak-desk.fi.intel.com>
References: <20200715162931.30168-1-imre.deak@intel.com>
 <20200715191514.GA23149@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715191514.GA23149@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] Revert "Revert "drm/i915/dp: Correctly
 advertise HBR3 for GEN11+""
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

On Wed, Jul 15, 2020 at 12:15:35PM -0700, Manasi Navare wrote:
> On Wed, Jul 15, 2020 at 07:29:31PM +0300, Imre Deak wrote:
> > The problem the reverted patch revealed could've been fixed by commit
> > 619ad4874585 ("drm/i915/ddi: Don't frob the DP link scramble disabling =
flag")
> > in particular because the revealed problem (at least in one case) happe=
ned
> > when switching to the TPS4 training pattern, which needs scrambling.
> > =

> > Let's try applying the HBR3 fix again.

The link training failure still happens the same way on fi-icl-u2.

> > =

> > This reverts commit d3913019602e32ef6fbba8eb0167e83250cdab22.
> > =

> > Cc: Matt Atwood <matthew.s.atwood@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> =

> Makes sense since the problem occured only in CI, not on
> the local testing done by Matt on his eDP panel.
> =

> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> =

> Manasi
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++---------------
> >  1 file changed, 11 insertions(+), 17 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index d6295eb20b63..a5ab405d3a12 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -137,6 +137,8 @@ static const u8 valid_dsc_slicecount[] =3D {1, 2, 4=
};
> >   *
> >   * If a CPU or PCH DP output is attached to an eDP panel, this function
> >   * will return true, and false otherwise.
> > + *
> > + * This function is not safe to use prior to encoder type being set.
> >   */
> >  bool intel_dp_is_edp(struct intel_dp *intel_dp)
> >  {
> > @@ -8157,8 +8159,6 @@ intel_dp_init_connector(struct intel_digital_port=
 *dig_port,
> >  		     intel_encoder->base.name))
> >  		return false;
> >  =

> > -	intel_dp_set_source_rates(intel_dp);
> > -
> >  	intel_dp->reset_link_params =3D true;
> >  	intel_dp->pps_pipe =3D INVALID_PIPE;
> >  	intel_dp->active_pipe =3D INVALID_PIPE;
> > @@ -8174,28 +8174,22 @@ intel_dp_init_connector(struct intel_digital_po=
rt *dig_port,
> >  		 */
> >  		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
> >  		type =3D DRM_MODE_CONNECTOR_eDP;
> > +		intel_encoder->type =3D INTEL_OUTPUT_EDP;
> > +
> > +		/* eDP only on port B and/or C on vlv/chv */
> > +		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> > +				      IS_CHERRYVIEW(dev_priv)) &&
> > +				port !=3D PORT_B && port !=3D PORT_C))
> > +			return false;
> >  	} else {
> >  		type =3D DRM_MODE_CONNECTOR_DisplayPort;
> >  	}
> >  =

> > +	intel_dp_set_source_rates(intel_dp);
> > +
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		intel_dp->active_pipe =3D vlv_active_pipe(intel_dp);
> >  =

> > -	/*
> > -	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> > -	 * for DP the encoder type can be set by the caller to
> > -	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
> > -	 */
> > -	if (type =3D=3D DRM_MODE_CONNECTOR_eDP)
> > -		intel_encoder->type =3D INTEL_OUTPUT_EDP;
> > -
> > -	/* eDP only on port B and/or C on vlv/chv */
> > -	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> > -			      IS_CHERRYVIEW(dev_priv)) &&
> > -			intel_dp_is_edp(intel_dp) &&
> > -			port !=3D PORT_B && port !=3D PORT_C))
> > -		return false;
> > -
> >  	drm_dbg_kms(&dev_priv->drm,
> >  		    "Adding %s connector on [ENCODER:%d:%s]\n",
> >  		    type =3D=3D DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
> > -- =

> > 2.23.1
> > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
