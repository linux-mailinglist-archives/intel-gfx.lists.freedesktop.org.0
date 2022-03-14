Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E6D4D7F57
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424BF10E28A;
	Mon, 14 Mar 2022 10:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D80010E28A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647252054; x=1678788054;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4oF5WJxw/tlSYMwq63QTZl//PxXo/g0vPq4j6h5A5+k=;
 b=Kmt0dCh092lSjK8p7NJ00sNEc7Y6WYjuqkStE8mmCbCQ3NLHBKbcg5pA
 8Vrrzok2kqsRaqDwQOReNE7FqO3R6oBzlT3ChsMaEx98bAilWAH0lOEUB
 aOWxWp6BVQdZWK7/Lp2VtwVarDVGLdmEGJdmwf5CHtTnEUUivs14LUkpQ
 U1tMNSO6tPXjO9Rhp6lCMY9fs1Parj1p+DxaXYJlRhYmI6zN8ZpJCgnp7
 slCX+zb5PBc7IHYSP97bstxjyNZnIDbSuEUG3TrvYd2Y++K5Z/hRTIpum
 okcINOv13RYF72Q7xot16okz7/tlrvbNP/ScI0OndI6pPLxUywSrpoSKx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="256171307"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="256171307"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:00:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556340825"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:00:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-10-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:00:50 +0200
Message-ID: <87wngwvood.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 09/16] drm/i915: Introduce
 intel_panel_drrs_type()
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a helper to determine which type of DRRS the panel supports.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 10 +++-------
>  drivers/gpu/drm/i915/display/intel_panel.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
>  3 files changed, 15 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 2a58bf4cb6cd..c663df51a84a 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -48,11 +48,8 @@
>   */
>=20=20
>  static bool can_enable_drrs(struct intel_connector *connector,
> -			    const struct intel_crtc_state *pipe_config,
> -			    const struct drm_display_mode *downclock_mode)
> +			    const struct intel_crtc_state *pipe_config)
>  {
> -	const struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -
>  	if (pipe_config->vrr.enable)
>  		return false;
>=20=20
> @@ -65,8 +62,7 @@ static bool can_enable_drrs(struct intel_connector *con=
nector,
>  	if (pipe_config->has_psr)
>  		return false;
>=20=20
> -	return downclock_mode &&
> -		i915->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS;
> +	return intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS;
>  }
>=20=20
>  void
> @@ -80,7 +76,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>  		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
>  	int pixel_clock;
>=20=20
> -	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
> +	if (!can_enable_drrs(connector, pipe_config)) {
>  		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
>  			intel_zero_m_n(&pipe_config->dp_m2_n2);
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3ca37766ccb3..c15f5e3d53d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -83,6 +83,16 @@ int intel_panel_get_modes(struct intel_connector *conn=
ector)
>  	return num_modes;
>  }
>=20=20
> +enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
> +	if (!connector->panel.downclock_mode)
> +		return DRRS_TYPE_NONE;
> +
> +	return i915->vbt.drrs_type;
> +}
> +
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 88e6f5c217d8..e86100903f9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>=20=20
>  enum drm_connector_status;
> +enum drrs_type;
>  struct drm_connector;
>  struct drm_connector_state;
>  struct drm_display_mode;
> @@ -33,6 +34,7 @@ const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode);
>  int intel_panel_get_modes(struct intel_connector *connector);
> +enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
