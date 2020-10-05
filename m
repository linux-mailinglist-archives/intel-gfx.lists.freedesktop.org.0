Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9662842ED
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 01:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3660489DB5;
	Mon,  5 Oct 2020 23:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CF589DB5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 23:26:28 +0000 (UTC)
IronPort-SDR: jy/3xAIx0829hC9Fj4TpL12Xk4144Pp4c2J6UkeDQu6cEFIIrNj75btD0910bAnNUs2zZKL7F8
 KdNphEkQWpNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="163445105"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="163445105"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP; 05 Oct 2020 16:26:26 -0700
IronPort-SDR: 1Q7enKX9qI6pvX2hxQDJ0np6RIgqSlLsk26OI1TT0PcqLh9RoDqoiTd3gPgfPfTn2y0MV7+W7O
 ZxbuOC9hPziA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="353040665"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Oct 2020 14:33:19 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 14:33:16 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 03:03:14 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 03:03:14 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v6 04/11] drm/i915/display: Enable BT2020 for HDR on LSPCON
 devices
Thread-Index: AQHWitUi+3NWaOiOoU6eZ3niSB8heal/hmwAgAoiFpA=
Date: Mon, 5 Oct 2020 21:33:14 +0000
Message-ID: <315052c477a4412b82e916b53a3f1d0b@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-5-uma.shankar@intel.com>
 <20200929161820.GB6112@intel.com>
In-Reply-To: <20200929161820.GB6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 04/11] drm/i915/display: Enable BT2020 for HDR
 on LSPCON devices
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
> Sent: Tuesday, September 29, 2020 9:48 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v6 04/11] drm/i915/display: Enable BT2020 for HDR on LSPCON
> devices
> =

> On Tue, Sep 15, 2020 at 02:30:40AM +0530, Uma Shankar wrote:
> > Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
> > data for HDR using AVI infoframe. LSPCON firmware expects this and
> > though SOC drives DP, for HDMI panel AVI infoframe is sent to the
> > LSPCON device which transfers the same to HDMI sink.
> >
> > v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index fd05210f4405..b0ca494f1110 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -507,6 +507,11 @@ void lspcon_read_infoframe(struct intel_encoder
> *encoder,
> >  	/* FIXME implement this */
> >  }
> >
> > +/* HDMI HDR Colorspace Spec Definitions */
> > +#define NORMAL_COLORIMETRY_MASK		0x3
> > +#define EXTENDED_COLORIMETRY_MASK	0x7
> > +#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
> > +
> >  void lspcon_set_infoframes(struct intel_encoder *encoder,
> >  			   bool enable,
> >  			   const struct intel_crtc_state *crtc_state, @@ -551,6
> +556,19 @@
> > void lspcon_set_infoframes(struct intel_encoder *encoder,
> >  					   HDMI_QUANTIZATION_RANGE_LIMITED
> :
> >  					   HDMI_QUANTIZATION_RANGE_FULL);
> >
> > +	/*
> > +	 * Set BT2020 colorspace if driving HDR data
> > +	 * ToDo: Make this generic and expose all colorspaces for lspcon
> > +	 */
> > +	if (lspcon->active && lspcon->hdr_supported) {
> > +		frame.avi.colorimetry =3D
> > +				HDMI_COLORIMETRY_BT2020_YCC &
> > +				NORMAL_COLORIMETRY_MASK;
> > +		frame.avi.extended_colorimetry =3D
> > +				(HDMI_COLORIMETRY_BT2020_YCC >> 2) &
> > +				 EXTENDED_COLORIMETRY_MASK;
> > +	}
> =

> drm_hdmi_avi_infoframe_colorspace().
> =

> Also pls try to match intel_hdmi_compute_avi_infoframe() as closesly as p=
ossible
> if we can't just outright reuse it. That will make it easier to spot diff=
erences
> between the two.

Sure, will rectify it.
> > +
> >  	ret =3D hdmi_infoframe_pack(&frame, buf, sizeof(buf));
> >  	if (ret < 0) {
> >  		DRM_ERROR("Failed to pack AVI IF\n");
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
