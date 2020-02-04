Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B43F3151D00
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15AD36E842;
	Tue,  4 Feb 2020 15:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0936E842
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:16:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:16:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="249371126"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 04 Feb 2020 07:16:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 17:16:09 +0200
Date: Tue, 4 Feb 2020 17:16:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204151609.GY13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <3d045ba95b020f057ab27601ab8486cf0602da96.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d045ba95b020f057ab27601ab8486cf0602da96.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: remove the now redundant
 i915_driver_modeset_* call layer
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

On Tue, Feb 04, 2020 at 03:42:28PM +0200, Jani Nikula wrote:
> The i915_driver_modeset_*() functions have become irrelevant, and the
> extra layer can be removed.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Ok, some extraneous layers scraped off. Good.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 76 +++++++++------------------------
>  1 file changed, 19 insertions(+), 57 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index fca693ad6cd7..c097dced0d9b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -272,58 +272,6 @@ intel_teardown_mchbar(struct drm_i915_private *dev_p=
riv)
>  		release_resource(&dev_priv->mch_res);
>  }
>  =

> -/* part #1: call before irq install */
> -static int i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
> -{
> -	return intel_modeset_init_noirq(i915);
> -}
> -
> -/* part #2: call after irq install */
> -static int i915_driver_modeset_probe(struct drm_i915_private *i915)
> -{
> -	int ret;
> -
> -	/* Important: The output setup functions called by modeset_init need
> -	 * working irqs for e.g. gmbus and dp aux transfers. */
> -	ret =3D intel_modeset_init_nogem(i915);
> -	if (ret)
> -		goto out;
> -
> -	ret =3D i915_gem_init(i915);
> -	if (ret)
> -		goto cleanup_modeset;
> -
> -	ret =3D intel_modeset_init(i915);
> -	if (ret)
> -		goto cleanup_gem;
> -
> -	return 0;
> -
> -cleanup_gem:
> -	i915_gem_suspend(i915);
> -	i915_gem_driver_remove(i915);
> -	i915_gem_driver_release(i915);
> -cleanup_modeset:
> -	/* FIXME */
> -	intel_modeset_driver_remove(i915);
> -	intel_irq_uninstall(i915);
> -	intel_modeset_driver_remove_noirq(i915);
> -out:
> -	return ret;
> -}
> -
> -/* part #1: call before irq uninstall */
> -static void i915_driver_modeset_remove(struct drm_i915_private *i915)
> -{
> -	intel_modeset_driver_remove(i915);
> -}
> -
> -/* part #2: call after irq uninstall */
> -static void i915_driver_modeset_remove_noirq(struct drm_i915_private *i9=
15)
> -{
> -	intel_modeset_driver_remove_noirq(i915);
> -}
> -
>  static void intel_init_dpio(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -1502,7 +1450,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
>  =

> -	ret =3D i915_driver_modeset_probe_noirq(i915);
> +	ret =3D intel_modeset_init_noirq(i915);
>  	if (ret < 0)
>  		goto out_cleanup_hw;
>  =

> @@ -1510,10 +1458,20 @@ int i915_driver_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
>  	if (ret)
>  		goto out_cleanup_modeset;
>  =

> -	ret =3D i915_driver_modeset_probe(i915);
> -	if (ret < 0)
> +	/* Important: The output setup functions called by modeset_init need
> +	 * working irqs for e.g. gmbus and dp aux transfers. */
> +	ret =3D intel_modeset_init_nogem(i915);
> +	if (ret)
>  		goto out_cleanup_irq;
>  =

> +	ret =3D i915_gem_init(i915);
> +	if (ret)
> +		goto out_cleanup_modeset;
> +
> +	ret =3D intel_modeset_init(i915);
> +	if (ret)
> +		goto out_cleanup_gem;
> +
>  	i915_driver_register(i915);
>  =

>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -1522,6 +1480,10 @@ int i915_driver_probe(struct pci_dev *pdev, const =
struct pci_device_id *ent)
>  =

>  	return 0;
>  =

> +out_cleanup_gem:
> +	i915_gem_suspend(i915);
> +	i915_gem_driver_remove(i915);
> +	i915_gem_driver_release(i915);
>  out_cleanup_irq:
>  	intel_irq_uninstall(i915);
>  out_cleanup_modeset:
> @@ -1565,11 +1527,11 @@ void i915_driver_remove(struct drm_i915_private *=
i915)
>  =

>  	intel_gvt_driver_remove(i915);
>  =

> -	i915_driver_modeset_remove(i915);
> +	intel_modeset_driver_remove(i915);
>  =

>  	intel_irq_uninstall(i915);
>  =

> -	i915_driver_modeset_remove_noirq(i915);
> +	intel_modeset_driver_remove_noirq(i915);
>  =

>  	i915_reset_error_state(i915);
>  	i915_gem_driver_remove(i915);
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
