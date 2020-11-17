Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C48912B689E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:23:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224806E039;
	Tue, 17 Nov 2020 15:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E0B6E039
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:23:32 +0000 (UTC)
IronPort-SDR: vFk7F8ku950Mi1PMow2jvJljzHud4BQ8wqHMgRS9VlwJbRDUqyIX5FO7DAaOQJ0oevU5ZawJ1d
 NcJzA2buoAAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="235090006"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="235090006"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:23:30 -0800
IronPort-SDR: h0WXIyBS8AzhcQ+VHzCCjT+tKB83bBmEbn+cWrnJaSwkIVMO4yCWaEof5jvMXWv94JlIMhIvmw
 QuEVmh+qnVoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="368125159"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2020 07:23:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Nov 2020 17:23:27 +0200
Date: Tue, 17 Nov 2020 17:23:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201117152327.GE6112@intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-4-ville.syrjala@linux.intel.com>
 <87wnykoxxn.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wnykoxxn.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 03/19] drm/i915: Give DDI encoders even
 better names
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

On Tue, Nov 17, 2020 at 04:33:24PM +0200, Jani Nikula wrote:
> On Wed, 28 Oct 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Let's pimp the DDI encoder->name to reflect what the spec calls them.
> > Ie. on pre-tgl DDI A-F, on tgl+ DDI A-C or DDI TC1-6.
> >
> > Also since each encoder is really a combination of the DDI and the PHY
> > we include the PHY name as well.
> >
> > ICL is a bit special since it already has the two different types
> > of DDIs (combo or TC) but it still calls them just DDI A-F regarless
> > of the type. For that let's add an extra "(TC)" note to remind
> > is which type of DDI it really is.
> >
> > The code is darn ugly, but not sure there's much we can do about it.
> >
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 27 ++++++++++++++++++++++--
> >  1 file changed, 25 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index 24245157dcb9..19b16517a502 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5174,8 +5174,31 @@ void intel_ddi_init(struct drm_i915_private *dev=
_priv, enum port port)
> >  =

> >  	encoder =3D &dig_port->base;
> >  =

> > -	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> > -			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
> > +	if (INTEL_GEN(dev_priv) >=3D 12) {
> > +		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
> > +
> > +		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> > +				 DRM_MODE_ENCODER_TMDS,
> > +				 "DDI %s%c/PHY %s%c",
> > +				 port >=3D PORT_TC1 ? "TC" : "",
> > +				 port >=3D PORT_TC1 ? port_name(port) : port - PORT_TC1 + '1',
> > +				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
> > +				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 +=
 '1');
> =

> Frankly, this is a really ugly way to define encoder names, and it's
> hard to decipher what's actually going on. Even after I see logs with
> obviously bogus names such as:
> =

> [ENCODER:235:DDI ./PHY 0]
> =

> I find it tedious to decipher what exactly is wrong here.
> =

> I guess the 2nd port >=3D PORT_TC1 check should be reversed, but it
> doesn't exactly give me confidence about the rest.

Doh. Yeah, that is definitely the case. The second tc_port check
seems equally crap. Maybe I just don't know how to use ?: anymore :/

I guess a few extra macros/functions could clean it up a bit. The
other option would be just the fully declarative approach that was
discussed before. But there's an annoying amount of runtime
detection going on with port init so not sure how much we can
declare up front.

> =

> BR,
> Jani.
> =

> =

> > +	} else if (INTEL_GEN(dev_priv) >=3D 11) {
> > +		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
> > +
> > +		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> > +				 DRM_MODE_ENCODER_TMDS,
> > +				 "DDI %c%s/PHY %s%c",
> > +				 port_name(port),
> > +				 port >=3D PORT_C ? " (TC)" : "",
> > +				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
> > +				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 +=
 '1');
> > +	} else {
> > +		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> > +				 DRM_MODE_ENCODER_TMDS,
> > +				 "DDI %c/PHY %c", port_name(port),  phy_name(phy));
> > +	}
> >  =

> >  	mutex_init(&dig_port->hdcp_mutex);
> >  	dig_port->num_hdcp_streams =3D 0;
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
