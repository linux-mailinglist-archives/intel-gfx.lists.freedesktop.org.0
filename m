Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960FE22257A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94126EBA4;
	Thu, 16 Jul 2020 14:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C51E76EBA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 14:29:10 +0000 (UTC)
IronPort-SDR: +mq6bBc/nKCVZhXn740w1QSuvdXpUY4SP5UY1/MVcOdQ7e0G3CKsMbTiER6fp/PYC4YlmQM88v
 V1A5SUhhvduQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="129456840"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="129456840"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 07:29:10 -0700
IronPort-SDR: fWFpk51E2AfLLIL842+Jzb3DYLiRl0Hp2zhKWCPg6VshWLcBUp+GPmZEml4NmVIHhpefLPUZ2B
 hB1Dyki/Ip2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="269265820"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 07:29:10 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 07:29:10 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 07:29:09 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 07:29:09 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.234]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.200]) with mapi id 14.03.0439.000;
 Thu, 16 Jul 2020 19:59:07 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/fbc: Disable fbc by
 default on TGL
Thread-Index: AQHWW0qEizM2SkbC00CXwCx6jQk+6akJyRyAgAAC/YCAAHfukA==
Date: Thu, 16 Jul 2020 14:29:06 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F825BC9C5@BGSMSX104.gar.corp.intel.com>
References: <20200716085540.2211-1-uma.shankar@intel.com>
 <20200716123803.GU6112@intel.com> <20200716124845.GV6112@intel.com>
In-Reply-To: <20200716124845.GV6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fbc: Disable fbc by
 default on TGL
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
> Sent: Thursday, July 16, 2020 6:19 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fbc: Disable fbc by def=
ault on
> TGL
> =

> On Thu, Jul 16, 2020 at 03:38:03PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, Jul 16, 2020 at 02:25:40PM +0530, Uma Shankar wrote:
> > > Fbc is causing random underruns in CI execution on TGL platforms.
> > > Disabling the same while the problem is being debugged and analyzed.
> > >
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >
> > Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Scratch that...
> =

> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 3a4f980788a6..1d6370b29b27 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -1420,6 +1420,13 @@ void intel_fbc_handle_fifo_underrun_irq(struct
> drm_i915_private *dev_priv)
> > >   */
> > >  static int intel_sanitize_fbc_option(struct drm_i915_private
> > > *dev_priv)  {
> > > +	/*
> > > +	 * Fbc is causing random underruns in CI execution on TGL platforms.
> > > +	 * Disabling the same while the problem is being debugged and analy=
zed.
> > > +	 */
> > > +	if (IS_TIGERLAKE(dev_priv))
> > > +		return 0;
> =

> ... looks lke this should be done *after* the modparam check below.
> Otherwise we can't enable fbc for testing via the modparam.

Oh yeah, updated the change and sent a v2 with fix. Thanks Ville.

Regards,
Uma Shankar

> > > +
> > >  	if (dev_priv->params.enable_fbc >=3D 0)
> > >  		return !!dev_priv->params.enable_fbc;
> > >
> > > --
> > > 2.22.0
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
