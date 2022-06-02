Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA6853B64D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 11:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6DD510E85F;
	Thu,  2 Jun 2022 09:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A385F10E85F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 09:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654163021; x=1685699021;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pJCTdYbAVaZI5YNUcsmJPOe1AA44aG8wLW5OibOlEg8=;
 b=eznSQ/dACylWkm6NdiWNMKLjaEg+rINu4aUa8yQodavE9IhBllixKERc
 0c020rAxsRQDwS0NgkdR+Gyc0QKzk/2obnk/UAI2xp0alZalnqCrtYxpa
 Gfz82ii3d4rELkBMLDJNgfuFNhEzdNgokpgbXone4Mf2AY47JNn79N/12
 GmtJzXx5TzybxzTFzyf5srvPMnBDKXz65pZFn7cCpxPmn7XDXVcrMTKz/
 3hZUbK+erYpdtreWaiUEpOUxnFY3/V2ZRlwsWb3a071qhySOLNI8adt/3
 ckxnx6CZLg68gQwprbjj5vUIwPJ1nSZm8z0m+oWv7fodPgU1CtTeELCaL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="257965348"
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="257965348"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:43:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="606758870"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:43:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220601151907.18725-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
 <20220601151907.18725-4-ville.syrjala@linux.intel.com>
Date: Thu, 02 Jun 2022 12:43:37 +0300
Message-ID: <87mtevpfhy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Parse max link rate from the
 eDP BDB block
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

On Wed, 01 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The eDP BDB block has gained yet another max link rate field.
> Let's parse it and consult it during the source rate filtering.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
>  4 files changed, 27 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index d701854dc429..b35afd39413d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1461,6 +1461,10 @@ parse_edp(struct drm_i915_private *i915,
>=20=20
>  	panel->vbt.edp.drrs_msa_timing_delay =3D
>  		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
> +
> +	if (i915->vbt.version >=3D 244)
> +		panel->vbt.edp.max_link_rate =3D
> +			edp->edp_max_port_link_rate[panel_type] * 2;
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9b44358e8d9e..8b0949b6dc75 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -300,6 +300,7 @@ struct intel_vbt_panel_data {
>  	enum drrs_type drrs_type;
>=20=20
>  	struct {
> +		int max_link_rate;
>  		int rate;
>  		int lanes;
>  		int preemphasis;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 03af93ef9e93..2b84d6fcba4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -408,6 +408,26 @@ static int ehl_max_source_rate(struct intel_dp *inte=
l_dp)
>  	return 810000;
>  }
>=20=20
> +static int vbt_max_link_rate(struct intel_dp *intel_dp)
> +{
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	int max_rate;
> +
> +	max_rate =3D intel_bios_dp_max_link_rate(encoder);
> +
> +	if (intel_dp_is_edp(intel_dp)) {
> +		int edp_max_rate =3D connector->panel.vbt.edp.max_link_rate;
> +
> +		if (max_rate && edp_max_rate)
> +			max_rate =3D min(max_rate, edp_max_rate);

I think the spec is a bit unambigous about the relationship of these
two, but this seems sane. *shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +		else if (edp_max_rate)
> +			max_rate =3D edp_max_rate;
> +	}
> +
> +	return max_rate;
> +}
> +
>  static void
>  intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  {
> @@ -429,7 +449,6 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		162000, 270000
>  	};
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct intel_encoder *encoder =3D &dig_port->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
>  	const int *source_rates;
>  	int size, max_rate =3D 0, vbt_max_rate;
> @@ -465,7 +484,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		size =3D ARRAY_SIZE(g4x_rates);
>  	}
>=20=20
> -	vbt_max_rate =3D intel_bios_dp_max_link_rate(encoder);
> +	vbt_max_rate =3D vbt_max_link_rate(intel_dp);
>  	if (max_rate && vbt_max_rate)
>  		max_rate =3D min(max_rate, vbt_max_rate);
>  	else if (vbt_max_rate)
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 58aee0a040cf..f8e5097222f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -697,6 +697,7 @@ struct bdb_edp {
>  	u16 apical_enable;					/* 203 */
>  	struct edp_apical_params apical_params[16];		/* 203 */
>  	u16 edp_fast_link_training_rate[16];			/* 224 */
> +	u16 edp_max_port_link_rate[16];				/* 244 */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel Open Source Graphics Center
