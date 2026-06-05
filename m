Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wO36I2/gImrUegEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 16:42:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FA2648F0E
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 16:42:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MGuw4WO6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1006E11A917;
	Fri,  5 Jun 2026 14:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E3311A917
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2026 14:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780670572; x=1812206572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fTO0miR9g1A4AO1BUR5fEPaKCCla/aUKWW03uDznr3E=;
 b=MGuw4WO6EeOiQdLaTdl4oPnAXAwbBSm9a9zCFZwcXHwiJcq0WwPDtRoQ
 lYcDwTGYBWRLa3pXYqkzr018k36nivPAHtGJ6AqvWK+sdzo8ujLsdPuWb
 YDrVezTFHg9V195Ks1SEXQCap8j6YbsuJ0JEuW2g9CPKf0BpdYMBiooHT
 PdwJceCWM1OBYB+UDq1MAcblGRQTLht7vWFySAwQnuZ3luqHMaV7OM3Me
 nr9NbWua8snq0bbvPurn/meYKIUFp1RmRu0JwFbn556RDfFoHb6esXkM7
 uT4mbDGvPtsPmBMXY+CAjI32HXyV/UoLAWp6Z4a08ePdTPyVsa9JY31qt g==;
X-CSE-ConnectionGUID: hbcRhdqSSZ2kNBOtz2I6dQ==
X-CSE-MsgGUID: /5s0aFHDS6OhfkTE4jnbVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92073242"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="92073242"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 07:42:52 -0700
X-CSE-ConnectionGUID: DfS96s8oRpaHdN9o4hxZZQ==
X-CSE-MsgGUID: rsvjCVJkSd25n6ZVCoVXag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="240671571"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 07:42:51 -0700
Date: Fri, 5 Jun 2026 17:42:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop
Subject: Re: [PATCH 1/2] drm/i915/dsb: wait one scanline before
 delayed-vblank DSL wait
Message-ID: <aiLgZx0B9yhCfEko@intel.com>
References: <20260525091159.564066-1-ankit.k.nautiyal@intel.com>
 <20260525091159.564066-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260525091159.564066-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:intel-xe@lists.freedesktop,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81FA2648F0E

On Mon, May 25, 2026 at 02:41:58PM +0530, Ankit Nautiyal wrote:
> In intel_dsb_wait_for_delayed_vblank() the VRR path issues a
> WAIT_DSL_OUT(safe_window_start, vmin_safe_window_end) followed by a
> WAIT_USEC for SCL+1 scanlines to land on the delayed vblank.
> 
> Experimentally, when PIPEDSL is exactly at safe_window_start as the
> WAIT_DSL_OUT is reached, the wait is skipped and the DSB falls
> through immediately. The following WAIT_USEC then runs from too
> early a reference and the DSB interrupt (flip-done event) fires
> roughly one frame ahead of the delayed vblank.
> 
> Wait one scanline first so PIPEDSL has moved into the window before
> WAIT_DSL_OUT runs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index fec8a56e21ea..dae8ea33d069 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -902,7 +902,15 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  		 * the hardware itself guarantees that we're SCL lines
>  		 * away from the delayed vblank, and we won't be inside
>  		 * the vmin safe window so this extra wait does nothing.
> +		 *
> +		 * Experimentally, when PIPEDSL is exactly at
> +		 * safe_window_start as the next WAIT_DSL_OUT is reached,
> +		 * the wait is skipped immediately.

That's an interesting find. I was a bit sceptical at first, but after
poking at this locally it does appear to true.

It looks like the DSBs view of the scanline counter is somehow delayed
a bit, rather than the vblank/safe window wait terminating early.
If I configure the undelayed and delayed vblanks to coincide then
I can't sneak a PLANE_SURF write to latch on that frame anymore
after the "wait vblank" instruction. So the delayed vblank
apparently happened at the same time the vblank/safe window wait
terminated.

Not sure what's causing the delay, or how long it exactly is. I was
able to get past it with ~5 NOOPs in some cases, but then reducing
the dotclock made it so that 5 NOOPs were no longer enough. And speeding
up the DSB by pushing CDCLK higher also required more NOOPs. So the
delay does seem to be related to the dotclock/timings in some way.

The "wait scanline" instruction is also affected.

And for good measure I also tried a poll instruction on the
PIPEDSL register, and that also sees the stale value. I was kinda
hoping the read from that register would somehow force things
into sync, but doesn't look like that is the case. Depending on
the dotclock and CDCLK I may need to poll multiple times to
get the up to date value.

So far I've not been able to observe this delay on the CPU side
using intel_display_poller.

> +		 *
> +		 * Wait one scanline first so PIPEDSL has moved into the
> +		 * window before WAIT_DSL_OUT runs.
>  		 */
> +		intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, 1));

Hmm. Instead of that I think we could just use safe_window_start-1 as
the start scanline for the wait.

Since we know there a preceding wait for vblank/safe window I don't
think we should ever get here on that specific scanline for real.
So if that scanline is observed then it'll always be the post-wait
stale value.

I also had a quick ponder about all the other scanline OUT waits
we do elsewhere, and I think those are probably fine because
they're rather concerned with the end of the scanline window,
not the start. Seeing a slightly stale value at the end of the
window just means we wait a little bit longer than strictly
necessary.

I suppose for a scanline IN wait the problem would be reversed,
ie. the end of the scanline window would be where the stale value
could bite us. Currently we don't do any of those so not a problem.

>  		intel_dsb_wait_scanline_out(state, dsb,
>  					    intel_vrr_safe_window_start(crtc_state),
>  					    intel_vrr_vmin_safe_window_end(crtc_state));
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
