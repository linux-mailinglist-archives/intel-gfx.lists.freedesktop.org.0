Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10ED062C2E4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 16:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F29310E121;
	Wed, 16 Nov 2022 15:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D8510E121
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 15:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668613506; x=1700149506;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fSkEc7TBUeCL+dncPU2vmiU+Rpv2qDW7tVOavvw7/zk=;
 b=JWk//VsZZpp9ywF043jxiS9Jr5actKMBk9hOgpDQTqsAqpC22ZUfKMNU
 oH8ml4RgmWcCD+Z7nhAD840Eiv39h2d7YMCAX6JU7JVHyAqpu6dzMVBTE
 pEp4p/7S3FGOrEaUXHIE7hJOje8YvqVq3o+G2KjS5DlI5ym+SAiL96CX4
 LCXjX31x6teAVH5okX63PlFll7/4dWjaaoP/DrWAeWLo1DIgAwjZnVe4y
 J9o2UNXJW7n1IAk/CLEv9v5evFSeZmAB9ze63yCgnKnDYQo1DmoKTOD0L
 9tUtJERjH1ZV6qIosyaw94R0s8hhxG9/XObOBzO6EdZq4GDLbYDybBAOV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339391977"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="339391977"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 07:44:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="968466559"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="968466559"
Received: from dariofax-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.59.5])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 07:44:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221114062155.18770-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221114062155.18770-1-shawn.c.lee@intel.com>
Date: Wed, 16 Nov 2022 17:44:34 +0200
Message-ID: <87o7t629b1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [v4] drm/i915/pps: improve eDP power on flow
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

On Mon, 14 Nov 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> After i915 dirver initialized, a panel power off cycle delay
> always append before turn eDP on. If eDP display did not
> power on before. With this change, power off duration might
> longer than power cycle delay. So driver can save power cycle
> delay to speed up driver initialization time.
>
> v2: fix commit messages
> v3: refine panel_power_off_time default value and modify
>     commit messages
> v4: add eDP power off cycle delay at the path to unload i915 module
>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>  drivers/gpu/drm/i915/i915_driver.c       | 4 ++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 81ee7f3aadf6..ab4118b38120 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1100,7 +1100,7 @@ bool intel_pps_have_panel_power_or_vdd(struct intel=
_dp *intel_dp)
>=20=20
>  static void pps_init_timestamps(struct intel_dp *intel_dp)
>  {
> -	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
> +	intel_dp->pps.panel_power_off_time =3D 0;
>  	intel_dp->pps.last_power_on =3D jiffies;
>  	intel_dp->pps.last_backlight_off =3D jiffies;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index c3d43f9b1e45..0e3cbd129055 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -107,6 +107,8 @@ static const char irst_name[] =3D "INT3392";
>=20=20
>  static const struct drm_driver i915_drm_driver;
>=20=20
> +static void intel_shutdown_encoders(struct drm_i915_private *dev_priv);
> +
>  static void i915_release_bridge_dev(struct drm_device *dev,
>  				    void *bridge)
>  {
> @@ -796,6 +798,8 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
>=20=20
>  	intel_display_driver_unregister(dev_priv);
>=20=20
> +	intel_shutdown_encoders(dev_priv);
> +

Per Ville's comments on IRC, this is still too early. See [1] for
another approach.

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20221116150657.1347504-1-=
jani.nikula@intel.com


>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_driver_unregister(gt);

--=20
Jani Nikula, Intel Open Source Graphics Center
