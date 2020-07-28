Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D48E230533
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 10:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDD689B01;
	Tue, 28 Jul 2020 08:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C5F89B01
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 08:21:30 +0000 (UTC)
IronPort-SDR: jaNHIMndwFifxpyJQrReHBDZM+4Y7mukoCTSQI3KaQ5+898mBLZSA63SdXG9Jef5RUs3XuSUom
 6R/VUucRnxkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="139202193"
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="139202193"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 01:21:30 -0700
IronPort-SDR: ALiX77BqNAE5iR9ngkRxm0AT7LEGLdYYAtP2MFehBPbq2d+2cbWkb7JtNlLW4q7KM87sNcaWFA
 wF7MN9FKMsDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="272245684"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jul 2020 01:21:29 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Jul 2020 09:21:27 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 28 Jul 2020 13:51:26 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v2] drm/i915/display/fbc: Disable fbc by default on TGL
Thread-Index: AQHWW31IOKF1KWf08Uaz91QH10JNPKkJ7B4AgBLMsOA=
Date: Tue, 28 Jul 2020 08:21:26 +0000
Message-ID: <472522150c534a8aba4b3b0a69fc60df@intel.com>
References: <20200716145857.6911-1-uma.shankar@intel.com>
 <20200716144446.GW6112@intel.com>
In-Reply-To: <20200716144446.GW6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/display/fbc: Disable fbc by default
 on TGL
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
> Sent: Thursday, July 16, 2020 8:15 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Lisovskiy, Stanislav
> <stanislav.lisovskiy@intel.com>
> Subject: Re: [v2] drm/i915/display/fbc: Disable fbc by default on TGL
> =

> On Thu, Jul 16, 2020 at 08:28:57PM +0530, Uma Shankar wrote:
> > Fbc is causing random underruns in CI execution on TGL platforms.
> > Disabling the same while the problem is being debugged and analyzed.
> >
> > v2: Moved the check below the module param check (Ville)
> >
> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> =

> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

This is pushed to dinq. Thanks for the review.

Regards,
Uma Shankar

> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 3a4f980788a6..195b8be4532a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1426,6 +1426,13 @@ static int intel_sanitize_fbc_option(struct
> drm_i915_private *dev_priv)
> >  	if (!HAS_FBC(dev_priv))
> >  		return 0;
> >
> > +	/*
> > +	 * Fbc is causing random underruns in CI execution on TGL platforms.
> > +	 * Disabling the same while the problem is being debugged and analyze=
d.
> > +	 */
> > +	if (IS_TIGERLAKE(dev_priv))
> > +		return 0;
> > +
> >  	if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >=3D 9)
> >  		return 1;
> >
> > --
> > 2.22.0
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
