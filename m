Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3516540A7DA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 09:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADDA6E420;
	Tue, 14 Sep 2021 07:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC636E420
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 07:37:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="202088461"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="202088461"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 00:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="609505501"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2021 00:37:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 00:37:56 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 00:37:55 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 14 Sep 2021 13:07:53 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
Thread-Index: AQHXqK0inD+P6mZa3kyDbF0BuUUoBquixBCAgABgfSA=
Date: Tue, 14 Sep 2021 07:37:53 +0000
Message-ID: <ca11a0d5ffe24113935e1dd7d4d77ae1@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
 <20210914071909.GA27173@intel.com>
In-Reply-To: <20210914071909.GA27173@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Tuesday, September 14, 2021 12:49 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Navare, Manasi D <manasi.d.navare@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC
> engine for higher moderates
>=20
> On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
> > Each VDSC operates with 1ppc throughput, hence enable the second VDSC
> > engine when moderate is higher that the current cdclk.
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
> >  1 file changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 161c33b2c869..55878f65f724 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -70,6 +70,7 @@
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> >  #include "intel_vrr.h"
> > +#include "intel_cdclk.h"
> >
> >  #define DP_DPRX_ESI_LEN 14
> >
> > @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  				       struct drm_connector_state *conn_state,
> >  				       struct link_config_limits *limits)  {
> > +	struct intel_cdclk_state *cdclk_state;
> >  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> >  	struct drm_i915_private *dev_priv =3D to_i915(dig_port-
> >base.base.dev);
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&pipe_config->hw.adjusted_mode;
> > +	struct intel_atomic_state *state =3D
> > +				to_intel_atomic_state(pipe_config-
> >uapi.state);
> >  	int pipe_bpp;
> >  	int ret;
> >
> > @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >  		}
> >  	}
> >
> > +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> > +	if (IS_ERR(cdclk_state))
> > +		return PTR_ERR(cdclk_state);
> > +
> >  	/*
> >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > -	 * is greater than the maximum Cdclock and if slice count is even
> > +	 * is greater than the current Cdclock and if slice count is even
> >  	 * then we need to use 2 VDSC instances.
> >  	 */
> > -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> > +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||
>=20
> So in the end, we didn't have to bump CDCLK up to get rid of that?

The solution that could fix the underruns was either of these:  set max cdc=
lk that can drive this or enable the second dsc engine if slice count  > 2 =
 to achieve 2ppc.

>=20
> Anyways, checked with BSpec 49259, seems to make sense, was no point in
> comparing to max CDCLK, which is not even currently used.
>=20
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> >  	    pipe_config->bigjoiner) {
> >  		if (pipe_config->dsc.slice_count < 2) {
> >  			drm_dbg_kms(&dev_priv->drm,
> > --
> > 2.32.0
> >
