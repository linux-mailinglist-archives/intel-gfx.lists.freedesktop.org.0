Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0994F86E8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 20:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA8810E059;
	Thu,  7 Apr 2022 18:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E1B10E059
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 18:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649354843; x=1680890843;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AdkRZoNRE72Dgg8GT8pSxj8/rpKAxPbnGFT1u1FfTsc=;
 b=Gcw4EY6tq2Ij101UOqcq/3CxLFaD2URkfHa4fzvC5RnkrzyrMXCKo6eK
 8D2t8NVV8qYoOVSUavFv9eeq4Oy6Hrvsln49sSi4wZuHkiSO0Bt4Aqgpy
 aY8zGvFn/nPxFnNsx6NYansJwwOX5Qwq6YZIczIEmmUSH+N6GhprODCw/
 alIrBeY+0uyLVKO816zi1W+n/+BrCPlrytN1cRnrXh89llXMtsed1TR6s
 G5wUiRkg/Knjr7Q/3y4wP67g21w9V9t6RX4nZiPWM7eJxALKlkVvIVdCG
 htGS+1dZSRHYQRe/MQB9bTQAJAPbgD6Vrk0e2vPp3nqSlsWIOT5xkKtGM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="324561754"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="324561754"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:07:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571164742"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:07:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-23-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-23-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 21:07:19 +0300
Message-ID: <87r1683gyw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/bios: Dump PNPID and
 panel name
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Dump the panel PNPID and name from the VBT.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d561551d6324..953526a7dc5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -25,6 +25,7 @@
>   *
>   */
>=20=20
> +#include <drm/drm_edid.h>
>  #include <drm/dp/drm_dp_helper.h>
>=20=20
>  #include "display/intel_display.h"
> @@ -597,6 +598,19 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *da=
ta,
>  		return NULL;
>  }
>=20=20
> +static void dump_pnp_id(struct drm_i915_private *i915,
> +			const struct lvds_pnp_id *pnp_id,
> +			const char *name)
> +{
> +	u16 mfg_name =3D be16_to_cpu((__force __be16)pnp_id->mfg_name);

Might just add the __be16 in the struct member?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +	char vend[4];
> +
> +	drm_dbg_kms(&i915->drm, "%s PNPID mfg: %s (0x%x), prod: %u, serial: %u,=
 week: %d, year: %d\n",
> +		    name, drm_edid_decode_mfg_id(mfg_name, vend),
> +		    pnp_id->mfg_name, pnp_id->product_code, pnp_id->serial,
> +		    pnp_id->mfg_week, pnp_id->mfg_year + 1990);
> +}
> +
>  static int pnp_id_panel_type(struct drm_i915_private *i915,
>  			     const struct edid *edid)
>  {
> @@ -615,6 +629,8 @@ static int pnp_id_panel_type(struct drm_i915_private =
*i915,
>  	edid_id_nodate.mfg_week =3D 0;
>  	edid_id_nodate.mfg_year =3D 0;
>=20=20
> +	dump_pnp_id(i915, edid_id, "EDID");
> +
>  	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
>  	if (!ptrs)
>  		return -1;
> @@ -802,6 +818,7 @@ parse_lfp_data(struct drm_i915_private *i915)
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_tail *tail;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	const struct lvds_pnp_id *pnp_id;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
>  	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> @@ -815,10 +832,17 @@ parse_lfp_data(struct drm_i915_private *i915)
>  	if (!i915->vbt.lfp_lvds_vbt_mode)
>  		parse_lfp_panel_dtd(i915, data, ptrs);
>=20=20
> +	pnp_id =3D get_lvds_pnp_id(data, ptrs, panel_type);
> +	dump_pnp_id(i915, pnp_id, "Panel");
> +
>  	tail =3D get_lfp_data_tail(data, ptrs);
>  	if (!tail)
>  		return;
>=20=20
> +	drm_dbg_kms(&i915->drm, "Panel name: %.*s\n",
> +		    (int)sizeof(tail->panel_name[0].name),
> +		    tail->panel_name[panel_type].name);
> +
>  	if (i915->vbt.version >=3D 188) {
>  		i915->vbt.seamless_drrs_min_refresh_rate =3D
>  			tail->seamless_drrs_min_refresh_rate[panel_type];

--=20
Jani Nikula, Intel Open Source Graphics Center
