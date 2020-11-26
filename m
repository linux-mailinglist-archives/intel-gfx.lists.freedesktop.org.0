Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2852C5CE0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89A96E957;
	Thu, 26 Nov 2020 20:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3966E957
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:10:19 +0000 (UTC)
IronPort-SDR: 2a4O144UOzjJHZ5YFfdXFcIQQ7wULa5X1mTYcIMXUoZUmkCFCSXDd60jp4B05wsmiOC7VhA7TJ
 LuXsGMwNDZOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="169762388"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="169762388"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:10:18 -0800
IronPort-SDR: f0cH7z+D0vICfIweJ1FVt1INcUiRoRnA8J9hAKEv3J3COwNREuHBzP7ztBrhn4zCSgkJ33JydQ
 heCicBZXGcfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="537414335"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 26 Nov 2020 12:10:18 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Nov 2020 12:10:14 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 01:40:12 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 01:40:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v11 01/13] drm/i915/display: Add HDR Capability detection for
 LSPCON
Thread-Index: AQHWw8eGcI2vjt5Xq0GcWw/Dmj2iLqnaPf4AgACafWA=
Date: Thu, 26 Nov 2020 20:10:12 +0000
Message-ID: <9462d87c115a415b9de58618e71fa814@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-2-uma.shankar@intel.com>
 <20201126162622.GE6112@intel.com>
In-Reply-To: <20201126162622.GE6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v11 01/13] drm/i915/display: Add HDR Capability
 detection for LSPCON
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
> Sent: Thursday, November 26, 2020 9:56 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v11 01/13] drm/i915/display: Add HDR Capability detection f=
or
> LSPCON
> =

> On Thu, Nov 26, 2020 at 01:44:33PM +0530, Uma Shankar wrote:
> > LSPCON firmware exposes HDR capability through LPCON_CAPABILITIES DPCD
> > register. LSPCON implementations capable of supporting HDR set
> > HDR_CAPABILITY bit in LSPCON_CAPABILITIES to 1. This patch reads the
> > same, detects the HDR capability and adds this to intel_lspcon struct.
> >
> > v2: Addressed Jani Nikula's review comment and fixed the HDR
> >     capability detection logic
> >
> > v3: Deferred HDR detection from lspcon_init (Ville)
> >
> > v4: Addressed Ville's minor review comments, added his RB.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > Reviewed-by: Ville Syrj=E4 <ville.syrjala@linux.intel.com>
> =

> Wrong name

Oh, somehow editor messed this up. Will fix this.

> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_lspcon.c   | 27 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_lspcon.h   |  1 +
> >  3 files changed, 29 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ce82d654d0f2..5a949218dd3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1450,6 +1450,7 @@ enum lspcon_vendor {
> >
> >  struct intel_lspcon {
> >  	bool active;
> > +	bool hdr_supported;
> >  	enum drm_lspcon_mode mode;
> >  	enum lspcon_vendor vendor;
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index e37d45e531df..3065727015a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -35,6 +35,8 @@
> >  #define LSPCON_VENDOR_PARADE_OUI 0x001CF8  #define
> > LSPCON_VENDOR_MCA_OUI 0x0060AD
> >
> > +#define DPCD_MCA_LSPCON_HDR_STATUS	0x70003
> > +
> >  /* AUX addresses to write MCA AVI IF */  #define
> > LSPCON_MCA_AVI_IF_WRITE_OFFSET 0x5C0  #define
> LSPCON_MCA_AVI_IF_CTRL
> > 0x5DF @@ -104,6 +106,31 @@ static bool lspcon_detect_vendor(struct
> > intel_lspcon *lspcon)
> >  	return true;
> >  }
> >
> > +void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon) {
> > +	struct intel_digital_port *dig_port =3D
> > +		container_of(lspcon, struct intel_digital_port, lspcon);
> > +	struct drm_device *dev =3D dig_port->base.base.dev;
> > +	struct intel_dp *dp =3D lspcon_to_intel_dp(lspcon);
> > +	u8 hdr_caps;
> > +	int ret;
> > +
> > +	/* Enable HDR for MCA based LSPCON devices */
> > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > +		ret =3D drm_dp_dpcd_read(&dp->aux,
> DPCD_MCA_LSPCON_HDR_STATUS,
> > +				       &hdr_caps, 1);
> > +	else
> > +		return;
> > +
> > +	if (ret < 0) {
> > +		drm_dbg_kms(dev, "HDR capability detection failed\n");
> > +		lspcon->hdr_supported =3D false;
> > +	} else if (hdr_caps & 0x1) {
> > +		drm_dbg_kms(dev, "LSPCON capable of HDR\n");
> > +		lspcon->hdr_supported =3D true;
> > +	}
> > +}
> > +
> >  static enum drm_lspcon_mode lspcon_get_current_mode(struct
> > intel_lspcon *lspcon)  {
> >  	enum drm_lspcon_mode current_mode;
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > index b03dcb7076d8..a19b3564c635 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> > @@ -15,6 +15,7 @@ struct intel_digital_port;  struct intel_encoder;
> > struct intel_lspcon;
> >
> > +void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
> >  void lspcon_resume(struct intel_digital_port *dig_port);  void
> > lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);  void
> > lspcon_write_infoframe(struct intel_encoder *encoder,
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
