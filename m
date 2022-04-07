Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 785A14F85E1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F96A10EBE5;
	Thu,  7 Apr 2022 17:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116ED10EBE5
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649352189; x=1680888189;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hf2zdNy7sDm+vh1W4se/v3mK6kQ+RRp1XyfTq9NLe0E=;
 b=KKPzwvZdkfOBNfUtskaUbc9U4u0gkMy4c+vygnf/56Pp0ewRX68xhsOe
 njiGnjpNjJmXvsBOFgx9nTyKEcNp53MMN7u2G7MA4/zPvbPoDhc/8jaHe
 +BhSRE7W4KYeGH8EM/OdorZQoBC7i4l7xYzIw5FU0IihCa2f9t60eA138
 5gVEVyhvoYLovPGYGWHWjZs2PoSFgb7IXNCzCS6U6XV7fCXGULfpgcwLh
 1SMFDFXOnaHBOpwQ4c42M3cVXWvG6cB9GsOsJThZGrkdFQFt1rz0Zi2SP
 m/ETuBCS3PL//X7c7UQcP/6BdapoDOMAk1mtPaFSchB4lyJhnAFhEKTaS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261382858"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="261382858"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:23:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571147548"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:23:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-13-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:23:03 +0300
Message-ID: <87czhs4xl4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 12/22] drm/i915/bios: Split VBT parsing
 to global vs. panel specific parts
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
> Parsing the panel specific data from VBT is currently happening
> too early. Split the whole thing into global vs. panel specific
> parts so that we can start doing the panel specific parsing at
> a later time.

Might want to mention panel_type here somewhere, that's basically the
split, right?

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    | 50 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_bios.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  3 files changed, 35 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 1a7f1aa79827..da2b1932e10d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -723,6 +723,9 @@ parse_generic_dtd(struct drm_i915_private *i915)
>  	struct drm_display_mode *panel_fixed_mode;
>  	int num_dtd;
>=20=20
> +	if (i915->vbt.lfp_lvds_vbt_mode)
> +		return;
> +
>  	generic_dtd =3D find_section(i915, BDB_GENERIC_DTD);
>  	if (!generic_dtd)
>  		return;
> @@ -891,6 +894,9 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
>  	struct drm_display_mode *panel_fixed_mode;
>  	int index;
>=20=20
> +	if (i915->vbt.sdvo_lvds_vbt_mode)
> +		return;
> +
>  	index =3D i915->params.vbt_sdvo_panel_type;
>  	if (index =3D=3D -2) {
>  		drm_dbg_kms(&i915->drm,
> @@ -1419,6 +1425,9 @@ parse_mipi_config(struct drm_i915_private *i915)
>  	int panel_type =3D i915->vbt.panel_type;
>  	enum port port;
>=20=20
> +	if (i915->vbt.dsi.config)
> +		return;
> +
>  	/* parse MIPI blocks only if LFP type is MIPI */
>  	if (!intel_bios_is_dsi_present(i915, &port))
>  		return;
> @@ -1739,6 +1748,9 @@ parse_mipi_sequence(struct drm_i915_private *i915)
>  	u8 *data;
>  	int index =3D 0;
>=20=20
> +	if (i915->vbt.dsi.data)
> +		return;
> +

All of the above checks to (presumably) allow calling
intel_bios_init_panel() multiple times feel a bit out of place here. At
the very least need a mention in the commit message.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  	/* Only our generic panel driver uses the sequence block. */
>  	if (i915->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
>  		return;
> @@ -2878,6 +2890,27 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	/* Grab useful general definitions */
>  	parse_general_features(i915);
>  	parse_general_definitions(i915);
> +	parse_driver_features(i915);
> +
> +	/* Depends on child device list */
> +	parse_compression_parameters(i915);
> +
> +out:
> +	if (!vbt) {
> +		drm_info(&i915->drm,
> +			 "Failed to find VBIOS tables (VBT)\n");
> +		init_vbt_missing_defaults(i915);
> +	}
> +
> +	/* Further processing on pre-parsed or generated child device data */
> +	parse_sdvo_device_mapping(i915);
> +	parse_ddi_ports(i915);
> +
> +	kfree(oprom_vbt);
> +}
> +
> +void intel_bios_init_panel(struct drm_i915_private *i915)
> +{
>  	parse_panel_options(i915);
>  	/*
>  	 * Older VBTs provided DTD information for internal displays through
> @@ -2892,29 +2925,12 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>  	parse_lfp_data(i915);
>  	parse_lfp_backlight(i915);
>  	parse_sdvo_panel_data(i915);
> -	parse_driver_features(i915);
>  	parse_panel_driver_features(i915);
>  	parse_power_conservation_features(i915);
>  	parse_edp(i915);
>  	parse_psr(i915);
>  	parse_mipi_config(i915);
>  	parse_mipi_sequence(i915);
> -
> -	/* Depends on child device list */
> -	parse_compression_parameters(i915);
> -
> -out:
> -	if (!vbt) {
> -		drm_info(&i915->drm,
> -			 "Failed to find VBIOS tables (VBT)\n");
> -		init_vbt_missing_defaults(i915);
> -	}
> -
> -	/* Further processing on pre-parsed or generated child device data */
> -	parse_sdvo_device_mapping(i915);
> -	parse_ddi_ports(i915);
> -
> -	kfree(oprom_vbt);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 4709c4d29805..c744d75fa435 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -230,6 +230,7 @@ struct mipi_pps_data {
>  } __packed;
>=20=20
>  void intel_bios_init(struct drm_i915_private *dev_priv);
> +void intel_bios_init_panel(struct drm_i915_private *dev_priv);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
>  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
>  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eee185ed41c3..4ece4e7d0296 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9650,6 +9650,7 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
>  	}
>=20=20
>  	intel_bios_init(i915);
> +	intel_bios_init_panel(i915);
>=20=20
>  	ret =3D intel_vga_register(i915);
>  	if (ret)

--=20
Jani Nikula, Intel Open Source Graphics Center
