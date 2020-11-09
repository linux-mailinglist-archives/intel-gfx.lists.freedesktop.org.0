Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114392AB2FA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 09:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B16389780;
	Mon,  9 Nov 2020 08:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D43789780
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 08:59:46 +0000 (UTC)
IronPort-SDR: dp7+J+S8SdMN1v4u8ekDz42NADSEaTvCjN6DbWsFirxE2pVIS9ywItkeHMhWbiW/Ma2qdePGhY
 wO0FKFe8NM/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="149621347"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="149621347"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 00:59:45 -0800
IronPort-SDR: XF/vx3hbWKqpESgq2BbPTT0SgvVPFO7zFSgTtnud5LxeFR9uZtLK6pqEvqZnbkRXpQW09NPBwV
 +ypxSQOUuJjw==
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="540758688"
Received: from pjgubbin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.16.193])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 00:59:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
Date: Mon, 09 Nov 2020 10:59:40 +0200
Message-ID: <87eel2ucqr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/display: add namespace to
 intel_prepare_reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 06 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Rename intel_prepare_reset to intel_display_prepare_reset, so it's clear
> from gt/ that we are calling out the display code.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6faca1e739c8..4050bc60f632 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4951,7 +4951,7 @@ static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
>  		intel_has_gpu_reset(&dev_priv->gt));
>  }
>  
> -void intel_prepare_reset(struct drm_i915_private *dev_priv)
> +void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct drm_device *dev = &dev_priv->drm;
>  	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index be774f216065..30960cc8b8a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -590,7 +590,7 @@ void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe);
>  int lpt_get_iclkip(struct drm_i915_private *dev_priv);
>  bool intel_fuzzy_clock_check(int clock1, int clock2);
>  
> -void intel_prepare_reset(struct drm_i915_private *dev_priv);
> +void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
>  void intel_finish_reset(struct drm_i915_private *dev_priv);
>  void intel_dp_get_m_n(struct intel_crtc *crtc,
>  		      struct intel_crtc_state *pipe_config);
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 4e5e13dc95da..d71bad8c07b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1191,7 +1191,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  	/* Use a watchdog to ensure that our reset completes */
>  	intel_wedge_on_timeout(&w, gt, 5 * HZ) {
> -		intel_prepare_reset(gt->i915);
> +		intel_display_prepare_reset(gt->i915);
>  
>  		/* Flush everyone using a resource about to be clobbered */
>  		synchronize_srcu_expedited(&gt->reset.backoff_srcu);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
