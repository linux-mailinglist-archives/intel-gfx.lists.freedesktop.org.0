Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA6B738291
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE45F10E449;
	Wed, 21 Jun 2023 12:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E4D10E0D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687349113; x=1718885113;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qTcvwJEOAIByw5q8ocZQG90sNW5j5MahGK1FtyvT37A=;
 b=REJrkQJkmN51QE6qN9zRYzFmySIg9jbEQk+1W/QtaiPfR3XH0U6qvwIR
 ZX3XH+T/sa57LVQOtzOGSta9LwKqxzHUoyUFxcQqrscQHVpbY+FXaWz+k
 znkoc2eqnX/VrI5Dj540MBrvQWjp8yGLvl9UmYeoXiHy5UPX4czpo4T19
 DQ+IQ9CUu+aOZCidr2rHcRTcRRmDmfAWtwZjglx0McQNP/3ZwsNHR0kOZ
 MIiGFsboGkRIUKE7w6U5iSYdLyW94D+fds1Qyz0eR+R2HSDsD1ATe9Ema
 XgnlImRFHH60l2jfUveJvdOiYAT7MZnu1MP5H+HzMR+PKHZOM3Ja8iJTc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357647420"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357647420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:05:11 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748652150"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748652150"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:05:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620181203.272076-1-contact@emersion.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620181203.272076-1-contact@emersion.fr>
Date: Wed, 21 Jun 2023 15:05:05 +0300
Message-ID: <87ilbh2f7y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Jun 2023, Simon Ser <contact@emersion.fr> wrote:
> This adds more information to the hotplug uevent and lets user-space
> know that it's about a particular connector only.
>
> Signed-off-by: Simon Ser <contact@emersion.fr>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 1160fa20433b..605c6e05a169 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -376,6 +376,7 @@ static void i915_hotplug_work_func(struct work_struct=
 *work)
>  	u32 changed =3D 0, retry =3D 0;
>  	u32 hpd_event_bits;
>  	u32 hpd_retry_bits;
> +	struct drm_connector *first_changed_connector =3D NULL;
>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
>  	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
> @@ -428,6 +429,10 @@ static void i915_hotplug_work_func(struct work_struc=
t *work)
>  				break;
>  			case INTEL_HOTPLUG_CHANGED:
>  				changed |=3D hpd_bit;
> +				if (!first_changed_connector) {
> +					drm_connector_get(&connector->base);
> +					first_changed_connector =3D &connector->base;
> +				}
>  				break;
>  			case INTEL_HOTPLUG_RETRY:
>  				retry |=3D hpd_bit;
> @@ -438,9 +443,14 @@ static void i915_hotplug_work_func(struct work_struc=
t *work)
>  	drm_connector_list_iter_end(&conn_iter);
>  	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>=20=20
> -	if (changed)
> +	if (hweight32(changed) =3D=3D 1)
> +		drm_kms_helper_connector_hotplug_event(first_changed_connector);

What if more than one connector share the same hpd pin?

BR,
Jani.

> +	else if (changed)
>  		drm_kms_helper_hotplug_event(&dev_priv->drm);
>=20=20
> +	if (first_changed_connector)
> +		drm_connector_put(first_changed_connector);
> +
>  	/* Remove shared HPD pins that have changed */
>  	retry &=3D ~changed;
>  	if (retry) {

--=20
Jani Nikula, Intel Open Source Graphics Center
