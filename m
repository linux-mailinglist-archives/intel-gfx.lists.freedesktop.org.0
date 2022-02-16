Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56584B914B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 20:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3349610E268;
	Wed, 16 Feb 2022 19:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7977010E268
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 19:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645040251; x=1676576251;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LH0dcUC7JA8N0hS9Ocx3swdXGk8zlcYAvaC40c5zu9c=;
 b=IfoJdO7pYHVkXQYDU7fJALp7G++q8VXnPD49crolQLlvxZ8kuIpQ4tgU
 HvVfHkpaEL9FPTZfT6Nha9lGK07pF4/eMYjz1yr41LMpDqgGmY1beCtz4
 i5/KyXhz7s7IvRHVSGhu0lTVCqb3m5uCiPGo7Af0zN8DeZLX+8dcbFVh5
 qOMR8mHztjkwJ0UP/1Ahz6+YKWg1HVb+J97uJT41mRXYCM3iS5iP/fqC+
 YKYwdPF/1Kf3CuqDoQwZatn4MZYGbVhFl8ffordIFZ5svyKxWBJJIp388
 TZmJlAPIC66j4hyfbZwhejGZjD1D7iy7W6adKUaAyLJkiDPL+952gWYXJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275290601"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="275290601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:37:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="545131964"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:37:03 -0800
Date: Wed, 16 Feb 2022 11:37:23 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216193723.GE27285@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Extract
 intel_crtc_compute_pipe_mode()
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

On Tue, Feb 15, 2022 at 08:32:03PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Pull intel_crtc_compute_pipe_mode() out from
> intel_crtc_compute_config(). Since it's semi related
> we'll suck in the max dotclock/double wide checks in
> as well.
> 
> And we'll pimp the debugs while at it.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yup looks lot more organized

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++------
>  1 file changed, 20 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3d3fddd3f452..6ff58164929c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2832,17 +2832,12 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> -static int intel_crtc_compute_config(struct intel_crtc *crtc,
> -				     struct intel_crtc_state *crtc_state)
> +static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
>  	int clock_limit = i915->max_dotclk_freq;
> -	int ret;
> -
> -	ret = intel_crtc_compute_pipe_src(crtc_state);
> -	if (ret)
> -		return ret;
>  
>  	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
>  
> @@ -2868,12 +2863,29 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
>  
>  	if (pipe_mode->crtc_clock > clock_limit) {
>  		drm_dbg_kms(&i915->drm,
> -			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
> +			    "[CRTC:%d:%s] requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
> +			    crtc->base.base.id, crtc->base.name,
>  			    pipe_mode->crtc_clock, clock_limit,
>  			    yesno(crtc_state->double_wide));
>  		return -EINVAL;
>  	}
>  
> +	return 0;
> +}
> +
> +static int intel_crtc_compute_config(struct intel_crtc *crtc,
> +				     struct intel_crtc_state *crtc_state)
> +{
> +	int ret;
> +
> +	ret = intel_crtc_compute_pipe_src(crtc_state);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_crtc_compute_pipe_mode(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	intel_crtc_compute_pixel_rate(crtc_state);
>  
>  	if (crtc_state->has_pch_encoder)
> -- 
> 2.34.1
> 
