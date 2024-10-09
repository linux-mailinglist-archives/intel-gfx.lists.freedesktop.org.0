Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37339966FC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD0810E25F;
	Wed,  9 Oct 2024 10:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbTzoaYJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335EC10E6C3;
 Wed,  9 Oct 2024 10:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728469259; x=1760005259;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+KFyMKEHDSJinjXyOODQ85RbFIqqSOrN+0kB8RozD7A=;
 b=TbTzoaYJ50kz/2c9Fz3tM46l5yznwYLEHIXL3DknEDFkD28nuW6t/DL9
 f/fUOAQluoB1ZRQv+uhbsZBD7yEZJeHhcW3mYHyY3eDPQY0nrzsdsNcxn
 u+33Hby7y68tCiss4rqRsWcQwSeTs79SSCCNwP0K+s9Pdft6x+iHQlgJC
 tIVTC4J/QIFKQSzGts/49V8KBGcpvSKp67nCu5yVCoEAbdaZHENzjBb3b
 +yP6HZZ9jLMfUIPnfeUQAwhCeYFmsalKviHD398KsYqiK8V4SLOi8cr/7
 UImUuYKIgOvraVG47lqsrGISCU6kkoLCx49bCBjK6fY9nPa5bboemz8PD Q==;
X-CSE-ConnectionGUID: kDvGksd1Se+O+6BTf7PTYQ==
X-CSE-MsgGUID: u2xWcnf2SPik/uu23JeAHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27638743"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27638743"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:20:59 -0700
X-CSE-ConnectionGUID: VvUFZvvFSReQon18InDl6w==
X-CSE-MsgGUID: MsCbBq1TSb6IL6ybeE0hkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76162262"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:20:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/irq: s/gen3/gen2/
In-Reply-To: <20241008214349.23331-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
 <20241008214349.23331-4-ville.syrjala@linux.intel.com>
Date: Wed, 09 Oct 2024 13:20:53 +0300
Message-ID: <87o73ta86y.fsf@intel.com>
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

On Wed, 09 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we use the gen3 codepaths also for gen2
> rename everything to gen2_ to match.

This was fine for the gt stuff where there are gen5 and gen6 functions,
but should we just call these something more generic since there are no
platform specific functions?

The naming is a bit funky already.

intel_irq_init() is *not* the higher level function for init. It's
actually intel_irq_install() -> intel_irq_postinstall() that calls
gen3_irq_init() and some other stuff.

But intel_irq_reset() is very much the higher level function for reset.

Ideas?

BR,
Jani.




>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 50 +++++++++----------
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 24 ++++-----
>  drivers/gpu/drm/i915/i915_irq.c               | 36 ++++++-------
>  drivers/gpu/drm/i915/i915_irq.h               |  6 +--
>  drivers/gpu/drm/xe/display/ext/i915_irq.c     |  8 +--
>  5 files changed, 62 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index a4367ddc7a44..5d5754890168 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1496,7 +1496,7 @@ void vlv_display_irq_reset(struct drm_i915_private =
*dev_priv)
>=20=20
>  	i9xx_pipestat_irq_reset(dev_priv);
>=20=20
> -	gen3_irq_reset(uncore, VLV_IRQ_REGS);
> +	gen2_irq_reset(uncore, VLV_IRQ_REGS);
>  	dev_priv->irq_mask =3D ~0u;
>  }
>=20=20
> @@ -1539,7 +1539,7 @@ void vlv_display_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>=20=20
>  	dev_priv->irq_mask =3D ~enable_mask;
>=20=20
> -	gen3_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
> +	gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  }
>=20=20
>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1556,10 +1556,10 @@ void gen8_display_irq_reset(struct drm_i915_priva=
te *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>=20=20
> -	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> -	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>  }
>=20=20
>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1599,18 +1599,18 @@ void gen11_display_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>  	for_each_pipe(dev_priv, pipe)
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +			gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>=20=20
> -	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> -	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		gen3_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
> +		gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
>  	else
> -		gen3_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
> +		gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
>=20=20
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> -		gen3_irq_reset(uncore, SDE_IRQ_REGS);
> +		gen2_irq_reset(uncore, SDE_IRQ_REGS);
>  }
>=20=20
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> @@ -1630,7 +1630,7 @@ void gen8_irq_power_well_post_enable(struct drm_i91=
5_private *dev_priv,
>  	}
>=20=20
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +		gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>  			      dev_priv->display.irq.de_irq_mask[pipe],
>  			      ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
>=20=20
> @@ -1651,7 +1651,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i91=
5_private *dev_priv,
>  	}
>=20=20
>  	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
> -		gen3_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
> +		gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>=20=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20=20
> @@ -1685,7 +1685,7 @@ static void ibx_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  	else
>  		mask =3D SDE_GMBUS_CPT;
>=20=20
> -	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>=20=20
>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> @@ -1742,7 +1742,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private=
 *i915)
