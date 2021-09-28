Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AE441AA6E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 10:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21446E876;
	Tue, 28 Sep 2021 08:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5DF6E88F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 08:08:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="224680971"
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; d="scan'208";a="224680971"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 01:08:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; d="scan'208";a="456540685"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 28 Sep 2021 01:08:01 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 01:08:00 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 13:37:58 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:37:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix the dsc check while
 selecting min_cdclk
Thread-Index: AQHXqfSeu080WKY9M0eEDWRKcs5n8au3VtcAgAHUL1A=
Date: Tue, 28 Sep 2021 08:07:58 +0000
Message-ID: <4dd46926250b46459c27d26e774e63e4@intel.com>
References: <20210915054338.29869-1-vandita.kulkarni@intel.com>
 <87fstqs6hh.fsf@intel.com>
In-Reply-To: <87fstqs6hh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix the dsc check while
 selecting min_cdclk
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Monday, September 27, 2021 3:09 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-gfx@lists.freed=
esktop.org
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix the dsc check whil=
e selecting
> min_cdclk
>=20
> On Wed, 15 Sep 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > The right parameter that selects second dsc engine is dsc_split.
> > Hence use dsc_split instead of slice_count while selecting the cdclk
> > in order to accommodate 1ppc limitaion of vdsc.
> >
> > Fixes: fe01883fdcef ("drm/i915: Get proper min cdclk if vDSC enabled")
> > Suggested-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>=20
> Sorry for the delay!
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed the change to drm-intel-next. Thanks for the patch and review.

Regards,
Uma Shankar
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 9aec17b33819..3a1cdb3937aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2140,13 +2140,11 @@ int intel_crtc_compute_min_cdclk(const struct
> intel_crtc_state *crtc_state)
> >  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> >
> >  	/*
> > -	 * VDSC engine can process only 1 pixel per Cd clock.
> > -	 * In case VDSC is used and max slice count =3D=3D 1,
> > -	 * max supported pixel clock should be 100% of CD clock.
> > -	 * Then do min_cdclk and pixel clock comparison to get cdclk.
> > +	 * When we decide to use only one VDSC engine, since
> > +	 * each VDSC operates with 1 ppc throughput, pixel clock
> > +	 * cannot be higher than the VDSC clock (cdclk)
> >  	 */
> > -	if (crtc_state->dsc.compression_enable &&
> > -	    crtc_state->dsc.slice_count =3D=3D 1)
> > +	if (crtc_state->dsc.compression_enable &&
> > +!crtc_state->dsc.dsc_split)
> >  		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> >
> >  	/*
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
