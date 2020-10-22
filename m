Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73D22963CC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 19:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6456F5FD;
	Thu, 22 Oct 2020 17:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E3B6F5FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 17:34:00 +0000 (UTC)
IronPort-SDR: GEdv6fDCdrDOUf4LvJUWw7WjzVrck9muVjmxbQjOY7eHjhooipwtxMHr2C56Y4eyAPJ/+no+k1
 wLvyERL1xYeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="147425111"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="147425111"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 10:33:46 -0700
IronPort-SDR: +PpXw+hVoufTnTh2LdeCFlLWYThV6MiXy2D1bzg4XpXijWpJ/SWqDMt3QRrdFH6E0zHGU2SZvV
 k5KwMx/gC5mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="359932435"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 22 Oct 2020 10:33:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Oct 2020 20:33:43 +0300
Date: Thu, 22 Oct 2020 20:33:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201022173343.GO6112@intel.com>
References: <20201022071637.17240-1-chris@chris-wilson.co.uk>
 <20201022114246.28566-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022114246.28566-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reset the interrupt mask on
 disabling interrupts
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

On Thu, Oct 22, 2020 at 12:42:46PM +0100, Chris Wilson wrote:
> As we disable the interrupt during suspend, also reset the irq_mask to
> short-circuit subsystems that later try to turn off their interrupt
> source.
> =

> <4>[  101.816730] i915 0000:00:02.0: drm_WARN_ON(!intel_irqs_enabled(dev_=
priv))
> <4>[  101.816853] WARNING: CPU: 3 PID: 4241 at drivers/gpu/drm/i915/i915_=
irq.c:343 ilk_update_display_irq+0xb3/0x130 [i915]
> =

> v2: Reset irq_mask for i8xx_irq_reset as well, and split patch to focus
> on only i915->irq_mask
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 09221ca1ffb2..53e67c796d09 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -337,17 +337,14 @@ void ilk_update_display_irq(struct drm_i915_private=
 *dev_priv,
>  	u32 new_val;
>  =

>  	lockdep_assert_held(&dev_priv->irq_lock);
> -
>  	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
>  =

> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> -		return;
> -
>  	new_val =3D dev_priv->irq_mask;
>  	new_val &=3D ~interrupt_mask;
>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>  =

> -	if (new_val !=3D dev_priv->irq_mask) {
> +	if (new_val !=3D dev_priv->irq_mask &&
> +	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
>  		dev_priv->irq_mask =3D new_val;
>  		I915_WRITE(DEIMR, dev_priv->irq_mask);
>  		POSTING_READ(DEIMR);
> @@ -2951,6 +2948,8 @@ static void ilk_irq_reset(struct drm_i915_private *=
dev_priv)
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  =

>  	GEN3_IRQ_RESET(uncore, DE);
> +	dev_priv->irq_mask =3D ~0u;
> +
>  	if (IS_GEN(dev_priv, 7))
>  		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
>  =

> @@ -3695,6 +3694,7 @@ static void i8xx_irq_reset(struct drm_i915_private =
*dev_priv)
>  	i9xx_pipestat_irq_reset(dev_priv);
>  =

>  	GEN2_IRQ_RESET(uncore);
> +	dev_priv->irq_mask =3D ~0u;
>  }
>  =

>  static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -3864,6 +3864,7 @@ static void i915_irq_reset(struct drm_i915_private =
*dev_priv)
>  	i9xx_pipestat_irq_reset(dev_priv);
>  =

>  	GEN3_IRQ_RESET(uncore, GEN2_);
> +	dev_priv->irq_mask =3D ~0u;
>  }
>  =

>  static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -3970,6 +3971,7 @@ static void i965_irq_reset(struct drm_i915_private =
*dev_priv)
>  	i9xx_pipestat_irq_reset(dev_priv);
>  =

>  	GEN3_IRQ_RESET(uncore, GEN2_);
> +	dev_priv->irq_mask =3D ~0u;
>  }
>  =

>  static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
