Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8A91CA769
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 11:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23ACB6E054;
	Fri,  8 May 2020 09:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3344B6E054
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 09:44:33 +0000 (UTC)
IronPort-SDR: KHMYPovJIkrzGeYWPZ3bv0sy5IUuSL5hzcBLpCsIi5OZ3BCfXrvuIHg6qu3ISmN3zkuYtrLNDg
 +8DwFaadIfNA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 02:44:32 -0700
IronPort-SDR: sqqplKrSPW6O/RZUnQdQmU9/cmRqRngwj6pMVVh6Lwif9PcA4cqDrO9gOtVOpvU33Co8bf6/gV
 onZCPn4trF9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="249582497"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 08 May 2020 02:44:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 May 2020 12:44:29 +0300
Date: Fri, 8 May 2020 12:44:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200508094429.GG6112@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-15-matthew.d.roper@intel.com>
 <20200507120430.GD6112@intel.com>
 <20200507180533.GA837377@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507180533.GA837377@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 14/22] drm/i915/rkl: provide port/phy
 mapping for vbt
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 07, 2020 at 11:05:33AM -0700, Matt Roper wrote:
> On Thu, May 07, 2020 at 03:04:30PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, May 04, 2020 at 03:52:19PM -0700, Matt Roper wrote:
> > > From: Lucas De Marchi <lucas.demarchi@intel.com>
> > > =

> > > RKL uses the DDI A, DDI B, DDI USBC1, DDI USBC2 from the DE point of
> > > view, so all DDI/pipe/transcoder register use these indexes to refer =
to
> > > them. Combo phy and IO functions follow another namespace that we keep
> > > as "enum phy". The VBT in theory would use the DE point of view, but
> > > that does not happen in practice.
> > > =

> > > Provide a table to convert the child devices to the "correct" port
> > > numbering we use. Now this is the output we get while reading the VBT:
> > > =

