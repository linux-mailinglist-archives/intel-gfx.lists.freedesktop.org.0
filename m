Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E206749774
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7E610E478;
	Thu,  6 Jul 2023 08:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5A810E478
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632093; x=1720168093;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6Pi2FYCdEtiz1UQIC2J/jx4NeUx+4vv6F2gaf3OHasE=;
 b=TgcHOlHHmVgmQzgJ9/QACBs74TiR/WXi6bp2hQyDcgv9PalmC0fbRQPM
 9Pjt+vIUFiL8n56ZVaMCe6U/2U50uP9AhCRJGvWyc3OcMDOpvcwvoOpno
 l7ICGx13VXsI7pmr5B6vPDuNAy+XGLsYTJQQi3VwGq5XtAiSHM3RR0Fhv
 V2TZ6130kIRwI2KY2wv7HZVCJxBo4jos7/1I/Swou9Lkk/LLuW8PocNYH
 j5yCCpGUgJSHMuJ2Yhf4Q2DLz8jhZQuTwmBqLZVpG/iA8H1aoAwPnRW0b
 Dm0+AyDi55IWlConvl3+tI0IHQvS+8jZi83DITGbqyFRduXuHcX7YpUo4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="429584564"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="429584564"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="864020618"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="864020618"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:28:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-10-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:28:09 +0300
Message-ID: <871qhlzbom.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/sdvo: Initialize the encoder
 ealier
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
> Call drm_encoder_init() earlier so that we don't have to keep passing
> the i915/dev_priv around separately.

*earlier in the subject.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 35 +++++++++++------------
>  1 file changed, 17 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 29762716a067..e6c558416a6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2613,9 +2613,9 @@ intel_sdvo_guess_ddc_bus(struct intel_sdvo *sdvo)
>   * outputs, then LVDS outputs.
>   */
>  static void
> -intel_sdvo_select_ddc_bus(struct drm_i915_private *dev_priv,
> -			  struct intel_sdvo *sdvo)
> +intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *mapping;
>=20=20
>  	if (sdvo->port =3D=3D PORT_B)
> @@ -2630,9 +2630,9 @@ intel_sdvo_select_ddc_bus(struct drm_i915_private *=
dev_priv,
>  }
>=20=20
>  static void
> -intel_sdvo_select_i2c_bus(struct drm_i915_private *dev_priv,
> -			  struct intel_sdvo *sdvo)
> +intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *mapping;
>  	u8 pin;
>=20=20
> @@ -2671,9 +2671,9 @@ intel_sdvo_is_hdmi_connector(struct intel_sdvo *int=
el_sdvo)
>  }
>=20=20
>  static u8
> -intel_sdvo_get_slave_addr(struct drm_i915_private *dev_priv,
> -			  struct intel_sdvo *sdvo)
> +intel_sdvo_get_slave_addr(struct intel_sdvo *sdvo)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct sdvo_device_mapping *my_mapping, *other_mapping;
>=20=20
>  	if (sdvo->port =3D=3D PORT_B) {
> @@ -2994,7 +2994,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sd=
vo)
>  		SDVO_OUTPUT_LVDS0,
>  		SDVO_OUTPUT_LVDS1,
>  	};
> -	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
>  	u16 flags;
>  	int i;
>=20=20
> @@ -3008,7 +3007,7 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sd=
vo)
>=20=20
>  	intel_sdvo->controlled_output =3D flags;
>=20=20
> -	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
> +	intel_sdvo_select_ddc_bus(intel_sdvo);
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(probe_order); i++) {
>  		u16 type =3D flags & probe_order[i];
> @@ -3309,9 +3308,9 @@ static const struct i2c_lock_operations proxy_lock_=
ops =3D {
>  };
>=20=20
>  static bool
> -intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
> -			  struct drm_i915_private *dev_priv)
> +intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(sdvo->base.base.dev);
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
>=20=20
>  	sdvo->ddc.owner =3D THIS_MODULE;
> @@ -3357,23 +3356,23 @@ bool intel_sdvo_init(struct drm_i915_private *dev=
_priv,
>  	if (!intel_sdvo)
>  		return false;
>=20=20
> -	intel_sdvo->sdvo_reg =3D sdvo_reg;
> -	intel_sdvo->port =3D port;
> -	intel_sdvo->slave_addr =3D
> -		intel_sdvo_get_slave_addr(dev_priv, intel_sdvo) >> 1;
> -	intel_sdvo_select_i2c_bus(dev_priv, intel_sdvo);
> -	if (!intel_sdvo_init_ddc_proxy(intel_sdvo, dev_priv))
> -		goto err_i2c_bus;
> -
>  	/* encoder type will be decided later */
>  	intel_encoder =3D &intel_sdvo->base;
>  	intel_encoder->type =3D INTEL_OUTPUT_SDVO;
>  	intel_encoder->power_domain =3D POWER_DOMAIN_PORT_OTHER;
>  	intel_encoder->port =3D port;
> +
>  	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
>  			 &intel_sdvo_enc_funcs, 0,
>  			 "SDVO %c", port_name(port));
>=20=20
> +	intel_sdvo->sdvo_reg =3D sdvo_reg;
> +	intel_sdvo->port =3D port;
> +	intel_sdvo->slave_addr =3D intel_sdvo_get_slave_addr(intel_sdvo) >> 1;
> +	intel_sdvo_select_i2c_bus(intel_sdvo);
> +	if (!intel_sdvo_init_ddc_proxy(intel_sdvo))
> +		goto err_i2c_bus;

drm_encoder_cleanup() in the error path?

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  	/* Read the regs to test if we can talk to the device */
>  	for (i =3D 0; i < 0x40; i++) {
>  		u8 byte;

--=20
Jani Nikula, Intel Open Source Graphics Center
