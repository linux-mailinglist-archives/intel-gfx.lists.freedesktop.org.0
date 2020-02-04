Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A142151C88
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF3B6F37C;
	Tue,  4 Feb 2020 14:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C701C6F37C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:48:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:47:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="224629042"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 04 Feb 2020 06:46:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:46:58 +0200
Date: Tue, 4 Feb 2020 16:46:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204144658.GS13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <99ec54fedc29b2cc24b1976fb99d6a696bfb58e3.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99ec54fedc29b2cc24b1976fb99d6a696bfb58e3.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: split
 intel_modeset_driver_remove() to pre/post irq uninstall
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

On Tue, Feb 04, 2020 at 03:42:22PM +0200, Jani Nikula wrote:
> Split intel_modeset_driver_remove() to two, the part with working irqs
> before irq uninstall, and the part after irq uninstall. Move
> irq_unintall() closer to the layer it belongs.
> =

> The error path in i915_driver_modeset_probe() looks obviously weird
> after this, but remains as good or broken as it ever was. No functional
> changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-------
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/i915_drv.c              |  5 +++++
>  3 files changed, 11 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b0af37fb6d4a..69d6fe626a19 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18826,6 +18826,7 @@ static void intel_hpd_poll_fini(struct drm_i915_p=
rivate *i915)
>  	drm_connector_list_iter_end(&conn_iter);
>  }
>  =

> +/* part #1: call before irq uninstall */
>  void intel_modeset_driver_remove(struct drm_i915_private *i915)
>  {
>  	flush_workqueue(i915->flip_wq);
> @@ -18833,14 +18834,11 @@ void intel_modeset_driver_remove(struct drm_i91=
5_private *i915)
>  =

>  	flush_work(&i915->atomic_helper.free_work);
>  	WARN_ON(!llist_empty(&i915->atomic_helper.free_list));
> +}
>  =

> -	/*
> -	 * Interrupts and polling as the first thing to avoid creating havoc.
> -	 * Too much stuff here (turning of connectors, ...) would
> -	 * experience fancy races otherwise.
> -	 */

Maybe the comment should stay at the start of the _noirq() function?
Or maybe it's obvious now. Shrug.

> -	intel_irq_uninstall(i915);
> -
> +/* part #2: call after irq uninstall */
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> +{
>  	/*
>  	 * Due to the hpd irq storm handling the hotplug work can re-arm the
>  	 * poll handlers. Hence disable polling after hpd handling is shut down.
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 75438a136d58..f92efbbec838 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -616,6 +616,7 @@ intel_format_info_is_yuv_semiplanar(const struct drm_=
format_info *info,
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
>  int intel_modeset_init(struct drm_i915_private *i915);
>  void intel_modeset_driver_remove(struct drm_i915_private *i915);
> +void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
>  void intel_display_resume(struct drm_device *dev);
>  void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 6ab2de82b5f7..5330a0f10e97 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -332,6 +332,9 @@ static int i915_driver_modeset_probe(struct drm_i915_=
private *i915)
>  	i915_gem_driver_release(i915);
>  cleanup_modeset:
>  	intel_modeset_driver_remove(i915);
> +	intel_irq_uninstall(i915);
> +	intel_modeset_driver_remove_noirq(i915);
> +	goto cleanup_csr;
>  cleanup_irq:
>  	intel_irq_uninstall(i915);
>  cleanup_csr:
> @@ -348,6 +351,8 @@ static void i915_driver_modeset_remove(struct drm_i91=
5_private *i915)

A bit funny with the naming of driver_modeset_remove() vs.
modeset_driver_remove(). But that's already in there.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  	intel_irq_uninstall(i915);
>  =

> +	intel_modeset_driver_remove_noirq(i915);
> +
>  	intel_bios_driver_remove(i915);
>  =

>  	intel_vga_unregister(i915);
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
