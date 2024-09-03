Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D4969E95
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:02:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48D710E593;
	Tue,  3 Sep 2024 13:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VHe3VOFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E36A10E5B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 13:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725368544; x=1756904544;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gPU8CmtQFcEUUSu4csHyQo85nlGwKr3uqIZhn+gimVg=;
 b=VHe3VOFNM0IjGh/KoqpKaFJCAbginpPjpxYg34a8fayuIcebdWgWv1tZ
 +yrnlIQK5k4BHgFi/BUV3oNiVsXRs6RVZJ35gVYNjb287nwsG+R88x+aP
 eAy8TpBMvLGQD71i3p/ymt2RXgJ4Ev4BeL5qMFbHfcABy0f/uaX47EnXG
 CmAbnmgxIxD0LOpplvjy2Rr5yPNoepTV46JegmO+XAoNN5rVLBCMqF4PB
 D0DihjBklFTbdwiYgt4RXNuytOslDZFyDk+BCnJFjGZuZ72i9auK9guH4
 jclqyL2mMABUVD2p/VhLpvvBPBbvYgU3LjMmeUzU2TArrWT8gPrkFLPuW A==;
X-CSE-ConnectionGUID: jo8aM1iTSX2pQKPLIl8Qqg==
X-CSE-MsgGUID: JJR7hOPaRYian3i5Sw259g==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24082304"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24082304"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 06:02:24 -0700
X-CSE-ConnectionGUID: gNtis+JTS+iXThEeakpXPw==
X-CSE-MsgGUID: rb2rp4rOQque+VGL4uuFpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64922419"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 06:02:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 16:02:19 +0300
Date: Tue, 3 Sep 2024 16:02:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 10/13] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
Message-ID: <ZtcI2_aTCVI9kAvy@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240902080635.2946858-11-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 02, 2024 at 01:36:31PM +0530, Ankit Nautiyal wrote:
> As per Bspec:68925: Push enable must be set if not configuring for a
> fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 03af50b9f9eb..5e947465c6e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -313,7 +313,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)

Hmm. I wonder if we should keep vrr.enable meaning VRR actually
enabled... Maybe not as that would complicate the readout/check
a bit too much perhaps.

But we could have some kind of helper for these "do we need to use
push?" checks (eg. intel_vrr_use_push()).

>  		return;
>  
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> @@ -325,7 +325,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!crtc_state->vrr.enable)
> +	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
>  		return false;
>  
>  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
> @@ -339,8 +339,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	if (!crtc_state->vrr.fixed_rr)
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +			       TRANS_PUSH_EN);
>  
>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
