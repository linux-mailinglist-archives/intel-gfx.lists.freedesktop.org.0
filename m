Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2762AB2FD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 10:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA305897BB;
	Mon,  9 Nov 2020 09:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E389F897BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 09:00:12 +0000 (UTC)
IronPort-SDR: vrlKPrxzSQxm4Gu+i6v3Di0uJvf228xCDPVhfdeMIaVEdwceBi5fvmXupqXfawXxq3w5P+lzpA
 IAMMltBksEwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="157554557"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="157554557"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 01:00:12 -0800
IronPort-SDR: x+gBf5ZsRC26S1kn1z5IIMlNY4VsVYl1kU5+U9j1Voi7LnfWsX/MAXuT5zjIy6sw1ow2XPExDt
 bzBkhfa+8Ryg==
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="540759148"
Received: from pjgubbin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.16.193])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 01:00:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201106225531.920641-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-2-lucas.demarchi@intel.com>
Date: Mon, 09 Nov 2020 11:00:07 +0200
Message-ID: <87blg6ucq0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: add namespace to
 intel_finish_reset
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
> Rename intel_finish_reset to intel_display_finish_reset, so it's clear
> from gt/ that we are calling out the display code.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.h | 2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4050bc60f632..ab04c89cdf05 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5011,7 +5011,7 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>  	state->acquire_ctx = ctx;
>  }
>  
> -void intel_finish_reset(struct drm_i915_private *dev_priv)
> +void intel_display_finish_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct drm_device *dev = &dev_priv->drm;
>  	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 30960cc8b8a6..a988f9518ece 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -591,7 +591,7 @@ int lpt_get_iclkip(struct drm_i915_private *dev_priv);
>  bool intel_fuzzy_clock_check(int clock1, int clock2);
>  
>  void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
> -void intel_finish_reset(struct drm_i915_private *dev_priv);
> +void intel_display_finish_reset(struct drm_i915_private *dev_priv);
>  void intel_dp_get_m_n(struct intel_crtc *crtc,
>  		      struct intel_crtc_state *pipe_config);
>  void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index d71bad8c07b7..6b07ff5249f5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1198,7 +1198,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -		intel_finish_reset(gt->i915);
> +		intel_display_finish_reset(gt->i915);
>  	}
>  
>  	if (!test_bit(I915_WEDGED, &gt->reset.flags))

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
