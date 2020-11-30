Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 487EC2C83F8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 13:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8CF689BF5;
	Mon, 30 Nov 2020 12:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB3089BF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 12:16:18 +0000 (UTC)
IronPort-SDR: DmEGdIneOBPN//uT4Zesv7z0A0Y81bcWv1v9NNFgw+0fs3VYizZgbrq4Y21uBW0GD7D2JLx6z/
 fRrPm2egJvLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="160396126"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="160396126"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 04:16:17 -0800
IronPort-SDR: QPnJWtZWXlmGxTzfB0kwHm51AjGFL8iFuHNvMKkBrp+I+uV6aMm4VmYbLDpZt12RRXNp1mKohx
 g1XyXFo1Ft3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="404713922"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 30 Nov 2020 04:16:17 -0800
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 04:16:14 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 17:46:12 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 30 Nov 2020 17:46:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v12 11/15] drm/i915/lspcon: Create separate infoframe_enabled
 helper
Thread-Index: AQHWxDLrQV4nXq/ZGE2n50P8Rds51Knbtf2AgATmRfA=
Date: Mon, 30 Nov 2020 12:16:12 +0000
Message-ID: <398750521d844bb6af29b27ae224d66e@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-12-uma.shankar@intel.com>
 <20201127145507.GP6112@intel.com>
In-Reply-To: <20201127145507.GP6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v12 11/15] drm/i915/lspcon: Create separate
 infoframe_enabled helper
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
> Sent: Friday, November 27, 2020 8:25 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v12 11/15] drm/i915/lspcon: Create separate infoframe_enabl=
ed
> helper
> =

> On Fri, Nov 27, 2020 at 02:33:10AM +0530, Uma Shankar wrote:
> > Lspcon has Infoframes as well as DIP for HDR metadata(DRM Infoframe).
> > Create a separate mechanism for lspcon compared to HDMI in order to
> > address the same and ensure future scalability.
> >
> > v2: Streamlined this as per Ville's suggestions, making sure that HDMI
> > infoframe versions are directly returned instead of a redundant and
> > confusing DIP overhead.
> >
> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    | 10 +++++++---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c |  9 +++++++++
> > drivers/gpu/drm/i915/display/intel_lspcon.h |  2 ++
> >  3 files changed, 18 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 92940a0c5ef8..48da5dc59939 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4583,6 +4583,7 @@ static void intel_ddi_read_func_ctl(struct
> intel_encoder *encoder,
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crt=
c);
> >  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	u32 temp, flags =3D 0;
> >
> >  	temp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > @@ -4657,9 +4658,12 @@ static void intel_ddi_read_func_ctl(struct
> intel_encoder *encoder,
> >  				    pipe_config->fec_enable);
> >  		}
> >
> > -		pipe_config->infoframes.enable |=3D
> > -			intel_hdmi_infoframes_enabled(encoder, pipe_config);
> > -
> > +		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
> > +			pipe_config->infoframes.enable |=3D
> > +				intel_lspcon_infoframes_enabled(encoder,
> pipe_config);
> > +		else
> > +			pipe_config->infoframes.enable |=3D
> > +				intel_hdmi_infoframes_enabled(encoder,
> pipe_config);
> >  		break;
> >  	case TRANS_DDI_MODE_SELECT_DP_MST:
> >  		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DP_MST); diff -
> -git
> > a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 592c19deba00..303f23d35020 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -30,6 +30,7 @@
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_lspcon.h"
> > +#include "intel_hdmi.h"
> =

> Why do you need that header?

intel_hdmi_infoframe_enabled is coming from that, hence we need that.
Thanks Ville for the review and RB.

Regards,
Uma Shankar

> With that potentially removed if it's not needed.
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >
> >  /* LSPCON OUI Vendor ID(signatures) */  #define
> > LSPCON_VENDOR_PARADE_OUI 0x001CF8 @@ -601,6 +602,14 @@ bool
> > lspcon_init(struct intel_digital_port *dig_port)
> >  	return true;
> >  }
> >
> > +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *pipe_config) {
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > +
> > +	return dig_port->infoframes_enabled(encoder, pipe_config); }
> > +
> >  void lspcon_resume(struct intel_digital_port *dig_port)  {
> >  	struct intel_lspcon *lspcon =3D &dig_port->lspcon; diff --git
> > a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > index 42ccb21c908f..44aa6bc38512 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > @@ -33,6 +33,8 @@ void lspcon_set_infoframes(struct intel_encoder
> *encoder,
> >  			   const struct drm_connector_state *conn_state);
> >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> >  			      const struct intel_crtc_state *pipe_config);
> > +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *pipe_config);
> >  void hsw_write_infoframe(struct intel_encoder *encoder,
> >  			 const struct intel_crtc_state *crtc_state,
> >  			 unsigned int type,
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
