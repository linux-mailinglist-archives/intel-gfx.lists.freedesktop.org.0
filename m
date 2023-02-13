Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D681694C20
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9D310E617;
	Mon, 13 Feb 2023 16:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A505E10E062
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676304824; x=1707840824;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/q/c1zmnKUL5gWEDj3Mlb93ehicVIs0dMd/q7eEyrbQ=;
 b=cyaSGBF2Tl0mWM5AJFTQH9DVve/Gdd66E6kInt/CWy7+W4+pZ2Uhmsff
 1NVc54/rcL9MNJmM8I1Ej5UspQOzPcaS8kTC+Bpg2Bgq5thJSbmdDFnUp
 Uqu2z/d74+7UKuC0CnmE7UkyO1710bYWR31VPMujwK5Iqt9uwqbxzh2bp
 uG15egLqptePrQ8YWdV4fg7joQZI7y9UtGTmuY3bT/q1NAH4zvrYHZ5Vh
 352hAmxhamuzV5c5Sytp/1jN4PcQkBtRKORUis0+26raKJEhRLCt/U4bC
 FFkLbH55Jwwk4cD0cU7VyQwhaJOBqs6gvqZaz0r4U44iLeJ7TDuEDiYVf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393322456"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393322456"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:13:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792781598"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792781598"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:13:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208015508.24824-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-11-ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 18:13:33 +0200
Message-ID: <87bklxv902.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Use encoder->devdata in eDP
 init
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

On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since we now populate encoder->devdata for all DP capable
> platforms we can consult it directly during the eDP
> connector init instead of taking a detour via some global
> list/array.
>
> Unfortunately we can't quire get rid of

*quite

> intel_dp_is_port_edp() since it's still used by the higher
> level ilk/vlv/chv output setup code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 17 +----------------
>  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c   | 17 +++++++++++++----
>  3 files changed, 15 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 1af175b48ae6..ec4544a8b333 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2584,7 +2584,7 @@ intel_bios_encoder_supports_dp(const struct intel_b=
ios_encoder_data *devdata)
>  	return devdata->child.device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>  }
>=20=20
> -static bool
> +bool
>  intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *de=
vdata)
>  {
>  	return intel_bios_encoder_supports_dp(devdata) &&
> @@ -3413,21 +3413,6 @@ bool intel_bios_is_port_present(struct drm_i915_pr=
ivate *i915, enum port port)
>  	return false;
>  }
>=20=20
> -/**
> - * intel_bios_is_port_edp - is the device in given port eDP
> - * @i915:	i915 device instance
> - * @port:	port to check
> - *
> - * Return true if the device in %port is eDP.
> - */
> -bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port por=
t)
> -{
> -	const struct intel_bios_encoder_data *devdata =3D
> -		intel_bios_encoder_data_lookup(i915, port);
> -
> -	return devdata && intel_bios_encoder_supports_edp(devdata);
> -}
> -
>  static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_=
bios_encoder_data *devdata)
>  {
>  	const struct child_device_config *child =3D &devdata->child;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index eaff41256a9c..1a6ae38bd4f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -268,6 +268,7 @@ intel_bios_encoder_data_lookup(struct drm_i915_privat=
e *i915, enum port port);
>  bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_da=
ta *devdata);
>  bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data=
 *devdata);
> +bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encod=
er_data *devdata);
>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_dat=
a *devdata);
>  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *=
devdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6b836afa0698..e4ea84b5d946 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5129,8 +5129,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_p=
ort, bool long_hpd)
>  	return IRQ_HANDLED;
>  }
>=20=20
> -/* check the VBT to see whether the eDP is on another port */
> -bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port p=
ort)
> +static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
> +				  const struct intel_bios_encoder_data *devdata,
> +				  enum port port)
>  {
>  	/*
>  	 * eDP not supported on g4x. so bail out early just
> @@ -5142,7 +5143,15 @@ bool intel_dp_is_port_edp(struct drm_i915_private =
*dev_priv, enum port port)
>  	if (DISPLAY_VER(dev_priv) < 9 && port =3D=3D PORT_A)
>  		return true;
>=20=20
> -	return intel_bios_is_port_edp(dev_priv, port);
> +	return devdata && intel_bios_encoder_supports_edp(devdata);
> +}
> +
> +bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
> +{
> +	const struct intel_bios_encoder_data *devdata =3D
> +		intel_bios_encoder_data_lookup(i915, port);
> +
> +	return _intel_dp_is_port_edp(i915, devdata, port);
>  }
>=20=20
>  static bool
> @@ -5415,7 +5424,7 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	intel_dp->DP =3D intel_de_read(dev_priv, intel_dp->output_reg);
>  	intel_dp->attached_connector =3D intel_connector;
>=20=20
> -	if (intel_dp_is_port_edp(dev_priv, port)) {
> +	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>  		/*
>  		 * Currently we don't support eDP on TypeC ports, although in
>  		 * theory it could work on TypeC legacy ports.

--=20
Jani Nikula, Intel Open Source Graphics Center
