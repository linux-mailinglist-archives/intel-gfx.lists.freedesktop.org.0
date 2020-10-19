Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D30292A96
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39486E9CD;
	Mon, 19 Oct 2020 15:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC216E9CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 15:40:05 +0000 (UTC)
IronPort-SDR: uII1perPY6/N96hWigUrGs9MJvzB3uv0fyCoCd+mGunto1wAL/pVydSqoboS2pC2Tb1zvLrZku
 oo9LofdKWmgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="184663359"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="184663359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:40:05 -0700
IronPort-SDR: vd0mGUoCHEahie3BKyhxqelxjus3vQwMV2zczWV+h1uWoUEaDi+62aq6I4tnKks+ScUtJWwTD5
 ZV2CMvhfc0wg==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="301398370"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:40:03 -0700
Date: Mon, 19 Oct 2020 18:39:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201019153959.GH3199870@ideak-desk.fi.intel.com>
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
 <20201006185809.4655-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006185809.4655-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Do drm_mode_config_reset()
 after HPD init
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

On Tue, Oct 06, 2020 at 09:58:08PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> LSPCON requires HPD detection logic to be enabled when we call
> its .reset() hook during resume, to check the live state of the
> pin. To that end let's reorder the resume sequence such that
> we do HPD init before the encoder reset.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index b2a050d916e3..66ddd4161885 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1213,21 +1213,20 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 * GPU will hang. i915_gem_init_hw() will initiate batches to
>  	 * update/restore the context.
>  	 *
> -	 * drm_mode_config_reset() needs AUX interrupts.
> -	 *
>  	 * Modeset enabling in intel_modeset_init_hw() also needs working
>  	 * interrupts.
>  	 */
>  	intel_runtime_pm_enable_interrupts(dev_priv);
>  =

> -	drm_mode_config_reset(dev);
> -
>  	i915_gem_resume(dev_priv);
>  =

>  	intel_modeset_init_hw(dev_priv);
>  	intel_init_clock_gating(dev_priv);
>  	intel_hpd_init(dev_priv);
>  =

> +	/* May need AUX interrupts and HPD detection enabled */
> +	drm_mode_config_reset(dev);
> +
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(dev_priv);
>  	intel_display_resume(dev);
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
