Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B92E36D6EB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 14:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17B386EB14;
	Wed, 28 Apr 2021 12:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8796EB15
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 12:01:26 +0000 (UTC)
IronPort-SDR: mdtEQvaSrfa88Z5G/BCzfuJUY20P9ayK2B+ngw+3FUjXWVrsUK9SRLD9IGQJ2ETr0sA9RkIY8o
 DP6941bDi0Ow==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="193531958"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="193531958"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 05:01:26 -0700
IronPort-SDR: LGvV729h+WZgsxk/igskL+MXhFQF9la/qP2dY2tFXPs5vzIk7yprk7JzDEkGhtvUQp48kCFjKO
 9uMboP6tuJvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="455037140"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 28 Apr 2021 05:01:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Apr 2021 15:01:23 +0300
Date: Wed, 28 Apr 2021 15:01:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YIlOk2U9YgmXR+jb@intel.com>
References: <cover.1619604743.git.jani.nikula@intel.com>
 <7dc3f6974711ce44522189dc9db05d1e6e24e6d8.1619604743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dc3f6974711ce44522189dc9db05d1e6e24e6d8.1619604743.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/backlight: use unique
 backlight device names
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 01:14:29PM +0300, Jani Nikula wrote:
> Registering multiple backlight devices with intel_backlight name will
> obviously fail, regardless of whether they're two connectors in the same
> drm device or two different drm devices.
> =

> It would be preferrable to switch to completely unique names, and sunset
> the generic intel_backlight name. However, there are apparently users
> out there that hardcode the name, so the change would break backward
> compatibility.
> =

> As a compromise, register the first device with intel_backlight name. In
> the common case, this is the only backlight device anyway. From the
> second device on, use card%d-%s-backlight format, for example
> card0-eDP-2-backlight, to make the name unique.
> =

> This approach does not preclude us from registering the first device
> using the same naming scheme in the future.

"intel_backlight" symlink for the first backlight might be an option I
guess.

Series is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> v2: Keep using intel_backlight name for first backlight device
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2794
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 23 ++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3088677ab8a7..a20761079ae0 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -1401,16 +1401,31 @@ int intel_backlight_device_register(struct intel_=
connector *connector)
>  	else
>  		props.power =3D FB_BLANK_POWERDOWN;
>  =

> -	/*
> -	 * Note: using the same name independent of the connector prevents
> -	 * registration of multiple backlight devices in the driver.
> -	 */
>  	name =3D kstrdup("intel_backlight", GFP_KERNEL);
>  	if (!name)
>  		return -ENOMEM;
>  =

>  	bd =3D backlight_device_register(name, connector->base.kdev, connector,
>  				       &intel_backlight_device_ops, &props);
> +
> +	/*
> +	 * Using the same name independent of the drm device or connector
> +	 * prevents registration of multiple backlight devices in the
> +	 * driver. However, we need to use the default name for backward
> +	 * compatibility. Use unique names for subsequent backlight devices as a
> +	 * fallback when the default name already exists.
> +	 */
> +	if (IS_ERR(bd) && PTR_ERR(bd) =3D=3D -EEXIST) {
> +		kfree(name);
> +		name =3D kasprintf(GFP_KERNEL, "card%d-%s-backlight",
> +				 i915->drm.primary->index, connector->base.name);
> +		if (!name)
> +			return -ENOMEM;
> +
> +		bd =3D backlight_device_register(name, connector->base.kdev, connector,
> +					       &intel_backlight_device_ops, &props);
> +	}
> +
>  	if (IS_ERR(bd)) {
>  		drm_err(&i915->drm,
>  			"[CONNECTOR:%d:%s] backlight device %s register failed: %ld\n",
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
