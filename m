Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EC52C675D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7966EDD2;
	Fri, 27 Nov 2020 14:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740BD6EDD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 14:04:03 +0000 (UTC)
IronPort-SDR: wSZwapRj++WYjbUhnxd8wNUig5KSNUm/xsNEavbDwqOzN8qgfhZS3puY6RDLvXp2B3yykg3n8k
 ystjZ1DWPUxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168895176"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168895176"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 06:04:03 -0800
IronPort-SDR: 1TlLs78uyU051V/3T+NFPsTfDSUJo1K79BhODjatAbqYj4F83z+om5Uo6DM6Y5bejiiiXWz9Be
 O1HIjxjIesnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="433510739"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 27 Nov 2020 06:04:03 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 06:04:02 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 19:34:00 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 19:34:00 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v12 08/15] drm/i915/display: Enable colorspace programming for
 LSPCON devices
Thread-Index: AQHWxDLnAV6ebrUtOUWKOHOje3LiaKnbonAAgABgqrA=
Date: Fri, 27 Nov 2020 14:03:59 +0000
Message-ID: <2bc746f5264642dbb02d7bb24a247a8c@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-9-uma.shankar@intel.com>
 <20201127134508.GL6112@intel.com>
In-Reply-To: <20201127134508.GL6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v12 08/15] drm/i915/display: Enable colorspace
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
> Sent: Friday, November 27, 2020 7:15 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v12 08/15] drm/i915/display: Enable colorspace programming =
for
> LSPCON devices
> =

> On Fri, Nov 27, 2020 at 02:33:07AM +0530, Uma Shankar wrote:
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
> =

> Still missing the "expose the hdmi variant of the prop on lspcon"
> part. I didn't include that in my patch since we didn't use
> drm_hdmi_avi_infoframe_colorspace() yes on lspcon. Although maybe I should
> have just done that change anyway since we were already registering the p=
rop
> anyway even if we didn't actually put the data into the infoframe.

Yeah just sent the fix for that Ville. We had to create the properties earl=
y so moved the
checks to intel_dp_add_properties. Just see if the new version looks ok

Regards,
Uma Shankar

> >
> > Credits-to: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
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
