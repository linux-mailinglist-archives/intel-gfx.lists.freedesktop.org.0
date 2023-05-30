Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3AA7158BF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 10:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6854F10E0F6;
	Tue, 30 May 2023 08:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6533188DE5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 08:38:26 +0000 (UTC)
Received: from 91-156-6-72.elisa-laajakaista.fi ([91.156.6.72]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1q3us0-008huY-AI;
 Tue, 30 May 2023 11:38:22 +0300
Message-ID: <5fbdf7f3e973cafbe6ca1228612493fa06a5d464.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 30 May 2023 11:38:19 +0300
In-Reply-To: <20230524150152.136371-1-mika.kahola@intel.com>
References: <20230524150152.136371-1-mika.kahola@intel.com>
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

Looks good, I only have some nitpicks.

On Wed, 2023-05-24 at 18:01 +0300, Mika Kahola wrote:
> In case when only two or less lanes are owned such as MFD (DP-alt with x2=
 lanes)
> we need to reset only one lane (lane0). With only x2 lanes we don't need
> to poll for the phy current status on both lanes since only the owned lan=
e
> will respond.

It would be nice to explain why it is so.


> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++++++--------
>  1 file changed, 23 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index ee6902118860..b8c812c5b33f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2528,13 +2528,23 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_=
mask)
>  	return val;
>  }
> =20
> -/* FIXME: Some Type-C cases need not reset both the lanes. Handle those =
cases. */
> -static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum=
 port port,
> +static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
> +				     struct intel_encoder *encoder,
>  				     bool lane_reversal)
>  {
> +	enum port port =3D encoder->port;
>  	enum phy phy =3D intel_port_to_phy(i915, port);
> +	u8 fia_max =3D  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encode=
r));

Logically, we don't care about "fia_max" in this function, we only care
whether one or two lanes should be handled.  In all places we use
fia_max, we only check if it is > 2.  So I think it would be clearer to
have the > 2 here already and call the variable something else.

Additionally, "> 2" looks slightly magic (without knowing the reason,
as stated in my first comment).  Is there any more self-explanatory
symbol we could used?

>  	u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 :
>  				  INTEL_CX0_LANE0;
> +	u32 lane_pipe_reset =3D fia_max > 2 ?
> +			      XELPDP_LANE_PIPE_RESET(0) |
> +			      XELPDP_LANE_PIPE_RESET(1) :
> +			      XELPDP_LANE_PIPE_RESET(0);
> +	u32 lane_phy_current_status =3D fia_max > 2 ?
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(1) :
> +				      XELPDP_LANE_PHY_CURRENT_STATUS(0);

It was already logically like this in the code, so not directly related
to this patch, but is there any reason why we don't need to include
more lanes in the reset? I mean, we're only handling lanes 0 and 1.  If
we have 4 lanes, the other two never need to be reset?

--
Cheers,
Luca.
