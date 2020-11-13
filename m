Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 101CE2B179D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 09:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57176E405;
	Fri, 13 Nov 2020 08:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8055E6E3DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 08:56:51 +0000 (UTC)
IronPort-SDR: xhq7w8VsAID4/twOP31/NNdgmstl/+CMP+vTAgke2AzpEo2SGPw4MdJKbTK2Bn6jmFMUSUEjsa
 qDVtKzLb7WkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="170614853"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="170614853"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 00:56:48 -0800
IronPort-SDR: kb/JS8h0yhS9olFXT3U3aC1ED4hY54HEpJX2d6hCMSIEQ89fRZ/xpYeOjuiLU63Nn5VH+ct/Oi
 u7pxgfaqoCWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="366878953"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2020 00:56:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 00:56:47 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 00:56:45 -0800
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.1713.004;
 Fri, 13 Nov 2020 14:26:43 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Move encoder->get_config to a
 new function
Thread-Index: AQHWuSiB1XZEs8OUqkS+VJSyFqwlZqnEijGAgAE4o9A=
Date: Fri, 13 Nov 2020 08:56:43 +0000
Message-ID: <32ece20a2d6245209ab496e77eba70a8@intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-2-ville.syrjala@linux.intel.com>
 <20201112194521.GA15399@labuser-Z97X-UD5H>
In-Reply-To: <20201112194521.GA15399@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Move encoder->get_config to a
 new function
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Na=
vare,
> Manasi
> Sent: Friday, November 13, 2020 1:15 AM
> To: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Move encoder->get_config t=
o a
> new function
> =

> On Thu, Nov 12, 2020 at 09:17:13PM +0200, Ville Syrjala wrote:
> > From: Manasi Navare <manasi.d.navare@intel.com>
> >
> > No functional changes, create a separate intel_encoder_get_config()
> > function that calls encoder->get_config hook.
> > This is needed so that later we can add beigjoienr related readout
> > here.
> =

> bigjoiner misspelled
> =

> Other than that
> =

> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>


Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> =

> Manasi
> >
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > [vsyrjala: Move the code around for the future]
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 9566a8d1f470..110d08f2a5c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8141,6 +8141,12 @@ static void intel_crtc_compute_pixel_rate(struct
> intel_crtc_state *crtc_state)
> >  			ilk_pipe_pixel_rate(crtc_state);
> >  }
> >
> > +static void intel_encoder_get_config(struct intel_encoder *encoder,
> > +				     struct intel_crtc_state *crtc_state) {
> > +	encoder->get_config(encoder, crtc_state); }
> > +
> >  static int intel_crtc_compute_config(struct intel_crtc *crtc,
> >  				     struct intel_crtc_state *pipe_config)  { @@ -
> 12403,7
> > +12409,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
> >  		return NULL;
> >  	}
> >
> > -	encoder->get_config(encoder, crtc_state);
> > +	intel_encoder_get_config(encoder, crtc_state);
> >
> >  	intel_mode_from_pipe_config(mode, crtc_state);
> >
> > @@ -14448,7 +14454,7 @@ verify_crtc_state(struct intel_crtc *crtc,
> >  				pipe_name(pipe));
> >
> >  		if (active)
> > -			encoder->get_config(encoder, pipe_config);
> > +			intel_encoder_get_config(encoder, pipe_config);
> >  	}
> >
> >  	intel_crtc_compute_pixel_rate(pipe_config);
> > @@ -18761,7 +18767,7 @@ static void
> intel_modeset_readout_hw_state(struct drm_device *dev)
> >  			crtc_state =3D to_intel_crtc_state(crtc->base.state);
> >
> >  			encoder->base.crtc =3D &crtc->base;
> > -			encoder->get_config(encoder, crtc_state);
> > +			intel_encoder_get_config(encoder, crtc_state);
> >  			if (encoder->sync_state)
> >  				encoder->sync_state(encoder, crtc_state);
> >  		} else {
> > --
> > 2.26.2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
