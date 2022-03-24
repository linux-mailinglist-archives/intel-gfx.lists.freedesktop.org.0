Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004054E60E7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 10:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E29610E894;
	Thu, 24 Mar 2022 09:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987C510E889
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 09:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648113132; x=1679649132;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uflkqx8U1UYizxR1hZvY4FuCPyGUy+/+SgD5AeT5ArA=;
 b=UkFf08ad1/UEuS/pcfdmxvdZcOVpTaerNIk90SggEFH3OKu29lN5ozYF
 6YGJvR9TvEQYRWQaAyDVyM9BZRvjVfL6Vi4Nz0ZbUIYiGA6i3rc1T1OKt
 KDBZv5iWepDmiy+LptrjizCqQj1D9bC86Jogl+ZKEahr4j+oos22kEup1
 wueohrdVCShM6rpRwiQwlJVS5OPb/Jk7kCL9z45Mf4e0tX73xx/FL/o+e
 DcrMN+M2wrcsUMTli3nngsbUBRB/DoDK1q85ECIk6DwhDokT0YPr008IZ
 05Eetxfh8EOxXOxF/qrd+4xpbX4pyoMgqwjdl2giVlO97leCbf6SbRYeH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258278890"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="258278890"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 02:12:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="552798399"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2022 02:12:11 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 02:12:10 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Mar 2022 14:42:08 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Thu, 24 Mar 2022 14:42:08 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Extend DP HDR support to
 hsw+
Thread-Index: AQHYPuXy7Q/rD2XCNUepoJ8VqKZYp6zM960AgAAD8QCAAUS3IA==
Date: Thu, 24 Mar 2022 09:12:08 +0000
Message-ID: <10ec0a9336a544d3817945a785b89954@intel.com>
References: <20220323184522.1359329-1-uma.shankar@intel.com>
 <YjtvRNdgwZChhYqM@intel.com> <Yjtyktb/iGsSME8G@intel.com>
In-Reply-To: <Yjtyktb/iGsSME8G@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Extend DP HDR support to
 hsw+
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, March 24, 2022 12:49 AM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Extend DP HDR support =
to hsw+
>=20
> On Wed, Mar 23, 2022 at 09:04:36PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Mar 24, 2022 at 12:15:22AM +0530, Uma Shankar wrote:
> > > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > > packet as GMP. Hence, extending the support for HDR on DP encoders
> > > for the same.
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 9e19165fd175..e10d2c151abf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4939,7 +4939,7 @@ intel_dp_add_properties(struct intel_dp *intel_=
dp,
> struct drm_connector *connect
> > >  		intel_attach_dp_colorspace_property(connector);
> > >  	}
> > >
> > > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > > +	if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >=3D 8)
> >
> > CHV does not have this at all, and HSW/BDW don't have it on transcoder =
EDP.
>=20
> Actually vlv/chv might have it since the vlv video DIP was supposedly rip=
ped from ibx.
> So potentially we could just enable this for all ilk+.
> But that would require actual testing, so hsw+ seems like good enough for=
 now.

Sure, will update this.

> >
> > Also if we're going to attach this unconditionally then we should stop
> > attaching it again in the LSPCON init path. Or we should skip this one
> > when LSPCON is present.

Ok, have taken care of it and sent out the next version.
Thanks Ville for the feedback.

Regards,
Uma Shankar
> >
> > >  		drm_object_attach_property(&connector->base,
> > >  					   connector->dev-
> >mode_config.hdr_output_metadata_property,
> > >  					   0);
> > > --
> > > 2.25.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
