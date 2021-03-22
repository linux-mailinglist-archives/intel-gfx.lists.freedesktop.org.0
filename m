Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDCA344F21
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 19:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984B76E151;
	Mon, 22 Mar 2021 18:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21026E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 18:53:20 +0000 (UTC)
IronPort-SDR: gsvWNCtRrrcJJZ2XP+n+BO3oPA8ouXrQ0aiY5Mh/yF0oexsP1hNjXeG+HvjIBXU8geXuSYx14Q
 q9lEzRBfeRIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190356833"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190356833"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 11:53:19 -0700
IronPort-SDR: EmpVV58sgW0/bcZEqh10B+yKeHR13jpwOYrI3n/z8GI8FGKXj5ArPLEdMkYFRWkR7jubJYNuN/
 /dXQcbD7a2gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407947145"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 22 Mar 2021 11:53:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 20:53:16 +0200
Date: Mon, 22 Mar 2021 20:53:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YFjnnFhUtO9zVO0O@intel.com>
References: <20210322181055.207619-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322181055.207619-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Warn when display irq
 functions are called without display
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

On Mon, Mar 22, 2021 at 11:10:53AM -0700, Jos=E9 Roberto de Souza wrote:
> With previous changes none of those warnings will be printed but let's
> add them so CI can caught regressions.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_fifo_underrun.c  |  2 ++
>  drivers/gpu/drm/i915/display/intel_hotplug.c    |  2 ++
>  drivers/gpu/drm/i915/i915_irq.c                 | 17 +++++++++++++++++
>  3 files changed, 21 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
> index 813a4f7033e1..f3631e319e5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -373,6 +373,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i=
915_private *dev_priv,
>  {
>  	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +

Sprinkling these everywhere isn't great. Would be better to stick them
into just the top level display irq handlers.

>  	/* We may be called too early in init, thanks BIOS! */
>  	if (crtc =3D=3D NULL)
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index f46a1b7190b8..77ce4a54a137 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -478,6 +478,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  	if (!pin_mask)
>  		return;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	spin_lock(&dev_priv->irq_lock);
>  =

>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 44aed4cbf894..cbb2aae4fc13 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -519,6 +519,8 @@ void i915_enable_pipestat(struct drm_i915_private *de=
v_priv,
>  	i915_reg_t reg =3D PIPESTAT(pipe);
>  	u32 enable_mask;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +

Not much point in adding these to any gmch code. It's never
going to trip.

>  	drm_WARN_ONCE(&dev_priv->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
>  		      "pipe %c: status_mask=3D0x%x\n",
>  		      pipe_name(pipe), status_mask);
> @@ -1273,6 +1275,7 @@ static u32 intel_hpd_hotplug_enables(struct drm_i91=
5_private *i915,
>  =

>  static void gmbus_irq_handler(struct drm_i915_private *dev_priv)
>  {
> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
>  	wake_up_all(&dev_priv->gmbus_wait_queue);
>  }
>  =

> @@ -1366,6 +1369,8 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i9=
15_private *dev_priv,
>  {
>  	u32 res1, res2;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (INTEL_GEN(dev_priv) >=3D 3)
>  		res1 =3D intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(p=
ipe));
>  	else
> @@ -1558,6 +1563,8 @@ static u32 i9xx_hpd_irq_ack(struct drm_i915_private=
 *dev_priv)
>  	u32 hotplug_status =3D 0, hotplug_status_mask;
>  	int i;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (IS_G4X(dev_priv) ||
>  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		hotplug_status_mask =3D HOTPLUG_INT_STATUS_G4X |
> @@ -1597,6 +1604,8 @@ static void i9xx_hpd_irq_handler(struct drm_i915_pr=
ivate *dev_priv,
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	u32 hotplug_trigger;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (IS_G4X(dev_priv) ||
>  	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_G4X;
> @@ -2038,6 +2047,8 @@ static void ilk_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (hotplug_trigger)
>  		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

> @@ -2087,6 +2098,8 @@ static void ivb_display_irq_handler(struct drm_i915=
_private *dev_priv,
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG_IVB;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (hotplug_trigger)
>  		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
>  =

> @@ -2421,6 +2434,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_pr=
iv, u32 master_ctl)
>  	u32 iir;
>  	enum pipe pipe;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (master_ctl & GEN8_DE_MISC_IRQ) {
>  		iir =3D intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR);
>  		if (iir) {
> @@ -3477,6 +3492,8 @@ static void spt_hpd_irq_setup(struct drm_i915_priva=
te *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
>  =

> +	drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DISPLAY(dev_priv));
> +
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT=
_500_ADJ);
>  =

> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
