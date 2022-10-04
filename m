Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A005F3D76
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 09:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F68B10E18C;
	Tue,  4 Oct 2022 07:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C9B10E088
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 07:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664869741; x=1696405741;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=oxU3w7Reg7NuVyAw1XrNrvj8e0QI0EB6bDjGFuYB8lc=;
 b=G4WrK9kiSztMCtLWQBV8Qr8zHbVJxHWc0uqZ3dr3fwgE1g1ofDXr7p4t
 eGrzoTJxmz7mebRRupNRspm7HBerhKGzsf+1OY1piaViRU1ZKr5gnRMfS
 8Y0l3aEp9Wm9m/36/URlUUQ9g6kijyrc9dqb3lQTaBdt3QKm7Yvx1dubq
 kdCzbWmqH1+gYso1nRBx+MgFtU0sU+vAr/bKcXrNLlUocgw85i65ufRdc
 +HSOgvCzKfFEo7JDrBj8uxlzLCbbZetAqyK5YC+goxvnFf/UDzqSpPL9H
 w6CHwxXClwZ4RajlXpkivF9JLJGadPmKrFapJmSoPrxVFcUSLWm9iOkPC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="286041818"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="286041818"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:49:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="766246781"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="766246781"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:48:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220927174518.30230-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220927174518.30230-1-animesh.manna@intel.com>
 <20220927174518.30230-2-animesh.manna@intel.com>
Date: Tue, 04 Oct 2022 10:48:56 +0300
Message-ID: <87edvouizb.fsf@intel.com>
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

On Tue, 27 Sep 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From display gen12 onwards to support dual EDP two instances of pps added.
> Currently backlight controller and pps instance can be mapped together
> for a specific panel. Extended support for gen12 for dual EDP usage.

Frankly the dual PPS support was there already, but broken. This fixes
it, and enables it for display 12+.

>
> v1: Iniital revision.
> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
> v3: Set pps_id to -1 for pnpid type of panel which will be used by
> bxt_power_sequencer_idx() to set 2nd pps instance as default for
> 2nd EDP panel. [Jani]
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
> index 28bdb936cd1f..2015b6592754 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3175,13 +3175,14 @@ void intel_bios_init(struct drm_i915_private *i91=
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
> -	init_vbt_panel_defaults(panel);
> +	bool retry =3D false;
>=20=20
> +	init_vbt_panel_defaults(panel);
>  	panel->vbt.panel_type =3D get_panel_type(i915, devdata, edid);
>=20=20
>  	parse_panel_options(i915, panel);
> @@ -3195,6 +3196,14 @@ void intel_bios_init_panel(struct drm_i915_private=
 *i915,
>  	parse_psr(i915, panel);
>  	parse_mipi_config(i915, panel);
>  	parse_mipi_sequence(i915, panel);
> +
> +	if (panel->vbt.panel_type =3D=3D PANEL_TYPE_PNPID ||
> +	    panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK) {
> +		panel->vbt.edp.pps_id =3D -1;
> +		retry =3D true;
> +	}

Why do you initialize everything above if you know the panel type is
garbage and we need to retry? I don't think the above functions were
designed with the idea they could be called multiple times for the same
panel.

Return early if you know it's wrong. Also, don't return true if the EDID
is provided.

BR,
Jani.

> +
> +	return retry;
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
> index b78b29951241..0edc0b8f3743 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -307,6 +307,7 @@ struct intel_vbt_panel_data {
>  		int preemphasis;
>  		int vswing;
>  		int bpp;
> +		int pps_id;
>  		struct edp_power_seq pps;
>  		u8 drrs_msa_timing_delay;
>  		bool low_vswing;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index c19e99ee06b6..a94fc947cdb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5203,6 +5203,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	bool has_dpcd;
>  	enum pipe pipe =3D INVALID_PIPE;
>  	struct edid *edid;
> +	bool retry;
>=20=20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
> @@ -5222,6 +5223,9 @@ static bool intel_edp_init_connector(struct intel_d=
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
> @@ -5255,9 +5259,9 @@ static bool intel_edp_init_connector(struct intel_d=
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
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 intel_connector->panel.vbt.drrs_type !=3D DRRS_TYPE_NONE,
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
