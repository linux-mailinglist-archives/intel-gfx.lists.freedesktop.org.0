Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC0151CFB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D116E846;
	Tue,  4 Feb 2020 15:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341CF6E846
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:11:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:11:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="341648157"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Feb 2020 07:11:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 17:11:50 +0200
Date: Tue, 4 Feb 2020 17:11:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204151149.GX13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <49a456dcf0de7c799dcbab77e830fcc367d6ed9f.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49a456dcf0de7c799dcbab77e830fcc367d6ed9f.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: move more display related
 probe/remove stuff to display
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

On Tue, Feb 04, 2020 at 03:42:27PM +0200, Jani Nikula wrote:
> With the intel_display_* prove/remove functions clarified, we can

"probe", though I wouldn't mind functions that prove the
display code/hw works ;)

> continue with moving more related calls to the right layer:
> =

> - drm_vblank_init()
> - intel_bios_init() and intel_bios_driver_remove()
> - intel_vga_register() and intel_vga_unregister()
> - intel_csr_ucode_init() and intel_csr_ucode_fini()
> =

> Unfortunately, for the time being, we also need to move a call to the
> *wrong* layer: the power domain init.
> =

> v2: move probe failure while at it, power domain init
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.c              | 39 +-------------------
>  2 files changed, 32 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 39c12a608103..bf99964d8e4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -66,6 +66,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_color.h"
> +#include "intel_csr.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_fbc.h"
> @@ -17859,6 +17860,27 @@ int intel_modeset_init_noirq(struct drm_i915_pri=
vate *i915)
>  {
>  	int ret;
>  =

> +	if (i915_inject_probe_failure(i915))
> +		return -ENODEV;
> +
> +	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
> +		ret =3D drm_vblank_init(&i915->drm,
> +				      INTEL_NUM_PIPES(i915));
> +		if (ret)
> +			goto out;
> +	}
> +
> +	intel_bios_init(i915);
> +
> +	ret =3D intel_vga_register(i915);
> +	if (ret)
> +		goto out;
> +
> +	/* FIXME: completely on the wrong abstraction layer */
> +	intel_power_domains_init_hw(i915, false);
> +
> +	intel_csr_ucode_init(i915);
> +
>  	i915->modeset_wq =3D alloc_ordered_workqueue("i915_modeset", 0);
>  	i915->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
>  					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
> @@ -17882,6 +17904,9 @@ int intel_modeset_init_noirq(struct drm_i915_priv=
ate *i915)
>  	intel_fbc_init(i915);
>  =

>  	return 0;
> +
> +out:
> +	return ret;

Empty label seems a bit pointless. But I guess we're at least missing a
intel_bios_driver_remove() call here. Hmm, the remove doesn't seem to be
the reverse of this either. Oh well.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  }
>  =

>  /* part #2: call after irq install, but before gem init */
> @@ -18905,6 +18930,12 @@ void intel_modeset_driver_remove_noirq(struct dr=
m_i915_private *i915)
>  	destroy_workqueue(i915->modeset_wq);
>  =

>  	intel_fbc_cleanup_cfb(i915);
> +
> +	intel_bios_driver_remove(i915);
> +
> +	intel_vga_unregister(i915);
> +
> +	intel_csr_ucode_fini(i915);
>  }
>  =

>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 21f07709dc9e..fca693ad6cd7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -275,38 +275,7 @@ intel_teardown_mchbar(struct drm_i915_private *dev_p=
riv)
>  /* part #1: call before irq install */
>  static int i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
>  {
> -	int ret;
> -
> -	if (i915_inject_probe_failure(i915))
> -		return -ENODEV;
> -
> -	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
> -		ret =3D drm_vblank_init(&i915->drm,
> -				      INTEL_NUM_PIPES(i915));
> -		if (ret)
> -			goto out;
> -	}
> -
> -	intel_bios_init(i915);
> -
> -	ret =3D intel_vga_register(i915);
> -	if (ret)
> -		goto out;
> -
> -	intel_power_domains_init_hw(i915, false);
> -
> -	intel_csr_ucode_init(i915);
> -
> -	ret =3D intel_modeset_init_noirq(i915);
> -	if (ret)
> -		goto cleanup_vga_client;
> -
> -	return 0;
> -
> -cleanup_vga_client:
> -	intel_vga_unregister(i915);
> -out:
> -	return ret;
> +	return intel_modeset_init_noirq(i915);
>  }
>  =

>  /* part #2: call after irq install */
> @@ -353,12 +322,6 @@ static void i915_driver_modeset_remove(struct drm_i9=
15_private *i915)
>  static void i915_driver_modeset_remove_noirq(struct drm_i915_private *i9=
15)
>  {
>  	intel_modeset_driver_remove_noirq(i915);
> -
> -	intel_bios_driver_remove(i915);
> -
> -	intel_vga_unregister(i915);
> -
> -	intel_csr_ucode_fini(i915);
>  }
>  =

>  static void intel_init_dpio(struct drm_i915_private *dev_priv)
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
