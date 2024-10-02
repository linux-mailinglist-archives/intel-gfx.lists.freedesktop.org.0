Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 277BB98D163
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9674210E12B;
	Wed,  2 Oct 2024 10:36:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMmsiAn6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E6610E6ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 10:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727865384; x=1759401384;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Ojbj45pzYa9QKyGdN/fAfZVekYrhzlyNEL0AhuKzpHE=;
 b=GMmsiAn6k5J9j+Bvvz1apCKtXjapcHg1BkZhHZChYnvIheDeCZxfSs1+
 jOa95pGcB6Ftodae6EHCkXXzgKyALLLYR+0v6O/ea+YC3Fu8StzqSYoRb
 8D+GxYrFo0VF+c5LvXDbBZTFoHfO97z658zh1aFN8HBMvBzCN0XOXPcuD
 6Qg+uaMg5f77zZFt5EWflv57S3NNUZtlnQmOj6ZpL8sb2zzIEtaFTZQjH
 r5nSKAQ66FjEc891jRnCwk0oX1YKP3PTzkkbH8DoxAaVFQ7qAFBMTrhma
 9XKt3xbOxounA+RNdB+psI9XtyUFh5PZFBbcMZdS9Gq6wBeF6P8Ydkt+f Q==;
X-CSE-ConnectionGUID: fWc242OjS2K0TIDawI7tIQ==
X-CSE-MsgGUID: pKWtMG9GQfGF4uv4BxX+vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27116817"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27116817"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:36:23 -0700
X-CSE-ConnectionGUID: oOmtr65WTUqxYppUZHeEaQ==
X-CSE-MsgGUID: Q6PHVqUHQBG+IDCgRl4QyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78924676"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:36:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/irq: Pair up the vblank enable/disable
 functions
In-Reply-To: <20241001195803.3371-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
 <20241001195803.3371-3-ville.syrjala@linux.intel.com>
Date: Wed, 02 Oct 2024 13:36:13 +0300
Message-ID: <87r08yu6zm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 01 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The current way of organizing all .vblank_enable() functions
> before all .vblabk_disable() functions is infuriating. It's
> really hard to compare the enable() vs. disable() for the
> same platform to make sure they properly mirror each other.
>
> Reorganize the functions so that the enable+disable for
> the same platoform are next to each.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

'git show --color-moved' FTW!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 92 +++++++++----------
>  1 file changed, 46 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 0ea1fcc61dde..43a0b3565bc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1272,6 +1272,17 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
>  	return 0;
>  }
>=20=20
> +void i8xx_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> +	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
> +	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> +}
> +
>  int i915gm_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> @@ -1288,6 +1299,16 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
>  	return i8xx_enable_vblank(crtc);
>  }
>=20=20
> +void i915gm_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +
> +	i8xx_disable_vblank(crtc);
> +
> +	if (--i915->display.irq.vblank_enabled =3D=3D 0)
> +		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RE=
NDER_CLOCK_GATE_DISABLE));
> +}
> +
>  int i965_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> @@ -1302,6 +1323,18 @@ int i965_enable_vblank(struct drm_crtc *crtc)
>  	return 0;
>  }
>=20=20
> +void i965_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> +	i915_disable_pipestat(dev_priv, pipe,
> +			      PIPE_START_VBLANK_INTERRUPT_STATUS);
> +	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> +}
> +
>  int ilk_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> @@ -1323,6 +1356,19 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
>  	return 0;
>  }
>=20=20
> +void ilk_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> +	unsigned long irqflags;
> +	u32 bit =3D DISPLAY_VER(dev_priv) >=3D 7 ?
> +		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
> +
> +	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> +	ilk_disable_display_irq(dev_priv, bit);
> +	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> +}
> +
>  static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>  				   bool enable)
>  {
> @@ -1391,52 +1437,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	return 0;
>  }
>=20=20
> -void i8xx_disable_vblank(struct drm_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_disable_pipestat(dev_priv, pipe, PIPE_VBLANK_INTERRUPT_STATUS);
> -	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> -}
> -
> -void i915gm_disable_vblank(struct drm_crtc *crtc)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> -
> -	i8xx_disable_vblank(crtc);
> -
> -	if (--i915->display.irq.vblank_enabled =3D=3D 0)
> -		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RE=
NDER_CLOCK_GATE_DISABLE));
> -}
> -
> -void i965_disable_vblank(struct drm_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	i915_disable_pipestat(dev_priv, pipe,
> -			      PIPE_START_VBLANK_INTERRUPT_STATUS);
> -	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> -}
> -
> -void ilk_disable_vblank(struct drm_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> -	unsigned long irqflags;
> -	u32 bit =3D DISPLAY_VER(dev_priv) >=3D 7 ?
> -		DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
> -
> -	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -	ilk_disable_display_irq(dev_priv, bit);
> -	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
> -}
> -
>  void bdw_disable_vblank(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);

--=20
Jani Nikula, Intel
