Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C426A5934
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 13:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F02810E4CA;
	Tue, 28 Feb 2023 12:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF93F10E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677588030; x=1709124030;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yfagCkSyhWo4tS4vtLVtLRGI0SuQKHL/90Qlt+5yZWo=;
 b=aoqvVWdsJ8HwliglzoZIjUBeLMNadsrRG7Xm3rEikzdqzsQQKiWlFy7F
 wAGWuU7yk4zwUcTvhSTOwwX1s/hTjktcMv6d2aMLvR/WlGy0csBFKAHQH
 DML/+pPKRMzdIfN5+DpCfKZkbEVh+f4KWwFxxLZ/oc4vv2cZ2lP7G4hte
 BYgEaeRm6v8fohJqqDkG9QBOFLMAXqCgWJk5SxLicIrKjLV8s6MSOBvRO
 kH3IV6FvQMMA8QqGKzaPkcWdAxSyE1aM0pRvUIeH70+W2GcinK3A0Ss/L
 b/gqlnbyuS5KT6P10KqNcU5kvF+C1OqwM31jvmdjbknhlb3CmjZ1P3e4W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331605079"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="331605079"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 04:40:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="667448455"
X-IronPort-AV: E=Sophos;i="5.98,221,1673942400"; d="scan'208";a="667448455"
Received: from barumuga-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.26])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 04:40:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221230227.6244-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-6-ville.syrjala@linux.intel.com>
Date: Tue, 28 Feb 2023 14:40:20 +0200
Message-ID: <87k002ynd7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 05/22] drm/i915: Introduce
 intel_hpd_detection()
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

On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add a mechanism by which we can toggle the HPD sense for
> individual encoders.
>
> This will be used during eDP probing to figure out if
> anything is actually connected. The normal intel_hpd_irq_setup()
> thing doesn't work since we only do that after probing the
> outputs, and we only enable HPD sense for encoders that were
> successfully probed.
>
> The other idea that crossed my minds was to just turn on
> HPD sense for all pins before output probing and let hpd_irq_setup()
> clean it up afterwards. But that doesn't work for BXT/GLK where
> the HPD invert information comes from the VBT child device.
> So looks like this really needs to be per-encoder.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 132 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_irq.h |   2 +
>  2 files changed, 134 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index ecfa6dad145a..c5058d834f99 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2893,8 +2893,17 @@ static void ibx_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
>  			 ibx_hotplug_mask(dev_priv, HPD_PORT_D),
>  			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
>  }
>=20=20
> +static void ibx_hpd_detection(struct intel_encoder *encoder, bool enable)

Just quickly skimming through the series...

...and nitpicking, *_detection() should really be a verb.

It isn't obvious to me what intel_hpd_detection() does without looking
at the implementation.

BR,
Jani.



> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> +			 ibx_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? ibx_hotplug_enables(encoder) : 0);
> +}
> +
>  static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -2963,8 +2972,17 @@ static void icp_ddi_hpd_detection_setup(struct drm=
_i915_private *dev_priv)
>  			 icp_ddi_hotplug_mask(dev_priv, HPD_PORT_D),
>  			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
>  }
>=20=20
> +static void icp_ddi_hpd_detection(struct intel_encoder *encoder, bool en=
able)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
> +			 icp_ddi_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? icp_ddi_hotplug_enables(encoder) : 0);
> +}
> +
>  static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
>  	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
>  			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC1) |
> @@ -2975,8 +2993,23 @@ static void icp_tc_hpd_detection_setup(struct drm_=
i915_private *dev_priv)
>  			 icp_tc_hotplug_mask(dev_priv, HPD_PORT_TC6),
>  			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
>  }
>=20=20
> +static void icp_tc_hpd_detection(struct intel_encoder *encoder, bool ena=
ble)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
> +			 icp_tc_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? icp_tc_hotplug_enables(encoder) : 0);
> +}
> +
> +static void icp_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	icp_ddi_hpd_detection(encoder, enable);
> +	icp_tc_hpd_detection(encoder, enable);
> +}
> +
>  static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -3025,8 +3058,16 @@ static void dg1_hpd_invert(struct drm_i915_private=
 *i915)
