Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A212842EE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 01:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BBC6E1A5;
	Mon,  5 Oct 2020 23:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B266E1A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 23:26:36 +0000 (UTC)
IronPort-SDR: jC7ORVSqprkPENHCG5i4Zj7+tBVa30oUOPWIdjcB/FN//L+zzBiZNuvkwhZtJVfYOhVSg+ho9k
 jQu4IR/4xidw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="248921831"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="248921831"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP; 05 Oct 2020 16:26:26 -0700
IronPort-SDR: IRGn4y8I0DNm7LrNfp2GQ0f5pFWHxZMtw2B7Ar/EO8Oc3IwLFzGTr9gORPr8BI1Upp3pBcDTve
 aV3dhEzws7Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="517380098"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2020 14:38:09 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 14:37:40 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 03:07:32 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 03:07:31 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v6 07/11] drm/i915/display: Implement DRM infoframe read for
 LSPCON
Thread-Index: AQHWitUmwGpZPJVox0aOgBKReNeu5al/h7EAgAoh+/A=
Date: Mon, 5 Oct 2020 21:37:31 +0000
Message-ID: <15b9e99fb1f047ec80e64cfb2b0dccf6@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-8-uma.shankar@intel.com>
 <20200929162252.GE6112@intel.com>
In-Reply-To: <20200929162252.GE6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 07/11] drm/i915/display: Implement DRM
 infoframe read for LSPCON
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
> Sent: Tuesday, September 29, 2020 9:53 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v6 07/11] drm/i915/display: Implement DRM infoframe read for
> LSPCON
> =

> On Tue, Sep 15, 2020 at 02:30:43AM +0530, Uma Shankar wrote:
> > Implement Read back of HDR metadata infoframes i.e Dynamic Range and
> > Mastering Infoframe for LSPCON devices.
> >
> > v2: Added proper bitmask of enabled infoframes as per Ville's
> > recommendation.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_lspcon.c |  6 +++++-
> > drivers/gpu/drm/i915/display/intel_lspcon.h |  4 ++++
> >  3 files changed, 19 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 1e40ed473fb9..02b0b5921bed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -600,6 +600,16 @@ void lspcon_drm_write_infoframe(struct
> intel_encoder *encoder,
> >  	hsw_write_infoframe(encoder, crtc_state, type, frame, len);  }
> >
> > +void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
> > +			       const struct intel_crtc_state *crtc_state,
> > +			       unsigned int type,
> > +			       void *frame, ssize_t len)
> > +{
> > +	drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");
> > +	/* It uses the legacy hsw implementation for the same */
> > +	hsw_read_infoframe(encoder, crtc_state, type, frame, len); }
> =

> Another pointless wrapper.

Sure, will drop this.
> > +
> >  static const u8 infoframe_type_to_idx[] =3D {
> >  	HDMI_PACKET_TYPE_GENERAL_CONTROL,
> >  	HDMI_PACKET_TYPE_GAMUT_METADATA,
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 565913b8e656..ee77a5381cb5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -501,7 +501,11 @@ void lspcon_read_infoframe(struct intel_encoder
> *encoder,
> >  			   unsigned int type,
> >  			   void *frame, ssize_t len)
> >  {
> > -	/* FIXME implement this */
> > +	/* FIXME implement for AVI Infoframe as well */
> > +	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA)
> > +		lspcon_drm_read_infoframe(encoder, crtc_state,
> > +
> HDMI_PACKET_TYPE_GAMUT_METADATA,
> > +					  frame, VIDEO_DIP_DATA_SIZE);
> =

> Again I'd just pass the params through.

Will do the same.
> >  }
> >
> >  /* HDMI HDR Colorspace Spec Definitions */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > index 3fac05535731..1b9fb531128e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > @@ -38,4 +38,8 @@ void lspcon_drm_write_infoframe(struct intel_encoder
> *encoder,
> >  				const struct intel_crtc_state *crtc_state,
> >  				unsigned int type,
> >  				const void *frame, ssize_t len);
> > +void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
> > +			       const struct intel_crtc_state *crtc_state,
> > +			       unsigned int type,
> > +			       void *frame, ssize_t len);
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
