Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8366F70BF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 19:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEC9810E191;
	Thu,  4 May 2023 17:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E4110E191
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 17:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683220782; x=1714756782;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u1uPUwqQxXgLkKD09KmGiM+M0ylE/brRXVp9+UPA1S4=;
 b=U+HhmnxrUWvUEPXv++TAjNBGKroiUDa2/BmPEOsZnAOSJwcN96/MFJlr
 +Zj6vCOBSlo4oAHhUyiqe2f8j5l8KpC1PaoShgI3s9v3K2n23ZUyPWaOb
 lQ2fCn4DApUHVv/hBraL/E12oDrq3fnDish3YDl+MTE1tcAwUnq/ZcwzG
 1H64bUuxF+26wT3D9k24AF3Y1V7amZqGOlxM1/vBnK2CdTNKCycAdmGUV
 2nCEit0IOWjuq4GDbr22/aDgcYA1D0tFHvty4/h/uqIZsA3JrX9H2KGG3
 Gut9dtodQ46EUET287BnsKnHIhIugFzE1Fn4w3HCNYTjp//xdSJD27obU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="349043834"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="349043834"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 10:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="762017080"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="762017080"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 04 May 2023 10:15:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 20:15:13 +0300
Date: Thu, 4 May 2023 20:15:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPoIcXn1A+MK2oL@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 04/12] drm/i915: Separate
 intel_crtc_disable_noatomic_begin/complete()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 04, 2023 at 02:10:40AM +0300, Imre Deak wrote:
> Split calling the CRTC/encoder disabling hooks and updating the CRTC and
> DPLL object states from updating the CRTC and atomic state and other
> global state (BW, CDCLK, DBUF) into separate functions. When disabling a
> bigjoiner configuration the latter step can be done only after all the
> linked pipes are disabled, so this change prepares for that.
> 
> No functional changes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_modeset_setup.c    | 33 ++++++++++++++-----
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index c1a4a7bcc56ae..922ea5ddd0c5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -30,17 +30,10 @@
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  
> -static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> -					struct drm_modeset_acquire_ctx *ctx)
> +static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
> +					      struct drm_modeset_acquire_ctx *ctx)
>  {
> -	struct intel_encoder *encoder;
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	struct intel_bw_state *bw_state =
> -		to_intel_bw_state(i915->display.bw.obj.state);
> -	struct intel_cdclk_state *cdclk_state =
> -		to_intel_cdclk_state(i915->display.cdclk.obj.state);
> -	struct intel_dbuf_state *dbuf_state =
> -		to_intel_dbuf_state(i915->display.dbuf.obj.state);
>  	struct intel_crtc_state *crtc_state =
>  		to_intel_crtc_state(crtc->base.state);
>  	struct intel_plane *plane;
> @@ -92,6 +85,21 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  		crtc_state->shared_dpll->state.pipe_mask &= ~BIT(pipe);
>  		crtc_state->shared_dpll->active_mask &= ~BIT(pipe);
>  	}
> +}
> +
> +static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
> +{
> +	struct intel_encoder *encoder;
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_bw_state *bw_state =
> +		to_intel_bw_state(i915->display.bw.obj.state);
> +	struct intel_cdclk_state *cdclk_state =
> +		to_intel_cdclk_state(i915->display.cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =
> +		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(crtc->base.state);
> +	enum pipe pipe = crtc->pipe;
>  
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
> @@ -115,6 +123,13 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  	bw_state->num_active_planes[pipe] = 0;
>  }
>  
> +static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> +					struct drm_modeset_acquire_ctx *ctx)
> +{
> +	intel_crtc_disable_noatomic_begin(crtc, ctx);
> +	intel_crtc_disable_noatomic_complete(crtc);
> +}
> +
>  static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
>  {
>  	struct intel_connector *connector;
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
