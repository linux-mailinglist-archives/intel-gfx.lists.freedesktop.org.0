Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDE4302AD5
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 19:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A126E14C;
	Mon, 25 Jan 2021 18:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5ADC6E14C
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 18:54:50 +0000 (UTC)
IronPort-SDR: P7Vxd4WmQ5mMmCSfIievDZxOkBKIH/8lkXVLg0aPBa6FbOdiwGPROZtu7YvZ1YvfGgrL0UJDmM
 ZAdPXLsnsavQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="179864420"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="179864420"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:54:49 -0800
IronPort-SDR: lJk4ix22csPg1JEW7YMcU2NE6Yr2TTMfpe5eXLbaiJdS1O0aB9BCDFw2Fp9DvslWgPqHOCrE64
 kichOoNgGfDg==
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="402454246"
Received: from vlesnikx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.223])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:54:47 -0800
Date: Mon, 25 Jan 2021 10:54:46 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210125185446.zzyit4l2vvxb4ech@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <20210125140753.347998-9-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-9-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/adl_s: Add adl-s ddc pin
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 06:07:51AM -0800, Aditya Swarup wrote:
>ADL-S requires TC pins to set up ddc for Combo PHY B, C, D and E.
>Combo PHY A still uses the old ddc pin mapping.
>
>From VBT, ddc pin info suggests the following mapping:
>VBT 			               DRIVER
>DDI B->ddc_pin=3D2 should translate to PORT_D->0x9
>DDI C->ddc_pin=3D3 should translate to PORT_E->0xa
>DDI D->ddc_pin=3D4 should translate to PORT_F->0xb
>DDI E->ddc_pin=3D5 should translate to PORT_G->0xc
>
>Adding pin map to facilitate this translation as we cannot use existing
>icl ddc pin map due to conflict with DDI B and DDI C info.
>
>Bspec:20124
>
>v2: Replace IS_ALDERLAKE_S() with HAS_PCH_ADP() as the pin map pairing
>depends on the PCH being used rather than the platform.(mdroper)
>
>v3:
>- Modify adls_port_to_ddc_pin() to make PHY_A the special case for
>  check, else return pin mapping based on correct arithmetic with phy
>  offset. Remove redundant platform checks and use HAS_PCH_ADP() instead
>  of IS_ALDERLAKE_S() in intel_hdmi_ddc_pin().(mdroper)
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c     | 13 +++++++++++-
> drivers/gpu/drm/i915/display/intel_hdmi.c     | 20 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
> 3 files changed, 35 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 987cf509337f..e575e584e6d5 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -1630,12 +1630,23 @@ static const u8 rkl_pch_tgp_ddc_pin_map[] =3D {
> 	[RKL_DDC_BUS_DDI_E] =3D GMBUS_PIN_10_TC2_ICP,
> };
>
>+static const u8 adls_ddc_pin_map[] =3D {
>+	[ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>+	[ADLS_DDC_BUS_PORT_TC1] =3D GMBUS_PIN_9_TC1_ICP,
>+	[ADLS_DDC_BUS_PORT_TC2] =3D GMBUS_PIN_10_TC2_ICP,
>+	[ADLS_DDC_BUS_PORT_TC3] =3D GMBUS_PIN_11_TC3_ICP,
>+	[ADLS_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP,
>+};
>+
> static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> {
> 	const u8 *ddc_pin_map;
> 	int n_entries;
>
>-	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1) {
>+	if (HAS_PCH_ADP(dev_priv)) {
>+		ddc_pin_map =3D adls_ddc_pin_map;
>+		n_entries =3D ARRAY_SIZE(adls_ddc_pin_map);
>+	} else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1) {
> 		return vbt_pin;
> 	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) =3D=3D PC=
H_TGP) {
> 		ddc_pin_map =3D rkl_pch_tgp_ddc_pin_map;
>diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i=
915/display/intel_hdmi.c
>index d5f4b40a8460..66e1ac3887c6 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>@@ -3138,6 +3138,22 @@ static u8 dg1_port_to_ddc_pin(struct drm_i915_priva=
te *dev_priv, enum port port)
> 	return intel_port_to_phy(dev_priv, port) + 1;
> }
>
>+static u8 adls_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum po=
rt port)
>+{
>+	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>+
>+	WARN_ON(port =3D=3D PORT_B || port =3D=3D PORT_C);
>+
>+	/*
>+	 * Pin mapping for ADL-S requires TC pins for all combo phy outputs
>+	 * except first combo output.
>+	 */
>+	if (phy =3D=3D PHY_A)
>+		return GMBUS_PIN_1_BXT;
>+
>+	return GMBUS_PIN_9_TC1_ICP + phy - PHY_B;
>+}
>+
> static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
> 			      enum port port)
> {
>@@ -3175,7 +3191,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *e=
ncoder)
> 		return ddc_pin;
> 	}
>
>-	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
>+	if (HAS_PCH_ADP(dev_priv))
>+		ddc_pin =3D adls_port_to_ddc_pin(dev_priv, port);
>+	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> 		ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
> 	else if (IS_ROCKETLAKE(dev_priv))
> 		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
>diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/d=
rm/i915/display/intel_vbt_defs.h
>index 187ec573de59..6d10fa037751 100644
>--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>@@ -327,6 +327,10 @@ enum vbt_gmbus_ddi {
> 	ICL_DDC_BUS_PORT_4,
> 	TGL_DDC_BUS_PORT_5,
> 	TGL_DDC_BUS_PORT_6,
>+	ADLS_DDC_BUS_PORT_TC1 =3D 0x2,
>+	ADLS_DDC_BUS_PORT_TC2,
>+	ADLS_DDC_BUS_PORT_TC3,
>+	ADLS_DDC_BUS_PORT_TC4
> };
>
> #define DP_AUX_A 0x40
>-- =

>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
