Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EDB720441
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 260D9886A4;
	Fri,  2 Jun 2023 14:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BAEE10E6A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715804; x=1717251804;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s3AGEFFfn7J1f5bYoVMixldqb6/ImBQMNNMrHQFCGNc=;
 b=cDDU7NOhT5AzIsplZzvU/NSphPRP8zblEC5lL5GHvW2yMlSueT9nSQlj
 jKK3FgeKSXI8GbIygTH+SGcI7VLj2bpd6VxeOGvg7qfRTR9jKWXxJql96
 yxgvGax7zHQLoneoPNxNmuxi/hKGRUZNLHIsWSNReCbi5ICJQLYIOyX82
 jmRDcEmp5sQZ9PwzRf0ubYZbGQKBvvY54CQs/aM5C0/5vhiBEYzC7Lu6G
 ZCoPLpD6dlhxOtmpVEreXyh+P20r/M2wo4G6Qv1/blQonQgAocIVTN4zr
 ZejOi6Hq+1w2bL129rISbMbhQLHLjQeN/NXCsAQ3Zhx+/QSXQnPJndMqd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335492092"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="335492092"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="772901554"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="772901554"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:23:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230531134806.23065-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-6-ville.syrjala@linux.intel.com>
Date: Fri, 02 Jun 2023 17:23:19 +0300
Message-ID: <87h6rqdju0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915: Beef up SDVO/HDMI port
 checks
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

On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The SDVO code already warns when the port in question doesn't
> actually support SDVO. Let's make that also bail the encoder
> registration like the generic assert_port_valid() we added.
>
> And add a similar thing for g4x HDMI, mainly because on g4x
> itsefl port D only supports DP but not SDVO/HDMI. For the
> other platforms the generic port_mask check should actually
> be sufficient, but since we're here might as well list the
> ports.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c   | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 17 ++++++++++++-----
>  2 files changed, 29 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 59704939c111..8c71e3ede680 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -659,6 +659,20 @@ int g4x_hdmi_connector_atomic_check(struct drm_conne=
ctor *connector,
>  	return ret;
>  }
>=20=20
> +static bool is_hdmi_port_valid(struct drm_i915_private *i915, enum port =
port)
> +{
> +	if (IS_G4X(i915) || IS_VALLEYVIEW(i915))
> +		return port =3D=3D PORT_B || port =3D=3D PORT_C;
> +	else
> +		return port =3D=3D PORT_B || port =3D=3D PORT_C || port =3D=3D PORT_D;
> +}
> +
> +static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum p=
ort port)
> +{
> +	return !drm_WARN(&i915->drm, !is_hdmi_port_valid(i915, port),
> +			 "Platform does not support HDMI %c\n", port_name(port));
> +}
> +
>  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  		   i915_reg_t hdmi_reg, enum port port)
>  {
> @@ -670,6 +684,9 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  	if (!assert_port_valid(dev_priv, port))
>  		return;
>=20=20
> +	if (!assert_hdmi_port_valid(dev_priv, port))
> +		return;
> +
>  	devdata =3D intel_bios_encoder_data_lookup(dev_priv, port);
>=20=20
>  	/* FIXME bail? */
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 6ed613558cf8..e6b140b073c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -3314,13 +3314,19 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
>  	return i2c_add_adapter(&sdvo->ddc) =3D=3D 0;
>  }
>=20=20
> -static void assert_sdvo_port_valid(const struct drm_i915_private *dev_pr=
iv,
> -				   enum port port)
> +static bool is_sdvo_port_valid(struct drm_i915_private *dev_priv, enum p=
ort port)
>  {
>  	if (HAS_PCH_SPLIT(dev_priv))
> -		drm_WARN_ON(&dev_priv->drm, port !=3D PORT_B);
> +		return port =3D=3D PORT_B;
>  	else
> -		drm_WARN_ON(&dev_priv->drm, port !=3D PORT_B && port !=3D PORT_C);
> +		return port =3D=3D PORT_B || port =3D=3D PORT_C;
> +}
> +
> +static bool assert_sdvo_port_valid(struct drm_i915_private *dev_priv,
> +				   enum port port)
> +{
> +	return !drm_WARN(&dev_priv->drm, !is_sdvo_port_valid(dev_priv, port),
> +			 "Platform does not support SDVO %c\n", port_name(port));
>  }
>=20=20
>  bool intel_sdvo_init(struct drm_i915_private *dev_priv,
> @@ -3333,7 +3339,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	if (!assert_port_valid(dev_priv, port))
>  		return false;
>=20=20
> -	assert_sdvo_port_valid(dev_priv, port);
> +	if (!assert_sdvo_port_valid(dev_priv, port))
> +		return false;
>=20=20
>  	intel_sdvo =3D kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
>  	if (!intel_sdvo)

--=20
Jani Nikula, Intel Open Source Graphics Center
