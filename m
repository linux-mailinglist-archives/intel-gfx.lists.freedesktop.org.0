Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10F2C8430
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 13:35:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0884D6E463;
	Mon, 30 Nov 2020 12:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD516E463
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 12:35:53 +0000 (UTC)
IronPort-SDR: +bJwBZeS9UIauvYnpy/KT7QBomOFebOYv7+w1K+IaZ65vvr3u9l49KskP2Va9vMp4yrV4800U5
 tJiaCHm/tDvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="190807869"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="190807869"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 04:35:52 -0800
IronPort-SDR: J2qOHcCBnLc3opOPWiJa5i1dLgrKvQMBFZMvUr9kD3nF9VES3wbyxTjYLCliH9WMUrEKWg1SSI
 zEVPQKDdhq+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="315218987"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2020 04:35:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 04:35:51 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 18:05:48 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 30 Nov 2020 18:05:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v12 14/15] drm/i915/lspcon: Do not send DRM infoframes to
 non-HDMI sinks
Thread-Index: AQHWxDLuiGrCbdSaX0+OJmXconi6QqnbtTqAgATrnEA=
Date: Mon, 30 Nov 2020 12:35:48 +0000
Message-ID: <346b0698574c47e4aa43decd8ec64359@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-15-uma.shankar@intel.com>
 <20201127145223.GO6112@intel.com>
In-Reply-To: <20201127145223.GO6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v12 14/15] drm/i915/lspcon: Do not send DRM
 infoframes to non-HDMI sinks
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
> Sent: Friday, November 27, 2020 8:22 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v12 14/15] drm/i915/lspcon: Do not send DRM infoframes to n=
on-
> HDMI sinks
> =

> On Fri, Nov 27, 2020 at 02:33:13AM +0530, Uma Shankar wrote:
> > Non-HDMI sinks shouldn't be sent Dynamic Range and Mastering infoframes.
> > Check for that when using LSPCON.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 48da5dc59939..07bef90e149e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4118,6 +4118,7 @@ static void intel_enable_ddi_dp(struct
> > intel_atomic_state *state,  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >  	enum port port =3D encoder->port;
> >
> >  	if (port =3D=3D PORT_A && INTEL_GEN(dev_priv) < 9) @@ -4125,7 +4126,14
> > @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
> >
> >  	intel_edp_backlight_on(crtc_state, conn_state);
> >  	intel_psr_enable(intel_dp, crtc_state, conn_state);
> > -	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> > +
> > +	if (dig_port->lspcon.active) {
> > +		if (dig_port->dp.has_hdmi_sink)
> > +			intel_dp_set_infoframes(encoder, true, crtc_state,
> conn_state);
> > +	} else {
> > +		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> > +	}
> =

> Simplify to
> if (!lspcon || has_hdmi_sink)
> 	intel_dp_set_infoframes()
> ?

Sure, will update this.

> Some time ago I was pondering if we should start to use crtc_state-
> >has_hdmi_sink for DP too, but since we have no way to do readout for it =
I'm
> not sure it can be done in a sane way.

Yeah this is a bit convoluted to fit both.

Can you please check 1 last remaining patch as well
https://patchwork.freedesktop.org/patch/404605/?series=3D68081&rev=3D14

With that the series would be ready for merge,

Thanks & Regards,
Uma Shankar

> I guess in the meantime I guess we need something like this.
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > +
> >  	intel_edp_drrs_enable(intel_dp, crtc_state);
> >
> >  	if (crtc_state->has_audio)
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
