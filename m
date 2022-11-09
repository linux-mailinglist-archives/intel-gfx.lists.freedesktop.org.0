Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F25B0622ACC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12EDD10E5AB;
	Wed,  9 Nov 2022 11:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEFCC10E5AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667994146; x=1699530146;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8kgw16eeREYqYZlP4Mu6Pgw1f4NjByl46xGKJvr8iqM=;
 b=D2oFao6yCdi+1EwzEoh1vJj75lI4zGCsIOYYBiuIQpCymUUu6yjeZOmN
 dEsmWLQCVk0HzI5y9YSo4UyUZpJEc6E0CAMXNEkaZGSWv64+cBY2ooVKz
 SN/yjY0usyu7JWtodGstRsMh4tGUvJJcoGAUtcL0F7IOr4z9aH326npef
 cYJulciC8cfB0E3/HFS05KKfcs3ZHw9LmC6lQfNv1RWHuAyIaahPLdF7Q
 YIIn//LKgz4LKW1dAhW5zHpf2/+kVU7TFmVmk6LRiSrE0AeGhS6DBcjJi
 iUquRe7+iCjFyYf9VnOLCxqdU9Rws2eD+4YmX3jkbQvW7SC4Fhpb9SE8d Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291344232"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="291344232"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:42:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="761853538"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="761853538"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:42:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109111529.27476-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111529.27476-1-animesh.manna@intel.com>
 <20221109111529.27476-2-animesh.manna@intel.com>
Date: Wed, 09 Nov 2022 13:42:21 +0200
Message-ID: <87leok73s2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual
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

On Wed, 09 Nov 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From display gen12 onwards to support dual EDP two instances of pps added.
> Currently backlight controller and pps instance can be mapped together
> for a specific panel. Currently dual PPS support is broken. This patch
> fixes it and enables for display 12+.
>
> v1: Iniital revision.
> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
> v3: Set pps_id to -1 for pnpid type of panel which will be used by
> bxt_power_sequencer_idx() to set 2nd pps instance as default for
> 2nd EDP panel. [Jani]
> v4: Early return for PANEL_TYPE_FALLBACK. [Jani]
> v5: Removed additional pps_id variable and reused backlight
> controller. [Jani]
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c |  9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_pps.c  | 12 +++++++++++-
>  4 files changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c2987f2c2b2e..1c1eea061fbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3183,7 +3183,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	kfree(oprom_vbt);
>  }
>=20=20
> -void intel_bios_init_panel(struct drm_i915_private *i915,
> +bool intel_bios_init_panel(struct drm_i915_private *i915,
>  			   struct intel_panel *panel,
>  			   const struct intel_bios_encoder_data *devdata,
>  			   const struct edid *edid)
> @@ -3192,6 +3192,11 @@ void intel_bios_init_panel(struct drm_i915_private=
 *i915,
>=20=20
>  	panel->vbt.panel_type =3D get_panel_type(i915, devdata, edid);
>=20=20
> +	if (panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK && !edid) {

As Ville pointed out, "panel->vbt.panel_type =3D=3D PANEL_TYPE_FALLBACK" is
comparing apples to oranges, and we hit this path only in the rare case
that panel_type =3D=3D 3, regardless of where the panel type originated.

This is probably the reason patches 1&2 don't fix the original issue
like it should.

I remind you that the issue is two eDP having their own pps software
states but using the same pps hardware due to conflicting pps index
(which is the same as panel->vbt.backlight.controller). This is what we
need to solve here.

We get the wakeref imbalance because of two eDP trampling on the same
pps hardware. Patch 3 does nothing to address that issue, it just tries
to hide the problem.


BR,
Jani.


> +		panel->vbt.backlight.controller =3D -1;
> +		return true;
> +	}
> +
>  	parse_panel_options(i915, panel);
>  	parse_generic_dtd(i915, panel);
>  	parse_lfp_data(i915, panel);
> @@ -3203,6 +3208,8 @@ void intel_bios_init_panel(struct drm_i915_private =
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
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7400d6b4c587..78cf3a77f026 100644
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
> index 3949fb449353..5738af154bd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -219,6 +219,16 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>  	/* We should never land here with regular DP ports */
>  	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
>=20=20
> +	if (backlight_controller =3D=3D -1) {
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