>  		   INVERT_DDID_HPD);
>  	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
>  }
>=20=20
> +static void dg1_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	dg1_hpd_invert(i915);
> +	icp_hpd_detection(encoder, enable);
> +}
> +
>  static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	dg1_hpd_invert(dev_priv);
>  	icp_hpd_irq_setup(dev_priv);
> @@ -3043,8 +3084,17 @@ static void gen11_tc_hpd_detection_setup(struct dr=
m_i915_private *dev_priv)
>  			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
>  			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>  }
>=20=20
> +static void gen11_tc_hpd_detection(struct intel_encoder *encoder, bool e=
nable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
> +			 gen11_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? gen11_hotplug_enables(encoder) : 0);
> +}
> +
>  static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_p=
riv)
>  {
>  	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
>  			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC1) |
> @@ -3055,8 +3105,28 @@ static void gen11_tbt_hpd_detection_setup(struct d=
rm_i915_private *dev_priv)
>  			 gen11_hotplug_mask(dev_priv, HPD_PORT_TC6),
>  			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>  }
>=20=20
> +static void gen11_tbt_hpd_detection(struct intel_encoder *encoder, bool =
enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
> +			 gen11_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? gen11_hotplug_enables(encoder) : 0);
> +}
> +
> +static void gen11_hpd_detection(struct intel_encoder *encoder, bool enab=
le)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	gen11_tc_hpd_detection(encoder, enable);
> +	gen11_tbt_hpd_detection(encoder, enable);
> +
> +	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +		icp_hpd_detection(encoder, enable);
> +}
> +
>  static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -3140,8 +3210,28 @@ static void spt_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
>  			 spt_hotplug2_mask(dev_priv, HPD_PORT_E),
>  			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
>  }
>=20=20
> +static void spt_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	/* Display WA #1179 WaHardHangonHotPlug: cnp */
> +	if (HAS_PCH_CNP(i915)) {
> +		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
> +				 CHASSIS_CLK_REQ_DURATION_MASK,
> +				 CHASSIS_CLK_REQ_DURATION(0xf));
> +	}
> +
> +	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> +			 spt_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? spt_hotplug_enables(encoder) : 0);
> +
> +	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
> +			 spt_hotplug2_mask(i915, encoder->hpd_pin),
> +			 enable ? spt_hotplug2_enables(encoder) : 0);
> +}
> +
>  static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -3189,8 +3279,19 @@ static void ilk_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
>  			 ilk_hotplug_mask(dev_priv, HPD_PORT_A),
>  			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
>  }
>=20=20
> +static void ilk_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
> +			 ilk_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? ilk_hotplug_enables(encoder) : 0);
> +
> +	ibx_hpd_detection(encoder, enable);
> +}
> +
>  static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -3254,8 +3355,17 @@ static void bxt_hpd_detection_setup(struct drm_i91=
5_private *dev_priv)
>  			 bxt_hotplug_mask(dev_priv, HPD_PORT_C),
>  			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
>  }
>=20=20
> +static void bxt_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
> +			 bxt_hotplug_mask(i915, encoder->hpd_pin),
> +			 enable ? bxt_hotplug_enables(encoder) : 0);
> +}
> +
>  static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>=20=20
> @@ -3885,8 +3995,18 @@ static void i965_irq_postinstall(struct drm_i915_p=
rivate *dev_priv)
>=20=20
>  	i915_enable_asle_pipestat(dev_priv);
>  }
>=20=20
> +static void i915_hpd_detection(struct intel_encoder *encoder, bool enabl=
e)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	u32 hotplug_en =3D hpd_mask_i915[encoder->hpd_pin];
> +
> +	/* HPD sense and interrupt enable are one and the same */
> +	i915_hotplug_interrupt_update(i915, hotplug_en,
> +				      enable ? hotplug_en : 0);
> +}
> +
>  static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_en;
>=20=20
> @@ -3970,14 +4090,18 @@ static irqreturn_t i965_irq_handler(int irq, void=
 *arg)
>  	return ret;
>  }
>=20=20
>  struct intel_hotplug_funcs {
> +	/* Enable HPD sense and interrupts for all present encoders */
>  	void (*hpd_irq_setup)(struct drm_i915_private *i915);
> +	/* Enable/disable HPD sense for a single encoder */
> +	void (*hpd_detection)(struct intel_encoder *encoder, bool enable);
>  };
>=20=20
>  #define HPD_FUNCS(platform)					 \
>  static const struct intel_hotplug_funcs platform##_hpd_funcs =3D { \
>  	.hpd_irq_setup =3D platform##_hpd_irq_setup,		 \
> +	.hpd_detection =3D platform##_hpd_detection,		 \
>  }
>=20=20
>  HPD_FUNCS(i915);
>  HPD_FUNCS(dg1);
> @@ -3987,8 +4111,16 @@ HPD_FUNCS(icp);
>  HPD_FUNCS(spt);
>  HPD_FUNCS(ilk);
>  #undef HPD_FUNCS
>=20=20
> +void intel_hpd_detection(struct intel_encoder *encoder, bool enable)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (i915->display.funcs.hotplug)
> +		i915->display.funcs.hotplug->hpd_detection(encoder, enable);
> +}
> +
>  void intel_hpd_irq_setup(struct drm_i915_private *i915)
>  {
>  	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
>  		i915->display.funcs.hotplug->hpd_irq_setup(i915);
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_=
irq.h
> index 03ee4c8b1ed3..a5eb85ed7537 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -16,8 +16,9 @@ struct drm_crtc;
>  struct drm_device;
>  struct drm_display_mode;
>  struct drm_i915_private;
>  struct intel_crtc;
> +struct intel_encoder;
>  struct intel_uncore;
>=20=20
>  void intel_irq_init(struct drm_i915_private *dev_priv);
>  void intel_irq_fini(struct drm_i915_private *dev_priv);
> @@ -36,8 +37,9 @@ i915_disable_pipestat(struct drm_i915_private *dev_priv=
, enum pipe pipe,
>=20=20
>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
>  void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
>=20=20
> +void intel_hpd_detection(struct intel_encoder *encoder, bool enable);
>  void intel_hpd_irq_setup(struct drm_i915_private *i915);
>  void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
>  				   u32 mask,
>  				   u32 bits);

--=20
Jani Nikula, Intel Open Source Graphics Center
