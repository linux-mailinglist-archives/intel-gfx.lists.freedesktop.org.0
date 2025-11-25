Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8028AC87353
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 22:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDED10E06D;
	Tue, 25 Nov 2025 21:19:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rboqtdm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB7210E06D;
 Tue, 25 Nov 2025 21:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764105573; x=1795641573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g5pRQNhMWRixXv8WkJ1H8OQKa/VbOnTAUtUr0YrPf18=;
 b=Rboqtdm1gUwPz5+fuDLBrMDupznKhcg60BOAFzAEiqAgHKxqtDD/mIWh
 0eZ1zNdhmhjixRw8TuGgjZNObcPlldIOXqJBxflh3SRJ9GCNDuZcW5yRX
 bf4wKAbCI2Km8cQO4D3lALeVvHNN+WDshmd2hEHDnALZpsl4QQItuJhsk
 IaMdPWrzBwk5y98zIULKFGNzoAlERpBEpBUvxnVs28aaqW5nQAV9kscoT
 yxl2e88Judq2HE01mBlYYCDfPhZd5xj6TJhZ+3oYC+LQzAtEgZNTou/N4
 MYvri1JQVswZWGBT41w3W5xitI8gqN6D3FfnJaqWqaaUznw4FiJBBR3sl Q==;
X-CSE-ConnectionGUID: lkQSPJXBQQCzajwAnJoHaA==
X-CSE-MsgGUID: bbl+mNHxQK2chuYa8weMFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76757831"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="76757831"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 13:19:32 -0800
X-CSE-ConnectionGUID: MxqFJBufSkWgARvRtWyyGg==
X-CSE-MsgGUID: r9WP4rb8RpKnNyLeO4n6EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="197875134"
Received: from bkammerd-mobl.amr.corp.intel.com (HELO localhost)
 ([10.124.222.230])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 13:19:30 -0800
Date: Tue, 25 Nov 2025 23:19:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Message-ID: <aSYdX7eGVOMapiJ7@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251125063253.328023-3-jouni.hogander@intel.com>
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

On Tue, Nov 25, 2025 at 08:32:51AM +0200, Jouni Högander wrote:
> PSR2_MAN_TRK_CTL[SF Continuous full frame] is sampled on the rising edge of
> delayed vblank. SW must ensure this bit is not changing around that. Due to
> this PSR2 Selective Fetch needs vblank evasion.
> 
> Currently vblank evasion is not done on async flip. Perform it in case
> required by PSR.
> 
> Bspec: 50424
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 153ff4b4b52c..42c4ce07f8c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -433,7 +433,8 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
>  		(intel_crtc_needs_color_update(crtc_state) &&
>  		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
>  		!intel_color_uses_dsb(crtc_state) &&
> -		!crtc_state->use_dsb;
> +		!crtc_state->use_dsb &&
> +		!crtc_state->do_async_flip;
>  }
>  
>  static void intel_crtc_vblank_work(struct kthread_work *base)
> @@ -539,7 +540,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
>  	if (new_crtc_state->do_async_flip) {
>  		intel_crtc_prepare_vblank_event(new_crtc_state,
>  						&crtc->flip_done_event);
> -		return;
> +		if (!intel_psr_needs_evasion(new_crtc_state))
> +			return;

I don't think we want hack this into such low level code. We
anyway convert the first async flip to a sync flip (see
intel_plane_do_async_flip()), so that's when you should disable
selective fetch, and keep it disabled afterwards as long as
async flips are being requested for the plane by userspace.

The problem is that uapi.async_flip is ephemeral, so you can't
just check for that. I think what we need is a way to track
which planes have been requested to do async flips. We almost 
have that with the async_flip_planes bitmask, and I think we
can make it do exactly what we want by just dropping the
need_async_flip_toggle_wa check from 
intel_plane_atomic_calc_changes(). That should be safe since
all places that currently use the bitmask also check for
need_async_flip_toggle_wa.

The alternative would be to track the uapi async flip requests
in a separate bitmask. That might be a bit more optimal in that
we wouldn't clear the bit from there when some other plane
or the pipe itself needs a sync update while the plane is already
performing async flips. But not having that just means you'll
end up toggling selective fetch back on and the off again when
a sync update intervenes a stream of async flips.

Oh, and needs_async_flip_vtd_wa() should probably also use
the bitmask rather than looking at uapi.async_flip.

>  	}
>  
>  	if (intel_crtc_needs_vblank_work(new_crtc_state))
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
