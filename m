Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EF0151CA7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FCDF6F388;
	Tue,  4 Feb 2020 14:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5642E6F388
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:55:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:53:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="235185801"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Feb 2020 06:53:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:53:41 +0200
Date: Tue, 4 Feb 2020 16:53:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204145341.GU13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <2b2cba799bbab1b63f6fe342db3c5bdbacc1cebf.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b2cba799bbab1b63f6fe342db3c5bdbacc1cebf.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: split
 i915_driver_modeset_probe() to pre/post irq install
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

On Tue, Feb 04, 2020 at 03:42:24PM +0200, Jani Nikula wrote:
> Pair the irq install and uninstall in the same layer. There are no
> functional changes in the happy day scenario. The cleanup paths are
> currently a mess though.
> =

> Note that modeset probe pre-irq + post-irq install are matched by
> modeset driver remove pre-irq + post-irq uninstall, together, but not
> independently. They are not symmetric pairs.
> =

> v2: don't add a new probe failure point here
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 40 ++++++++++++++++++++++-----------
>  1 file changed, 27 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 2ef4b8fc5f4c..1243638506bc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -272,7 +272,8 @@ intel_teardown_mchbar(struct drm_i915_private *dev_pr=
iv)
>  		release_resource(&dev_priv->mch_res);
>  }
>  =

> -static int i915_driver_modeset_probe(struct drm_i915_private *i915)
> +/* part #1: call before irq install */
> +static int i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
>  {
>  	int ret;
>  =

> @@ -296,15 +297,22 @@ static int i915_driver_modeset_probe(struct drm_i91=
5_private *i915)
>  =

>  	intel_csr_ucode_init(i915);
>  =

> -	ret =3D intel_irq_install(i915);
> -	if (ret)
> -		goto cleanup_csr;
> +	return 0;
> +
> +out:
> +	return ret;
> +}
> +
> +/* part #2: call after irq install */
> +static int i915_driver_modeset_probe(struct drm_i915_private *i915)
> +{
> +	int ret;
>  =

>  	/* Important: The output setup functions called by modeset_init need
>  	 * working irqs for e.g. gmbus and dp aux transfers. */
>  	ret =3D intel_modeset_init(i915);
>  	if (ret)
> -		goto cleanup_irq;
> +		goto out;
>  =

>  	ret =3D i915_gem_init(i915);
>  	if (ret)
> @@ -331,16 +339,10 @@ static int i915_driver_modeset_probe(struct drm_i91=
5_private *i915)
>  	i915_gem_driver_remove(i915);
>  	i915_gem_driver_release(i915);
>  cleanup_modeset:
> +	/* FIXME */
>  	intel_modeset_driver_remove(i915);
>  	intel_irq_uninstall(i915);
>  	intel_modeset_driver_remove_noirq(i915);
> -	goto cleanup_csr;
> -cleanup_irq:
> -	intel_irq_uninstall(i915);
> -cleanup_csr:
> -	intel_csr_ucode_fini(i915);
> -	intel_power_domains_driver_remove(i915);
> -	intel_vga_unregister(i915);
>  out:
>  	return ret;
>  }
> @@ -1541,10 +1543,18 @@ int i915_driver_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
>  =

> -	ret =3D i915_driver_modeset_probe(i915);
> +	ret =3D i915_driver_modeset_probe_noirq(i915);
>  	if (ret < 0)
>  		goto out_cleanup_hw;
>  =

> +	ret =3D intel_irq_install(i915);
> +	if (ret)
> +		goto out_cleanup_modeset;
> +
> +	ret =3D i915_driver_modeset_probe(i915);
> +	if (ret < 0)
> +		goto out_cleanup_irq;
> +
>  	i915_driver_register(i915);
>  =

>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -1553,6 +1563,10 @@ int i915_driver_probe(struct pci_dev *pdev, const =
struct pci_device_id *ent)
>  =

>  	return 0;
>  =

> +out_cleanup_irq:
> +	intel_irq_uninstall(i915);
> +out_cleanup_modeset:
> +	/* FIXME */

Waiting for a mysterious cleanup_noirq() I guess.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  out_cleanup_hw:
>  	i915_driver_hw_remove(i915);
>  	intel_memory_regions_driver_release(i915);
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
