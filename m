Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9B5A2F382
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825A810E5B7;
	Mon, 10 Feb 2025 16:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h1aV7878";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB94310E5B7;
 Mon, 10 Feb 2025 16:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739204988; x=1770740988;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pQsZSjynhmfKjNm8TXHJci5qEdGwpanxbPE5enF/X8k=;
 b=h1aV78787KPvOZY3+EspJgbf+HBGhg6E6deIi0LsdIw/0qCP3V+3hejg
 dZpd4KBQY25WTzFWc9FZ1LgJvg7Csp6NGV3TgLPGN8JXtG++OKYYyJ2P2
 IVHLaW7ol5ZNi06ngrOML3NEsb2Zx+G7O0C6JlkRXuFwJYqntLRXZuMgT
 ldCSyzPyMMaNoiOnwPnK0+nu13oBxzk7iQeHy8rX7top4dUTUToH9NOv9
 5la+SDFZIeT5ejWRnmkNm4rtw9U574PepD6NM/v0OXb0TUHrx+vRCAPvu
 ysMqHwPdefHmF+/v6eSu4T6rSnC+PROLOD8Ut65GNX0mtWRS+nazKtely Q==;
X-CSE-ConnectionGUID: OFYQyRMyQVK9RWtJlu840Q==
X-CSE-MsgGUID: t2Yv/t3rQaGczyU8iHvZ/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50429996"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50429996"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:29:47 -0800
X-CSE-ConnectionGUID: MTbXG3d/Sj2baoIKTyT6Rg==
X-CSE-MsgGUID: caUcyJaNTZOxFvMdGpdfkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112455206"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:29:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:29:44 +0200
Date: Mon, 10 Feb 2025 18:29:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v6 09/12] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Message-ID: <Z6opd8zwCSCOwjf7@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-10-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127102846.1237560-10-jouni.hogander@intel.com>
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

On Mon, Jan 27, 2025 at 12:28:43PM +0200, Jouni Högander wrote:
> PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
> wake-up scanline counting starts from vblank_start - 1. We don't know if
> wake-up is already ongoing when evasion starts. In worst case PIPEDSL could
> start reading valid value right after checking the scanline. In this
> scenario we wouldn't have enough time to write all registers. To tackle
> this evade scanline 0 as well. As a drawback we have 1 frame delay in flip
> when waking up.
> 
> v2:
>   - use intel_dsb_emit_wait_dsl
>   - add evasion of scanline 0 also for Panel Replay
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 30782ab0b9082..f15e6c2a195c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -538,6 +538,18 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
>  	int start, end;
>  
> +	/*
> +	 * PIPEDSL is reading as 0 when in SRDENT(PSR1) or DEEP_SLEEP(PSR2). On
> +	 * wake-up scanline counting starts from vblank_start - 1. We don't know
> +	 * if wake-up is already ongoing when evasion starts. In worst case
> +	 * PIPEDSL could start reading valid value right after checking the
> +	 * scanline. In this scenario we wouldn't have enough time to write all
> +	 * registers. To tackle this evade scanline 0 as well. As a drawback we
> +	 * have 1 frame delay in flip when waking up.
> +	 */
> +	if (crtc_state->has_psr)
> +		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
> +
>  	if (pre_commit_is_vrr_active(state, crtc)) {
>  		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
