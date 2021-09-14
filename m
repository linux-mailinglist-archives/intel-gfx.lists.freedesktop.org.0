Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E16640B5E2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 19:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2323289FA9;
	Tue, 14 Sep 2021 17:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA5789FA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 17:25:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="209171113"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="209171113"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 10:25:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="508204963"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 10:25:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210910031741.3292388-8-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210910031741.3292388-1-airlied@gmail.com>
 <20210910031741.3292388-8-airlied@gmail.com>
Date: Tue, 14 Sep 2021 20:25:36 +0300
Message-ID: <87o88v133j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 07/25] drm/i915/display: add
 intel_fdi_link_train wrapper.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> This wraps the fdi link training vfunc to make it clearer.
>
> Suggested by Jani.
>
> Signed-off-by: Dave Airlie <airlied@redhat.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_fdi.h     | 2 ++
>  3 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 71518e71591b..aa174192c279 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2156,7 +2156,7 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
>  	assert_pch_transcoder_disabled(dev_priv, pipe);
>  
>  	/* For PCH output, training FDI link */
> -	dev_priv->display.fdi_link_train(crtc, crtc_state);
> +	intel_fdi_link_train(crtc, crtc_state);
>  
>  	/* We need to program the right clock selection before writing the pixel
>  	 * mutliplier into the DPLL. */
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index fc09b781f15f..339243399a65 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -10,6 +10,14 @@
>  #include "intel_fdi.h"
>  #include "intel_sideband.h"
>  
> +void intel_fdi_link_train(struct intel_crtc *crtc,
> +			  const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
> +	dev_priv->display.fdi_link_train(crtc, crtc_state);
> +}
> +
>  /* units of 100MHz */
>  static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> index 60acf2133145..61cb216a09f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -26,4 +26,6 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>  void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
>  void lpt_fdi_program_mphy(struct drm_i915_private *i915);
>  
> +void intel_fdi_link_train(struct intel_crtc *crtc,
> +			  const struct intel_crtc_state *crtc_state);
>  #endif

-- 
Jani Nikula, Intel Open Source Graphics Center
