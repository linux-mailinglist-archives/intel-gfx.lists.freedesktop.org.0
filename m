Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154D2357643
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 22:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210BC6E98D;
	Wed,  7 Apr 2021 20:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64ED789F99
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 20:47:11 +0000 (UTC)
IronPort-SDR: /IN5aq8VJYINOisz2g9G66B9RrVD6hqwYHoCnFGh46bF3SLMkchbsSN/ca3GrtRk6FqyUEJbVn
 e3soKRmpz8Kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="191235338"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="191235338"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 13:47:07 -0700
IronPort-SDR: pHHflhZQ8P8VJb9pK4u+iMVkxn9uWIjCeaoHt2+2A22obMTBIoKONU+R++zZ3HQ3rB/6Pfv4rb
 PEX2PLRcUXNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="387133529"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 07 Apr 2021 13:47:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Apr 2021 23:47:04 +0300
Date: Wed, 7 Apr 2021 23:47:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YG4aSL1jEG/Tz7wU@intel.com>
References: <20210407090812.3602-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210407090812.3602-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC] drm/i915/backlight: switch to unique
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

On Wed, Apr 07, 2021 at 12:08:12PM +0300, Jani Nikula wrote:
> Change the backlight device names from intel_backlight to
> card%d-%s-backlight format, for example card0-eDP-1-backlight, to make
> them unique. Otherwise, registering multiple backlight devices with
> intel_backlight name will fail, regardless of whether they're two
> connectors in the same device or two different devices.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2794
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> =

> ---
> =

> Is the name "intel_backlight" part of the UABI? In theory the userspace
> should only look at the names and types available under
> /sys/class/backlight, not the exact names.

Quick glance at some things suggest this might affect some
custom setups people have.

There is an xorg.conf option in the intel ddx to force the
backlight device selection. But I didn't see any hardcoding
of the backlight device name, so unless the user has
configured that knob things should keep working I think.

Also googling says systemd might have some backlight
name to service name magic going on. But I was too lazy
to actually read the code so don't know the details.

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 29 ++++++++++++++--------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 10022d1575e1..5ebf8cb0e8e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -1372,6 +1372,8 @@ int intel_backlight_device_register(struct intel_co=
nnector *connector)
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>  	struct backlight_properties props;
> +	const char *name;
> +	int ret =3D 0;
>  =

>  	if (WARN_ON(panel->backlight.device))
>  		return -ENODEV;
> @@ -1398,28 +1400,33 @@ int intel_backlight_device_register(struct intel_=
connector *connector)
>  	else
>  		props.power =3D FB_BLANK_POWERDOWN;
>  =

> -	/*
> -	 * Note: using the same name independent of the connector prevents
> -	 * registration of multiple backlight devices in the driver.
> -	 */
> +	name =3D kasprintf(GFP_KERNEL, "card%d-%s-backlight", i915->drm.primary=
->index,
> +			 connector->base.name);
> +	if (!name)
> +		return -ENOMEM;
> +
>  	panel->backlight.device =3D
> -		backlight_device_register("intel_backlight",
> +		backlight_device_register(name,
>  					  connector->base.kdev,
>  					  connector,
>  					  &intel_backlight_device_ops, &props);
>  =

>  	if (IS_ERR(panel->backlight.device)) {
> -		drm_err(&i915->drm, "Failed to register backlight: %ld\n",
> -			PTR_ERR(panel->backlight.device));
> +		drm_err(&i915->drm, "Failed to register backlight %s: %ld\n",
> +			name, PTR_ERR(panel->backlight.device));
>  		panel->backlight.device =3D NULL;
> -		return -ENODEV;
> +		ret =3D -ENODEV;
> +		goto out;
>  	}
>  =

>  	drm_dbg_kms(&i915->drm,
> -		    "Connector %s backlight sysfs interface registered\n",
> -		    connector->base.name);
> +		    "Connector %s backlight sysfs interface %s registered\n",
> +		    name, connector->base.name);
>  =

> -	return 0;
> +out:
> +	kfree(name);
> +
> +	return ret;
>  }
>  =

>  void intel_backlight_device_unregister(struct intel_connector *connector)
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
