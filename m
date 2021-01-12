Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2412F26F4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 05:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9E289F49;
	Tue, 12 Jan 2021 04:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F386989F49
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 04:19:48 +0000 (UTC)
IronPort-SDR: XUVMtlcfWC8irT1BM1AX3Oz8r6+39mQY5Y9e8Wp0d24CJkc2C3s8r82vtvU6RIifzcxokKMyM7
 Fos1Yncot0jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165063084"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="165063084"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 20:19:48 -0800
IronPort-SDR: GhKi7eHLa8izJCawHQsfBUhi2Tu258PjDc/hrPyenD0fPrbkeTaMSNNT8l13aWhkoz/jw1nXT8
 w3p2H7SC7uBQ==
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="363370520"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 20:19:47 -0800
Date: Mon, 11 Jan 2021 20:19:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210112041945.GF21197@mdroper-desk1.amr.corp.intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-12-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-12-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/22] drm/i915/adl_s: Add adl-s ddc pin
 mapping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 05:08:33PM -0800, Aditya Swarup wrote:
> ADL-S requires TC pins to set up ddc for Combo PHY B, C, D and E.
> Combo PHY A still uses the old ddc pin mapping.
> =

> From VBT, ddc pin info suggests the following mapping:
> VBT 			               DRIVER
> DDI B->ddc_pin=3D2 should translate to PORT_D->0x9
> DDI C->ddc_pin=3D3 should translate to PORT_E->0xa
> DDI D->ddc_pin=3D4 should translate to PORT_F->0xb
> DDI E->ddc_pin=3D5 should translate to PORT_G->0xc
> =

> Adding pin map to facilitate this translation as we cannot use existing
> icl ddc pin map due to conflict with DDI B and DDI C info.
> =

> Bspec:20124
> =

> v2: Replace IS_ALDERLAKE_S() with HAS_PCH_ADP() as the pin map pairing
> depends on the PCH being used rather than the platform.(mdroper)
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 13 +++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 20 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>  3 files changed, 35 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 4cc949b228f2..9dc67c03ffc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1623,12 +1623,23 @@ static const u8 icp_ddc_pin_map[] =3D {
>  	[TGL_DDC_BUS_PORT_6] =3D GMBUS_PIN_14_TC6_TGP,
>  };
>  =

> +static const u8 adls_ddc_pin_map[] =3D {
> +	[ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
> +	[ADLS_DDC_BUS_PORT_TC1] =3D GMBUS_PIN_9_TC1_ICP,
> +	[ADLS_DDC_BUS_PORT_TC2] =3D GMBUS_PIN_10_TC2_ICP,
> +	[ADLS_DDC_BUS_PORT_TC3] =3D GMBUS_PIN_11_TC3_ICP,
> +	[ADLS_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP,
> +};

Can't we use icp_ddc_pin_map[] since it's a superset of this?  The ICP
table has some extra entries that we'll never map through, but that's
true for other platforms as well.  E.g., ICP itself can never have a
DDI_C or TC5/TC6, but it doesn't hurt anything to have those outputs as
extra entries in the table that never get looked up.


> +
>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>  {
>  	const u8 *ddc_pin_map;
>  	int n_entries;
>  =

> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1) {
> +	if (HAS_PCH_ADP(dev_priv)) {
> +		ddc_pin_map =3D adls_ddc_pin_map;
> +		n_entries =3D ARRAY_SIZE(adls_ddc_pin_map);
> +	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1) {
>  		return vbt_pin;
>  	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP) {
>  		ddc_pin_map =3D icp_ddc_pin_map;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index e10fdb369daa..060a13b63aa9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3135,6 +3135,22 @@ static u8 dg1_port_to_ddc_pin(struct drm_i915_priv=
ate *dev_priv, enum port port)
>  	return intel_port_to_phy(dev_priv, port) + 1;
>  }
>  =

> +static u8 adls_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum p=
ort port)
> +{
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +
> +	WARN_ON(port =3D=3D PORT_B || port =3D=3D PORT_C);
> +
> +	/*
> +	 * Pin mapping for ADL-S requires TC pins for all combo phy outputs
> +	 * except first combo output.
> +	 */
> +	if (IS_ALDERLAKE_S(dev_priv) && phy >=3D PHY_B)

The IS_ADLS test here is redundant since we only call this function on
ADL-S, right?

> +		return GMBUS_PIN_9_TC1_ICP + phy - PHY_B;
> +
> +	return GMBUS_PIN_1_BXT + phy;

There's only one possible output that can get to this return
(PORT_A/PHY_A), so the generic "+ phy" seems unnecessary.

Actually it might more more sensible to make PHY_A the special case we
test for in the 'if' condition and then make the PHY_B+ case the
function's regular return.

> +}
> +
>  static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
>  			      enum port port)
>  {
> @@ -3172,7 +3188,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *=
encoder)
>  		return ddc_pin;
>  	}
>  =

> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> +	if (IS_ALDERLAKE_S(dev_priv))

This should probably be a PCH check instead of a platform check too.


Matt

> +		ddc_pin =3D adls_port_to_ddc_pin(dev_priv, port);
> +	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
>  		ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
>  	else if (IS_ROCKETLAKE(dev_priv))
>  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 49b4b5fca941..32d1b4f05760 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -325,6 +325,10 @@ enum vbt_gmbus_ddi {
>  	ICL_DDC_BUS_PORT_4,
>  	TGL_DDC_BUS_PORT_5,
>  	TGL_DDC_BUS_PORT_6,
> +	ADLS_DDC_BUS_PORT_TC1 =3D 0x2,
> +	ADLS_DDC_BUS_PORT_TC2,
> +	ADLS_DDC_BUS_PORT_TC3,
> +	ADLS_DDC_BUS_PORT_TC4
>  };
>  =

>  #define DP_AUX_A 0x40
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
