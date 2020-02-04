Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC17C151CE9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D976E838;
	Tue,  4 Feb 2020 15:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1546E838
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 15:05:44 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:05:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="279080374"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Feb 2020 07:05:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 17:05:28 +0200
Date: Tue, 4 Feb 2020 17:05:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204150528.GW13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <7fc880135aa33aa1eab703c881fd6ecb0480befc.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fc880135aa33aa1eab703c881fd6ecb0480befc.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: split intel_modeset_init()
 pre/post gem init
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

On Tue, Feb 04, 2020 at 03:42:26PM +0200, Jani Nikula wrote:
> Turn current intel_modeset_init() to a pre-gem init function, and add a
> new intel_modeset_init() function and move all post-gem modeset init
> there, in the correct layer. Again, apart from possible failure paths,
> no functional changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/i915_drv.c              | 14 ++---------
>  3 files changed, 27 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2cac6d61dba2..39c12a608103 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17884,8 +17884,8 @@ int intel_modeset_init_noirq(struct drm_i915_priv=
ate *i915)
>  	return 0;
>  }
>  =

> -/* part #2: call after irq install */
> -int intel_modeset_init(struct drm_i915_private *i915)
> +/* part #2: call after irq install, but before gem init */
> +int intel_modeset_init_nogem(struct drm_i915_private *i915)
>  {
>  	struct drm_device *dev =3D &i915->drm;
>  	enum pipe pipe;
> @@ -17974,6 +17974,28 @@ int intel_modeset_init(struct drm_i915_private *=
i915)
>  	return 0;
>  }
>  =

> +/* part #3: call after gem init */
> +int intel_modeset_init(struct drm_i915_private *i915)
> +{
> +	int ret;
> +
> +	intel_overlay_setup(i915);
> +
> +	if (!HAS_DISPLAY(i915) || !INTEL_DISPLAY_ENABLED(i915))
> +		return 0;
> +
> +	ret =3D intel_fbdev_init(&i915->drm);
> +	if (ret)
> +		return ret;
> +
> +	/* Only enable hotplug handling once the fbdev is fully set up. */
> +	intel_hpd_init(i915);
> +
> +	intel_init_ipc(i915);

BTW that init_ipc() looks totally misplaced. Should probably be part of
the regular wm init stuff. But that's not for this patch to fix.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +	return 0;
> +}
> +
>  void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
>  	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 8f994244ccc7..62ee9b9d212c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -615,6 +615,7 @@ intel_format_info_is_yuv_semiplanar(const struct drm_=
format_info *info,
>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init_noirq(struct drm_i915_private *i915);
> +int intel_modeset_init_nogem(struct drm_i915_private *i915);
>  int intel_modeset_init(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 905277490024..21f07709dc9e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -316,7 +316,7 @@ static int i915_driver_modeset_probe(struct drm_i915_=
private *i915)
>  =

>  	/* Important: The output setup functions called by modeset_init need
>  	 * working irqs for e.g. gmbus and dp aux transfers. */
> -	ret =3D intel_modeset_init(i915);
> +	ret =3D intel_modeset_init_nogem(i915);
>  	if (ret)
>  		goto out;
>  =

> @@ -324,20 +324,10 @@ static int i915_driver_modeset_probe(struct drm_i91=
5_private *i915)
>  	if (ret)
>  		goto cleanup_modeset;
>  =

> -	intel_overlay_setup(i915);
> -
> -	if (!HAS_DISPLAY(i915) || !INTEL_DISPLAY_ENABLED(i915))
> -		return 0;
> -
> -	ret =3D intel_fbdev_init(&i915->drm);
> +	ret =3D intel_modeset_init(i915);
>  	if (ret)
>  		goto cleanup_gem;
>  =

> -	/* Only enable hotplug handling once the fbdev is fully set up. */
> -	intel_hpd_init(i915);
> -
> -	intel_init_ipc(i915);
> -
>  	return 0;
>  =

>  cleanup_gem:
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
