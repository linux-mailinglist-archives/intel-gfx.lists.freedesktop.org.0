Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B4C537A87
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD6310E638;
	Mon, 30 May 2022 12:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8540D10E638
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653913115; x=1685449115;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=D6vFZToc2R04wegQfYzjrVM94pwGoh6+/mmmMlNEvZw=;
 b=cqhhF2FgZZberSH8M7VdyaqNtlJVJHTHABiElOvkSBUeDJ7wcCR3NdIh
 mcwQkJ42G9gHC5SuV6IixS3boFHdnw1Fl+CSohCC0VYtHWBkR5jJdZeAU
 PG0vU8c8EV4QJq3jjEgnkaBgHVnaWIlHF1vH3vth4vCHM8pzt+uJb5Xlo
 sg7neOs6ubH9w9gOuc7bUICcVnvtMhJJi2Ahc1VTCG/9ZrghhVjXBmcou
 SkjnAxIDZr7P63wMDg/eFnnejHozCDDp3Gv2wUf7R6GcguqcvNd33kU+v
 +vvwD9K/2DWNUH7OFR4SK4NagyH3AF+BqNua+upgcD7ky0nd7yk4PqD4p A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="273798511"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="273798511"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:18:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="575911068"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:18:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-2-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:18:30 +0300
Message-ID: <87r14brz6x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Parse VRR capability from VBT
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

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> VBT seems to have an extra flag for VRR vs. not. Let's consult
> that for eDP panels.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  5 +++++
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 22 ++++++++++++++-----
>  3 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 337277ae3dae..0774238e429b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1293,6 +1293,8 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *i915,
>  	const struct bdb_lfp_power *power;
>  	u8 panel_type =3D panel->vbt.panel_type;
>=20=20
> +	panel->vbt.vrr =3D true; /* matches Windows behaviour */
> +
>  	if (i915->vbt.version < 228)
>  		return;
>=20=20
> @@ -1313,6 +1315,9 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *i915,
>=20=20
>  	if (i915->vbt.version >=3D 232)
>  		panel->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
> +
> +	if (i915->vbt.version >=3D 233)
> +		panel->vbt.vrr =3D power->vrr_feature_enabled & BIT(panel_type);
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index a27d66fd4383..7a76ba1a3b47 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -294,6 +294,8 @@ struct intel_vbt_panel_data {
>  	unsigned int lvds_dither:1;
>  	unsigned int bios_lvds_val; /* initial [PCH_]LVDS reg val in VBIOS */
>=20=20
> +	bool vrr;
> +
>  	u8 seamless_drrs_min_refresh_rate;
>  	enum drrs_type drrs_type;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 081e52dd6c4e..04250a0fec3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -15,19 +15,29 @@ bool intel_vrr_is_capable(struct intel_connector *con=
nector)
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp;
>=20=20
> -	if (connector->base.connector_type !=3D DRM_MODE_CONNECTOR_eDP &&
> -	    connector->base.connector_type !=3D DRM_MODE_CONNECTOR_DisplayPort)
> -		return false;
> -
> -	intel_dp =3D intel_attached_dp(connector);
>  	/*
>  	 * DP Sink is capable of VRR video timings if
>  	 * Ignore MSA bit is set in DPCD.
>  	 * EDID monitor range also should be atleast 10 for reasonable
>  	 * Adaptive Sync or Variable Refresh Rate end user experience.
>  	 */
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_eDP:
> +		if (!connector->panel.vbt.vrr)
> +			return false;
> +		fallthrough;
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +		intel_dp =3D intel_attached_dp(connector);
> +
> +		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
> +			return false;
> +
> +		break;
> +	default:
> +		return false;
> +	}
> +
>  	return HAS_VRR(i915) &&

Feels like !HAS_VRR() should be an early return at the top. But that's
not part of this patch.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> -		drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
>  		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
