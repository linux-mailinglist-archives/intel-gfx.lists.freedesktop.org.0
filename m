Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2257737C99
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 10:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5824910E3EF;
	Wed, 21 Jun 2023 08:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A78110E3EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 08:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687334444; x=1718870444;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0tpTgYBTXvtdPETHb51lfYws3+FF0J6ikBiGHKBOwfc=;
 b=hmjUBmmzJRn6fmK1OBQl7uKXd5WJCaHMYC1zQLxj/w8o/noQaIZ64BNz
 hdNvxfAHnq751BGTsTf44xtvWe1IOQW7ZAOh7q2qZlFJ/1/+EBsCZwrMk
 wbb+bEqv976QMocaDTfeY3XWZ5KA650S5qXzIAyd7xH8fBNeAeFJMOiVA
 PJRnaRBo1AzI+tSoICNHNiDHRLvYxKeEiJNvto1OTwAvON+jiOuFy6QfM
 phFnEGOEP/6DXajs+h03uPUzGDCeJ6wUQQmFHUVSnHbNAKtisf85gQn+h
 pFPLfqWJ3cHxTVTP9H6X2TYm6A9l0UMkZFPTuS1kBv3wUXqD2SfzICyLJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="426056746"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="426056746"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888564859"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="888564859"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:00:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620173242.26923-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-5-ville.syrjala@linux.intel.com>
Date: Wed, 21 Jun 2023 11:00:31 +0300
Message-ID: <874jn1fdnk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Remove AUX CH sanitation
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

On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop with the VBT AUX CH sanitation, and instead just check
> that the appropriate AUX CH is still available when initializing
> a DP/TC port.
>
> Note that the old way of sanitizing gave priority to the last
> port declared in the VBT, but now we sort of do the opposite by
> favoring the first encoder to succesfully initialize. The reason
> for the old "last port wins" preference was eg. Asrock B250M-HDV
> where port A (eDP) and port E (DP->VGA) have an AUX CH conflict
> and we need to prefer port E. However with the new way port A (eDP)
> will be probed first, but will fail to probe due to HPD and thus
> port E will still win in the end.

