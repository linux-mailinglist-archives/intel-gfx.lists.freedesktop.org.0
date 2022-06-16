Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D8154DF68
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199C711A114;
	Thu, 16 Jun 2022 10:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1096A11A114
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655376428; x=1686912428;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=T72YRkunLlCqHN+kD3w6DmfsmoSrbiMx5bddvGJCtNc=;
 b=QlFhT9JcWCnfKwHZt7M2mbYvEsExJ0Vhf2O2/wYxYlljl1xRzEKI2cOb
 qEmEupGxX2GLmEAwZAqlSydqpxW+vSj9xVAUhUXD1JOE7IiDIWP2y+VZH
 RZqf93RqAB1haMJcc9XFv5MExHrC5y8QFNpRr6aYq85Js6iZ6LgnETjp1
 Q5I6Ly2SKsTAEw8h/Qh2G8Yd1BoVYFSIRTGxWUWiN7rMLA7Et4Z2bhxU9
 rJvIWe/hyGi6cPJOGcWsg0aQiUXfxDZJIv2Wtfv24b3GN8ccqBXkMMo4E
 Ua1yyARpuchU40HPs3ztWqTFuA9axbT3dMCHBAAH6l/e++shXDZUt7Dyv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259074849"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="259074849"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:47:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641486898"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:47:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jun 2022 13:47:03 +0300
Message-ID: <87o7ysx4uw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/bios: Move panel_type stuff
 out of parse_panel_options()
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

On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Parsing the panel_type is a bit special and should be done
> before we parse anything else potentially panel-specific from
> the VBT. So move it out from parse_panel_options(). It doesn't
> neet to be there anyway since it'll do its own LVDS options
> block lookup.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index fb5f8a9f5ab5..df52f406e1ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -746,11 +746,10 @@ static int get_panel_type(struct drm_i915_private *=
i915,
>  /* Parse general panel options */
>  static void
>  parse_panel_options(struct drm_i915_private *i915,
> -		    struct intel_panel *panel,
> -		    const struct edid *edid)
> +		    struct intel_panel *panel)
>  {
>  	const struct bdb_lvds_options *lvds_options;
> -	int panel_type;
> +	int panel_type =3D panel->vbt.panel_type;
>  	int drrs_mode;
>=20=20
>  	lvds_options =3D find_section(i915, BDB_LVDS_OPTIONS);
> @@ -759,10 +758,6 @@ parse_panel_options(struct drm_i915_private *i915,
>=20=20
>  	panel->vbt.lvds_dither =3D lvds_options->pixel_dither;
>=20=20
> -	panel_type =3D get_panel_type(i915, edid);
> -
> -	panel->vbt.panel_type =3D panel_type;
> -
>  	drrs_mode =3D (lvds_options->dps_panel_type_bits
>  				>> (panel_type * 2)) & MODE_MASK;
>  	/*
> @@ -3117,7 +3112,9 @@ void intel_bios_init_panel(struct drm_i915_private =
*i915,
>  {
>  	init_vbt_panel_defaults(panel);
>=20=20
> -	parse_panel_options(i915, panel, edid);
> +	panel->vbt.panel_type =3D get_panel_type(i915, edid);
> +

I guess that could be parse_panel_type() that doesn't return
anything. But this is fine too.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +	parse_panel_options(i915, panel);
>  	parse_generic_dtd(i915, panel);
>  	parse_lfp_data(i915, panel);
>  	parse_lfp_backlight(i915, panel);

--=20
Jani Nikula, Intel Open Source Graphics Center
