Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8C04F8607
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF4C10EBEF;
	Thu,  7 Apr 2022 17:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B8F10EBF0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649352400; x=1680888400;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dRZfDxvAAzUjRGQjRYxWGkj4oAsAk5rHBqaSbA+fBBY=;
 b=XUTVK/UaliibQVxUvB1cmg4UIGKZiMyPn5eqVZJKutEgoDaw6mflIsxZ
 XDkZnOfSSIUId93FZJFMq1pOfOUghJ7VH1QEB4eSfeQ76hj3qeK8KIfNA
 5sf5mXr5XyZ0lTgiy5yBl87JSHfgz6a4Uq/jYpAI7j8DDDW0ktx9QVu5a
 kzZGq35+n7kcsqKIVEJCkknrfDuxnQ1j613Pujc1W3N9cElAyHE09okqz
 5KIMxtTYUbecfrz4/mNhfVDlsdet61SnHi/IFpI7zQpirbqjOu+eKJeBj
 7WjoXmMbR5Uk6/LlMTS+u1cuQOv9UpF8nb7vCllogRx0k0jD517SsQ6rA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241984273"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241984273"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:26:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="506232041"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:26:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-17-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:26:35 +0300
Message-ID: <87a6cw4xf8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 16/22] drm/i915/bios: Extract
 get_panel_type()
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
> Pull the code to determine the panel type into its own set of
> sane functions.
>
> v2: rebase
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 58 +++++++++++++++--------
>  1 file changed, 39 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index da2b1932e10d..26839263abf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -589,6 +589,44 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *da=
ta,
>  		return NULL;
>  }
>=20=20
> +static int vbt_panel_type(struct drm_i915_private *i915)
> +{
> +	const struct bdb_lvds_options *lvds_options;
> +
> +	lvds_options =3D find_section(i915, BDB_LVDS_OPTIONS);
> +	if (!lvds_options)
> +		return -1;
> +
> +	if (lvds_options->panel_type > 0xf) {
> +		drm_dbg_kms(&i915->drm, "Invalid VBT panel type 0x%x\n",
> +			    lvds_options->panel_type);
> +		return -1;
> +	}
> +
> +	return lvds_options->panel_type;
> +}
> +
> +static int get_panel_type(struct drm_i915_private *i915)
> +{
> +	int ret;
> +
> +	ret =3D intel_opregion_get_panel_type(i915);
> +	if (ret >=3D 0) {
> +		drm_WARN_ON(&i915->drm, ret > 0xf);
> +		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
> +		return ret;
> +	}
> +
> +	ret =3D vbt_panel_type(i915);
> +	if (ret >=3D 0) {
> +		drm_WARN_ON(&i915->drm, ret > 0xf);
> +		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0; /* fallback */
> +}
> +
>  /* Parse general panel options */
>  static void
>  parse_panel_options(struct drm_i915_private *i915)
> @@ -596,7 +634,6 @@ parse_panel_options(struct drm_i915_private *i915)
>  	const struct bdb_lvds_options *lvds_options;
>  	int panel_type;
>  	int drrs_mode;
> -	int ret;
>=20=20
>  	lvds_options =3D find_section(i915, BDB_LVDS_OPTIONS);
>  	if (!lvds_options)
> @@ -604,24 +641,7 @@ parse_panel_options(struct drm_i915_private *i915)
>=20=20
>  	i915->vbt.lvds_dither =3D lvds_options->pixel_dither;
>=20=20
> -	ret =3D intel_opregion_get_panel_type(i915);
> -	if (ret >=3D 0) {
> -		drm_WARN_ON(&i915->drm, ret > 0xf);
> -		panel_type =3D ret;
> -		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n",
> -			    panel_type);
> -	} else {
> -		if (lvds_options->panel_type > 0xf) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Invalid VBT panel type 0x%x, assuming 0\n",
> -				    lvds_options->panel_type);
> -			panel_type =3D 0;
> -		} else {
> -			panel_type =3D lvds_options->panel_type;
> -			drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
> -				    panel_type);
> -		}
> -	}
> +	panel_type =3D get_panel_type(i915);
>=20=20
>  	i915->vbt.panel_type =3D panel_type;

--=20
Jani Nikula, Intel Open Source Graphics Center
