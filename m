Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17032284354
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 02:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4792589E2B;
	Tue,  6 Oct 2020 00:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A364989C98
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 00:25:54 +0000 (UTC)
IronPort-SDR: iOHvz6BFCnWS4J8JAIRScSreJInCbOmaUhl/3f+lUcy3Y3nG9jwVwQk9juDvemsOjJ5Ma+v3DI
 FggN8rvDpv6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228343803"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="228343803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 16:33:05 -0700
IronPort-SDR: yKd5F/PhMYKoghhzLvgZTiMvSJcSv2+75UXzr/I1JiFml9stqWopduEfpOWpVt5/mMM/Ja9XQ+
 RKtsxdbY++AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="296649887"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 05 Oct 2020 14:39:09 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 14:36:37 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 03:06:35 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 03:06:35 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v6 06/11] drm/i915/display: Implement infoframes readback for
 LSPCON
Thread-Index: AQHWitUl42+QsDxZnUKSOnCXhB4ZiKl/hxEAgAoh1bA=
Date: Mon, 5 Oct 2020 21:36:35 +0000
Message-ID: <5b36dcf01f524edd8c95f363478fab20@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-7-uma.shankar@intel.com>
 <20200929162038.GD6112@intel.com>
In-Reply-To: <20200929162038.GD6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 06/11] drm/i915/display: Implement infoframes
 readback for LSPCON
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
> Sent: Tuesday, September 29, 2020 9:51 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v6 06/11] drm/i915/display: Implement infoframes readback f=
or
> LSPCON
> =

> On Tue, Sep 15, 2020 at 02:30:42AM +0530, Uma Shankar wrote:
> > Implemented Infoframes enabled readback for LSPCON devices.
> > This will help align the implementation with state readback
> > infrastructure.
> >
> > v2: Added proper bitmask of enabled infoframes as per Ville's
> > recommendation.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 57
> > ++++++++++++++++++++-
> >  1 file changed, 55 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 60863b825cc5..565913b8e656 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -576,11 +576,64 @@ void lspcon_set_infoframes(struct intel_encoder
> *encoder,
> >  				  buf, ret);
> >  }
> >
> > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux
> > +*aux) {
> > +	int ret;
> > +	u32 val =3D 0;
> > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > +
> > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > +	if (ret < 0) {
> > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > +		return false;
> > +	}
> > +
> > +	return val & LSPCON_MCA_AVI_IF_KICKOFF; }
> > +
> > +static bool _lspcon_read_avi_infoframe_enabled_parade(struct
> > +drm_dp_aux *aux) {
> > +	int ret;
> > +	u32 val =3D 0;
> > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > +
> > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > +	if (ret < 0) {
> > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > +		return false;
> > +	}
> > +
> > +	return val & LSPCON_PARADE_AVI_IF_KICKOFF; }
> > +
> >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> >  			      const struct intel_crtc_state *pipe_config)  {
> > -	/* FIXME actually read this from the hw */
> > -	return 0;
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	bool infoframes_enabled;
> > +	u32 val =3D 0;
> > +	u32 mask, tmp;
> > +
> > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > +		infoframes_enabled =3D
> _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > +	else
> > +		infoframes_enabled =3D
> > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
> > +
> > +	if (infoframes_enabled)
> > +		val |=3D VIDEO_DIP_ENABLE_AVI_HSW;
> =

> Still not a fan of abusing the HSW specific reg values here.

I just kept it so that rest of the infrastructure can be re-used easily. So=
 the AVI and GMP
bit fields will get re-used and will not require any separate handling.

> > +
> > +	if (lspcon->hdr_supported) {
> > +		tmp =3D intel_de_read(dev_priv,
> > +				    HSW_TVIDEO_DIP_CTL(pipe_config-
> >cpu_transcoder));
> > +		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> > +
> > +		if (tmp & mask)
> > +			val |=3D mask;
> > +	}
> > +
> > +	return val;
> >  }
> >
> >  void lspcon_resume(struct intel_lspcon *lspcon)
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
