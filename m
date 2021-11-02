Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DCD442704
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 07:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C06E6E047;
	Tue,  2 Nov 2021 06:16:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAD06E047
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 06:16:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="228645811"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="228645811"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 23:14:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="540737393"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2021 23:14:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 23:14:56 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 23:14:54 -0700
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.012;
 Tue, 2 Nov 2021 11:44:52 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
Thread-Index: AQHXxPwAQUMpbbYG1Uik7LX3npT2nqvn+8gAgABvkRD//8CjgIAAXPLggAXC0ICAAYoLAA==
Date: Tue, 2 Nov 2021 06:14:52 +0000
Message-ID: <613940207027480ebc94a6f0d2ce0f6b@intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-5-vandita.kulkarni@intel.com>
 <87zgqtfk8j.fsf@intel.com> <122a37fb754049608841b35115f6f594@intel.com>
 <87mtmtfc90.fsf@intel.com> <fddde7f0495645f79730c2f48bdbf468@intel.com>
 <87fssgdqqq.fsf@intel.com>
In-Reply-To: <87fssgdqqq.fsf@intel.com>
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
> Sent: Monday, November 1, 2021 5:37 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com
> Subject: RE: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the phy
>=20
> On Thu, 28 Oct 2021, "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Thursday, October 28, 2021 8:06 PM
> >> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> >> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com
> >> Subject: RE: [V2 4/4] drm/i915/dsi: Ungate clock before enabling the
> >> phy
> >>
> >> On Thu, 28 Oct 2021, "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
> >> wrote:
> >> >> -----Original Message-----
> >> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> >> Sent: Thursday, October 28, 2021 5:13 PM
> >> >> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> >> >> gfx@lists.freedesktop.org
> >> >> Cc: Deak, Imre <imre.deak@intel.com>; Roper, Matthew D
> >> >> <matthew.d.roper@intel.com>; ville.syrjala@linux.intel.com;
> >> >> Kulkarni, Vandita <vandita.kulkarni@intel.com>
> >> >> Subject: Re: [V2 4/4] drm/i915/dsi: Ungate clock before enabling
> >> >> the phy
> >> >>
> >> >> On Tue, 19 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> wrote:
> >> >> > For the PHY enable/disable signalling to propagate between
> >> >> > Dispaly and PHY, DDI clocks need to be running when enabling the
> PHY.
> >> >> >
> >> >> > Bspec: 49188 says gate the clocks after enabling the
> >> >> >        DDI Buffer.
> >> >> >        We also have a commit 991d9557b0c4 ("drm/i915/tgl/dsi:
> >> >> > Gate the
> >> ddi
> >> >> >        clocks after pll mapping") which gates the clocks much bef=
ore,
> >> >> >        as per the older spec. This commit nullifies its effect an=
d makes
> >> >> >        sure that the clocks are not gated while we enable the DDI
> >> >> >        buffer.
> >> >> > v2: Bspec ref, add a comment wrt earlier clock gating sequence
> >> >> > (Jani)
> >> >> >
> >> >> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
> >> >> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >> > index 63dd75c6448a..e5ef5c4a32d7 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> >> > @@ -1135,8 +1135,6 @@ static void
> >> >> > gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
> >> >> >  			      const struct intel_crtc_state *crtc_state)
> {
> >> >> > -	struct drm_i915_private *dev_priv =3D to_i915(encoder-
> >base.dev);
> >> >> > -
> >> >> >  	/* step 4a: power up all lanes of the DDI used by DSI */
> >> >> >  	gen11_dsi_power_up_lanes(encoder);
> >> >> >
> >> >> > @@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct
> >> >> intel_encoder *encoder,
> >> >> >  	/* step 4c: configure voltage swing and skew */
> >> >> >  	gen11_dsi_voltage_swing_program_seq(encoder);
> >> >> >
> >> >> > +	gen11_dsi_ungate_clocks(encoder);
> >> >> > +
> >> >>
> >> >> What about the changes to gen11_dsi_map_pll() in commit
> >> >> 991d9557b0c4
> >> >> ("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")? It
> >> >> starts off with clocks gated for gen12+, ungated otherwise.
> >> >
> >> > Now the same spec is updated with the gate step after ddi buffer
> enable.
> >> > And the one before is marked with remove tag.
> >> > That makes all gen12+ align with gen 11.
> >> > You suggested to update the same in the commit message on v1.
> >> > Should I still consider just reverting that commit?
> >>
> >> I'm just royally confused about the sequence myself, so I'm asking
> >> you. ;)
> >>
> >> It doesn't help that the code has step references to gen 11 mode set
> >> that are completely different from the steps in gen 12 sequence.
> >
> > Right, they have lot of different steps coming in.
> > As per gen11 sequence, we were gating pll after enabling ddi buffer.
> >
> > Initially when there was only gen12 in the bspec, it stated to gate the=
 pll
> after mapping.
> > Hence we had that commit  991d9557b0c4.
> > Then Gen12's mipi dsi sequence was carried fwd for all later platforms =
as
> well.
> >  with the modification saying that
> > Do not gate the pll until we enable the ddi buffer.
> > And this applies to gen 12 as well because they have marked the
> > earlier mentioned step of gating pll after pll mapping as removed on al=
l
> gen12 and later platforms.
> >
> > This patch now is keeping the older step as is, but making sure that cl=
ocks
> are ungated while enabling ddi buffer.
>=20
> Where does it say for gen12+ that clocks should be ungated at any point?
>=20
> My reading of the spec:
>=20
> Gen11, bspec 20845 and 20597:
> - start with clocks ungated at mapping
> - gate after port/phy enabling (step 4m in gen11 mode set sequence)
>=20
> Gen12, bspec 49204, 49188 and 55316:
> - start with clocks gated at mapping
> - gate *if* not already gated (steps 4c and 4i in gen12 mode set sequence=
)

Right the ungate step is not mentioned in the bspec.
Instead the step 4.c is marked as Removed.
I had added ungate just to make sure we are addressing the issue mentioned =
in front of removed tag while
Retaining the old sequence of 4.c

In order to completely adhere to the current bspec, I can
1. submit a patch removing 4.c
or
2.  submit a revert of the patch which was adding 4.c
("drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping")

Thanks,
Vandita
>=20
> It may be that your patch is correct, but IMO it does not match bspec.
>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> >
> > Thanks
> > Vandita
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >>
> >> >
> >> > Thanks,
> >> > Vandita
> >> >
> >> >>
> >> >> BR,
> >> >> Jani.
> >> >>
> >> >>
> >> >> >  	/* enable DDI buffer */
> >> >> >  	gen11_dsi_enable_ddi_buffer(encoder);
> >> >> >
> >> >> > @@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct
> >> >> intel_encoder *encoder,
> >> >> >  	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
> >> >> >  	gen11_dsi_configure_transcoder(encoder, crtc_state);
> >> >> >
> >> >> > -	/* Step 4l: Gate DDI clocks */
> >> >> > -	if (DISPLAY_VER(dev_priv) =3D=3D 11)
> >> >> > -		gen11_dsi_gate_clocks(encoder);
> >> >> > +	gen11_dsi_gate_clocks(encoder);
> >> >> >  }
> >> >> >
> >> >> >  static void gen11_dsi_powerup_panel(struct intel_encoder
> >> >> > *encoder)
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
