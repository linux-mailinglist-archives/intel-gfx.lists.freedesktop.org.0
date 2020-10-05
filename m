Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8C028435F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 02:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2B86E207;
	Tue,  6 Oct 2020 00:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DB36E207
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 00:35:03 +0000 (UTC)
IronPort-SDR: RftWlgWyqH8+bd/hTzzfnklaME9qVa9JStUbB3WWYOLD3MaZZKekdMGFxD3SCBjw4mjD+rpUl5
 8rlBqENwP0Hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151970559"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="151970559"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP; 05 Oct 2020 16:25:50 -0700
IronPort-SDR: SE4KxkLMpaycZwza4sZbOOSuMaRaTiyDWiVLFHCaGXGcOlU4cMgmXI9ZkNf/8wH+EErysfTCcX
 5diDD0irBdiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="517378724"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2020 14:35:03 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 14:34:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 03:03:58 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 03:03:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v6 05/11] drm/i915/display: Enable HDR for Parade based lspcon
Thread-Index: AQHWitUkvngemGNcAUSbachYHk3CLKl/hq6AgAoiC1A=
Date: Mon, 5 Oct 2020 21:33:58 +0000
Message-ID: <ebad794ac88b426684ad9bd0f083c6f5@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-6-uma.shankar@intel.com>
 <20200929161915.GC6112@intel.com>
In-Reply-To: <20200929161915.GC6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 05/11] drm/i915/display: Enable HDR for Parade
 based lspcon
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Anand,
 Vipin" <vipin.anand@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, September 29, 2020 9:49 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Anand, Vipin <vipin.anand@intel.com>
> Subject: Re: [v6 05/11] drm/i915/display: Enable HDR for Parade based lsp=
con
> =

> On Tue, Sep 15, 2020 at 02:30:41AM +0530, Uma Shankar wrote:
> > Enable HDR for LSPCON based on Parade along with MCA.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Vipin Anand <vipin.anand@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 19 ++++++++-----------
> >  1 file changed, 8 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index b0ca494f1110..60863b825cc5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -36,6 +36,7 @@
> >  #define LSPCON_VENDOR_MCA_OUI 0x0060AD
> >
> >  #define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
> > +#define DPCD_PARADE_LSPCON_HDR_STATUS	0x00511
> >
> >  /* AUX addresses to write MCA AVI IF */  #define
> > LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0 @@ -112,16 +113,20 @@ static
> void
> > lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
> >  		container_of(lspcon, struct intel_digital_port, lspcon);
> >  	struct drm_device *dev =3D intel_dig_port->base.base.dev;
> >  	struct intel_dp *dp =3D lspcon_to_intel_dp(lspcon);
> > +	u32 lspcon_hdr_status_reg;
> >  	u8 hdr_caps;
> >  	int ret;
> >
> > -	/* Enable HDR for MCA based LSPCON devices */
> >  	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > -		ret =3D drm_dp_dpcd_read(&dp->aux,
> DPCD_MCA_LSPCON_HDR_STATUS,
> > -				       &hdr_caps, 1);
> > +		lspcon_hdr_status_reg =3D DPCD_MCA_LSPCON_HDR_STATUS;
> > +	else if (lspcon->vendor =3D=3D LSPCON_VENDOR_PARADE)
> > +		lspcon_hdr_status_reg =3D DPCD_PARADE_LSPCON_HDR_STATUS;
> >  	else
> >  		return;
> =

> That could be small helper function.

Ok, will add the same.

> >
> > +	ret =3D drm_dp_dpcd_read(&dp->aux, lspcon_hdr_status_reg,
> > +			       &hdr_caps, 1);
> > +
> >  	if (ret < 0) {
> >  		drm_dbg_kms(dev, "hdr capability detection failed\n");
> >  		lspcon->hdr_supported =3D false;
> > @@ -465,14 +470,6 @@ void lspcon_write_infoframe(struct intel_encoder
> *encoder,
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> >  	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> >
> > -	/*
> > -	 * Supporting HDR on MCA LSPCON
> > -	 * Todo: Add support for Parade later
> > -	 */
> > -	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA &&
> > -	    lspcon->vendor !=3D LSPCON_VENDOR_MCA)
> > -		return;
> > -
> >  	switch (type) {
> >  	case HDMI_INFOFRAME_TYPE_AVI:
> >  		if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
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
