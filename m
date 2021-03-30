Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4882C34EE92
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 18:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0BB6E920;
	Tue, 30 Mar 2021 16:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CD256E920
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 16:57:39 +0000 (UTC)
IronPort-SDR: DLSTwSuEz4hgdF448g/fLvseoPAvrNDZ5N81KXRhf3HLg66TMP/nptaLIMn4lQM5bclK9xzzJw
 Yc6S+lFIj0Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="212029614"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="212029614"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:57:39 -0700
IronPort-SDR: pgZ/ZynwBCLY5SCahtUHP3fnV5pqq/RqVdbkkFgcWEhhWW2vxXgJKQLwHXT12qW5wH0khe4880
 Vb5RB4bjslfg==
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="445227860"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:57:38 -0700
Date: Tue, 30 Mar 2021 09:57:33 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210330165733.GA4484@InViCtUs>
References: <20210322205805.62205-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322205805.62205-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Skip display interruption
 setup when display is not available
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 01:58:03PM -0700, Jos=E9 Roberto de Souza wrote:
> Return ealier in the functions doing interruption setup for GEN8+ also
> adding a warning in gen8_de_irq_handler() to let us know that
> something else is still missing.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 39 +++++++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 44aed4cbf894..875829f8a190 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2421,6 +2421,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pr=
iv, u32 master_ctl)
>  	u32 iir;
>  	enum pipe pipe;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (master_ctl & GEN8_DE_MISC_IRQ) {
>  		iir =3D intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
>  		if (iir) {
> @@ -3058,14 +3060,13 @@ static void cnp_display_clock_wa(struct drm_i915_=
private *dev_priv)
>  	}
>  }
>  =

> -static void gen8_irq_reset(struct drm_i915_private *dev_priv)
> +static void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	enum pipe pipe;
>  =

> -	gen8_master_intr_disable(dev_priv->uncore.regs);
> -
> -	gen8_gt_irq_reset(&dev_priv->gt);
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
>  =

>  	intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
>  	intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
> @@ -3077,6 +3078,16 @@ static void gen8_irq_reset(struct drm_i915_private=
 *dev_priv)
>  =

>  	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
>  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> +}
> +
> +static void gen8_irq_reset(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_uncore *uncore =3D &dev_priv->uncore;
> +
> +	gen8_master_intr_disable(dev_priv->uncore.regs);
> +
> +	gen8_gt_irq_reset(&dev_priv->gt);
> +	gen8_display_irq_reset(dev_priv);
>  	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>  =

>  	if (HAS_PCH_SPLIT(dev_priv))
> @@ -3092,6 +3103,9 @@ static void gen11_display_irq_reset(struct drm_i915=
_private *dev_priv)
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	intel_uncore_write(uncore, GEN11_DISPLAY_INT_CTL, 0);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
> @@ -3714,6 +3728,9 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  	enum pipe pipe;
>  =

> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
>  	if (INTEL_GEN(dev_priv) <=3D 10)
>  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
>  =

> @@ -3797,6 +3814,16 @@ static void gen8_irq_postinstall(struct drm_i915_p=
rivate *dev_priv)
>  	gen8_master_intr_enable(dev_priv->uncore.regs);
>  }
>  =

> +static void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
> +{
> +	if (!HAS_DISPLAY(dev_priv))
> +		return;
> +
> +	gen8_de_irq_postinstall(dev_priv);
> +
> +	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
> +			   GEN11_DISPLAY_IRQ_ENABLE);
> +}
>  =

>  static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> @@ -3807,12 +3834,10 @@ static void gen11_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  		icp_irq_postinstall(dev_priv);
>  =

>  	gen11_gt_irq_postinstall(&dev_priv->gt);
> -	gen8_de_irq_postinstall(dev_priv);
> +	gen11_de_irq_postinstall(dev_priv);
>  =

>  	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
>  =

> -	intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL, GEN11_DISP=
LAY_IRQ_ENABLE);
> -
>  	if (HAS_MASTER_UNIT_IRQ(dev_priv)) {
>  		dg1_master_intr_enable(uncore->regs);
>  		intel_uncore_posting_read(&dev_priv->uncore, DG1_MSTR_UNIT_INTR);
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
