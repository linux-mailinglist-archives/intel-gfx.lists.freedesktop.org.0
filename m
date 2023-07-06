Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B17749778
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D2710E47B;
	Thu,  6 Jul 2023 08:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2402A10E47B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632159; x=1720168159;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=La/X7OW8xOacERT1enpzyL05ZCnaPIG3eWNAyDWoHc0=;
 b=bFCD3XuFwPLfMip/KvWIOtivN2/1CNe4xdoU7enrbEcE+X/fjmi7PkGj
 Fha0PUnQs5lkrwHOY0dYgrJfZ92AQy61sOaT0vbZSamcLwt+vd2EqJNIn
 XPBmGOVLu/Rr6NRRPhEqQzr+T7BUlejvx9i9WRCN3UFhBOdCAlVYBZewo
 RezOUKhhduIZEiB4bKXuJOBxVR4o84COgx8tFtsglZWQs5Pdhv5ryRVIH
 ZPHo5KLuqzgqAlUACjb2Vz8xRTMhtRXVYfIDpxtd1s4N3nMwnKwG+HyBy
 HM1/mKgfH/xLy6LpdZ1M70LF10krW5gZUBvCPT7OokeUFfoqw5bTwDI/j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="361014098"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="361014098"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="719510772"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="719510772"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:29:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-11-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:29:13 +0300
Message-ID: <87y1jtxx2e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/sdvo: Nuke the duplicate
 sdvo->port
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We already have encoder->port so get rid of the duplicate
> sdvo->port.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 19 ++++++++-----------
>  1 file changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index e6c558416a6b..383f8b1547a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -108,8 +108,6 @@ struct intel_sdvo {
>  	 */
>  	u16 hotplug_active;
>=20=20
> -	enum port port;
> -
>  	/* DDC bus used by this SDVO encoder */
>  	u8 ddc_bus;
>=20=20
> @@ -226,7 +224,7 @@ static void intel_sdvo_write_sdvox(struct intel_sdvo =
*intel_sdvo, u32 val)
>  		return;
>  	}
>=20=20
> -	if (intel_sdvo->port =3D=3D PORT_B)
> +	if (intel_sdvo->base.port =3D=3D PORT_B)
>  		cval =3D intel_de_read(dev_priv, GEN3_SDVOC);
>  	else
>  		bval =3D intel_de_read(dev_priv, GEN3_SDVOB);
> @@ -403,7 +401,7 @@ static const char *sdvo_cmd_name(u8 cmd)
>  	return NULL;
>  }
>=20=20
> -#define SDVO_NAME(svdo) ((svdo)->port =3D=3D PORT_B ? "SDVOB" : "SDVOC")
> +#define SDVO_NAME(svdo) ((svdo)->base.port =3D=3D PORT_B ? "SDVOB" : "SD=
VOC")
>=20=20
>  static void intel_sdvo_debug_write(struct intel_sdvo *intel_sdvo, u8 cmd,
>  				   const void *args, int args_len)
> @@ -1604,7 +1602,7 @@ static void intel_sdvo_pre_enable(struct intel_atom=
ic_state *state,
>  			sdvox |=3D SDVO_BORDER_ENABLE;
>  	} else {
>  		sdvox =3D intel_de_read(dev_priv, intel_sdvo->sdvo_reg);
> -		if (intel_sdvo->port =3D=3D PORT_B)
> +		if (intel_sdvo->base.port =3D=3D PORT_B)
>  			sdvox &=3D SDVOB_PRESERVE_MASK;
>  		else
>  			sdvox &=3D SDVOC_PRESERVE_MASK;
> @@ -2618,7 +2616,7 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
>  	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *mapping;
>=20=20
> -	if (sdvo->port =3D=3D PORT_B)
> +	if (sdvo->base.port =3D=3D PORT_B)
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[0];
>  	else
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[1];
> @@ -2636,7 +2634,7 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
>  	struct sdvo_device_mapping *mapping;
>  	u8 pin;
>=20=20
> -	if (sdvo->port =3D=3D PORT_B)
> +	if (sdvo->base.port =3D=3D PORT_B)
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[0];
>  	else
>  		mapping =3D &dev_priv->display.vbt.sdvo_mappings[1];
> @@ -2676,7 +2674,7 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
>  	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *my_mapping, *other_mapping;
>=20=20
> -	if (sdvo->port =3D=3D PORT_B) {
> +	if (sdvo->base.port =3D=3D PORT_B) {
>  		my_mapping =3D &dev_priv->display.vbt.sdvo_mappings[0];
>  		other_mapping =3D &dev_priv->display.vbt.sdvo_mappings[1];
>  	} else {
> @@ -2703,7 +2701,7 @@ intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
>  	 * No SDVO device info is found for another DVO port,
>  	 * so use mapping assumption we had before BIOS parsing.
>  	 */
> -	if (sdvo->port =3D=3D PORT_B)
> +	if (sdvo->base.port =3D=3D PORT_B)
>  		return 0x70;
>  	else
>  		return 0x72;
> @@ -3367,7 +3365,6 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  			 "SDVO %c", port_name(port));
>=20=20
>  	intel_sdvo->sdvo_reg =3D sdvo_reg;
> -	intel_sdvo->port =3D port;
>  	intel_sdvo->slave_addr =3D intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
>  	intel_sdvo_select_i2c_bus(intel_sdvo);
>  	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
> @@ -3417,7 +3414,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	 * hotplug lines.
>  	 */
>  	if (intel_sdvo->hotplug_active) {
> -		if (intel_sdvo->port =3D=3D PORT_B)
> +		if (intel_sdvo->base.port =3D=3D PORT_B)
>  			intel_encoder->hpd_pin =3D HPD_SDVO_B;
>  		else
>  			intel_encoder->hpd_pin =3D HPD_SDVO_C;

--=20
Jani Nikula, Intel Open Source Graphics Center
