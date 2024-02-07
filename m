Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBD784CE30
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAD71132B3;
	Wed,  7 Feb 2024 15:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SatJGNLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23DD91132B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707320257; x=1738856257;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ruq/wEMjm7djPNr4qjTdsCWWxeRuLZK5+CsOLp+D2xE=;
 b=SatJGNLTnj9BVVNjSYp6kmUSzPxLJFVaKmYNjBeUI2rxVjzMeGmKIfDB
 NKrLYu7c3iZxf2sGYjqQpB62qZ8/scpXXLgGmamKlxUQ8daGpDqbWZTEl
 qhOvBe6xhEXxtEaQauVSVbDfeXpAECd0Tp7MG+aHtsvGe1fCqI93MdE3X
 3hmZpb+WxFkyZi1wFtxkcJnxPQP6s2CFTEMdJ+1Wh5c3341F+DiEQrGrw
 hhJ8uzemhNwLUiYFlToH5JR+biV1IZ/zX+RckhD3Y3wYQ5ZnYsG4Al7j8
 RVG7pfTXfahtWXPmMDGJhA4rnkfXzWWesoXXMQ1h6S/nPYCOsCXx8R7cv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26458008"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="26458008"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="824532952"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="824532952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Feb 2024 07:37:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 17:37:32 +0200
Date: Wed, 7 Feb 2024 17:37:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jouni.hogander@intel.com,
 arun.r.murthy@intel.com
Subject: Re: [PATCH] drm/i915/panelreplay: Panel replay workaround with VRR
Message-ID: <ZcOjvJIJ6xNG7X5N@intel.com>
References: <20240207143509.2607428-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240207143509.2607428-1-animesh.manna@intel.com>
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

On Wed, Feb 07, 2024 at 08:05:09PM +0530, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1b844cac4c58..c1ec78b5b6c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2618,8 +2618,16 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 13) {
> -		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
> -			       crtc_vblank_start - crtc_vdisplay);
> +		/*
> +		 * WA: Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +		 * to at least a value of 1 when Panel Replay is enabled with VRR.
> +		 */
> +		if (crtc_state->vrr.enable &&  crtc_state->has_panel_replay &&
> +		    (crtc_vblank_start == crtc_vdisplay))
> +			intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder), 1);

Nak. This needs to match the actual timings we have stored in the mode.

> +		else
> +			intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
> +				       crtc_vblank_start - crtc_vdisplay);
>  
>  		/*
>  		 * VBLANK_START not used by hw, just clear it
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
