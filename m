Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA100129BC2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93616E030;
	Mon, 23 Dec 2019 23:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F946E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:16:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:16:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="418820552"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with ESMTP; 23 Dec 2019 15:16:49 -0800
Date: Mon, 23 Dec 2019 15:16:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223231649.GR2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-10-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-10-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 09/10] drm/i915: prefer 3-letter acronym
 for ivybridge
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

On Mon, Dec 23, 2019 at 09:32:43AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts ivybridge to ivb where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  4 ++--
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 12 ++++++------
>  drivers/gpu/drm/i915/i915_irq.c                    |  6 +++---
>  3 files changed, 11 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5093fd08f381..faf6d2527a50 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5540,7 +5540,7 @@ static void cpt_set_fdi_bc_bifurcation(struct drm_i=
915_private *dev_priv, bool e
>  	POSTING_READ(SOUTH_CHICKEN1);
>  }
>  =

> -static void ivybridge_update_fdi_bc_bifurcation(const struct intel_crtc_=
state *crtc_state)
> +static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state =
*crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -5613,7 +5613,7 @@ static void ilk_pch_enable(const struct intel_atomi=
c_state *state,
>  	assert_pch_transcoder_disabled(dev_priv, pipe);
>  =

>  	if (IS_IVYBRIDGE(dev_priv))
> -		ivybridge_update_fdi_bc_bifurcation(crtc_state);
> +		ivb_update_fdi_bc_bifurcation(crtc_state);
>  =

>  	/* Write the TU size bits before fdi link training, so that error
>  	 * detection works. */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
> index 1f80f275f3f2..6c83b350525d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -139,7 +139,7 @@ static void ilk_set_fifo_underrun_reporting(struct dr=
m_device *dev,
>  		ilk_disable_display_irq(dev_priv, bit);
>  }
>  =

> -static void ivybridge_check_fifo_underruns(struct intel_crtc *crtc)
> +static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
> @@ -157,9 +157,9 @@ static void ivybridge_check_fifo_underruns(struct int=
el_crtc *crtc)
>  	DRM_ERROR("fifo underrun on pipe %c\n", pipe_name(pipe));
>  }
>  =

> -static void ivybridge_set_fifo_underrun_reporting(struct drm_device *dev,
> -						  enum pipe pipe,
> -						  bool enable, bool old)
> +static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
> +					    enum pipe pipe, bool enable,
> +					    bool old)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	if (enable) {
> @@ -266,7 +266,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(s=
truct drm_device *dev,
>  	else if (IS_GEN_RANGE(dev_priv, 5, 6))
>  		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
>  	else if (IS_GEN(dev_priv, 7))
> -		ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
> +		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (INTEL_GEN(dev_priv) >=3D 8)
>  		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
>  =

> @@ -427,7 +427,7 @@ void intel_check_cpu_fifo_underruns(struct drm_i915_p=
rivate *dev_priv)
>  		if (HAS_GMCH(dev_priv))
>  			i9xx_check_fifo_underruns(crtc);
>  		else if (IS_GEN(dev_priv, 7))
> -			ivybridge_check_fifo_underruns(crtc);
> +			ivb_check_fifo_underruns(crtc);
>  	}
>  =

>  	spin_unlock_irq(&dev_priv->irq_lock);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 2d6324d2922a..afc6aad9bf8c 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -893,7 +893,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  }
>  =

>  /**
> - * ivybridge_parity_work - Workqueue called when a parity error interrupt
> + * ivb_parity_work - Workqueue called when a parity error interrupt
>   * occurred.
>   * @work: workqueue struct
>   *
> @@ -901,7 +901,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>   * this event, userspace should try to remap the bad rows since statisti=
cally
>   * it is likely the same row is more likely to go bad again.
>   */
> -static void ivybridge_parity_work(struct work_struct *work)
> +static void ivb_parity_work(struct work_struct *work)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  		container_of(work, typeof(*dev_priv), l3_parity.error_work);
> @@ -3899,7 +3899,7 @@ void intel_irq_init(struct drm_i915_private *dev_pr=
iv)
>  =

>  	intel_hpd_init_work(dev_priv);
>  =

> -	INIT_WORK(&dev_priv->l3_parity.error_work, ivybridge_parity_work);
> +	INIT_WORK(&dev_priv->l3_parity.error_work, ivb_parity_work);
>  	for (i =3D 0; i < MAX_L3_SLICES; ++i)
>  		dev_priv->l3_parity.remap_info[i] =3D NULL;
>  =

> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
