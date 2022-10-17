Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8B7600FE1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 15:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A6210E433;
	Mon, 17 Oct 2022 13:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9AC10E433
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 13:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666012140; x=1697548140;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=taj2ZiOB8A4AxtV3YU29JMrx+7ds4WBqaS1Pq0+ef14=;
 b=oEYvuRljuc5Gbdd1y86vFIa1N1JgqYIf3C37Kn4/GV2wAV3FtPhTFioW
 hU/jHMYFBSrYIpDHbjvUZSmgotP+2L0ve4W7/mBDFcUe091PAXPMuh8oO
 hRA/ZV3L5j4/BEn9aNF3Wst6X1l5OSLp2ECcwMdRJwoElWBK+xCXifBrN
 fzHzWJ8MO2zEM8p3618L7lF9p/s1utsLiY+yOBE5/X68iQYNV3enKI5+s
 TJ381O6KQIqzQ9JjHA5+OMEooVZFI9OOuwaJ0EO/6WssPSRki4+e4gM8P
 eusSNYGGAMa+fZ7toGXLztQxXvD+kQHMPeIAqWrmqzz2ciewMHdNwI/Wj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="303406678"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="303406678"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:09:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="623218978"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="623218978"
Received: from mikkelan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.11])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:08:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221010155427.15735-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221010155427.15735-1-animesh.manna@intel.com>
 <20221010155427.15735-2-animesh.manna@intel.com>
Date: Mon, 17 Oct 2022 16:08:54 +0300
Message-ID: <87wn8yiom1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

On Mon, 10 Oct 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From display gen12 onwards to support dual EDP two instances of pps added.
> Currently backlight controller and pps instance can be mapped together
> for a specific panel. Currently dual PPS support is broken. This patch fi=
xes
> it and enables for display 12+.
>
> v1: Iniital revision.
> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
> v3: Set pps_id to -1 for pnpid type of panel which will be used by
> bxt_power_sequencer_idx() to set 2nd pps instance as default for
> 2nd EDP panel. [Jani]
> v4: Early return for PANEL_TYPE_FALLBACK. [Jani]
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c          | 13 +++++++++++--
>  drivers/gpu/drm/i915/display/intel_bios.h          |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_pps.c           | 12 +++++++++++-
>  5 files changed, 31 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c2987f2c2b2e..dd3cd2ca815d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3183,15 +3183,22 @@ void intel_bios_init(struct drm_i915_private *i91=
5)
>  	kfree(oprom_vbt);
>  }
>=20=20
> -void intel_bios_init_panel(struct drm_i915_private *i915,
> +bool intel_bios_init_panel(struct drm_i915_private *i915,
>  			   struct intel_panel *panel,
>  			   const struct intel_bios_encoder_data *devdata,
>  			   const struct edid *edid)
>  {
>  	init_vbt_panel_defaults(panel);
> -

Please don't do superfluous whitespace changes.

>  	panel->vbt.panel_type =3D get_panel_type(i915, devdata, edid);
>=20=20
> +	if (panel->vbt.panel_type =3D=3D PANEL_TYPE_PNPID ||
> +	    panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK) {
> +		panel->vbt.edp.pps_id =3D -1;
> +
> +		if (!edid && intel_bios_encoder_supports_edp(devdata))
> +			return true;
> +	}
> +

	if (panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK && !edid) {
		panel->vbt.backlight.controller =3D -1;
		return true;
	}

>  	parse_panel_options(i915, panel);
>  	parse_generic_dtd(i915, panel);
>  	parse_lfp_data(i915, panel);
> @@ -3203,6 +3210,8 @@ void intel_bios_init_panel(struct drm_i915_private =
*i915,
>  	parse_psr(i915, panel);
>  	parse_mipi_config(i915, panel);
>  	parse_mipi_sequence(i915, panel);
> +
> +	return false;
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index e375405a7828..f8ef0274f3ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -232,7 +232,7 @@ struct mipi_pps_data {
>  } __packed;
>=20=20
>  void intel_bios_init(struct drm_i915_private *dev_priv);
> -void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> +bool intel_bios_init_panel(struct drm_i915_private *dev_priv,
>  			   struct intel_panel *panel,
>  			   const struct intel_bios_encoder_data *devdata,
>  			   const struct edid *edid);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 44ab296c1f04..37e8309207bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -307,6 +307,7 @@ struct intel_vbt_panel_data {
>  		int preemphasis;
>  		int vswing;
>  		int bpp;
> +		int pps_id;

Unnecessary.

>  		struct edp_power_seq pps;
>  		u8 drrs_msa_timing_delay;
>  		bool low_vswing;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 70b06806ec0d..50d9223562e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5235,6 +5235,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	bool has_dpcd;
>  	struct edid *edid;
> +	bool retry;
>=20=20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
> @@ -5254,6 +5255,9 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  		return false;
>  	}
>=20=20
> +	retry =3D intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +				      encoder->devdata, NULL);
> +
>  	intel_pps_init(intel_dp);
>=20=20
>  	/* Cache DPCD and EDID for edp. */
> @@ -5288,9 +5292,9 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  		edid =3D ERR_PTR(-ENOENT);
>  	}
>  	intel_connector->edid =3D edid;
> -
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> +	if (retry)
> +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>=20=20
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index b972fa6ec00d..da98b180639a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -218,6 +218,16 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>  	/* We should never land here with regular DP ports */
>  	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
>=20=20
> +	if (connector->panel.vbt.edp.pps_id =3D=3D -1) {

	if (backlight_controller =3D=3D -1)
        	backlight_controller =3D connector->encoder->port =3D=3D PORT_A ? =
0 : 1;

> +		/*
> +		 * Use 2nd PPS instance as default for 2nd EDP panel.
> +		 */
> +		if (connector->encoder->port =3D=3D PORT_A)
> +			return 0;
> +		else
> +			return 1;
> +	}
> +
>  	if (!intel_dp->pps.pps_reset)
>  		return backlight_controller;
>=20=20
> @@ -1430,7 +1440,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing =3D true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>=20=20
> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >=3D 1=
2)
>  		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
>  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;

--=20
Jani Nikula, Intel Open Source Graphics Center
