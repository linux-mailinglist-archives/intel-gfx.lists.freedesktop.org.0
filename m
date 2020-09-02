Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F225B162
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 18:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368D56E084;
	Wed,  2 Sep 2020 16:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D706E084
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 16:19:24 +0000 (UTC)
IronPort-SDR: 0OPlA5MoudVPoq6Qfv7yvy6+7DNchNxbxvF13V5y3Ufif9K8AfLce0Thfnngw3OOj3JrJ8hjlK
 1Ad04xVqd3ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="175473679"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="175473679"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 09:19:24 -0700
IronPort-SDR: KPbGQKBnnOGuMV/B9xetYEfD23N9sg1MJC0MPghE7NEdh/rxzPIDnaTm3N0BREhUtyg5NixWvU
 gGyXAQm3R1+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301891690"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 02 Sep 2020 09:19:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Sep 2020 19:19:21 +0300
Date: Wed, 2 Sep 2020 19:19:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200902161921.GT6112@intel.com>
References: <cover.1599056955.git.jani.nikula@intel.com>
 <62c32c35683b843ecdc2eca2bd2d3e62cb705e96.1599056955.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62c32c35683b843ecdc2eca2bd2d3e62cb705e96.1599056955.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: remove the extra modeset init
 layer
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

On Wed, Sep 02, 2020 at 05:30:23PM +0300, Jani Nikula wrote:
> Streamline the modeset init by removing the extra init layer.
> =

> No functional changes, which means the cleanup path looks hideous.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 63 +++++++++++----------------------
>  1 file changed, 20 insertions(+), 43 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index e332b6fd701d..4d9b61b1a115 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -215,46 +215,6 @@ intel_teardown_mchbar(struct drm_i915_private *dev_p=
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
>  static void intel_init_dpio(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -923,7 +883,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
>  =

> -	ret =3D i915_driver_modeset_probe_noirq(i915);
> +	ret =3D intel_modeset_init_noirq(i915);
>  	if (ret < 0)
>  		goto out_cleanup_hw;
>  =

> @@ -931,10 +891,18 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
>  	if (ret)
>  		goto out_cleanup_modeset;
>  =

> -	ret =3D i915_driver_modeset_probe(i915);
> -	if (ret < 0)
> +	ret =3D intel_modeset_init_nogem(i915);
> +	if (ret)
>  		goto out_cleanup_irq;
>  =

> +	ret =3D i915_gem_init(i915);
> +	if (ret)
> +		goto out_cleanup_modeset2;
> +
> +	ret =3D intel_modeset_init(i915);
> +	if (ret)
> +		goto out_cleanup_gem;
> +
>  	i915_driver_register(i915);
>  =

>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> @@ -945,6 +913,15 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>  =

>  	return 0;
>  =

> +out_cleanup_gem:
> +	i915_gem_suspend(i915);
> +	i915_gem_driver_remove(i915);
> +	i915_gem_driver_release(i915);
> +out_cleanup_modeset2:
> +	intel_modeset_driver_remove(i915);
> +	intel_irq_uninstall(i915);
> +	intel_modeset_driver_remove_noirq(i915);
> +	goto out_cleanup_modeset;

Looks like we used to do the intel_irq_uninstall() twice? We even
have a FIXME in there stating as much. With this goto we only do
it the once I guess. So seems like a slight change in behaviour.
Though the comment says it gets called twice during driver remove
as well, which does not seem to be true (at least anymore).

Anyways, fixing that properly likely requires some axctual thought
wrt. hpd vs. irq vs. other stuff.

Series is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  out_cleanup_irq:
>  	intel_irq_uninstall(i915);
>  out_cleanup_modeset:
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
