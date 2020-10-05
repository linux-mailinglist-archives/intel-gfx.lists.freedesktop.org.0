Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F250C284358
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 02:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942786E1D5;
	Tue,  6 Oct 2020 00:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B356E1D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 00:28:48 +0000 (UTC)
IronPort-SDR: Lysx2drrRVOPYEE/f15NYAZlqEf5CEpOzUCaIWYPj5t49XFjhQzybqQC8TYHSaDNXcSgMMmOcA
 cD6OpeOJBlBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="225860354"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="225860354"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 17:11:30 -0700
IronPort-SDR: N9nREw6qbQW4yCalmeapJ0U0tgAay4STzqEGCveFIpujE/zWB0i0NmzxUKodSsTAhIYlt3ySha
 3enVlVZlxblg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="341691889"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 05 Oct 2020 17:07:33 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 14:32:25 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 03:02:22 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 03:02:22 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v6 03/11] drm/i915/display: Attach HDR property for capable
 Gen9 devices
Thread-Index: AQHWitUhCGfasaZf0k+JVKTnnVBAZ6l/hUuAgAohaCA=
Date: Mon, 5 Oct 2020 21:32:22 +0000
Message-ID: <8c528c8d789647c6b4fcdf121c1e88b2@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-4-uma.shankar@intel.com>
 <20200929161417.GA6112@intel.com>
In-Reply-To: <20200929161417.GA6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 03/11] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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
> Sent: Tuesday, September 29, 2020 9:44 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v6 03/11] drm/i915/display: Attach HDR property for capable=
 Gen9
> devices
> =

> On Tue, Sep 15, 2020 at 02:30:39AM +0530, Uma Shankar wrote:
> > Attach HDR property for Gen9 devices with MCA LSPCON chips.
> >
> > v2: Cleaned HDR property attachment logic based on capability as per
> > Jani Nikula's suggestion.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > index 5e2d7ca1d20f..fd05210f4405 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -626,6 +626,11 @@ bool lspcon_init(struct intel_digital_port
> > *dig_port)
> >
> >  	lspcon_detect_hdr_capability(lspcon);
> >
> > +	if (lspcon->hdr_supported)
> > +		drm_object_attach_property(&connector->base,
> > +					   connector->dev-
> >mode_config.hdr_output_metadata_property,
> > +					   0);
> =

> Hmm. This hdr capability detection is going to cause us extra grief when =
looking
> at Kai-Heng's patch to defer lspcon detection until hotplug time. Not qui=
te sure
> what to do about that though.

Yeah Ville, saw your comments and with Kai's change merge, I am thinking ho=
w to attach
this dynamically. =


Can we just assume that Lspcon will support HDR as is the case in Gen9. We =
can just attach this
unconditionally at init if Lspcon is exposed from VBT. Will this be accepta=
ble or Any better ideas ?
 =

> > +
> >  	connector->ycbcr_420_allowed =3D true;
> >  	lspcon->active =3D true;
> >  	DRM_DEBUG_KMS("Success: LSPCON init\n");
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
