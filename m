Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76073969EA2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120DF10E597;
	Tue,  3 Sep 2024 13:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWpfiSaM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3374010E598
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 13:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725368664; x=1756904664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dyokIKVh+8YWaG3K7fr1uEKTK31xqXpkoluUpIE1GM4=;
 b=PWpfiSaMi7uSq9dQmVgTy2LLjbWEcVv+nPMEGi5khbzShww1hZRn5JTd
 6H7P6CIYqXeQ7Dt09w80ikvSfdWuUN+PUiqOKGA1zghafngxln+mMWt1u
 UViw3s+/+DeK7SvezqwWWQeKYEHgAaNd0GAbyQQcG7YOCJCSke4oq0/mT
 QaVIyIvsTcnpPz5HupLcNYi+xkSGopYG2laGTp2y2oKfec7vgs21aTACl
 PHbTUQC2eijnJ/+JwYWtcyJq7cn2fF85BmJRp7zaDrZAcDbRyI1f1rNx0
 HmXsOZm+JMbVcKHGz78sLV7+EXmCMMYj9VSondi0HCzgdr/KetqfKDEM3 w==;
X-CSE-ConnectionGUID: zU4L0sAoQTWQBPvoQpzLlQ==
X-CSE-MsgGUID: KOZqQDtPTXOigc0E8qrCvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24082442"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24082442"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 06:04:24 -0700
X-CSE-ConnectionGUID: So11W0/xR6agtj3pROvGDA==
X-CSE-MsgGUID: No01C2aOR02/xk1OmbrIhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64922799"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 06:04:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 16:04:19 +0300
Date: Tue, 3 Sep 2024 16:04:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 11/13] drm/i915/vrr: Handle joiner with vrr
Message-ID: <ZtcJU0VaLeDthGw_@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240902080635.2946858-12-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 02, 2024 at 01:36:32PM +0530, Ankit Nautiyal wrote:
> Do not program transcoder registers for VRR for the secondary pipe of
> the joiner. Remove check to skip VRR for joiner case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5e947465c6e0..e01d4b4b8fa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -169,13 +169,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	const struct drm_display_info *info = &connector->base.display_info;
>  	int vmin, vmax;
>  
> -	/*
> -	 * FIXME all joined pipes share the same transcoder.
> -	 * Need to account for that during VRR toggle/push/etc.
> -	 */
> -	if (crtc_state->joiner_pipes)
> -		return;

There's more to this than just sprinkling the secondary checks.
Namely, we need to make sure the timing changes happen in the
correct spot in the sequence for both primary and secondary pipes.

> -
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
> @@ -272,6 +265,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	/*
>  	 * This bit seems to have two meanings depending on the platform:
>  	 * TGL: generate VRR "safe window" for DSB vblank waits
> @@ -313,6 +309,9 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>  		return;
>  
> @@ -336,6 +335,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> @@ -364,6 +366,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	struct intel_display *display = to_intel_display(old_crtc_state);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
> +		return;
> +
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
