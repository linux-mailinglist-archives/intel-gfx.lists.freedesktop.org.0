Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A2BDF39E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A8F10E820;
	Wed, 15 Oct 2025 15:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZIHvw36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF00610E81E;
 Wed, 15 Oct 2025 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760540434; x=1792076434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uUWhwj+qNtPLTzfQ6WgwlI0YPQRlImlC8f+kD0z9Y2c=;
 b=HZIHvw36N7EYfNhb6Zm2S6CdIrVKtoB+VU3GxxonNdsVEvwjqcwrCKNx
 yEbj7dFWzJsGKbrq+9k904S3g8UiTTJ3QlWCgsx+Ctvlb+4lS7TfDJ/8h
 rYaLzn0QcJzhc2Xyeo3W6W57EUJfTxLBCoC/kGGs/21bmyo6YT8T7kX0v
 PTL5vcobnXuPS3VT2kS6bscXWbqdIxWoFBBACzq1QYr/b5zD6Ysd3bFHj
 U6aOXvfh3bLDDXanC2J228aSc/bGcBgnByHPOJyMf+UVvRXVHrGgyH0J1
 xC58VMwJAJh0B4jx+1pBobkWtFgBWnZqOXJU4CbR6eUvoG97rQ/uhczso w==;
X-CSE-ConnectionGUID: WdzgE9xTQCuTE07/uDVFKg==
X-CSE-MsgGUID: TaGMjxgvREKGV+IDE5TLmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="50285426"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50285426"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:00:33 -0700
X-CSE-ConnectionGUID: knU57drSQCuvQf3G3QvRQQ==
X-CSE-MsgGUID: srwFpEBJSSCba/bzSwMmhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181992589"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.116])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:00:32 -0700
Date: Wed, 15 Oct 2025 18:00:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 10/10] drm/i915/display: Prepare for vblank_delay for LRR
Message-ID: <aO-3DSHSHX4lD1cV@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015072217.1710717-11-ankit.k.nautiyal@intel.com>
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

On Wed, Oct 15, 2025 at 12:52:17PM +0530, Ankit Nautiyal wrote:
> Update allow_vblank_delay_fastset() to permit vblank delay adjustments
> during with LRR when VRR TG is always active.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ceee5ae99c2c..65a7da694ef6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4958,9 +4958,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
>  	 * Allow fastboot to fix up vblank delay (handled via LRR
>  	 * codepaths), a bit dodgy as the registers aren't
>  	 * double buffered but seems to be working more or less...
> +	 *
> +	 * Also allow this when the VRR timing generator is always on,
> +	 * and optimized guardband is used. In such cases,
> +	 * vblank delay may vary even without inherited state, but it's
> +	 * still safe as VRR guardband is still same.
>  	 */
> -	return HAS_LRR(display) && old_crtc_state->inherited &&
> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> +	return HAS_LRR(display) &&
> +	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
> +	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);

I suppose this won't actually do anything until we get the fixed
guardband size in place. But with that I suppose it is the right
thing to do.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

However I was pondering about the place where do timing generator
reprogramming. Currently that is done from within the vblank evasion
critical section. But that is actually wrong because the VRR registers
aren't double buffered. So in the worst case we'll evade the previous
vblank start, and then reprogram the timing generator which could
move the vblank start to be just ahead of the current scanline and
then the commit will end up straddling the start of vblank (which is
exactly what the vblank evasion tried to prevent).

So I think we'll have to move the timing generator update to happen
after we've done all the double buffered register programming. I suppose
that might still be technically wrong as then the position of the
delayed vblank might still move before the double buffered registers
have been latched. I don't think that shouldn't cause any underruns/etc.
but in the worst case the start of vblank moves backwards past the
current scanline, and then the registers don't actually latch until the
next frame.

I wonder if we should use the vblank worker here to do the timing
generator update right after the delayed vblank? That would guarantee
that the current delayed vblank stays in place until the register have
been latched.

Though we may still end up in at least two weird scenarios:
- delayed vblank moves forward, and we might get two delayed vblank
  events for the same frame
- vtotal gets reduced below the current delayed vblank start. Which
  I suppose means the vtotal for the frame will not necessarily be
  the old or new vtotal value, but something in between.

That's all assuming certain behaviours of the VRR timing generator
of course. I haven't actuall confirmed how the hardware behaves
in either case. We should probably do some more hw poking at some
point to really figure this stuff out...

-- 
Ville Syrjälä
Intel
