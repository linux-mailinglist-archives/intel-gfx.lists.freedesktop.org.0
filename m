Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 198E0715B13
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 12:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25BD10E141;
	Tue, 30 May 2023 10:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC43810E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 10:08:09 +0000 (UTC)
Received: from 91-156-6-72.elisa-laajakaista.fi ([91.156.6.72]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1q3wGq-008i0P-Ul;
 Tue, 30 May 2023 13:08:06 +0300
Message-ID: <0a30260b0e084bd5a3dc518cebe0d30eb057df18.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Date: Tue, 30 May 2023 13:08:04 +0300
In-Reply-To: <MW4PR11MB705407904B6084AC3657A97CEF4B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230524150152.136371-1-mika.kahola@intel.com>
 <5fbdf7f3e973cafbe6ca1228612493fa06a5d464.camel@coelho.fi>
 <MW4PR11MB705407904B6084AC3657A97CEF4B9@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case
 of MFD
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

On Tue, 2023-05-30 at 09:30 +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Luca Coelho <luca@coelho.fi>
> > Sent: Tuesday, May 30, 2023 11:38 AM
> > To: Kahola, Mika <mika.kahola@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane
> > in case of MFD
> >=20
> > Looks good, I only have some nitpicks.
> >=20
> > On Wed, 2023-05-24 at 18:01 +0300, Mika Kahola wrote:
> > > In case when only two or less lanes are owned such as MFD (DP-alt
> > > with
> > > x2 lanes) we need to reset only one lane (lane0). With only x2
> > > lanes
> > > we don't need to poll for the phy current status on both lanes
> > > since
> > > only the owned lane will respond.
> >=20
> > It would be nice to explain why it is so.
> >=20
> >=20
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > ---
> > > =C2=A0drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39
> > > ++++++++++++--------
> > > =C2=A01 file changed, 23 insertions(+), 16 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index ee6902118860..b8c812c5b33f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -2528,13 +2528,23 @@ static u32
> > > intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
> > > =C2=A0	return val;
> > > =C2=A0}
> > >=20
> > > -/* FIXME: Some Type-C cases need not reset both the lanes.
> > > Handle
> > > those cases. */ -static void intel_cx0_phy_lane_reset(struct
> > > drm_i915_private *i915, enum port port,
> > > +static void intel_cx0_phy_lane_reset(struct drm_i915_private
> > > *i915,
> > > +				     struct intel_encoder
> > > *encoder,
> > > =C2=A0				     bool lane_reversal)
> > > =C2=A0{
> > > +	enum port port =3D encoder->port;
> > > =C2=A0	enum phy phy =3D intel_port_to_phy(i915, port);
> > > +	u8 fia_max =3D
> > > +intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder));
> >=20
> > Logically, we don't care about "fia_max" in this function, we only
> > care whether one or two lanes should be handled.  In all places
> > we use fia_max, we only check if it is > 2.  So I think it would be
> > clearer to have the > 2 here already and call the variable
> > something else.
> >=20
> > Additionally, "> 2" looks slightly magic (without knowing the
> > reason, as stated in my first comment).  Is there any more self-
> > explanatory symbol we could used?
> I admit, it's not that clear when you look at it first time. It only
> means that all lanes are in use and we should in that case reset all
> lanes. Maybe switching to Boolean instead something like this
>=20
> bool all_lanes =3D
> intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
>=20
> And do the reset routines based on this?=20

Sounds good.


> > > 	u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 :
> > > =C2=A0				  INTEL_CX0_LANE0;
> > > +	u32 lane_pipe_reset =3D fia_max > 2 ?
> > > +			      XELPDP_LANE_PIPE_RESET(0) |
> > > +			      XELPDP_LANE_PIPE_RESET(1) :
> > > +			      XELPDP_LANE_PIPE_RESET(0);
> > > +	u32 lane_phy_current_status =3D fia_max > 2 ?
> > > +				    =20
> > > XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> > > +				    =20
> > > XELPDP_LANE_PHY_CURRENT_STATUS(1) :
> > > +				    =20
> > > XELPDP_LANE_PHY_CURRENT_STATUS(0);
> >=20
> > It was already logically like this in the code, so not directly
> > related to this patch, but is there any reason why we don't need to
> > include more lanes in the reset? I mean, we're only handling lanes
> > 0 and 1.  If we have 4 lanes, the other two never need to be
> > reset?
> There are lanes and then there are lanes. FIA has 4 main lanes with
> are muxed into 2 data lanes and here we only reset these data lanes.
> It's confusing as we have lanes defined for two different meanings.

Okay, that clarifies it! We should probably have been calling them
fia_lanes and data_lanes to distinguish, but make these changes now.

This also clarifies why we reset only one or both data lanes.  A small
paragraph explaining this would be nice in the commit log and/or as a
comment in the function.


> Thanks for the review and comments!

You're welcome! You're helping me learn. =F0=9F=98=89

--
Cheers,
Luca.
