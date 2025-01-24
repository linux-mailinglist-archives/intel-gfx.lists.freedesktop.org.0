Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E27BA1B4EE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B621E10E921;
	Fri, 24 Jan 2025 11:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nlNi0f06";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B0910E91C;
 Fri, 24 Jan 2025 11:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719009; x=1769255009;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VEKsLt12dnqg4HgPQuqFysSwgwC7V2bKAtkyJQeD2hE=;
 b=nlNi0f066koMox2DsRhvdWDgc1PxhVuVr9chDi1RaLEi3vcjdFCICf2m
 XHQDp7JSWJvJmXD7paP2tUtDiFcaTeJ9H2k3Za7A7bbMvPmNTh5LEZKDL
 3MnbgBQbTjR88AOV8qG9OjFQa11mms+Qs8UKIlu60/A+/bR3NESZqbfK3
 o+gAlpSYcFXlpCSd4LnKUPKeHY5uRe9h0qoWfvGpqn6I41C6EobiRiHAW
 2hAOtdo7Z/JY8tRyZqrFZIpJ/iLSwLqhtGeuVSgivv/Uajd5ohD+Pf2k+
 Fpkzd/93I8USAFklOv0m0fy+nYSLFCQbf1rdI1VWlCHPgH9Go9xO17bJp w==;
X-CSE-ConnectionGUID: 7Pt01LXbRziddrFIDjuutA==
X-CSE-MsgGUID: GreUSrAKQD2laLz917bteQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55795874"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55795874"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:43:29 -0800
X-CSE-ConnectionGUID: Q2U0P5t6TFK2iUuw6uI0GQ==
X-CSE-MsgGUID: qztmHK4RQ6m7aiDPuVgyTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107873981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 03:43:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 13:43:25 +0200
Date: Fri, 24 Jan 2025 13:43:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v4 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Message-ID: <Z5N83bbvxBKm4yEQ@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-13-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124105625.822459-13-jouni.hogander@intel.com>
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

On Fri, Jan 24, 2025 at 12:56:23PM +0200, Jouni Högander wrote:
> We may have commit which doesn't have any non-arming plane register
> writes. In that case there aren't "Frame Change" event before DSB vblank
> evasion which hangs as PIPEDSL register is reading as 0 when PSR state is
> SRDENT(PSR1) or DEEP_SLEEP(PSR2). Handle this by adding dummy write
> triggering the "Frame Change" event.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a189aa437d972..cd7e960bd29f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7666,6 +7666,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  
>  	if (!new_crtc_state->hw.active)
>  		return;
> @@ -7708,6 +7709,15 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
>  					       state, crtc);
>  
> +		/*
> +		 * Ensure we have "Frame Change" event when PSR state is
> +		 * SRDENT(PSR1) or DEEP_SLEEP(PSR2). Otherwise DSB vblank
> +		 * evasion hangs as PIPEDSL is reading as 0.
> +		 */
> +		if (new_crtc_state->has_psr && !new_crtc_state->has_panel_replay)
> +			intel_de_write_dsb(display, new_crtc_state->dsb_commit,
> +					   CURSURFLIVE(display, crtc->pipe), 0);

I don't really want to see the low level detais right here.
So we should probably should stuff this into some kind of 
intel_dsb_ensure_psr_frame_change() function or something
along those lines.

> +
>  		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
>  
>  		if (intel_crtc_needs_color_update(new_crtc_state))
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
