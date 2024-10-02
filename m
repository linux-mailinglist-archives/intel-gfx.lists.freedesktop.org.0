Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07E698D187
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0E410E6EF;
	Wed,  2 Oct 2024 10:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xsp2bbex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DDB610E6EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 10:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727865987; x=1759401987;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sqFAVdrY7FdQKIqgANY+6QX+I6G5L81ZtLwFg+lWNug=;
 b=Xsp2bbexaTTF10029ehwc7hN/ab4tzbhU2qiu3tGSgRhguZTrXoFMYdE
 OKnbiT/mOmnpiU6Aa/0BmJppiLGbVjB7ZIPJ62PviLdjxQjfxKQExPyS6
 Z6OF6PxjwSg1Mjc+zaq0S0ADsQt+KuGeRptGhe0hpkD1UWK2sE6MUC4QN
 v2YDiMB1U1y/cpBL/ZVMIWIwQC5+zKksYoobxEkseQm/UKoDIqZclH3wh
 QWZijzbPeb9PHPJlTeYlW9ae/dpi3EyBu+rYHTLp/N4bfZcSPvPNrX3SO
 FSUj3MGPDDlD0S8IYW+Y/PdPsgqTZOdBS6wiREgyPWBFWEfUnVnEOwrMk w==;
X-CSE-ConnectionGUID: ikNOhWI0RxKcJsBfU7f9KA==
X-CSE-MsgGUID: Oo7GSb5yRM67QLnlKR5uLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37691642"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="37691642"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:46:26 -0700
X-CSE-ConnectionGUID: 1oksN2wBTZ+wczkJU8PyMQ==
X-CSE-MsgGUID: Itx7C6k6T6ymwRYdTGaVZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="74201263"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:46:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915: Apply the i915gm/i945gm irq C-state w/a
 to CRC interrupts
In-Reply-To: <20241001195803.3371-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
 <20241001195803.3371-5-ville.syrjala@linux.intel.com>
Date: Wed, 02 Oct 2024 13:46:22 +0300
Message-ID: <87ldz6u6ip.fsf@intel.com>
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
> Turns out CRC interrupts also fail to wake up i915gm/i945gm from
> C2+. I suppose this is a generic problem, but for most other
> interrupts the system will be busy enough already prior to
> the irq being issued. But CRC interrupts are like vblank interrupts
> and only fire once per frame, so plenty of time to fall asleep
> in between them.
>
> Apply the same core clock gating trick to CRC interrupts
> that we use for vblank interrupts.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 14 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_irq.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c    |  4 ++++
>  3 files changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index feeb3a29972a..fa5a42fc8501 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1264,7 +1264,7 @@ static void i915gm_irq_cstate_wa_enable(struct drm_=
i915_private *i915)
>  	lockdep_assert_held(&i915->drm.vblank_time_lock);
>=20=20
>  	/*
> -	 * Vblank interrupts fail to wake the device up from C2+.
> +	 * Vblank/CRC interrupts fail to wake the device up from C2+.
>  	 * Disabling render clock gating during C-states avoids
>  	 * the problem. There is a small power cost so we do this
>  	 * only when vblank interrupts are actually enabled.
> @@ -1281,6 +1281,18 @@ static void i915gm_irq_cstate_wa_disable(struct dr=
m_i915_private *i915)
>  		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RE=
NDER_CLOCK_GATE_DISABLE));
>  }
>=20=20
> +void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	spin_lock_irq(&i915->drm.vblank_time_lock);
> +
> +	if (enable)
> +		i915gm_irq_cstate_wa_enable(i915);
> +	else
> +		i915gm_irq_cstate_wa_disable(i915);
> +
> +	spin_unlock_irq(&i915->drm.vblank_time_lock);
> +}
> +
>  int i8xx_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/g=
pu/drm/i915/display/intel_display_irq.h
> index bf9d269d0e3f..4b493cff7b8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -78,4 +78,6 @@ void valleyview_pipestat_irq_handler(struct drm_i915_pr=
ivate *i915, u32 pipe_sta
>=20=20
>  void intel_display_irq_init(struct drm_i915_private *i915);
>=20=20
> +void i915gm_irq_cstate_wa(struct drm_i915_private *i915, bool enable);
> +
>  #endif /* __INTEL_DISPLAY_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/=
drm/i915/display/intel_pipe_crc.c
> index 82ceede0b2b1..304da826dee1 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -32,6 +32,7 @@
>  #include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_de.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_types.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_pipe_crc_regs.h"
> @@ -285,6 +286,9 @@ intel_crtc_crc_setup_workarounds(struct intel_crtc *c=
rtc, bool enable)
>  	struct drm_modeset_acquire_ctx ctx;
>  	int ret;
>=20=20
> +	if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
> +		i915gm_irq_cstate_wa(dev_priv, enable);
> +
>  	drm_modeset_acquire_init(&ctx, 0);
>=20=20
>  	state =3D drm_atomic_state_alloc(&dev_priv->drm);

--=20
Jani Nikula, Intel
