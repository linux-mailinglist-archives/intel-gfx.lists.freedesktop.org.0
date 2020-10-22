Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C8D295D6A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 13:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C8E6E0CD;
	Thu, 22 Oct 2020 11:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0394F6E0CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 11:33:00 +0000 (UTC)
IronPort-SDR: Ib2BCkWLa7j8WxwU+2PFpCtE7fxuisDszzbISCgP53brn+yzUTc5IVjeHslOYUdYk743ef840W
 MU+Nxfs6loJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="154464766"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="154464766"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 04:32:55 -0700
IronPort-SDR: pi6GzvvgDOba1Q4NPatJnbwBIaIFp60yQA6qC8b9h717dqIQrIoGHL/vQ6ixXgM/31okVYXx/s
 sjNgz/X3KAEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="359223936"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 22 Oct 2020 04:32:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Oct 2020 14:32:52 +0300
Date: Thu, 22 Oct 2020 14:32:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201022113252.GL6112@intel.com>
References: <20201022071637.17240-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022071637.17240-1-chris@chris-wilson.co.uk>
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

On Thu, Oct 22, 2020 at 08:16:37AM +0100, Chris Wilson wrote:
> As we disable the interrupt during suspend, also reset the irq_mask to
> short-circuit subsystems that later try to turn off their interrupt
> source.
> =

> <4>[  101.816730] i915 0000:00:02.0: drm_WARN_ON(!intel_irqs_enabled(dev_=
priv))
> <4>[  101.816853] WARNING: CPU: 3 PID: 4241 at drivers/gpu/drm/i915/i915_=
irq.c:343 ilk_update_display_irq+0xb3/0x130 [i915]

Doh. Lack of irq symmetry in suspend vs. resume strikes again :(

> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 09221ca1ffb2..cbb71fc73313 100644
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
> @@ -368,19 +365,16 @@ static void bdw_update_port_irq(struct drm_i915_pri=
vate *dev_priv,
>  	u32 old_val;
>  =

>  	lockdep_assert_held(&dev_priv->irq_lock);
> -
>  	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
>  =

> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> -		return;
> -
>  	old_val =3D I915_READ(GEN8_DE_PORT_IMR);
>  =

>  	new_val =3D old_val;
>  	new_val &=3D ~interrupt_mask;
>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>  =

> -	if (new_val !=3D old_val) {
> +	if (new_val !=3D old_val &&
> +	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
>  		I915_WRITE(GEN8_DE_PORT_IMR, new_val);
>  		POSTING_READ(GEN8_DE_PORT_IMR);
>  	}
> @@ -401,17 +395,14 @@ void bdw_update_pipe_irq(struct drm_i915_private *d=
ev_priv,
>  	u32 new_val;
>  =

>  	lockdep_assert_held(&dev_priv->irq_lock);
> -
>  	drm_WARN_ON(&dev_priv->drm, enabled_irq_mask & ~interrupt_mask);
>  =

> -	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> -		return;
> -
>  	new_val =3D dev_priv->de_irq_mask[pipe];
>  	new_val &=3D ~interrupt_mask;
>  	new_val |=3D (~enabled_irq_mask & interrupt_mask);
>  =

> -	if (new_val !=3D dev_priv->de_irq_mask[pipe]) {
> +	if (new_val !=3D dev_priv->de_irq_mask[pipe] &&
> +	    !drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv))) {
>  		dev_priv->de_irq_mask[pipe] =3D new_val;
>  		I915_WRITE(GEN8_DE_PIPE_IMR(pipe), dev_priv->de_irq_mask[pipe]);
>  		POSTING_READ(GEN8_DE_PIPE_IMR(pipe));

Not resetting de_irq_mask[] anywhere? Hmm. we seem to be lacking a
gen8_de_irq_reset()...

> @@ -2951,6 +2942,8 @@ static void ilk_irq_reset(struct drm_i915_private *=
dev_priv)
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  =

>  	GEN3_IRQ_RESET(uncore, DE);
> +	dev_priv->irq_mask =3D ~0u;
> +
>  	if (IS_GEN(dev_priv, 7))
>  		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
>  =

> @@ -3864,6 +3857,7 @@ static void i915_irq_reset(struct drm_i915_private =
*dev_priv)
>  	i9xx_pipestat_irq_reset(dev_priv);
>  =

>  	GEN3_IRQ_RESET(uncore, GEN2_);
> +	dev_priv->irq_mask =3D ~0u;
>  }
>  =

>  static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -3970,6 +3964,7 @@ static void i965_irq_reset(struct drm_i915_private =
*dev_priv)
>  	i9xx_pipestat_irq_reset(dev_priv);
>  =

>  	GEN3_IRQ_RESET(uncore, GEN2_);
> +	dev_priv->irq_mask =3D ~0u;
>  }

Missing gen2?

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