> > > DDIA:
> > > [drm:intel_bios_port_aux_ch [i915]] using AUX A for port A (VBT)
> > > [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:=
275:DDI A]
> > > [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCO=
DER:275:DDI A]
> > > [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x1 for port A (=
VBT)
> > > =

> > > DDIB:
> > > [drm:intel_bios_port_aux_ch [i915]] using AUX B for port B (platform =
default)
> > > [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCO=
DER:291:DDI B]
> > > [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x2 for port B (=
VBT)
> > > =

> > > DDI USBC1:
> > > [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (VBT)
> > > [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:=
295:DDI D]
> > > [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCO=
DER:295:DDI D]
> > > [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x3 for port D (=
VBT)
> > > =

> > > DDI USBC2:
> > > [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (VBT)
> > > [drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:=
306:DDI E]
> > > [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCO=
DER:306:DDI E]
> > > [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port E (=
VBT)
> > > =

> > > Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
> > > Cc: Aditya Swarup <aditya.swarup@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bios.c | 72 ++++++++++++++++-----=
--
> > >  1 file changed, 51 insertions(+), 21 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
> > > index 839124647202..4f1a72a90b8f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -1619,30 +1619,18 @@ static u8 map_ddc_pin(struct drm_i915_private=
 *dev_priv, u8 vbt_pin)
> > >  	return 0;
> > >  }
> > >  =

> > > -static enum port dvo_port_to_port(u8 dvo_port)
> > > +static enum port __dvo_port_to_port(int n_ports, int n_dvo,
> > > +				    const int port_mapping[][3], u8 dvo_port)
> > >  {
> > > -	/*
> > > -	 * Each DDI port can have more than one value on the "DVO Port" fie=
ld,
> > > -	 * so look for all the possible values for each port.
> > > -	 */
> > > -	static const int dvo_ports[][3] =3D {
> > > -		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1},
> > > -		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1},
> > > -		[PORT_C] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1},
> > > -		[PORT_D] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1},
> > > -		[PORT_E] =3D { DVO_PORT_CRT, DVO_PORT_HDMIE, DVO_PORT_DPE},
> > > -		[PORT_F] =3D { DVO_PORT_HDMIF, DVO_PORT_DPF, -1},
> > > -		[PORT_G] =3D { DVO_PORT_HDMIG, DVO_PORT_DPG, -1},
> > > -	};
> > >  	enum port port;
> > >  	int i;
> > >  =

> > > -	for (port =3D PORT_A; port < ARRAY_SIZE(dvo_ports); port++) {
> > > -		for (i =3D 0; i < ARRAY_SIZE(dvo_ports[port]); i++) {
> > > -			if (dvo_ports[port][i] =3D=3D -1)
> > > +	for (port =3D PORT_A; port < n_ports; port++) {
> > > +		for (i =3D 0; i < n_dvo; i++) {
> > > +			if (port_mapping[port][i] =3D=3D -1)
> > >  				break;
> > >  =

> > > -			if (dvo_port =3D=3D dvo_ports[port][i])
> > > +			if (dvo_port =3D=3D port_mapping[port][i])
> > >  				return port;
> > >  		}
> > >  	}
> > > @@ -1650,6 +1638,48 @@ static enum port dvo_port_to_port(u8 dvo_port)
> > >  	return PORT_NONE;
> > >  }
> > >  =

> > > +static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
> > > +				  u8 dvo_port)
> > > +{
> > > +	/*
> > > +	 * Each DDI port can have more than one value on the "DVO Port" fie=
ld,
> > > +	 * so look for all the possible values for each port.
> > > +	 */
> > > +	static const int port_mapping[][3] =3D {
> > > +		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
> > > +		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
> > > +		[PORT_C] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
> > > +		[PORT_D] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> > > +		[PORT_E] =3D { DVO_PORT_CRT, DVO_PORT_HDMIE, -1 },
> > > +		[PORT_F] =3D { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
> > > +		[PORT_G] =3D { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
> > > +	};
> > > +	/*
> > > +	 * Bspec lists the ports as A, B, C, D - however internally in our
> > > +	 * driver we keep them as PORT_A, PORT_B, PORT_D and PORT_E so the
> > > +	 * registers in Display Engine match the right offsets. Apply the
> > > +	 * mapping here to translate from VBT to internal convention.
> > > +	 */
> > > +	static const int rkl_port_mapping[][3] =3D {
> > > +		[PORT_A] =3D { DVO_PORT_HDMIA, DVO_PORT_DPA, -1 },
> > > +		[PORT_B] =3D { DVO_PORT_HDMIB, DVO_PORT_DPB, -1 },
> > > +		[PORT_C] =3D { -1 },
> > > +		[PORT_D] =3D { DVO_PORT_HDMIC, DVO_PORT_DPC, -1 },
> > > +		[PORT_E] =3D { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
> > > +	};
> > > +
> > > +	if (IS_ROCKETLAKE(dev_priv))
> > > +		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
> > > +					  ARRAY_SIZE(rkl_port_mapping[0]),
> > > +					  rkl_port_mapping,
> > > +					  dvo_port);
> > > +	else
> > > +		return __dvo_port_to_port(ARRAY_SIZE(port_mapping),
> > > +					  ARRAY_SIZE(port_mapping[0]),
> > > +					  port_mapping,
> > > +					  dvo_port);
> > > +}
> > =

> > What a horror show. To me it looks like we should just use the
> > phy here. Or would that break something else?
> =

> That would break EHL since its VBT uses the DDI ("D") rather than the
> PHY.
> =

> So today we have two platforms (EHL and RKL) that have DDI !=3D PHY, but
> the VBT handling of them isn't consistent.  :-(

Sigh.

I wonder if we should just add encoder->vbt_port or something along
those lines. Unfortunately even that still needs some mapping tricks
due to the HDMI vs. DP dvo_port difference.

In the mantime I guess this is hidden well wnough that it won't bother
too many people until the next platform that needs these hacks comes
along.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> =

> Matt
> =

> > =

> > > +
> > >  static void parse_ddi_port(struct drm_i915_private *dev_priv,
> > >  			   struct display_device_data *devdata,
> > >  			   u8 bdb_version)
> > > @@ -1659,7 +1689,7 @@ static void parse_ddi_port(struct drm_i915_priv=
ate *dev_priv,
> > >  	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt;
> > >  	enum port port;
> > >  =

> > > -	port =3D dvo_port_to_port(child->dvo_port);
> > > +	port =3D dvo_port_to_port(dev_priv, child->dvo_port);
> > >  	if (port =3D=3D PORT_NONE)
> > >  		return;
> > >  =

> > > @@ -2603,10 +2633,10 @@ enum aux_ch intel_bios_port_aux_ch(struct drm=
_i915_private *dev_priv,
> > >  		aux_ch =3D AUX_CH_B;
> > >  		break;
> > >  	case DP_AUX_C:
> > > -		aux_ch =3D AUX_CH_C;
> > > +		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_D : AUX_CH_C;
> > >  		break;
> > >  	case DP_AUX_D:
> > > -		aux_ch =3D AUX_CH_D;
> > > +		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_E : AUX_CH_D;
> > >  		break;
> > >  	case DP_AUX_E:
> > >  		aux_ch =3D AUX_CH_E;
> > > -- =

> > > 2.24.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> =

> -- =

> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
