Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4449A1E3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 02:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C3C10E4D0;
	Tue, 25 Jan 2022 01:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E2A810E4D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 01:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643072818; x=1674608818;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LaA77SmdUF3eBuukvjD4ylUKP1JpwA+f9Ni6tLJFtoc=;
 b=Z96B8ylorx2M39szPjsPKlc8ZJ17D9w/uSj2CntE1sEaC+hhHomvxLgl
 5UsX91IMmRPM36wo+cjqw4bN9eL135bfbzPl9K4C4nfG07E+hNSWGj2PP
 um7vf8JldLGFr8XDa8rJ+X5VSfgDypJd7/6YrIn0Pb4tHaqH0mHJxFrQM
 l6OSSRPqvPqy+NB4J9OMLdg6ctOkViyaKeix+TU006LKcKzHVaYZPs2TY
 48KDGywHnJJPSPyaTXCdLWrrKTY4QK7QxE1QhmcaYt5V6XPwTW19lrmI9
 uW+b+t2E4hvuSe/2nipbgM9umlkDZF4Vy0Z0HwI478+Cmk+c7lpaApoiZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246407072"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="246407072"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 17:06:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="617442209"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jan 2022 17:06:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 17:06:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 17:06:56 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Mon, 24 Jan 2022 17:06:56 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [v2] drm/i915/rpl-s: Add stepping info
Thread-Index: AQHYEYEkTYeorFecY06FWiMVFDVuDKxzcniA//96CvA=
Date: Tue, 25 Jan 2022 01:06:56 +0000
Message-ID: <fd2c75e3bd1a496ebb5a81a59efeda8b@intel.com>
References: <20220125001635.4004286-1-anusha.srivatsa@intel.com>
 <Ye9M6yxTQExxXRFn@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Ye9M6yxTQExxXRFn@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/rpl-s: Add stepping info
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, January 24, 2022 5:06 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v2] drm/i915/rpl-s: Add stepping info
>=20
> On Mon, Jan 24, 2022 at 04:16:35PM -0800, Anusha Srivatsa wrote:
> > Add stepping-substepping info in
> > accordance to BSpec changes.
> > Though it looks weird, the revision ID for the newer stepping is
> > indeed backwards and is in accordance to the spec.
> >
> > v2: Rearrange the platforms in logical order (Matt)
> >
> > Bspec: 53655
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>
>=20
> Git tools like send-email get very confused when they try to parse "Last,
> First" name ordering.  It's best to use "First Last" with no comma to avo=
id
> problems.

Yeah, realized it immediately after hitting send :-/

> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_step.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index a4b16b9e2e55..be055eb0b610 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -122,6 +122,11 @@ static const struct intel_step_info
> dg2_g11_revid_step_tbl[] =3D {
> >  	[0x5] =3D { COMMON_GT_MEDIA_STEP(B1), .display_step =3D STEP_C0 },
> };
> >
> > +static const struct intel_step_info adls_rpls_revids[] =3D {
> > +	[0x4] =3D { COMMON_GT_MEDIA_STEP(D0), .display_step =3D STEP_D0 },
> > +	[0xC] =3D { COMMON_GT_MEDIA_STEP(D0), .display_step =3D STEP_C0 },
> };
> > +
> >  void intel_step_init(struct drm_i915_private *i915)  {
> >  	const struct intel_step_info *revids =3D NULL; @@ -129,6 +134,7 @@
> > void intel_step_init(struct drm_i915_private *i915)
> >  	int revid =3D INTEL_REVID(i915);
> >  	struct intel_step_info step =3D {};
> >
> > +
>=20
> Unwanted extra line here, but we can just fix that up (and the cc line
> above) while applying the patch.
>=20
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!
Anusha
> >  	if (IS_DG2_G10(i915)) {
> >  		revids =3D dg2_g10_revid_step_tbl;
> >  		size =3D ARRAY_SIZE(dg2_g10_revid_step_tbl);
> > @@ -141,6 +147,9 @@ void intel_step_init(struct drm_i915_private *i915)
> >  	} else if (IS_ALDERLAKE_P(i915)) {
> >  		revids =3D adlp_revids;
> >  		size =3D ARRAY_SIZE(adlp_revids);
> > +	} else if (IS_ADLS_RPLS(i915)) {
> > +                revids =3D adls_rpls_revids;
> > +                size =3D ARRAY_SIZE(adls_rpls_revids);
> >  	} else if (IS_ALDERLAKE_S(i915)) {
> >  		revids =3D adls_revids;
> >  		size =3D ARRAY_SIZE(adls_revids);
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
