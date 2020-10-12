Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D13B28C239
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 22:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C602B6E5CC;
	Mon, 12 Oct 2020 20:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6FE26E5CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 20:23:00 +0000 (UTC)
IronPort-SDR: w/3ouRow1tqvkyMSQl8oBVOLxQZKBiYBQQ8TNSGf7rJ9oaXdoV76yuJUwg9/8rMgcSSYk5hQLQ
 itJSVEZ8IQOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145119088"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="145119088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:22:59 -0700
IronPort-SDR: 4MoZj10aLV8WE/B8U/hExnsV/RHL2KmZ4R3jPbGtnmBTJ/61Z4jgzHhduTxOpxC18cGlEQKrGM
 iv6jqgRgus5Q==
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="299389909"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:22:58 -0700
Date: Mon, 12 Oct 2020 23:22:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201012202254.GD2349678@ideak-desk.fi.intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
 <20201006185809.4655-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006185809.4655-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Refactor .hpd_irq_setup()
 calls a bit
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 09:58:09PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Add a small wrapper for .hpd_irq_setup() which does the
> "do we even have the hook?" and "are display interrupts enabled?"
> checks.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 22 +++++++++++---------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 5c58c1ed6493..6110d71b4f14 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -213,6 +213,12 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i91=
5_private *dev_priv)
>  	}
>  }
>  =

> +static void intel_hpd_irq_setup(struct drm_i915_private *i915)
> +{
> +	if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
> +		i915->display.hpd_irq_setup(i915);
> +}
> +
>  static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>  {
>  	struct drm_i915_private *dev_priv =3D
> @@ -248,8 +254,7 @@ static void intel_hpd_irq_storm_reenable_work(struct =
work_struct *work)
>  			dev_priv->hotplug.stats[pin].state =3D HPD_ENABLED;
>  	}
>  =

> -	if (dev_priv->display_irqs_enabled && dev_priv->display.hpd_irq_setup)
> -		dev_priv->display.hpd_irq_setup(dev_priv);
> +	intel_hpd_irq_setup(dev_priv);
>  =

>  	spin_unlock_irq(&dev_priv->irq_lock);
>  =

> @@ -556,8 +561,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  	 * Disable any IRQs that storms were detected on. Polling enablement
>  	 * happens later in our hotplug work.
>  	 */
> -	if (storm_detected && dev_priv->display_irqs_enabled)
> -		dev_priv->display.hpd_irq_setup(dev_priv);
> +	if (storm_detected)
> +		intel_hpd_irq_setup(dev_priv);
>  	spin_unlock(&dev_priv->irq_lock);
>  =

>  	/*
> @@ -602,12 +607,9 @@ void intel_hpd_init(struct drm_i915_private *dev_pri=
v)
>  	 * Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked checks happy.
>  	 */
> -	if (dev_priv->display_irqs_enabled && dev_priv->display.hpd_irq_setup) {
> -		spin_lock_irq(&dev_priv->irq_lock);
> -		if (dev_priv->display_irqs_enabled)
> -			dev_priv->display.hpd_irq_setup(dev_priv);
> -		spin_unlock_irq(&dev_priv->irq_lock);
> -	}
> +	spin_lock_irq(&dev_priv->irq_lock);
> +	intel_hpd_irq_setup(dev_priv);
> +	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  =

>  static void i915_hpd_poll_init_work(struct work_struct *work)
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
