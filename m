Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136E2E7B40
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 17:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5000189292;
	Wed, 30 Dec 2020 16:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B098928D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 16:59:39 +0000 (UTC)
IronPort-SDR: VNwD303MBZ1dvDnarKqb51VU0mkdjimuyke7tWn2XLwp4rW1CH93U6Ud9vXTylGJ1Denu09aI6
 3/ZIAbRco09g==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="176720996"
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="176720996"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 08:59:38 -0800
IronPort-SDR: gJF10R3qcXDvnaj4XOlEG6aVBiJFH+ZLOZVtzGEtaMgNkdGJ3ctuy1055gMasXMStt3R26e3Tz
 gwKLYvRoXo/A==
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="347925182"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 08:59:37 -0800
Date: Wed, 30 Dec 2020 18:59:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201230165933.GA4171774@ideak-desk.fi.intel.com>
References: <20201230104834.31236-1-chris@chris-wilson.co.uk>
 <20201230104834.31236-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201230104834.31236-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Track pm_qos per connector
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

On Wed, Dec 30, 2020 at 10:48:34AM +0000, Chris Wilson wrote:
> Since multiple connectors may run intel_dp_aux_xfer conncurrently, a
> single global pm_qos does not suffice. (One connector may disable the
> dma-latency boost prematurely while the second is still depending on
> it.) Instead of a single global pm_qos, track the pm_qos request for
> each intel_dp.
> =

> Fixes: 9ee32fea5fe8 ("drm/i915: irq-drive the dp aux communication")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>

Could intel_dp_aux_init/fini() be used?

> ---
>  .../gpu/drm/i915/display/intel_display_types.h   |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c          | 16 +++++++++++++---
>  drivers/gpu/drm/i915/i915_drv.c                  |  5 -----
>  drivers/gpu/drm/i915/i915_drv.h                  |  3 ---
>  4 files changed, 16 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index b86ba1bdbaa3..1067bd073c95 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1463,6 +1463,9 @@ struct intel_dp {
>  		bool rgb_to_ycbcr;
>  	} dfp;
>  =

> +	/* To control wakeup latency, e.g. for irq-driven dp aux transfers. */
> +	struct pm_qos_request pm_qos;
> +
>  	/* Display stream compression testing */
>  	bool force_dsc_en;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 357f7921e070..f08e5f1f463d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1512,7 +1512,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 * lowest possible wakeup latency and so prevent the cpu from going into
>  	 * deep sleep states.
>  	 */
> -	cpu_latency_qos_update_request(&i915->pm_qos, 0);
> +	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
>  =

>  	intel_dp_check_edp(intel_dp);
>  =

> @@ -1643,7 +1643,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  =

>  	ret =3D recv_bytes;
>  out:
> -	cpu_latency_qos_update_request(&i915->pm_qos, PM_QOS_DEFAULT_VALUE);
> +	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>  =

>  	if (vdd)
>  		edp_panel_vdd_off(intel_dp, false);
> @@ -7527,6 +7527,14 @@ static int intel_dp_connector_atomic_check(struct =
drm_connector *conn,
>  =

>  	return intel_modeset_synced_crtcs(state, conn);
>  }
> +static void intel_dp_connector_destroy(struct drm_connector *connector)
> +{
> +	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(conn=
ector));
> +
> +	cpu_latency_qos_remove_request(&intel_dp->pm_qos);
> +
> +	intel_connector_destroy(connector);
> +}
>  =

>  static const struct drm_connector_funcs intel_dp_connector_funcs =3D {
>  	.force =3D intel_dp_force,
> @@ -7535,7 +7543,7 @@ static const struct drm_connector_funcs intel_dp_co=
nnector_funcs =3D {
>  	.atomic_set_property =3D intel_digital_connector_atomic_set_property,
>  	.late_register =3D intel_dp_connector_register,
>  	.early_unregister =3D intel_dp_connector_unregister,
> -	.destroy =3D intel_connector_destroy,
> +	.destroy =3D intel_dp_connector_destroy,
>  	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,
>  	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
>  };
> @@ -8621,6 +8629,8 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	intel_dp->frl.is_trained =3D false;
>  	intel_dp->frl.trained_rate_gbps =3D 0;
>  =

> +	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> +
>  	return true;
>  =

>  fail:
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 5708e11d917b..249f765993f7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -578,8 +578,6 @@ static int i915_driver_hw_probe(struct drm_i915_priva=
te *dev_priv)
>  =

>  	pci_set_master(pdev);
>  =

> -	cpu_latency_qos_add_request(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);
> -
>  	intel_gt_init_workarounds(dev_priv);
>  =

>  	/* On the 945G/GM, the chipset reports the MSI capability on the
> @@ -626,7 +624,6 @@ static int i915_driver_hw_probe(struct drm_i915_priva=
te *dev_priv)
>  err_msi:
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> -	cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  err_mem_regions:
>  	intel_memory_regions_driver_release(dev_priv);
>  err_ggtt:
> @@ -648,8 +645,6 @@ static void i915_driver_hw_remove(struct drm_i915_pri=
vate *dev_priv)
>  =

>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> -
> -	cpu_latency_qos_remove_request(&dev_priv->pm_qos);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index e38a10d5c128..5e5bcef20e33 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -891,9 +891,6 @@ struct drm_i915_private {
>  =

>  	bool display_irqs_enabled;
>  =

> -	/* To control wakeup latency, e.g. for irq-driven dp aux transfers. */
> -	struct pm_qos_request pm_qos;
> -
>  	/* Sideband mailbox protection */
>  	struct mutex sb_lock;
>  	struct pm_qos_request sb_qos;
> -- =

> 2.20.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
