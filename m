Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D2250997
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 21:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE086E573;
	Mon, 24 Aug 2020 19:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529D56E56D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 19:46:35 +0000 (UTC)
IronPort-SDR: cdbFvKKjYPDunJH5M8EzmO9p+cWhv1ex+VGO391xCebzhfvQkYhvPAsiJcffPvmiocUd/KNbAg
 AKJFRBnpc2cQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="153557066"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="153557066"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 12:46:34 -0700
IronPort-SDR: EqfAt/8zU3OP6jsjmqSzegJ+VLlZwOxdRd55gVKBVTpDkHCPmLijS2VPaYY8ZWkAeLEBIa9gw4
 lo9LhJRhebiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="322461960"
Received: from unknown (HELO fmsmsx604.amr.corp.intel.com) ([10.18.84.214])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2020 12:46:33 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 24 Aug 2020 12:46:33 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Aug 2020 01:16:31 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 25 Aug 2020 01:16:30 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wait
 before fbc activation
Thread-Index: AQHWdGW2dVtZXLeDJEK2aqC8Xxo7NalHQFSAgAB0YYA=
Date: Mon, 24 Aug 2020 19:46:30 +0000
Message-ID: <a9aa11e60f064837b106d1c93ee2b6fc@intel.com>
References: <20200817074418.24045-1-uma.shankar@intel.com>
 <20200824181619.GJ6112@intel.com>
In-Reply-To: <20200824181619.GJ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wait
 before fbc activation
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
> Sent: Monday, August 24, 2020 11:46 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wa=
it
> before fbc activation
> =

> On Mon, Aug 17, 2020 at 01:14:18PM +0530, Uma Shankar wrote:
> > Add an extra vblank before fbc is activated.
> > WA: 1409689360
> > Corruption with FBC around plane 1A enabling. In the Frame Buffer
> > Compression programming sequence "Display Plane Enabling with FBC"
> > add a wait for vblank between plane enabling step 1 and FBC enabling
> > step 2.
> =

> Already there due to drm_atomic_helper_wait_for_flip_done().

Hi Ville,
__intel_fbc_post_update is also called through intel_fbc_flush. The extra w=
ait at that point seem
to be taking care of this case as well.

We can add it in vblank worker as suggested by Maarten or do you feel this =
should be handled differently.

Regards,
Uma Shankar

> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 2ab32e6532ff..0ed252ff2c53 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1085,10 +1085,12 @@ static void __intel_fbc_post_update(struct
> intel_crtc *crtc)
> >  	if (!intel_fbc_can_activate(crtc))
> >  		return;
> >
> > -	if (!fbc->busy_bits)
> > +	if (!fbc->busy_bits) {
> > +		intel_wait_for_vblank(dev_priv, crtc->pipe);
> >  		intel_fbc_hw_activate(dev_priv);
> > -	else
> > +	} else {
> >  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> > +	}
> >  }
> >
> >  void intel_fbc_post_update(struct intel_atomic_state *state,
> > --
> > 2.22.0
> >
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
