Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CBD3EB41A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 12:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E506E5B4;
	Fri, 13 Aug 2021 10:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBD66E5B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 10:34:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195809699"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="195809699"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 03:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="591076497"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 13 Aug 2021 03:34:31 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 03:34:30 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 16:04:28 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2242.010;
 Fri, 13 Aug 2021 16:04:28 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, "Souza, Jose" <jose.souza@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH 1/5] drm/i915/dp: Fix eDP max rate for display 11+
Thread-Index: AQHXj0C5EQ31Ow6ST0Cfrxz/CsszE6tvm9oAgAGReJA=
Date: Fri, 13 Aug 2021 10:34:28 +0000
Message-ID: <7e6f60a95bbd4b31ab08e7d7c52c7a08@intel.com>
References: <20210812054806.22745-1-animesh.manna@intel.com>
 <20210812054806.22745-2-animesh.manna@intel.com>
 <20210812150400.GC2600583@ideak-desk.fi.intel.com>
In-Reply-To: <20210812150400.GC2600583@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dp: Fix eDP max rate for
 display 11+
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, August 12, 2021 8:34 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Souza, Jose
> <jose.souza@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH 1/5] drm/i915/dp: Fix eDP max rate for display 11+
>=20
> On Thu, Aug 12, 2021 at 11:18:02AM +0530, Animesh Manna wrote:
> > From: Matt Atwood <matthew.s.atwood@intel.com>
> >
> > intel_dp_set_source_rates() calls intel_dp_is_edp(), which is unsafe
> > to use before intel_encoder->type is set. This causes incorrect max
> > source rate to be used for display 11+. On EHL and JSL, HBR3 is used
> > instead of HBR2, and on the other affected platforms, HBR2 is used inst=
ead of
> HBR3.
> >
> > Move intel_dp_set_source_rates() to after intel_encoder->type is set.
> > Add comment to intel_dp_is_edp() describing unsafe usages. Cleanup
> > intel_dp_init_connector() while at it.
> >
> > Note: The same change was originally added as commit 680c45c767f6
> > ("drm/i915/dp: Correctly advertise HBR3 for GEN11+"), but later
> > reverted due to issues in CI in commit d3913019602e ("Revert "drm/i915/=
dp:
> > Correctly advertise HBR3 for GEN11+"").
>=20
> AFAIR, this issue was that TGL started to use TPS4, which somehow broke l=
ink
> training on the panel connected to that box. But I think TPS4 is supporte=
d on
> TGL, regardless of the link rate used, so this change looks ok wrt. that.
>=20
> As a side-note allowing TPS4 only on ports supporting HBR3 looks incorrec=
t, I
> think TPS4 is either supported or not by a platform regardless of what is=
 the max
> link rate. Due to that we may stop using
> TPS4 on EHL/JSL after this patchset, but I think that can be fixed separa=
tely.

Ok. HBR3 needs TPS4, maybe lttpr also need TPS4 which need to be handled.

>=20
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>=20
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for review.

Regards,
Animesh
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 28
> > ++++++++++---------------
> >  1 file changed, 11 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 75d4ebc66941..4df56af36b3f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -100,6 +100,8 @@ static const u8 valid_dsc_slicecount[] =3D {1, 2, 4=
};
> >   *
> >   * If a CPU or PCH DP output is attached to an eDP panel, this functio=
n
> >   * will return true, and false otherwise.
> > + *
> > + * This function is not safe to use prior to encoder type being set.
> >   */
> >  bool intel_dp_is_edp(struct intel_dp *intel_dp)  { @@ -5294,8 +5296,6
> > @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  		     intel_encoder->base.name))
> >  		return false;
> >
> > -	intel_dp_set_source_rates(intel_dp);
> > -
> >  	intel_dp->reset_link_params =3D true;
> >  	intel_dp->pps.pps_pipe =3D INVALID_PIPE;
> >  	intel_dp->pps.active_pipe =3D INVALID_PIPE; @@ -5311,28 +5311,22 @@
> > intel_dp_init_connector(struct intel_digital_port *dig_port,
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
> >
> > +	intel_dp_set_source_rates(intel_dp);
> > +
> >  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		intel_dp->pps.active_pipe =3D vlv_active_pipe(intel_dp);
> >
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
> > --
> > 2.29.0
> >
