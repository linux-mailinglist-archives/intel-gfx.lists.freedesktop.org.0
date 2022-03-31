Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926524EDAAB
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC6410E2F4;
	Thu, 31 Mar 2022 13:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AC610E2F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733852; x=1680269852;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=48qXMW8dvIbjHa88vXh1EptC7R1rstxqBb4MVT82zbE=;
 b=cItcSBjZYcxDK1FKPXSChq3TDSW9R4RaTePH9e6Wa+E7PMKrKfDCltGQ
 TX9EKdJihf3xmLqV3zt/dV2yJJmVQQf2lQxn3oKGbUv+cipy+1DjzhNAl
 0B/sb8fWX9drhy/GiHqe4a1J9uQ/IX24ZIO1uwgUNTPVjFcz7DAfX0sSg
 9F37e0u2po3eEOIED4DtkVkWcNLtEkCPprs+pzKt7yE7mzn0OFwQkONvW
 Uiq2fKzPbSdQmEteF/1zUU4KGVCPyHDwMmT71Bfb968EcnQLaoe1WI431
 Q+ivcEFOLx9lJRWw9v4S+HHoPxC9wxxZM+f0isPxoQoYa3WQLASYYqGoN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="260021810"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="260021810"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:37:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566489713"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:37:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-8-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:37:27 +0300
Message-ID: <871qyi9rag.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 07/11] drm/i915: Allow an arbitrary
 number of downclock modes
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the "two fixed modes only" limit and grab as many
> downclock modes from the EDID as we can find.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 42 +++++++---------------
>  1 file changed, 12 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 5d08b2bf27ec..d359c8050fdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -159,42 +159,24 @@ static bool is_downclock_mode(const struct drm_disp=
lay_mode *downclock_mode,
>  		downclock_mode->clock < fixed_mode->clock;
>  }
>=20=20
> -static void intel_panel_add_edid_downclock_mode(struct intel_connector *=
connector)
> +static void intel_panel_add_edid_downclock_modes(struct intel_connector =
*connector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_preferred_fixed_mode(connector);
> -	struct drm_display_mode *scan, *best_mode =3D NULL;
> -	int best_clock =3D fixed_mode->clock;
> -
> -	list_for_each_entry(scan, &connector->base.probed_modes, head) {
> -		/*
> -		 * If one mode has the same resolution with the fixed_panel
> -		 * mode while they have the different refresh rate, it means
> -		 * that the reduced downclock is found. In such
> -		 * case we can set the different FPx0/1 to dynamically select
> -		 * between low and high frequency.
> -		 */
> -		if (is_downclock_mode(scan, fixed_mode) &&
> -		    scan->clock < best_clock) {
> -			/*
> -			 * The downclock is already found. But we
> -			 * expect to find the lower downclock.
> -			 */
> -			best_clock =3D scan->clock;
> -			best_mode =3D scan;
> -		}
> -	}
> +	struct drm_display_mode *mode, *next;
>=20=20
> -	if (!best_mode)
> -		return;
> +	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> +		if (!is_downclock_mode(mode, fixed_mode))
> +			continue;
>=20=20
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
> -		    connector->base.base.id, connector->base.name,
> -		    DRM_MODE_ARG(best_mode));
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
> +			    connector->base.base.id, connector->base.name,
> +			    DRM_MODE_ARG(mode));
>=20=20
> -	list_move_tail(&best_mode->head, &connector->panel.fixed_modes);
> +		list_move_tail(&mode->head, &connector->panel.fixed_modes);
> +	}
>  }
>=20=20
>  static void intel_panel_add_edid_fixed_mode(struct intel_connector *conn=
ector)
> @@ -243,7 +225,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_co=
nnector *connector, bool ha
>  {
>  	intel_panel_add_edid_fixed_mode(connector);
>  	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
> -		intel_panel_add_edid_downclock_mode(connector);
> +		intel_panel_add_edid_downclock_modes(connector);
>  	intel_panel_destroy_probed_modes(connector);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
