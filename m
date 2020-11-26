Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDA72C5CEE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F0B6E9D2;
	Thu, 26 Nov 2020 20:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE68D6E9D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:23:09 +0000 (UTC)
IronPort-SDR: /cYA1yR1kicgcMRM0zt+vESRfvicNo5mJuE2pD+BDrun7JvP+pL9UeHXrKOmZ4lQg8MA2igPuZ
 tNvDxhNYEPfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="190478106"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="190478106"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:23:09 -0800
IronPort-SDR: +Ejtv8VT5t/irOWHgITDE3b0WhZqbGbIOHdoJN8/HEgNaREV0OqFS7hyYzR3/tJ9e23Y/md77k
 8lGZEYgT0lyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="403716638"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 26 Nov 2020 12:23:08 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Nov 2020 12:23:08 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 01:53:05 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 01:53:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v11 07/13] i915/display: Enable BT2020 for HDR on LSPCON devices
Thread-Index: AQHWw8eOh0M2SfVI6Uq92CsXeZCr1qnaSxCAgACQwGA=
Date: Thu, 26 Nov 2020 20:23:05 +0000
Message-ID: <4dedb8478ddd4d67be67cb7aeab340ab@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-8-uma.shankar@intel.com>
 <20201126171309.GJ6112@intel.com>
In-Reply-To: <20201126171309.GJ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v11 07/13] i915/display: Enable BT2020 for HDR on
 LSPCON devices
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
> Sent: Thursday, November 26, 2020 10:43 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v11 07/13] i915/display: Enable BT2020 for HDR on LSPCON de=
vices
> =

> On Thu, Nov 26, 2020 at 01:44:39PM +0530, Uma Shankar wrote:
> > Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
> > data for HDR using AVI infoframe. LSPCON firmware expects this and
> > though SOC drives DP, for HDMI panel AVI infoframe is sent to the
> > LSPCON device which transfers the same to HDMI sink.
> >
> > v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> >
> > v3: Aligned colorimetry handling for lspcon as per
> > compute_avi_infoframes, as suggested by Ville.
> >
> > v4: Added BT2020 as default for HDR. Adding the colorspace property
> > interface for pcon will be take up separately. Moved changes of
> > quantization in a separate patch as per Ville's comments.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 0a4c05d67108..f6f58a991e7a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -481,6 +481,10 @@ void lspcon_read_infoframe(struct intel_encoder
> *encoder,
> >  	/* FIXME implement this */
> >  }
> >
> > +/* HDMI HDR Colorspace Spec Definitions */
> > +#define NORMAL_COLORIMETRY_MASK		0x3
> > +#define EXTENDED_COLORIMETRY_MASK	0x7
> > +#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
> >  void lspcon_set_infoframes(struct intel_encoder *encoder,
> >  			   bool enable,
> >  			   const struct intel_crtc_state *crtc_state, @@ -523,6
> +527,20 @@
> > void lspcon_set_infoframes(struct intel_encoder *encoder,
> >  	else
> >  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> >
> > +	/*
> > +	 * Set BT2020 colorspace if driving HDR data
> > +	 * ToDo: Make this generic and expose all colorspaces for
> > +	 * lspcon. We need to expose HDMI colorspaces when we detect
> > +	 * lspcon, this has to happen after connector is registered,
> > +	 * so need to fix this appropriately
> > +	 */
> > +	if (lspcon->active && conn_state->hdr_output_metadata) {
> > +		frame.avi.colorimetry =3D HDMI_COLORIMETRY_BT2020_YCC &
> > +					NORMAL_COLORIMETRY_MASK;
> > +		frame.avi.extended_colorimetry =3D
> (HDMI_COLORIMETRY_BT2020_YCC >> 2) &
> > +
> EXTENDED_COLORIMETRY_MASK;
> > +	}
> > +
> =

> I don't understand the point of dancing around this instead of just fixin=
g it.
> =

> There, I did half the work for you
> https://patchwork.freedesktop.org/series/84309/

Somehow was not able to think of right way to handle this.
Thanks Ville for your patience and help. I will add the patch to series and=
 build
on top of it.

Regards,
Uma Shankar
> =

> >  	/* nonsense combination */
> >  	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
> >  		    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB);
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
