Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A292C8EE1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBD06E871;
	Mon, 30 Nov 2020 20:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35806E872
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:17:11 +0000 (UTC)
IronPort-SDR: p8LuwWkYLHaNe2GAUO1Ea4ZsDRduGTEEyn5zCFXTa6soiPOio9qSCGPXoWYrPJXR30J1Qh+lu1
 BTmdpymsIzQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190893458"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190893458"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:17:11 -0800
IronPort-SDR: zi77/uWcA/gqb2/0moBGVM2Z5aXMuzOnjP2PEBSHnqsgxbA/dmhZLsowz2Q7dcCb6aGqgUJFZj
 zWcsJbgWyDAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="537145732"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 30 Nov 2020 12:17:11 -0800
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 12:17:10 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 01:47:08 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 01:47:08 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v13 08/15] drm/i915/display: Enable colorspace programming for
 LSPCON devices
Thread-Index: AQHWxMTeTmanj+9l40qQ91P0Adr2sKngvoyAgABi6OA=
Date: Mon, 30 Nov 2020 20:17:07 +0000
Message-ID: <bddd44cbd750447190945b34581fa136@intel.com>
References: <20201126210314.7882-9-uma.shankar@intel.com>
 <20201127142820.8507-1-uma.shankar@intel.com>
 <20201130195107.GW6112@intel.com>
In-Reply-To: <20201130195107.GW6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v13 08/15] drm/i915/display: Enable colorspace
 programming for LSPCON devices
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
> Sent: Tuesday, December 1, 2020 1:21 AM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v13 08/15] drm/i915/display: Enable colorspace programming =
for
> LSPCON devices
> =

> On Fri, Nov 27, 2020 at 07:58:20PM +0530, Uma Shankar wrote:
> > Enable HDMI Colorspace for LSPCON based devices. Sending Colorimetry
> > data for HDR using AVI infoframe. LSPCON firmware expects this and
> > though SOC drives DP, for HDMI panel AVI infoframe is sent to the
> > LSPCON device which transfers the same to HDMI sink.
> >
> > v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> >
> > v3: Aligned colorimetry handling for lspcon as per
> > compute_avi_infoframes, as suggested by Ville.
> >
> > v4: Finally fixed this with Ville's help, re-phrased the commit header
> > and description.
> >
> > v5: Register HDMI colorspace for lspcon and move this to
> > intel_dp_add_properties as we can't create property at late_register.
> >
> > Credits-to: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks a lot Ville for all your support, review and useful suggestions.
I have sent out a final version with all your RB's and conditional comments
addressed. =


This series is now ready for merge.

Thanks & Regards,
Uma Shankar

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 3 +++
> >  2 files changed, 9 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f066031af162..21a0ca6ae2a6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7193,10 +7193,13 @@ intel_dp_add_properties(struct intel_dp *intel_=
dp,
> struct drm_connector *connect
> >  	else if (INTEL_GEN(dev_priv) >=3D 5)
> >  		drm_connector_attach_max_bpc_property(connector, 6, 12);
> >
> > -	intel_attach_dp_colorspace_property(connector);
> > -
> > -	if (intel_bios_is_lspcon_present(dev_priv, port))
> > +	/* Register HDMI colorspace for case of lspcon */
> > +	if (intel_bios_is_lspcon_present(dev_priv, port)) {
> >  		drm_connector_attach_content_type_property(connector);
> > +		intel_attach_hdmi_colorspace_property(connector);
> > +	} else {
> > +		intel_attach_dp_colorspace_property(connector);
> > +	}
> >
> >  	if (IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >=3D 11)
> >  		drm_object_attach_property(&connector->base,
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 0a4c05d67108..cb768a1ae4c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -523,6 +523,9 @@ void lspcon_set_infoframes(struct intel_encoder
> *encoder,
> >  	else
> >  		frame.avi.colorspace =3D HDMI_COLORSPACE_RGB;
> >
> > +	/* Set the Colorspace as per the HDMI spec */
> > +	drm_hdmi_avi_infoframe_colorspace(&frame.avi, conn_state);
> > +
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
