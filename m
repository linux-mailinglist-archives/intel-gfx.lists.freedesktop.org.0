Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7E45E12A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 20:48:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7556E0C6;
	Thu, 25 Nov 2021 19:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD19E6E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 19:48:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="222431196"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="222431196"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 11:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="475711557"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 25 Nov 2021 11:48:15 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 25 Nov 2021 11:48:14 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 26 Nov 2021 01:18:12 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Fri, 26 Nov 2021 01:18:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/xelpd: Enable Pipe color
 support for D13 platform
Thread-Index: AQHX4KGB8ulOVrNlyE2fIdAvUTRzh6wSahsAgAI/LMA=
Date: Thu, 25 Nov 2021 19:48:12 +0000
Message-ID: <6454c845d6ce4634baeab71a76ac5810@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-2-uma.shankar@intel.com> <YZ5TKAAVV30iYX0o@intel.com>
In-Reply-To: <YZ5TKAAVV30iYX0o@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/xelpd: Enable Pipe color
 support for D13 platform
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "=ville.syrjala@linux.intel.com" <=ville.syrjala@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, November 24, 2021 8:29 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; =3Dville.syrjala@linux.intel.com
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/xelpd: Enable Pipe color su=
pport for
> D13 platform
>=20
> On Wed, Nov 24, 2021 at 01:06:47AM +0530, Uma Shankar wrote:
> > Enable pipe color support for Display 13 platforms. Currently limit to
> > just 10bit gamma and later extend it for logarithmic gamma, once the
> > new UAPI is agreed by community and implemented by a userspace
> > consumer.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index c870a0e50cb1..e529dbeee525 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1574,6 +1574,8 @@ static int glk_color_check(struct
> > intel_crtc_state *crtc_state)
> >
> >  static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
> > {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
> s/dev_priv/i915/ for new stuff please.

Sure, will update this.

>=20
> >  	u32 gamma_mode =3D 0;
> >
> >  	if (crtc_state->hw.degamma_lut)
> > @@ -1586,6 +1588,13 @@ static u32 icl_gamma_mode(const struct
> intel_crtc_state *crtc_state)
> >  	if (!crtc_state->hw.gamma_lut ||
> >  	    crtc_state_is_legacy_gamma(crtc_state))
> >  		gamma_mode |=3D GAMMA_MODE_MODE_8BIT;
> > +	/*
> > +	 * Enable 10bit gamma for D13
> > +	 * ToDo: Extend to Logarithmic Gamma once the new UAPI
> > +	 * is acccepted and implemented by a userspace consumer
> > +	 */
> > +	else if (DISPLAY_VER(dev_priv) >=3D 13)
> > +		gamma_mode |=3D GAMMA_MODE_MODE_10BIT;
>=20
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> >  	else
> >  		gamma_mode |=3D
> GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
> >
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
