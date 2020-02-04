Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D92151CBC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B60A6E84F;
	Tue,  4 Feb 2020 14:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BAA6E84F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:59:15 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="263859182"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Feb 2020 06:59:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:59:11 +0200
Date: Tue, 4 Feb 2020 16:59:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204145911.GV13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <437b391c4852c3b444f4ada961f502ba88ca56c5.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <437b391c4852c3b444f4ada961f502ba88ca56c5.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: split intel_modeset_init() to
 pre/post irq install
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

On Tue, Feb 04, 2020 at 03:42:25PM +0200, Jani Nikula wrote:
> Split inte_modeset_init() to parts before and after irq install, to
> facilitate further cleanup. The error paths are a mess, otherwise no
> functional changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/i915_drv.c              |  6 ++++++
>  3 files changed, 20 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 69d6fe626a19..2cac6d61dba2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17854,11 +17854,9 @@ static void intel_mode_config_cleanup(struct drm=
_i915_private *i915)
>  	drm_mode_config_cleanup(&i915->drm);
>  }
>  =

> -int intel_modeset_init(struct drm_i915_private *i915)
> +/* part #1: call before irq install */
> +int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  {
> -	struct drm_device *dev =3D &i915->drm;
> -	enum pipe pipe;
> -	struct intel_crtc *crtc;
>  	int ret;
>  =

>  	i915->modeset_wq =3D alloc_ordered_workqueue("i915_modeset", 0);
> @@ -17883,6 +17881,17 @@ int intel_modeset_init(struct drm_i915_private *=
i915)
>  =

>  	intel_fbc_init(i915);
>  =

> +	return 0;
> +}
> +
> +/* part #2: call after irq install */
> +int intel_modeset_init(struct drm_i915_private *i915)
> +{
> +	struct drm_device *dev =3D &i915->drm;
> +	enum pipe pipe;
> +	struct intel_crtc *crtc;
> +	int ret;
> +

Seems like an OK split point.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	intel_init_pm(i915);
>  =

>  	intel_panel_sanitize_ssc(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index f92efbbec838..8f994244ccc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -614,6 +614,7 @@ intel_format_info_is_yuv_semiplanar(const struct drm_=
format_info *info,
>  =

>  /* modesetting */
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
> +int intel_modeset_init_noirq(struct drm_i915_private *i915);
>  int intel_modeset_init(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 1243638506bc..905277490024 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -297,8 +297,14 @@ static int i915_driver_modeset_probe_noirq(struct dr=
m_i915_private *i915)
>  =

>  	intel_csr_ucode_init(i915);
>  =

> +	ret =3D intel_modeset_init_noirq(i915);
> +	if (ret)
> +		goto cleanup_vga_client;
> +
>  	return 0;
>  =

> +cleanup_vga_client:
> +	intel_vga_unregister(i915);
>  out:
>  	return ret;
>  }
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
