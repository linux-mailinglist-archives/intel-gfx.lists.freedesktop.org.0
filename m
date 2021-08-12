Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565E83EA846
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 18:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9DF6E42A;
	Thu, 12 Aug 2021 16:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A126E42A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 16:10:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215116018"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="215116018"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 09:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="469806243"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2021 09:05:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 09:05:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 09:05:30 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Thu, 12 Aug 2021 09:05:30 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [CI 1/2] drm/i915/step: Add macro magic for handling
 steps
Thread-Index: AQHXfOZx7KmcR5MySkGeqtG9msbcd6twPPqA///wyXA=
Date: Thu, 12 Aug 2021 16:05:29 +0000
Message-ID: <14f8c2ebed0c4fe8b48421cecd6b2e84@intel.com>
References: <20210719213828.5738-1-anusha.srivatsa@intel.com>
 <87a6lnm1ag.fsf@intel.com>
In-Reply-To: <87a6lnm1ag.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/step: Add macro magic for
 handling steps
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
> Sent: Thursday, August 12, 2021 2:59 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/step: Add macro magic for hand=
ling
> steps
>=20
> On Mon, 19 Jul 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > With the addition of stepping info for all platforms, lets use macros
> > for handling them and autogenerating code for all steps at a time.
> >
> > Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_step.c | 14 ++++++++++++
> > drivers/gpu/drm/i915/intel_step.h | 37 +++++++++++++++++++------------
> >  2 files changed, 37 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_step.c
> > b/drivers/gpu/drm/i915/intel_step.c
> > index 9fcf17708cc8..d150d138e889 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -182,3 +182,17 @@ void intel_step_init(struct drm_i915_private
> > *i915)
> >
> >  	RUNTIME_INFO(i915)->step =3D step;
> >  }
> > +
> > +#define STEP_NAME_CASE(name)	\
> > +	(case STEP_##name:	\
> > +		return #name)
> > +
> > +const char *intel_step_name(enum intel_step step) {
> > +	switch (step) {
> > +	STEP_NAME_LIST(STEP_NAME_CASE);
> > +
> > +	default:
> > +		return "**";
> > +	}
> > +}
> > diff --git a/drivers/gpu/drm/i915/intel_step.h
> > b/drivers/gpu/drm/i915/intel_step.h
> > index 88a77159703e..f6641e2a3c77 100644
> > --- a/drivers/gpu/drm/i915/intel_step.h
> > +++ b/drivers/gpu/drm/i915/intel_step.h
> > @@ -15,30 +15,39 @@ struct intel_step_info {
> >  	u8 display_step;
> >  };
> >
> > +#define STEP_ENUM_VAL(name)  STEP_##name,
> > +
> > +#define STEP_NAME_LIST(func)		\
> > +	func(A0)			\
> > +	func(A1)			\
> > +	func(A2)			\
> > +	func(B0)			\
> > +	func(B1)			\
> > +	func(B2)			\
> > +	func(C0)			\
> > +	func(C1)			\
> > +	func(D0)			\
> > +	func(D1)			\
> > +	func(E0)			\
> > +	func(F0)			\
> > +	func(G0)			\
> > +	func(H0)			\
> > +	func(I0)			\
> > +	func(I1)			\
> > +	func(J0)
> > +
> >  /*
> >   * Symbolic steppings that do not match the hardware. These are valid
> both as gt
> >   * and display steppings as symbolic names.
> >   */
> >  enum intel_step {
> >  	STEP_NONE =3D 0,
> > -	STEP_A0,
> > -	STEP_A2,
> > -	STEP_B0,
> > -	STEP_B1,
> > -	STEP_C0,
> > -	STEP_D0,
> > -	STEP_D1,
> > -	STEP_E0,
> > -	STEP_F0,
> > -	STEP_G0,
> > -	STEP_H0,
> > -	STEP_I0,
> > -	STEP_I1,
> > -	STEP_J0,
> > +	STEP_NAME_LIST(STEP_ENUM_VAL)
> >  	STEP_FUTURE,
> >  	STEP_FOREVER,
> >  };
>=20
> It's been merged already, and so be it.
>=20
> I'll just note that the main reason I don't like adding this kind of macr=
o
> abstractions is that it throws off source code tagging tools like ctags a=
nd gnu
> global. I can no longer navigate the definition and all the references of
> STEP_* using the tools, and it degenerates to git grep which is much wors=
e as
> it doesn't know about C syntax or semantics. It's not always about how th=
e
> code looks, it's also about how people can navigate the code base.

Had not considered that :-/ will keep this in mind from now on.
Thanks for the feedback.

Anusha
> BR,
> Jani.
>=20
>=20
> >
> >  void intel_step_init(struct drm_i915_private *i915);
> > +const char *intel_step_name(enum intel_step step);
> >
> >  #endif /* __INTEL_STEP_H__ */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
