Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC831911C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 18:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C69C6E323;
	Thu, 11 Feb 2021 17:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26846E323
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 17:34:55 +0000 (UTC)
IronPort-SDR: THGlWsqp0yHWXURJHatGZ8FQP3fKVLl6vNFdY96xmZKFcj0JXnkgWSp6K92nKddSDFq0PdKJIk
 2TFFRRuNOzUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="169410595"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="169410595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 09:34:52 -0800
IronPort-SDR: 1uqe+lIBsYTZ37dwkkSrTS+gR4NQkDNJl6texddNlNTX7k78M1Md9GOf/nua1YF/2rXrFg5lVZ
 Ca9z9/owPw9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="490441613"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2021 09:34:51 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 09:34:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 09:34:50 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Thu, 11 Feb 2021 23:04:47 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Handle lane polarity for DDI port
Thread-Index: AQHXAGY59oQNjO/FykSLFoM9h1VIbapSj3SAgACnz0A=
Date: Thu, 11 Feb 2021 17:34:47 +0000
Message-ID: <d7cd8482e8824213bcfea44b91cf66d0@intel.com>
References: <20210211114209.23866-1-uma.shankar@intel.com>
 <YCUrBZrCITUBmI2T@intel.com>
In-Reply-To: <YCUrBZrCITUBmI2T@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Handle lane polarity for
 DDI port
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, February 11, 2021 6:33 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Souza, Jose <jose.souza@intel.com>; =
Roper,
> Matthew D <matthew.d.roper@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Handle lane polarity for DDI port
> =

> On Thu, Feb 11, 2021 at 05:12:09PM +0530, Uma Shankar wrote:
> > Lane Reversal is required for some of the DDI ports. This information
> > is populated in VBT and driver should read the same and set the
> > polarity while enabling the port. This patch handles the same.
> >
> > It helps fix a display blankout issue on DP ports on certain
> > platforms.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 17 +++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
> > drivers/gpu/drm/i915/display/intel_ddi.c  |  3 +++
> >  3 files changed, 22 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 7118530a1c38..dd51413e7f45 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2674,6 +2674,23 @@ intel_bios_is_lspcon_present(const struct
> drm_i915_private *i915,
> >  	return HAS_LSPCON(i915) && child && child->lspcon;  }
> >
> > +/**
> > + * intel_bios_is_lane_reversal_needed - if lane reversal needed on port
> > + * @i915:       i915 device instance
> > + * @port:       port to check
> > + *
> > + * Return true if port requires lane reversal  */ bool
> > +intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
> > +				   enum port port)
> > +{
> > +	const struct child_device_config *child =3D
> > +		i915->vbt.ddi_port_info[port].child;
> > +
> > +	return child && child->lane_reversal; }
> > +
> >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
> >  				   enum port port)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e29e79faa01b..f25190ecfe97 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -241,6 +241,8 @@ bool intel_bios_is_port_hpd_inverted(const struct
> drm_i915_private *i915,
> >  				     enum port port);
> >  bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
> >  				  enum port port);
> > +bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private =
*i915,
> > +					enum port port);
> >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
> > enum port port);  bool intel_bios_get_dsc_params(struct intel_encoder *=
encoder,
> >  			       struct intel_crtc_state *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 3c4003605f93..2d6906f6995f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4082,6 +4082,9 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv,
> enum port port)
> >  			intel_de_read(dev_priv, DDI_BUF_CTL(port))
> >  			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
> >
> > +	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
> > +		dig_port->saved_port_bits |=3D DDI_BUF_PORT_REVERSAL;
> > +
> =

> Not a huge fan of saved_port_bits in general but as long as we have it st=
uffing this in
> there seems like the best option.
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Pushed the change to drm-intel-next. Thanks Ville for the review.

Regards,
Uma Shankar
> >  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
> >  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
> >  	dig_port->aux_ch =3D intel_bios_port_aux_ch(dev_priv, port);
> > --
> > 2.26.2
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
