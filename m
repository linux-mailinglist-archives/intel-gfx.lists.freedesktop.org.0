Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHfXIcQnC2pAEAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:52:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA6756F465
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 16:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD7510E331;
	Mon, 18 May 2026 14:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bEHIIJkt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E766C10E323;
 Mon, 18 May 2026 14:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779115968; x=1810651968;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7mvHWZQ+X6bZ0fX2ptU0F4YAnGGr6MBGOVgr2nlrlWw=;
 b=bEHIIJktZDAjVVPraac8e+iZc3FIACp26M2baJzP+F8bCDEsrcyc4EvD
 mXq8PSGxsqVxAQzqmnzZ5NAROIpQ1JZ/YwHmyf1DHNffdLafr4JooQOr6
 gJrqTrT+SdVKeypLmnsT+mr8M+svb1ikyuHMXP6ix2Uj0RABXBCtLcsyr
 IWs0EsUaCdEPxjiYW4Cdejpi6mXdEDCv5SCPZrN5xSG+EINhX8s+lKEdC
 d+zdNv9sY90HPMEmKw0EPARD6y8TyievQjqiEHms0jh2ZAjHHq+rh8H9I
 u1/Uu51VQI8FlAN9oz6dlCvmcmjUoyFs8CjzMytsnCN1nwlY7kbTjy3GF Q==;
X-CSE-ConnectionGUID: 0ST5vd99TbGgTDI9BjpiwQ==
X-CSE-MsgGUID: mggF6XSDSH2kGtBUWva6Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97400241"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="97400241"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:52:48 -0700
X-CSE-ConnectionGUID: yRYFsSGUTzS7kD1ZdWy1dw==
X-CSE-MsgGUID: jbt4vA45RoO5glrt7xzvbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="243747401"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 07:52:45 -0700
Date: Mon, 18 May 2026 17:52:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: use set_context_latency for DSB
 W2-line waits
Message-ID: <agsnuYVMWNSJwf4F@intel.com>
References: <20260518060522.2945720-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260518060522.2945720-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 6DA6756F465
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 11:35:22AM +0530, Ankit Nautiyal wrote:
> set_context_latency represents W2 window/latency lines.
> Earlier, delayed and undelayed vblank coincided, so this matched the
> distance from vactive end to undelayed vblank start.
> 
> After guardband optimization changes, delayed vblank start can move
> away from undelayed vblank. In DSB non-VRR paths, the older
> intel_mode_vblank_delay() is still used in some code paths.
> 
> Fix this by using set_context_latency directly for W2-line waits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index fec8a56e21ea..8521f5969aca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -745,6 +745,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		intel_pre_commit_crtc_state(state, crtc);
>  	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
>  					       intel_dsb_arm_exec_time_us());
> +	int vblank_delay = crtc_state->set_context_latency;
>  	int start, end;
>  
>  	/*
> @@ -760,7 +761,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>  
>  	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
> -		int vblank_delay = crtc_state->set_context_latency;
>  		int vmin_vblank_start, vmax_vblank_start;
>  
>  		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> @@ -789,8 +789,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		start = end - vblank_delay - latency;
>  		intel_dsb_wait_scanline_out(state, dsb, start, end);
>  	} else if (pre_commit_is_vrr_active(state, crtc)) {
> -		int vblank_delay = crtc_state->set_context_latency;
> -
>  		end = intel_vrr_vmin_vblank_start(crtc_state);
>  		start = end - vblank_delay - latency;
>  		intel_dsb_wait_scanline_out(state, dsb, start, end);
> @@ -799,8 +797,6 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		start = end - vblank_delay - latency;
>  		intel_dsb_wait_scanline_out(state, dsb, start, end);
>  	} else {
> -		int vblank_delay = intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
> -
>  		end = intel_mode_vblank_start(&crtc_state->hw.adjusted_mode);
>  		start = end - vblank_delay - latency;
>  		intel_dsb_wait_scanline_out(state, dsb, start, end);
> @@ -889,7 +885,7 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  		intel_pre_commit_crtc_state(state, crtc);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> -	int wait_scanlines;
> +	int wait_scanlines = crtc_state->set_context_latency + 1;
>  
>  	if (pre_commit_is_vrr_active(state, crtc)) {
>  		/*
> @@ -912,9 +908,6 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  		 * scanline until the delayed vblank occurs after
>  		 * TRANS_PUSH has been written.
>  		 */
> -		wait_scanlines = crtc_state->set_context_latency + 1;
> -	} else {
> -		wait_scanlines = intel_mode_vblank_delay(adjusted_mode);

After further consideration I think the current code is in fact correct.
intel_dsb_wait_vblanks()/DSB_WAIT_FOR_VBLANK will wait for the undelayed
vblank when VRR is disabled, so this does need the full wait.

So I think the actual issue is more of a userspace bug in that they
assume the event fires at vblank_start and guesstimate the deadline
based on the time when the event was received. What they need to do
is calculate the deadline based on the event timestamp.

Another option might be to switch to using the safe window even for
the '!vrr && always_use_vrr_tg()' case. But that probably needs some
actual thought...

>  	}
>  
>  	intel_dsb_wait_usec(dsb, intel_scanlines_to_usecs(adjusted_mode, wait_scanlines));
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
