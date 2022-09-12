Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F3F5B59BA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304B610E3CF;
	Mon, 12 Sep 2022 11:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325F610E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983863; x=1694519863;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=VVEZmHvQUekd+ALKlqd/kUDZrcgDOrkIlxrGJ5G9Nr4=;
 b=RhA5V2Wf/4s5Tun9rsDTLSLeTGDGuuhMO6eGFWLR5hVeOFCY4IX1ZGu6
 99kQZWUaLOrIN5+Gb2Ov2B4UKJXXwCMlxMPS5/FmvYf4Eypu63/fAtbS8
 CXY5GO2KXrP/tI6Z92aGN/yvwt2rcu1ALdqtszaNqnj3rQFuZK/qhV7X3
 9qfByT5hJkZXwLHwxvRREnv896jtRvySj7Y3xvmxNNpP8x5PaIAsW5S4C
 mOmuasM2o+HLaKxWJ8kTl3yNr+CD9adM/nHUxHfJg9C1evZx7qnlNQLBn
 +7GLyes9OnuhdpDwEHEm94oZzCnKMtM7Cycjz4fmCE+tCMY9m9RRXYv3F g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="295430077"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="295430077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:57:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678056525"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:57:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220912111814.17466-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-7-ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 14:57:38 +0300
Message-ID: <87ills6c0d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Extract
 intel_edp_backlight_setup()
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

On Mon, 12 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the eDP backlight setup ino its own function. No

*into

> reason to pollute intel_edp_init_connector() with all
> the mundane details.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 51 +++++++++++++++----------
>  1 file changed, 30 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a5eca5396fed..de5a4d2df78e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5217,6 +5217,35 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>  						       fixed_mode->vdisplay);
>  }
>=20=20
> +static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
> +				      struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	enum pipe pipe =3D INVALID_PIPE;
> +
> +	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +		/*
> +		 * Figure out the current pipe for the initial backlight setup.
> +		 * If the current pipe isn't valid, try the PPS pipe, and if that
> +		 * fails just assume pipe A.
> +		 */
> +		pipe =3D vlv_active_pipe(intel_dp);
> +
> +		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> +			pipe =3D intel_dp->pps.pps_pipe;
> +
> +		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> +			pipe =3D PIPE_A;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\n",
> +			    connector->base.base.id, connector->base.name,
> +			    pipe_name(pipe));
> +	}
> +
> +	intel_backlight_setup(connector, pipe);
> +}
> +
>  static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  				     struct intel_connector *intel_connector)
>  {
> @@ -5226,7 +5255,6 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	struct drm_display_mode *fixed_mode;
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	bool has_dpcd;
> -	enum pipe pipe =3D INVALID_PIPE;
>  	struct edid *edid;
>=20=20
>  	if (!intel_dp_is_edp(intel_dp))
> @@ -5301,28 +5329,9 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>=20=20
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		/*
> -		 * Figure out the current pipe for the initial backlight setup.
> -		 * If the current pipe isn't valid, try the PPS pipe, and if that
> -		 * fails just assume pipe A.
> -		 */
> -		pipe =3D vlv_active_pipe(intel_dp);
> -
> -		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> -			pipe =3D intel_dp->pps.pps_pipe;
> -
> -		if (pipe !=3D PIPE_A && pipe !=3D PIPE_B)
> -			pipe =3D PIPE_A;
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "using pipe %c for initial backlight setup\n",
> -			    pipe_name(pipe));
> -	}
> -
>  	intel_panel_init(intel_connector);
>=20=20
> -	intel_backlight_setup(intel_connector, pipe);
> +	intel_edp_backlight_setup(intel_dp, intel_connector);
>=20=20
>  	intel_edp_add_properties(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
