Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972F245392A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 19:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D51789DBD;
	Tue, 16 Nov 2021 18:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CC889DBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 18:07:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="319992260"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="319992260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 10:07:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="548759062"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 16 Nov 2021 10:07:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:07:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 10:07:07 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Tue, 16 Nov 2021 10:07:07 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/rpl-s: Enable guc submission by
 default
Thread-Index: AQHX2Am+l+fmZJgDpkeMBSwzaui0qawFCXUAgAFv5LA=
Date: Tue, 16 Nov 2021 18:07:07 +0000
Message-ID: <a622941cc1a442d9af524f6612c8b2ea@intel.com>
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-4-anusha.srivatsa@intel.com>
 <87o86l1uxz.fsf@intel.com>
In-Reply-To: <87o86l1uxz.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/rpl-s: Enable guc submission
 by default
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 15, 2021 4:10 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/rpl-s: Enable guc submissio=
n by
> default
>=20
> On Fri, 12 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Though, RPL-S is defined as subplatform of ADL-S, unlike ADL-S, it has
> > GuC submission by default.
> >
> > Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > index 2fef3b0bbe95..7088f5370e7f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> > @@ -35,7 +35,7 @@ static void uc_expand_default_options(struct intel_uc
> *uc)
> >  	}
> >
> >  	/* Intermediate platforms are HuC authentication only */
> > -	if (IS_ALDERLAKE_S(i915)) {
> > +	if ((IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915))) {
>=20
> Excessive parenthesis.

Duly noted. Will make the changes,

Thanks!
Anusha
> BR,
> Jani.
>=20
> >  		i915->params.enable_guc =3D ENABLE_GUC_LOAD_HUC;
> >  		return;
> >  	}
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
