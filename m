Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA76433501
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 13:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24626E064;
	Tue, 19 Oct 2021 11:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1FB6E064
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 11:48:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="208588029"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="208588029"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:48:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="594206599"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2021 04:48:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:48:06 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:48:04 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 19 Oct 2021 17:18:02 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 4/4] drm/i915/dsi: Ungate clock before enabling the phy
Thread-Index: AQHXw+yfy9Z1c2yNRkSqQfk1IFFtcKvZwTMAgABvplD//6jzAIAAXH5A
Date: Tue, 19 Oct 2021 11:48:02 +0000
Message-ID: <498bf0f8ee914c4f98a6980766bec346@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-5-vandita.kulkarni@intel.com>
 <87y26pqpw9.fsf@intel.com> <a9ed33b941ed4a2cb8c8375c0ce81281@intel.com>
 <87ee8hqltj.fsf@intel.com>
In-Reply-To: <87ee8hqltj.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: Ungate clock before
 enabling the phy
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, October 19, 2021 5:16 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: RE: [PATCH 4/4] drm/i915/dsi: Ungate clock before enabling the p=
hy
>=20
> On Tue, 19 Oct 2021, "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, October 19, 2021 3:48 PM
> >> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> >> <matthew.d.roper@intel.com>; Kulkarni, Vandita
> >> <vandita.kulkarni@intel.com>
> >> Subject: Re: [PATCH 4/4] drm/i915/dsi: Ungate clock before enabling
> >> the phy
> >>
> >> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com>
> wrote:
> >> > For the PHY enable/disable signalling to propagate between Dispaly
> >> > and PHY, DDI clocks need to be running when enabling the PHY.
> >> >
> >>
> >> A bspec reference would be useful:
> >>
> >> Bspec: NNN
> >>
> >> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
> >> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > index 8c166f92f8bd..77cd01ecfa80 100644
> >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > @@ -1135,8 +1135,6 @@ static void
> >> >  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
> >> >  			      const struct intel_crtc_state *crtc_state)  {
> >> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >> > -
> >> >  	/* step 4a: power up all lanes of the DDI used by DSI */
> >> >  	gen11_dsi_power_up_lanes(encoder);
> >> >
> >> > @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct
> >> intel_encoder *encoder,
> >> >  	/* step 4c: configure voltage swing and skew */
> >> >  	gen11_dsi_voltage_swing_program_seq(encoder);
> >> >
> >> > +	gen11_dsi_ungate_clocks(encoder);
> >> > +
> >> >  	/* enable DDI buffer */
> >> >  	gen11_dsi_enable_ddi_buffer(encoder);
> >> >
> >> > @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct
> >> intel_encoder *encoder,
> >> >  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
> >> >  	gen11_dsi_configure_transcoder(encoder, crtc_state);
> >> >
> >> > -	/* Step 4l: Gate DDI clocks */
> >> > -	if (DISPLAY_VER(dev_priv) =3D=3D 11)
> >> > -		gen11_dsi_gate_clocks(encoder);
> >> > +	gen11_dsi_gate_clocks(encoder);
> >>
> >> So how does this relate to
> >> 991d9557b0c4 ("drm/i915/tgl/dsi: Gate the ddi clocks after pll
> >> mapping")
> >
> > As per the latest bspec, this change doesn't seem to be valid anymore.
> > It is marked with removed tag.
> > When TGL got added this change came in.
> >
> > But now with ADL the whole thing is marked as removed.
> > So, Do you suggest that I submit a revert for this change ?
>=20
> No, just an explanation and maybe that commit reference in the commit
> message.

Okay, will do that.

Thanks,
Vandita=20
>=20
> BR,
> Jani.
>=20
> >
> > Thanks,
> > Vandita
> >>
> >> >  }
> >> >
> >> >  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
