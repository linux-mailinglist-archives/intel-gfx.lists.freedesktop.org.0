Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA121BD3548
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 16:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4649610E450;
	Mon, 13 Oct 2025 14:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OlY7e4zg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC22A10E399;
 Mon, 13 Oct 2025 14:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760364239; x=1791900239;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zklydpxn1ofFHmlaSJ7dzlHumjZSLZanGfj83OTZq6A=;
 b=OlY7e4zg2nM88nTW9maz0Xr7o2qi5yGcgOBogjWuTBINrNtiWDkCD8Bc
 jm+yY+bLzTMATT/Atriq49fDFDcCe/IBlovm6vbFGK3inpLNPGlADf2uQ
 GZTpZ7jpDTr3E26IMEiwoZl4NlyobitDDcpL+uJaUiZCS93cXiZCSyA4p
 UQN1qwnijhhaKSJ4IeoudIEMEXklfq7AAAz1/LZ9v/u2uOwCERF1AvuT1
 J0TcI1qHG74UvKT2/756/AQ5tQ3z/1XArq6VbLKN5qoRE3RGU5fedT2Zm
 HQatrFAI1b+W7sP33bN992y20NbWX6GJhhodqfi4i8V/bC50JLu10YOOr g==;
X-CSE-ConnectionGUID: jfmx8tXkQl2gwd8nzh+ECg==
X-CSE-MsgGUID: +GWURO/jR86/XKdDej1+GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="66355863"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="66355863"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:03:59 -0700
X-CSE-ConnectionGUID: QDHKCdilSUOXaH/TLJXiKA==
X-CSE-MsgGUID: aLGMu9WRQmitqKIPshfusQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="218723243"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 07:03:56 -0700
Date: Mon, 13 Oct 2025 17:03:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 2/8] drm/i915/display: Move intel_dpll_crtc_compute_clock
 early
Message-ID: <aO0GyX7Y-VH2RZMR@intel.com>
References: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
 <20251013123559.1055429-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251013123559.1055429-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Oct 13, 2025 at 06:05:53PM +0530, Ankit Nautiyal wrote:
> Move intel_dpll_crtc_compute_clock in the beginning of the function so that
> clocks are set before other things.
> 
> This will help in subsequent changes when the vrr guardband computation
> is moved to intel_crtc_compute_config().
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d5b2612d4ec2..3f725553599e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2410,11 +2410,11 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>  
> -	ret = intel_crtc_compute_set_context_latency(state, crtc);
> +	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_dpll_crtc_compute_clock(state, crtc);
> +	ret = intel_crtc_compute_set_context_latency(state, crtc);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