>  	}
>=20=20
>  	if (IS_HASWELL(i915)) {
> -		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> +		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>  		display_mask |=3D DE_EDP_PSR_INT_HSW;
>  	}
>=20=20
> @@ -1753,7 +1753,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private=
 *i915)
>=20=20
>  	ibx_irq_postinstall(i915);
>=20=20
> -	gen3_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
> +	gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
>  		      display_mask | extra_mask);
>  }
>=20=20
> @@ -1827,11 +1827,11 @@ void gen8_de_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
>=20=20
> -			gen3_assert_iir_is_zero(uncore,
> +			gen2_assert_iir_is_zero(uncore,
>  						TRANS_PSR_IIR(dev_priv, trans));
>  		}
>  	} else {
> -		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> +		gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>  	}
>=20=20
>  	for_each_pipe(dev_priv, pipe) {
> @@ -1839,20 +1839,20 @@ void gen8_de_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  		if (intel_display_power_is_enabled(dev_priv,
>  						   POWER_DOMAIN_PIPE(pipe)))
> -			gen3_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
> +			gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>  				      dev_priv->display.irq.de_irq_mask[pipe],
>  				      de_pipe_enables);
>  	}
>=20=20
> -	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_e=
nables);
> -	gen3_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_m=
asked);
> +	gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_e=
nables);
> +	gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_m=
asked);
>=20=20
>  	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>  		u32 de_hpd_masked =3D 0;
>  		u32 de_hpd_enables =3D GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
>=20=20
> -		gen3_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
> +		gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
>  			      de_hpd_enables);
>  	}
>  }
> @@ -1865,10 +1865,10 @@ static void mtp_irq_postinstall(struct drm_i915_p=
rivate *i915)
>  	u32 de_hpd_enables =3D de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>  			     XELPDP_TBT_HOTPLUG_MASK;
>=20=20
> -	gen3_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
> +	gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>  		      de_hpd_enables);
>=20=20
> -	gen3_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
> +	gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>  }
>=20=20
>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -1876,7 +1876,7 @@ static void icp_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	u32 mask =3D SDE_GMBUS_ICP;
>=20=20
> -	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
> +	gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>=20=20
>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i91=
5/gt/intel_gt_irq.c
> index 0c1e405240af..1240d44eeb85 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -452,10 +452,10 @@ void gen8_gt_irq_reset(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore =3D gt->uncore;
>=20=20
> -	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
> -	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
> -	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
> -	gen3_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
> +	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(0));
> +	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(1));
> +	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(2));
> +	gen2_irq_reset(uncore, GEN8_GT_IRQ_REGS(3));
>  }
>=20=20
>  void gen8_gt_irq_postinstall(struct intel_gt *gt)
> @@ -476,14 +476,14 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
>=20=20
>  	gt->pm_ier =3D 0x0;
>  	gt->pm_imr =3D ~gt->pm_ier;
> -	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interr=
upts[0]);
> -	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interr=
upts[1]);
> +	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(0), ~gt_interrupts[0], gt_interr=
upts[0]);
> +	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(1), ~gt_interrupts[1], gt_interr=
upts[1]);
>  	/*
>  	 * RPS interrupts will get enabled/disabled on demand when RPS itself
>  	 * is enabled/disabled. Same wil be the case for GuC interrupts.
>  	 */
> -	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
> -	gen3_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interr=
upts[3]);
> +	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(2), gt->pm_imr, gt->pm_ier);
> +	gen2_irq_init(uncore, GEN8_GT_IRQ_REGS(3), ~gt_interrupts[3], gt_interr=
upts[3]);
>  }
>=20=20
>  static void gen5_gt_update_irq(struct intel_gt *gt,
> @@ -514,9 +514,9 @@ void gen5_gt_irq_reset(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore =3D gt->uncore;
>=20=20
> -	gen3_irq_reset(uncore, GT_IRQ_REGS);
> +	gen2_irq_reset(uncore, GT_IRQ_REGS);
>  	if (GRAPHICS_VER(gt->i915) >=3D 6)
> -		gen3_irq_reset(uncore, GEN6_PM_IRQ_REGS);
> +		gen2_irq_reset(uncore, GEN6_PM_IRQ_REGS);
>  }
>=20=20
>  void gen5_gt_irq_postinstall(struct intel_gt *gt)
> @@ -538,7 +538,7 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
>  	else
>  		gt_irqs |=3D GT_BLT_USER_INTERRUPT | GT_BSD_USER_INTERRUPT;
>=20=20
> -	gen3_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
> +	gen2_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
>=20=20
>  	if (GRAPHICS_VER(gt->i915) >=3D 6) {
>  		/*
> @@ -551,6 +551,6 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
>  		}
>=20=20
>  		gt->pm_imr =3D 0xffffffff;
> -		gen3_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
> +		gen2_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 333d58343b37..f75cbf5b8a1c 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -77,7 +77,7 @@ static inline void pmu_irq_stats(struct drm_i915_privat=
e *i915,
>  	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
>  }
>=20=20
> -void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs)
> +void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs)
>  {
>  	intel_uncore_write(uncore, regs.imr, 0xffffffff);
>  	intel_uncore_posting_read(uncore, regs.imr);
> @@ -94,7 +94,7 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct=
 i915_irq_regs regs)
>  /*
>   * We should clear IMR at preinstall/uninstall, and just check at postin=
stall.
>   */
> -void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
> +void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
>  {
>  	u32 val =3D intel_uncore_read(uncore, reg);
>=20=20
> @@ -110,10 +110,10 @@ void gen3_assert_iir_is_zero(struct intel_uncore *u=
ncore, i915_reg_t reg)
>  	intel_uncore_posting_read(uncore, reg);
>  }
>=20=20
> -void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
> +void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
>  		   u32 imr_val, u32 ier_val)
>  {
> -	gen3_assert_iir_is_zero(uncore, regs.iir);
> +	gen2_assert_iir_is_zero(uncore, regs.iir);
>=20=20
>  	intel_uncore_write(uncore, regs.ier, ier_val);
>  	intel_uncore_write(uncore, regs.imr, imr_val);
> @@ -622,7 +622,7 @@ static void ibx_irq_reset(struct drm_i915_private *de=
v_priv)
>  	if (HAS_PCH_NOP(dev_priv))
>  		return;
>=20=20
> -	gen3_irq_reset(uncore, SDE_IRQ_REGS);
> +	gen2_irq_reset(uncore, SDE_IRQ_REGS);
>=20=20
>  	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
>  		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
> @@ -634,7 +634,7 @@ static void ilk_irq_reset(struct drm_i915_private *de=
v_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20=20
> -	gen3_irq_reset(uncore, DE_IRQ_REGS);
> +	gen2_irq_reset(uncore, DE_IRQ_REGS);
>  	dev_priv->irq_mask =3D ~0u;
>=20=20
>  	if (GRAPHICS_VER(dev_priv) =3D=3D 7)
> @@ -671,7 +671,7 @@ static void gen8_irq_reset(struct drm_i915_private *d=
ev_priv)
>=20=20
>  	gen8_gt_irq_reset(to_gt(dev_priv));
>  	gen8_display_irq_reset(dev_priv);
> -	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20=20
>  	if (HAS_PCH_SPLIT(dev_priv))
>  		ibx_irq_reset(dev_priv);
> @@ -688,8 +688,8 @@ static void gen11_irq_reset(struct drm_i915_private *=
dev_priv)
>  	gen11_gt_irq_reset(gt);
>  	gen11_display_irq_reset(dev_priv);
>=20=20
> -	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> -	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  }
>=20=20
>  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> @@ -705,8 +705,8 @@ static void dg1_irq_reset(struct drm_i915_private *de=
v_priv)
>=20=20
>  	gen11_display_irq_reset(dev_priv);
>=20=20
> -	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> -	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20=20
>  	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>  }
> @@ -720,7 +720,7 @@ static void cherryview_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  	gen8_gt_irq_reset(to_gt(dev_priv));
>=20=20
> -	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>  	if (dev_priv->display.irq.display_irqs_enabled)
> @@ -765,7 +765,7 @@ static void gen11_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  	gen11_gt_irq_postinstall(gt);
>  	gen11_de_irq_postinstall(dev_priv);
>=20=20
> -	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_=
masked);
> +	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_=
masked);
>=20=20
>  	gen11_master_intr_enable(intel_uncore_regs(uncore));
>  	intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
> @@ -781,7 +781,7 @@ static void dg1_irq_postinstall(struct drm_i915_priva=
te *dev_priv)
>  	for_each_gt(gt, dev_priv, i)
>  		gen11_gt_irq_postinstall(gt);
>=20=20
> -	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_=
masked);
> +	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_=
masked);
>=20=20
>  	dg1_de_irq_postinstall(dev_priv);
>=20=20
> @@ -869,7 +869,7 @@ static void i915_irq_reset(struct drm_i915_private *d=
ev_priv)
>=20=20
>  	i9xx_display_irq_reset(dev_priv);
>=20=20
> -	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask =3D ~0u;
>  }
>=20=20
> @@ -901,7 +901,7 @@ static void i915_irq_postinstall(struct drm_i915_priv=
ate *dev_priv)
>  		enable_mask |=3D I915_DISPLAY_PORT_INTERRUPT;
>  	}
>=20=20
> -	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
> +	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>=20=20
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
> @@ -974,7 +974,7 @@ static void i965_irq_reset(struct drm_i915_private *d=
ev_priv)
>=20=20
>  	i9xx_display_irq_reset(dev_priv);
>=20=20
> -	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
> +	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask =3D ~0u;
>  }
>=20=20
> @@ -1022,7 +1022,7 @@ static void i965_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>  	if (IS_G4X(dev_priv))
>  		enable_mask |=3D I915_BSD_USER_INTERRUPT;
>=20=20
> -	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
> +	gen2_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>=20=20
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_=
irq.h
> index da3d97143511..0457f6402e05 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -40,11 +40,11 @@ bool intel_irqs_enabled(struct drm_i915_private *dev_=
priv);
>  void intel_synchronize_irq(struct drm_i915_private *i915);
>  void intel_synchronize_hardirq(struct drm_i915_private *i915);
>=20=20
> -void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg=
);
> +void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg=
);
>=20=20
> -void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs);
> +void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs);
>=20=20
> -void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
> +void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
>  		   u32 imr_val, u32 ier_val);
>=20=20
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/=
xe/display/ext/i915_irq.c
> index 977ef47ea1f9..a7dbc6554d69 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> @@ -7,7 +7,7 @@
>  #include "i915_reg.h"
>  #include "intel_uncore.h"
>=20=20
> -void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs)
> +void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs re=
gs)
>  {
>  	intel_uncore_write(uncore, regs.imr, 0xffffffff);
>  	intel_uncore_posting_read(uncore, regs.imr);
> @@ -24,7 +24,7 @@ void gen3_irq_reset(struct intel_uncore *uncore, struct=
 i915_irq_regs regs)
>  /*
>   * We should clear IMR at preinstall/uninstall, and just check at postin=
stall.
>   */
> -void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
> +void gen2_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
>  {
>  	struct xe_device *xe =3D container_of(uncore, struct xe_device, uncore);
>  	u32 val =3D intel_uncore_read(uncore, reg);
> @@ -41,10 +41,10 @@ void gen3_assert_iir_is_zero(struct intel_uncore *unc=
ore, i915_reg_t reg)
>  	intel_uncore_posting_read(uncore, reg);
>  }
>=20=20
> -void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
> +void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs reg=
s,
>  		   u32 imr_val, u32 ier_val)
>  {
> -	gen3_assert_iir_is_zero(uncore, regs.iir);
> +	gen2_assert_iir_is_zero(uncore, regs.iir);
>=20=20
>  	intel_uncore_write(uncore, regs.ier, ier_val);
>  	intel_uncore_write(uncore, regs.imr, imr_val);

--=20
Jani Nikula, Intel