That's the kind of explanation I was after in the previous patch for ddc
pin.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c       |  3 ++
>  drivers/gpu/drm/i915/display/intel_bios.c   | 53 ---------------------
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 51 ++++++++++++++++----
>  4 files changed, 50 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 0cab5992e3da..4c7187f7913e 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1378,6 +1378,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  		intel_infoframe_init(dig_port);
>=20=20
>  	dig_port->aux_ch =3D intel_dp_aux_ch(intel_encoder);
> +	if (dig_port->aux_ch =3D=3D AUX_CH_NONE)
> +		goto err_init_connector;
> +
>  	if (!intel_dp_init_connector(dig_port, intel_connector))
>  		goto err_init_connector;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 439ab5b3cbe5..d1bf725ee9b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2230,56 +2230,6 @@ static u8 map_ddc_pin(struct drm_i915_private *i91=
5, u8 vbt_pin)
>  	return 0;
>  }
>=20=20
> -static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 au=
x_ch)
> -{
> -	enum port port;
> -
> -	if (!aux_ch)
> -		return PORT_NONE;
> -
> -	for_each_port(port) {
> -		const struct intel_bios_encoder_data *devdata =3D
> -			i915->display.vbt.ports[port];
> -
> -		if (devdata && aux_ch =3D=3D devdata->child.aux_channel)
> -			return port;
> -	}
> -
> -	return PORT_NONE;
> -}
> -
> -static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
> -			    enum port port)
> -{
> -	struct drm_i915_private *i915 =3D devdata->i915;
> -	struct child_device_config *child;
> -	enum port p;
> -
> -	p =3D get_port_by_aux_ch(i915, devdata->child.aux_channel);
> -	if (p =3D=3D PORT_NONE)
> -		return;
> -
> -	drm_dbg_kms(&i915->drm,
> -		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
> -		    "disabling port %c DP support\n",
> -		    port_name(port), devdata->child.aux_channel,
> -		    port_name(p), port_name(p));
> -
> -	/*
> -	 * If we have multiple ports supposedly sharing the aux channel, then DP
> -	 * couldn't exist on the shared port. Otherwise they share the same aux
> -	 * channel and system couldn't communicate with them separately.
> -	 *
> -	 * Give inverse child device order the priority, last one wins. Yes,
> -	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
> -	 * port A and port E with the same AUX ch and we must pick port E :(
> -	 */
> -	child =3D &i915->display.vbt.ports[p]->child;
> -
> -	child->device_type &=3D ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
> -	child->aux_channel =3D 0;
> -}
> -
>  static u8 dvo_port_type(u8 dvo_port)
>  {
>  	switch (dvo_port) {
> @@ -2687,9 +2637,6 @@ static void parse_ddi_port(struct intel_bios_encode=
r_data *devdata)
>=20=20
>  	sanitize_device_type(devdata, port);
>=20=20
> -	if (intel_bios_encoder_supports_dp(devdata))
> -		sanitize_aux_ch(devdata, port);
> -
>  	i915->display.vbt.ports[port] =3D devdata;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 662b5ceef3c8..9e4e6482aa26 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4938,8 +4938,11 @@ void intel_ddi_init(struct drm_i915_private *dev_p=
riv, enum port port)
>  	dig_port->dp.output_reg =3D INVALID_MMIO_REG;
>  	dig_port->max_lanes =3D intel_ddi_max_lanes(dig_port);
>=20=20
> -	if (need_aux_ch(encoder, init_dp))
> +	if (need_aux_ch(encoder, init_dp)) {
>  		dig_port->aux_ch =3D intel_dp_aux_ch(encoder);
> +		if (dig_port->aux_ch =3D=3D AUX_CH_NONE)
> +			goto err;
> +	}
>=20=20
>  	if (intel_phy_is_tc(dev_priv, phy)) {
>  		bool is_legacy =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 21b50a5c8a85..2d173bd495a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -792,25 +792,60 @@ static enum aux_ch default_aux_ch(struct intel_enco=
der *encoder)
>  	return (enum aux_ch)encoder->port;
>  }
>=20=20
> +static struct intel_encoder *
> +get_encoder_by_aux_ch(struct intel_encoder *encoder,
> +		      enum aux_ch aux_ch)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_encoder *other;
> +
> +	for_each_intel_encoder(&i915->drm, other) {
> +		if (other =3D=3D encoder)
> +			continue;
> +
> +		if (!intel_encoder_is_dig_port(other))
> +			continue;
> +
> +		if (enc_to_dig_port(other)->aux_ch =3D=3D aux_ch)
> +			return other;
> +	}
> +
> +	return NULL;
> +}
> +
>  enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_encoder *other;
> +	const char *source;
>  	enum aux_ch aux_ch;
>=20=20
>  	aux_ch =3D intel_bios_dp_aux_ch(encoder->devdata);
> -	if (aux_ch !=3D AUX_CH_NONE) {
> -		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] using AUX %c (VBT)\n",
> -			    encoder->base.base.id, encoder->base.name,
> -			    aux_ch_name(aux_ch));
> -		return aux_ch;
> +	source =3D "VBT";
> +
> +	if (aux_ch =3D=3D AUX_CH_NONE) {
> +		aux_ch =3D default_aux_ch(encoder);
> +		source =3D "platform default";
>  	}
>=20=20
> -	aux_ch =3D default_aux_ch(encoder);
> +	if (aux_ch =3D=3D AUX_CH_NONE)
> +		return AUX_CH_NONE;
> +
> +	/* FIXME validate aux_ch against platform caps */
> +
> +	other =3D get_encoder_by_aux_ch(encoder, aux_ch);
> +	if (other) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[ENCODER:%d:%s] AUX CH %c already claimed by [ENCODER:%d:%s]\n",
> +			    encoder->base.base.id, encoder->base.name, aux_ch_name(aux_ch),
> +			    other->base.base.id, other->base.name);
> +		return AUX_CH_NONE;
> +	}
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
> +		    "[ENCODER:%d:%s] Using AUX CH %c (%s)\n",
>  		    encoder->base.base.id, encoder->base.name,
> -		    aux_ch_name(aux_ch));
> +		    aux_ch_name(aux_ch), source);
>=20=20
>  	return aux_ch;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
