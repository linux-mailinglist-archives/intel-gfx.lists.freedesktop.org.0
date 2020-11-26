Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0DC2C4FA9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172E66E5A5;
	Thu, 26 Nov 2020 07:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FB06E5A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:45:35 +0000 (UTC)
IronPort-SDR: YwFz14C8GIenQdHsZoiODeUIRqCRhLc4q7CaTw54IM20KvnNC4IwUogPsIn0jPnl6M2M2QLQz5
 Sewtr6eouIAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172349096"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="172349096"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:45:34 -0800
IronPort-SDR: 5z24Q2E5+7ZuQoFm/3+G873sY1rtXGbEV/BGvWB1lNYISPzoy5JM0+wuPjde4L/59WXovqpwzC
 ew8iAJNL+7gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="537212383"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 25 Nov 2020 23:45:34 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 23:45:33 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Nov 2020 13:15:31 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 26 Nov 2020 13:15:31 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v9 10/12] drm/i915/lspcon: Create separate infoframe_enabled
 helper
Thread-Index: AQHWsfE8fuPklG7nA06gHaUmLCgILqnY16IAgAFT0TA=
Date: Thu, 26 Nov 2020 07:45:30 +0000
Message-ID: <14107607883147a3ba4c9265688619ad@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-11-uma.shankar@intel.com>
 <20201125165604.GY6112@intel.com>
In-Reply-To: <20201125165604.GY6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v9 10/12] drm/i915/lspcon: Create separate
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
> Sent: Wednesday, November 25, 2020 10:26 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v9 10/12] drm/i915/lspcon: Create separate infoframe_enabled
> helper
> =

> On Tue, Nov 03, 2020 at 08:58:32PM +0530, Uma Shankar wrote:
> > Lspcon has Infoframes as well as DIP for HDR metadata(DRM Infoframe).
> > Create a separate mechanism for lspcon compared to HDMI in order to
> > address the same and ensure future scalability.
> >
> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    | 10 +++++++---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_lspcon.h |  2 ++
> >  3 files changed, 27 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 19b16517a502..d50dd1f1292a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4402,6 +4402,7 @@ void intel_ddi_get_config(struct intel_encoder
> *encoder,
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crt=
c);
> >  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	u32 temp, flags =3D 0;
> >
> >  	/* XXX: DSI transcoder paranoia */
> > @@ -4482,9 +4483,12 @@ void intel_ddi_get_config(struct intel_encoder
> *encoder,
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
> > index 8a4fd8ca8016..9c8dfd2fb949 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -30,6 +30,7 @@
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> >  #include "intel_lspcon.h"
> > +#include "intel_hdmi.h"
> >
> >  /* LSPCON OUI Vendor ID(signatures) */  #define
> > LSPCON_VENDOR_PARADE_OUI 0x001CF8 @@ -667,6 +668,23 @@ bool
> > lspcon_init(struct intel_digital_port *dig_port)
> >  	return true;
> >  }
> >
> > +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *pipe_config) {
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > +	u32 val, enabled =3D 0;
> > +
> > +	val =3D dig_port->infoframes_enabled(encoder, pipe_config);
> > +
> > +	if (val & VIDEO_DIP_ENABLE_AVI_HSW)
> =

> So this is the function I figured should allow us to not to pretend to us=
e the
> video DIP bits.
> =

> I ttink the actual lspcon infoframes_enabled() could just directly use
> intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI) etc. instead of
> doing this extra remapping here.

Thanks Ville for the review and the highly useful suggestions and feedback.
I have addressed the same and sent the next version, please help review.

On colorspace, I have kept BT2020 for HDR as default as of now. Will send a=
 follow
up fixing that appropriately.

I have checked the series on pcon and the series works fine with HDR monito=
r on a
KBL nuc.

Regards,
Uma Shankar

> =

> > +		enabled |=3D
> intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> > +
> > +	if (val & VIDEO_DIP_ENABLE_GMP_HSW)
> > +		enabled |=3D
> > +intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> > +
> > +	return enabled;
> > +}
> > +
> >  void lspcon_resume(struct intel_digital_port *dig_port)  {
> >  	struct intel_lspcon *lspcon =3D &dig_port->lspcon; diff --git
> > a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > index d622156d0c4e..e92735408443 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > @@ -41,5 +41,7 @@ void hsw_read_infoframe(struct intel_encoder *encoder,
> >  			const struct intel_crtc_state *crtc_state,
> >  			unsigned int type,
> >  			void *frame, ssize_t len);
> > +u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > +				    const struct intel_crtc_state *pipe_config);
> >
> >  #endif /* __INTEL_LSPCON_H__ */
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
