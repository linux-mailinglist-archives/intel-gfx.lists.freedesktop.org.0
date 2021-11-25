Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5EB45E169
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 21:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB296E1B8;
	Thu, 25 Nov 2021 20:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BCB6E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 20:12:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="259462736"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="259462736"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 12:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="457957150"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 25 Nov 2021 12:12:37 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 25 Nov 2021 12:12:36 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 26 Nov 2021 01:42:34 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Fri, 26 Nov 2021 01:42:34 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/xelpd: Add Pipe Color Lut caps
 to platform config
Thread-Index: AQHX4KGH6jmzojjvK0ao/2wa/nH866wSacMAgAJFz2A=
Date: Thu, 25 Nov 2021 20:12:33 +0000
Message-ID: <1497ef97072846129998fb9cca084439@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-4-uma.shankar@intel.com> <YZ5S3tnYZZbYPbYo@intel.com>
In-Reply-To: <YZ5S3tnYZZbYPbYo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/xelpd: Add Pipe Color Lut caps
 to platform config
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
> Sent: Wednesday, November 24, 2021 8:28 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; =3Dville.syrjala@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/xelpd: Add Pipe Color Lut c=
aps to
> platform config
>=20
> On Wed, Nov 24, 2021 at 01:06:49AM +0530, Uma Shankar wrote:
> > XE_LPD has 128 Lut entries for Degamma, with additional 3 entries for
> > extended range. It has 511 entries for gamma with additional 2 entries
> > for extended range.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index f01cba4ec283..40d21a8c50ff
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -938,7 +938,7 @@ static const struct intel_device_info adl_s_info =
=3D
> > {
> >
> >  #define XE_LPD_FEATURES \
> >  	.abox_mask =3D GENMASK(1, 0),						\
> > -	.color =3D { .degamma_lut_size =3D 0, .gamma_lut_size =3D 0 },		\
> > +	.color =3D { .degamma_lut_size =3D 128, .gamma_lut_size =3D 513 },		\
>=20
> Missing .degamma_lut_tests.

Yeah, will update this.

> Shouldn't .gamma_lut_size be 1024 or did they really change it?

Right, for 10bit gamma 1024 is the size as data is in 0.10 formats. It gets=
 limited to
513 in case of logarithmic due to increased precision needing 2 register sp=
ace for
1 entry. Thanks Ville for catching it, will fix this.

Regards,
Uma Shankar

> >  	.dbuf.size =3D 4096,							\
> >  	.dbuf.slice_mask =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |
> 	\
> >  		BIT(DBUF_S4),							\
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
