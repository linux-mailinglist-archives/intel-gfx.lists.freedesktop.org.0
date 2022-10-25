Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC5060D2BE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FD410E413;
	Tue, 25 Oct 2022 17:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08EF010E414
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666720056; x=1698256056;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=d0GfgXlWkFH0fhpCJmL4dfSSEUgmf+5ksQTlfaPHUGI=;
 b=OuGJYXWL0XVDOwwAy+yIhiGbI1OlrGa1TYr2b8UyKHeK4bWGBthgN0sa
 pXNsfLX78U3T58ESTLdunuHhigY/fjJDKQdsn/ifu8VHtmxKLkHFdaU4+
 ZcpKr12XBgLJOCdvP5K4FUN+iMiBiIU6KA/86pltZZQx2A7tBXqn5tLLd
 X6evpZ+xO/n0O2Lp0YZX04qRDpubtkIPNLR4TJuO1eSWaTN+lF3YiNkpn
 KJoCJhp8m8e+Ls/1qgW7XjyGaVqSbmcryy3DJUjhVlO4npsPaOpjuC1KI
 HR3r2EdDUZZQNJtmiCt9qR6qT7NlvTkQqu1RCUcpkWIFqUva59H9/WQ/4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="307743144"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="307743144"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:47:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="582862052"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="582862052"
Received: from dgroene-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.231])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:47:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221025165938.17264-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221025165938.17264-1-ville.syrjala@linux.intel.com>
Date: Tue, 25 Oct 2022 20:47:32 +0300
Message-ID: <878rl3eqx7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: Fallback to current output
 timings for LVDS fixed mode
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> If we can't dig out a fixed mode for LVDS from the VBT or EDID
> let's fall back to using the current output timings. This should
> work as long as the BIOS has (somehow) enabled the output.
>
> In this case we are dealing with the some kind of BLB based POS
> machine (Toshiba SurePOS 500) where neither the OpRegion mailbox
> nor the vbios ROM contain a valid VBT. And no EDID anywhere we
> could find either.
>
> Cc: <stable@vger.kernel.org> # v5.19+
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

But they're saying it's a regression between 4.19 and 5.10...


> ---
>  drivers/gpu/drm/i915/display/intel_panel.c |  6 ++--
>  drivers/gpu/drm/i915/display/intel_panel.h |  3 ++
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 40 ++++++++++++++++++++++
>  3 files changed, 46 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 69ce77711b7c..69082fbc7647 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -275,9 +275,9 @@ void intel_panel_add_edid_fixed_modes(struct intel_co=
nnector *connector,
>  	intel_panel_destroy_probed_modes(connector);
>  }
>=20=20
> -static void intel_panel_add_fixed_mode(struct intel_connector *connector,
> -				       struct drm_display_mode *fixed_mode,
> -				       const char *type)
> +void intel_panel_add_fixed_mode(struct intel_connector *connector,
> +				struct drm_display_mode *fixed_mode,
> +				const char *type)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct drm_display_info *info =3D &connector->base.display_info;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 5c5b5b7f95b6..964efed8ef3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -43,6 +43,9 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_s=
tate,
>  			const struct drm_connector_state *conn_state);
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);
> +void intel_panel_add_fixed_mode(struct intel_connector *connector,
> +				struct drm_display_mode *fixed_mode,
> +				const char *type);
>  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
>  				      bool use_alt_fixed_modes);
>  void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index cf8e80936d8e..9ed54118b669 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -781,6 +781,13 @@ static bool intel_sdvo_get_input_timing(struct intel=
_sdvo *intel_sdvo,
>  				     SDVO_CMD_GET_INPUT_TIMINGS_PART1, dtd);
>  }
>=20=20
> +static bool intel_sdvo_get_output_timing(struct intel_sdvo *intel_sdvo,
> +					 struct intel_sdvo_dtd *dtd)
> +{
> +	return intel_sdvo_get_timing(intel_sdvo,
> +				     SDVO_CMD_GET_OUTPUT_TIMINGS_PART1, dtd);
> +}
> +
>  static bool
>  intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
>  					 struct intel_sdvo_connector *intel_sdvo_connector,
> @@ -2864,6 +2871,36 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sd=
vo, int device)
>  	return true;
>  }
>=20=20
> +static void
> +intel_sdvo_add_current_fixed_mode(struct intel_sdvo *intel_sdvo,
> +				  struct intel_sdvo_connector *connector)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
> +	struct drm_display_mode *mode;
> +	struct intel_sdvo_dtd dtd =3D {};
> +
> +	if (!intel_sdvo_set_target_output(intel_sdvo,
> +					  connector->output_flag)) {
> +		drm_dbg_kms(&i915->drm, "failed to set SDVO target output\n");
> +		return;
> +	}
> +
> +	if (!intel_sdvo_get_output_timing(intel_sdvo, &dtd)) {
> +		drm_dbg_kms(&i915->drm, "failed to get SDVO output timings\n");
> +		return;
> +	}
> +
> +	mode =3D drm_mode_create(&i915->drm);
> +	if (!mode)
> +		return;
> +
> +	intel_sdvo_get_mode_from_dtd(mode, &dtd);
> +
> +	drm_mode_set_name(mode);
> +
> +	intel_panel_add_fixed_mode(&connector->base, mode, "current (SDVO)");
> +}
> +
>  static bool
>  intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
>  {
> @@ -2913,6 +2950,9 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  		intel_panel_add_edid_fixed_modes(intel_connector, false);
>  	}
>=20=20
> +	if (!intel_panel_preferred_fixed_mode(intel_connector))
> +		intel_sdvo_add_current_fixed_mode(intel_sdvo, intel_sdvo_connector);
> +
>  	intel_panel_init(intel_connector);
>=20=20
>  	if (!intel_panel_preferred_fixed_mode(intel_connector))

--=20
Jani Nikula, Intel Open Source Graphics Center
