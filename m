Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED0CA15879
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 21:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3211B10E7BB;
	Fri, 17 Jan 2025 20:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8K9ts8G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADA510E7BB;
 Fri, 17 Jan 2025 20:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737145221; x=1768681221;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OC/z+mJHaYTcrdT4wiHQ85r67ldv6AIRi74G+lw24Rs=;
 b=n8K9ts8GAa3Y8u00F/GjvYQeISPo2R/HFruHBCmla9JaAN61VpAOIIA9
 Qsy17FKGrNI7mb+IJrlANlR2U84NLOW+zmahUIERuCHUFPe5NaTReouUC
 rs2CbEoxhTPKWGLqJyqHDK4dFOE2JJ/6Rx6QEy/XhzTuozspm+QSwCf6r
 eRcEPVG8r3xkELfKphTKld0xxVQv1jgC5SsIsKTZz9WJPHtNw8ylLJoDz
 Vnnk6KEtpbgYdi696atk1CRsUW8TjONXXlWMj5NGxmWDL8mCqTnONVZru
 C4Dy6GMzY9a8LZkOTXX40FmLnqiQeiMOxPrfEISlPYpon+PeXV6JuRjdL A==;
X-CSE-ConnectionGUID: 13OpFWa9TtiixvMt1gucrw==
X-CSE-MsgGUID: 6eYVHYB+QPOzFxIMW03Gdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="40399605"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="40399605"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 12:20:20 -0800
X-CSE-ConnectionGUID: 81qZsUBiSXm2SiPmohU6+Q==
X-CSE-MsgGUID: phrO+coNRwauaoHu6x7RHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="106077591"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Jan 2025 12:20:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2025 22:20:17 +0200
Date: Fri, 17 Jan 2025 22:20:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z4q7ge2MMHAmDvNJ@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250109073137.1977494-11-jouni.hogander@intel.com>
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

On Thu, Jan 09, 2025 at 09:31:37AM +0200, Jouni Högander wrote:
> Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
> usage also when PSR is enabled for LunarLake onwards.

We seem to still lack an answer as to when the PSR wakes, when it
latches the update, and how does all that guarantee that the DSB
interrupt fires after the update has been latched?

Some thoughts as to how to figure this out:
1. make sure we're in PSR
2. sample TIMESTAMP_CTR
3. start DSB in which
   write PLANE_SURF with a new value
   send push
   wait for vblank
   poll PLANE_SURFLIVE == new value
   fire interrupt

in the interrupt handler:
 sample TIMESTAMP_CTR again

And then compare flip timestmap vs. frame timestamp vs. the
manually sampled timestamps. And then repeat without the SURFLIVE
poll to make sure nothing has changed. You'll need to be careful
to make sure it will actually poll for long enough to make a real
difference (if the poll actuall is needed), but tweaking the poll
interval+count suitably. I don't remeber what the max poll
count was, but IIRC it wasn't too high so the duration will have
to get bumped for long polls.

I guess one could also try to poll for the actual PSR status,
but dunno how well that'll work.

And we could also try to come up with different ideas on where
to sample timestamps. Unfortunately we only have the single
pipe flip timestamp register so we can only sample one timestamp
from the DSB itself per frame. If we had more we could much more
easily figure things out :/

I pushed my latest DSB selftest stuff to
https://github.com/vsyrjala/linux.git dsb_selftests_7
which has a bunch of stuff for this kind of experimentation.
It's in a somewhat sorry state at the moment since I last used
to hunt for various DSB bugs, but at least it still builds :)

The way I use that is that I run igt 'testdisplay -o ...' 
to make sure nothing else is actively poking the hardware
and then I trigger the DSB tests via debugfs.

> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e448ff64660a..58575800fad2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7631,6 +7631,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(crtc);
>  
>  	if (!new_crtc_state->hw.active)
>  		return;
> @@ -7643,7 +7644,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		new_crtc_state->update_planes &&
>  		!new_crtc_state->vrr.enable &&
>  		!new_crtc_state->do_async_flip &&
> -		!new_crtc_state->has_psr &&
> +		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
>  		!new_crtc_state->scaler_state.scaler_users &&
>  		!old_crtc_state->scaler_state.scaler_users &&
>  		!intel_crtc_needs_modeset(new_crtc_state) &&
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
