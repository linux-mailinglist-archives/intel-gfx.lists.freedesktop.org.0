Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B692B17A2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 09:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CAB6E446;
	Fri, 13 Nov 2020 08:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 673456E446
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 08:58:45 +0000 (UTC)
IronPort-SDR: W0HosjWYtefwcFydgePjQSI1XNZyVgBzs7J+1izQYAIGdI9s2DJbPCdpJIw2xhnmi8OTHxf60X
 GZP2H7X79B8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="167865941"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="167865941"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 00:58:43 -0800
IronPort-SDR: 0Z0DnjpIZZWMA0c0i4gW9iNQXVYlsIlrKOvB2ucG3MYGmtOow9z92bER7LHlO4x0TPrr3wb6sK
 68Sf78gh9h6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="530987097"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 13 Nov 2020 00:58:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 00:58:41 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 00:58:40 -0800
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.1713.004;
 Fri, 13 Nov 2020 14:28:37 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Add a wrapper function around
 get_pipe_config
Thread-Index: AQHWuSh/ZvtTk96vREiVZAbnyrROJKnEioSAgAE5S8A=
Date: Fri, 13 Nov 2020 08:58:37 +0000
Message-ID: <be2cdf89ba83453592140abda44f7c4b@intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-3-ville.syrjala@linux.intel.com>
 <20201112194631.GB15399@labuser-Z97X-UD5H>
In-Reply-To: <20201112194631.GB15399@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add a wrapper function around
 get_pipe_config
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
> Sent: Friday, November 13, 2020 1:17 AM
> To: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add a wrapper function aro=
und
> get_pipe_config
> =

> On Thu, Nov 12, 2020 at 09:17:14PM +0200, Ville Syrjala wrote:
> > From: Manasi Navare <manasi.d.navare@intel.com>
> >
> > Create a new function intel_crtc_get_pipe_config() that calls platform
> > specific hooks for get_pipe_config() No functional change here.
> >
> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > [vsyrjala: Conform to modern i915 coding style, fix patch subject]
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 110d08f2a5c5..a8287414937c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -11407,6 +11407,14 @@ static bool hsw_get_pipe_config(struct
> intel_crtc *crtc,
> >  	return active;
> >  }
> >
> > +static bool intel_crtc_get_pipe_config(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +
> > +	return i915->display.get_pipe_config(crtc, crtc_state); }
> > +
> >  static u32 intel_cursor_base(const struct intel_plane_state
> > *plane_state)  {
> >  	struct drm_i915_private *dev_priv =3D
> > @@ -12403,7 +12411,7 @@ intel_encoder_current_mode(struct
> intel_encoder *encoder)
> >  		return NULL;
> >  	}
> >
> > -	if (!dev_priv->display.get_pipe_config(crtc, crtc_state)) {
> > +	if (!intel_crtc_get_pipe_config(crtc_state)) {
> >  		kfree(crtc_state);
> >  		kfree(mode);
> >  		return NULL;
> > @@ -14422,8 +14430,7 @@ verify_crtc_state(struct intel_crtc *crtc,
> >
> >  	pipe_config->hw.enable =3D new_crtc_state->hw.enable;
> >
> > -	pipe_config->hw.active =3D
> > -		dev_priv->display.get_pipe_config(crtc, pipe_config);
> > +	pipe_config->hw.active =3D intel_crtc_get_pipe_config(pipe_config);
> >
> >  	/* we keep both pipes enabled on 830 */
> >  	if (IS_I830(dev_priv) && pipe_config->hw.active) @@ -18736,7
> > +18743,7 @@ static void intel_modeset_readout_hw_state(struct drm_device
> *dev)
> >  		intel_crtc_state_reset(crtc_state, crtc);
> >
> >  		crtc_state->hw.active =3D crtc_state->hw.enable =3D
> > -			dev_priv->display.get_pipe_config(crtc, crtc_state);
> > +			intel_crtc_get_pipe_config(crtc_state);
> >
> >  		crtc->base.enabled =3D crtc_state->hw.enable;
> >  		crtc->active =3D crtc_state->hw.active;
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
