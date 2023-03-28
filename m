Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4216CC980
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 19:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F4A10E450;
	Tue, 28 Mar 2023 17:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F85F10E450
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680025379; x=1711561379;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dWYoeiVCWgO+WfaNSSiOytm9H63F8RCbwOZyIg9rvYg=;
 b=Pccgr2F0XQoqR4BriojZwjTWLX2O/NnSb4ZqQSIsF1cmZ2NkS1QyvMP3
 yPs8Av7rB53ea/SKBlLbwSkLnKH1M0bBUJZzVJgH5A/3x3xV4jJJ6ywz+
 OU7as49VRJy0eQtDv88U4dPW/1t94qj8p9zZBEpLbI4jwZYVzrM6atgaR
 mqC2dzHO5dOx/rVYcT0jh8KyqpPrsPTopbmJkpIZOpu6suZ0bkxOZ/1Sc
 e2Q4MMl2JPGKC6wcii8hDifpxuqaHtIQUJHJtFi+B2zIdAgSVxzTF1h6e
 k2B4+XuFkTYSbqkMQLTD0Uu66cKl+gZBCa7Mu45SAiAlL520iKEfYd4pr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="320295850"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="320295850"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 10:42:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827564680"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="827564680"
Received: from mmetzger-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 10:42:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230328164938.8193-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230328164938.8193-1-ville.syrjala@linux.intel.com>
Date: Tue, 28 Mar 2023 20:42:55 +0300
Message-ID: <87r0t84vs0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make utility pin asserts more
 accurate
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

On Tue, 28 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Only the PWM output mode of the utility pin is incompatible
> with DC6/LCPLL disable. Check for that specifically.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6609
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

It's an improvement.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

However, I do think it's wrong to have both these files poke at random
registers directly to check for stuff. Should be abstracted better.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 6 ++++--
>  2 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index f86060195987..ff787bd42573 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1182,8 +1182,10 @@ static void assert_can_disable_lcpll(struct drm_i9=
15_private *dev_priv)
>  				"CPU PWM2 enabled\n");
>  	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM=
_ENABLE,
>  			"PCH PWM1 enabled\n");
> -	I915_STATE_WARN(intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
> -			"Utility pin enabled\n");
> +	I915_STATE_WARN((intel_de_read(dev_priv, UTIL_PIN_CTL) &
> +			 (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) =3D=3D
> +			(UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
> +			"Utility pin enabled in PWM mode\n");
>  	I915_STATE_WARN(intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
>  			"PCH GTC enabled\n");
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1676df1dc066..c694f28e6b2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -818,8 +818,10 @@ void gen9_enable_dc5(struct drm_i915_private *dev_pr=
iv)
>  static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
>  {
>  	drm_WARN_ONCE(&dev_priv->drm,
> -		      intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
> -		      "Backlight is not disabled.\n");
> +		      (intel_de_read(dev_priv, UTIL_PIN_CTL) &
> +		       (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) =3D=3D
> +		      (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
> +		      "Utility pin enabled in PWM mode\n");
>  	drm_WARN_ONCE(&dev_priv->drm,
>  		      (intel_de_read(dev_priv, DC_STATE_EN) &
>  		       DC_STATE_EN_UPTO_DC6),

--=20
Jani Nikula, Intel Open Source Graphics Center
