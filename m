Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB66BDE6CA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB3F10E791;
	Wed, 15 Oct 2025 12:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9390F10E784;
 Wed, 15 Oct 2025 12:14:43 +0000 (UTC)
Received: from mobile-access-d98cd5-201.dhcp.inet.fi ([217.140.213.201]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v90Ou-00000001ZPm-0mNz; Wed, 15 Oct 2025 15:14:41 +0300
Message-ID: <8f5b496106ca27abccdc5d7f59ebe3abfac2454b.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Wed, 15 Oct 2025 15:14:39 +0300
In-Reply-To: <20251013095045.3658871-6-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
 <20251013095045.3658871-6-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-4 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 5/7] drm/i915/display: Fix
 PHY_C20_VDR_CUSTOM_SERDES_RATE programming
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

On Mon, 2025-10-13 at 12:50 +0300, Mika Kahola wrote:
> From: Imre Deak <imre.deak@intel.com>
>=20
> Make sure all the DP/HDMI/HDMI-FRL flags are programmed in all the modes
> the PLL is configured.
>=20
> Atm the DP mode flag is not programmed in case the PLL is configured for
> HDMI mode for instance. This is incorrect after HW reset, since the DP
> mode flag is asserted after reset, hence would need to be cleared for
> HDMI, but also incorrect because of the same reason after configuring
> the PLL to HDMI mode after it was used in DP mode (for instance on a
> DP++ connector).
>=20
> There is a similar issue with the HDMI-FRL flag, potentially remaining
> set when configuring the PLL in DP mode.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 25 +++++++++++---------
>  1 file changed, 14 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 9be7e155a584..6e49659d2f17 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2624,6 +2624,7 @@ static void intel_c20_pll_program(struct intel_disp=
lay *display,
>  				  bool is_dp, int port_clock)
>  {
>  	u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
> +	u8 serdes;
>  	bool cntx;
>  	int i;
> =20
> @@ -2699,21 +2700,23 @@ static void intel_c20_pll_program(struct intel_di=
splay *display,
>  		      MB_WRITE_COMMITTED);
> =20
>  	/* 5. For DP or 6. For HDMI */
> -	if (is_dp) {
> -		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE=
,
> -			      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK,
> -			      PHY_C20_IS_DP | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_cloc=
k)),
> -			      MB_WRITE_COMMITTED);
> -	} else {
> -		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE=
,
> -			      PHY_C20_IS_HDMI_FRL | PHY_C20_DP_RATE_MASK,
> -			      is_hdmi_frl(port_clock) ? PHY_C20_IS_HDMI_FRL : 0,
> -			      MB_WRITE_COMMITTED);
> +	serdes =3D 0;
> +
> +	if (is_dp)
> +		serdes =3D PHY_C20_IS_DP |
> +			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> +	else if (is_hdmi_frl(port_clock))
> +		serdes =3D PHY_C20_IS_HDMI_FRL;
> =20
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL,
> +		      serdes,
> +		      MB_WRITE_COMMITTED);
> +
> +	if (!is_dp)
>  		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
>  				intel_c20_get_hdmi_rate(port_clock),
>  				MB_WRITE_COMMITTED);
> -	}
> =20
>  	/*
>  	 * 7. Write Vendor specific registers to toggle context setting to load

Seems to match the bspec.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
