Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1130ABDE72E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC02510E7A2;
	Wed, 15 Oct 2025 12:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E8310E7A0;
 Wed, 15 Oct 2025 12:20:38 +0000 (UTC)
Received: from mobile-access-d98cd5-201.dhcp.inet.fi ([217.140.213.201]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1v90Ue-00000001ZQM-07ID; Wed, 15 Oct 2025 15:20:36 +0300
Message-ID: <a5dec0fb27c6e69104b0ae1014ae21ae54b34c6c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Wed, 15 Oct 2025 15:20:35 +0300
In-Reply-To: <20251013095045.3658871-7-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
 <20251013095045.3658871-7-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-4 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 6/7] drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE
 programming
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
> The PHY_C20_VDR_HDMI_RATE registers 7:2 bits are reserved and they are
> not specified as a must-be-zero field. Accordingly this reserved field
> shouldn't be zeroed; to ensure that use an RMW to update the
> PHY_C20_HDMI_RATE field (which is bits 1:0 of the register).
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 ++
>  2 files changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 6e49659d2f17..f8c1338f9053 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2714,9 +2714,10 @@ static void intel_c20_pll_program(struct intel_dis=
play *display,
>  		      MB_WRITE_COMMITTED);
> =20
>  	if (!is_dp)
> -		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> -				intel_c20_get_hdmi_rate(port_clock),
> -				MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> +			      PHY_C20_HDMI_RATE_MASK,
> +			      intel_c20_get_hdmi_rate(port_clock),
> +			      MB_WRITE_COMMITTED);
> =20
>  	/*
>  	 * 7. Write Vendor specific registers to toggle context setting to load
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 0743a3e2d15f..86e2e1c7babf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -304,6 +304,8 @@
>  #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, va=
l)
>  #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
>  #define PHY_C20_VDR_HDMI_RATE		0xD01
> +#define   PHY_C20_HDMI_RATE_MASK	REG_GENMASK8(1, 0)
> +#define   PHY_C20_HDMI_RATE(val)	REG_FIELD_PREP8(PHY_C20_HDMI_RATE_MASK,=
 val)
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
>  #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH=
_MASK, val)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
