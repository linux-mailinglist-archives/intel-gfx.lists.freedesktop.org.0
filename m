Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8B843E16C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 14:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E126E84E;
	Thu, 28 Oct 2021 12:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783046E84E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 12:58:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="253967901"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="253967901"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 05:58:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="597785725"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 28 Oct 2021 05:58:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 05:58:14 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 05:58:12 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 18:28:10 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Thread-Topic: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
Thread-Index: AQHXxPwAQUMpbbYG1Uik7LX3npT2nqvn+8gAgABvkRA=
Date: Thu, 28 Oct 2021 12:58:10 +0000
Message-ID: <122a37fb754049608841b35115f6f594@intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-5-vandita.kulkarni@intel.com>
 <87zgqtfk8j.fsf@intel.com>
In-Reply-To: <87zgqtfk8j.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [V2 4/4] drm/i915/dsi: Ungate clock before enabling
 the phy
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
> Sent: Thursday, October 28, 2021 5:13 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com; Kulkarni,
> Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
>=20
> On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > For the PHY enable/disable signalling to propagate between Dispaly and
> > PHY, DDI clocks need to be running when enabling the PHY.
> >
> > Bspec: 49188 says gate the clocks after enabling the
> >        DDI Buffer.
> >        We also have a commit 991d9557b0c4 ("drm/i915/tgl/dsi: Gate the =
ddi
> >        clocks after pll mapping") which gates the clocks much before,
> >        as per the older spec. This commit nullifies its effect and make=
s
> >        sure that the clocks are not gated while we enable the DDI
> >        buffer.
> > v2: Bspec ref, add a comment wrt earlier clock gating sequence (Jani)
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 63dd75c6448a..e5ef5c4a32d7 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1135,8 +1135,6 @@ static void
> >  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
> >  			      const struct intel_crtc_state *crtc_state)  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > -
> >  	/* step 4a: power up all lanes of the DDI used by DSI */
> >  	gen11_dsi_power_up_lanes(encoder);
> >
> > @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct
> intel_encoder *encoder,
> >  	/* step 4c: configure voltage swing and skew */
> >  	gen11_dsi_voltage_swing_program_seq(encoder);
> >
> > +	gen11_dsi_ungate_clocks(encoder);
> > +
>=20
> What about the changes to gen11_dsi_map_pll() in commit 991d9557b0c4
> ("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")? It starts of=
f with
> clocks gated for gen12+, ungated otherwise.

Now the same spec is updated with the gate step after ddi buffer enable.
And the one before is marked with remove tag.
That makes all gen12+ align with gen 11.
You suggested to update the same in the commit message on v1.
Should I still consider just reverting that commit?

Thanks,
Vandita

>=20
> BR,
> Jani.
>=20
>=20
> >  	/* enable DDI buffer */
> >  	gen11_dsi_enable_ddi_buffer(encoder);
> >
> > @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct
> intel_encoder *encoder,
> >  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
> >  	gen11_dsi_configure_transcoder(encoder, crtc_state);
> >
> > -	/* Step 4l: Gate DDI clocks */
> > -	if (DISPLAY_VER(dev_priv) =3D=3D 11)
> > -		gen11_dsi_gate_clocks(encoder);
> > +	gen11_dsi_gate_clocks(encoder);
> >  }
> >
> >  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
