Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB1098D168
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F1110E6ED;
	Wed,  2 Oct 2024 10:37:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jOSbjiSb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05ADC10E6ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 10:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727865436; x=1759401436;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PFJfj7GbdXHDS76GX8MttBItjQ88jFEBBCe0kZnf3OM=;
 b=jOSbjiSb/dNcLaKOfZqVbYLJko8yd+gdepk9BXGdYJMNHpCP2tD+ziKv
 /PcJA14hGfkbSWhf+k2r2Z4i4AYaud8lqQOAGe4R20dymlMuSltE8Uj0D
 yux+LSGj2XtX2y5XUwdqUcgYjcR9IKNtzN0KOnZHe8JTSEb0TlJYc7P1s
 vn2wIeraW8Xa4qveiEVV1yErbY/iPRlDmZXcJJp3SeWQNlOBRzG3eijUy
 U11NXpsgCmpPRf3+2hhfeNb4pdg40jcPgk1bpt4+RWrToMmDhh0/7rhVI
 Kusjxoy+lWWVxOj8cQjsrUEsyj2o+kSHV4IoRuaZ3aZjf/IRg7WQofZxu g==;
X-CSE-ConnectionGUID: siAz9aZ1QtmHaGlbwQtDsQ==
X-CSE-MsgGUID: 9v9N60TNQMqBlReJLwMmyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26821310"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="26821310"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:37:16 -0700
X-CSE-ConnectionGUID: ht7j+0zxRLW6tWHZXTAR9g==
X-CSE-MsgGUID: pEd32mMXTcOfC3NLz2KTwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="97314031"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:37:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915: Extract i915gm_irq_cstate_wa_{disable,
 enable}()
In-Reply-To: <20241001195803.3371-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
 <20241001195803.3371-4-ville.syrjala@linux.intel.com>
Date: Wed, 02 Oct 2024 13:37:11 +0300
Message-ID: <87o742u6y0.fsf@intel.com>
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
> Extract the i915gm/i945gm vblank irq C-state workaround to
> separate functions. We'll need to reuse these in order to
> guarantee timely CRC interrupt delivery as well.
>
> The irq.vblank_enabled count is currently protected by the
> drm vblanl locks, so let's assert that the innermost of those

*vblank

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> is held, in anticipation of other callers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 34 +++++++++++++------
>  1 file changed, 24 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 43a0b3565bc8..feeb3a29972a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1259,6 +1259,28 @@ void gen11_display_irq_handler(struct drm_i915_pri=
vate *i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
>=20=20
> +static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
> +{
> +	lockdep_assert_held(&i915->drm.vblank_time_lock);
> +
> +	/*
> +	 * Vblank interrupts fail to wake the device up from C2+.
> +	 * Disabling render clock gating during C-states avoids
> +	 * the problem. There is a small power cost so we do this
> +	 * only when vblank interrupts are actually enabled.
> +	 */
> +	if (i915->display.irq.vblank_enabled++ =3D=3D 0)
> +		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_REN=
DER_CLOCK_GATE_DISABLE));
> +}
> +
> +static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
> +{
> +	lockdep_assert_held(&i915->drm.vblank_time_lock);
> +
> +	if (--i915->display.irq.vblank_enabled =3D=3D 0)
> +		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RE=
NDER_CLOCK_GATE_DISABLE));
> +}
> +
>  int i8xx_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> @@ -1287,14 +1309,7 @@ int i915gm_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
>=20=20
> -	/*
> -	 * Vblank interrupts fail to wake the device up from C2+.
> -	 * Disabling render clock gating during C-states avoids
> -	 * the problem. There is a small power cost so we do this
> -	 * only when vblank interrupts are actually enabled.
> -	 */
> -	if (i915->display.irq.vblank_enabled++ =3D=3D 0)
> -		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_REN=
DER_CLOCK_GATE_DISABLE));
> +	i915gm_irq_cstate_wa_enable(i915);
>=20=20
>  	return i8xx_enable_vblank(crtc);
>  }
> @@ -1305,8 +1320,7 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
>=20=20
>  	i8xx_disable_vblank(crtc);
>=20=20
> -	if (--i915->display.irq.vblank_enabled =3D=3D 0)
> -		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RE=
NDER_CLOCK_GATE_DISABLE));
> +	i915gm_irq_cstate_wa_disable(i915);
>  }
>=20=20
>  int i965_enable_vblank(struct drm_crtc *crtc)

--=20
Jani Nikula, Intel
