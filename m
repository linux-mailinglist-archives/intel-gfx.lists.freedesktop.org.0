Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ5KO3RCcmnpfAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 16:29:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD5968D89
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 16:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EAA610E9DA;
	Thu, 22 Jan 2026 15:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WC8fUOZA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A340B10E9DA;
 Thu, 22 Jan 2026 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769095794; x=1800631794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JkblPzBgZ0t6rExOlSwgXZ2AdokanDylxTcU33/BQlc=;
 b=WC8fUOZABw7XFMHIDk8Qi5ro0mN7OPw9sVeEgtuKpzWI5i8fn3JaD9+i
 JF+9NTytkclUtt2R+ZCFD5M7CjYQVdKtoo6iWTbm6Rpy8OYvhtyF5AJjP
 hCov0kPj67cQ2u63f+7Y6y3q1e/NXB1mCL0HMhYd7li/oi3Z+7imEglbd
 RT14OceeM9dwhicWnq8iJll/wkSumBFNyUl3Q8CMidi8PaucHMySEmSPc
 btw5kXAoZ4I4t1DGbbNOPmd0pYWUQtSevlApMKhOGLDM5JjLNDBwOAs1T
 zsL72AEd8NkoD48eMo1twjhzkP0D7LLHfR7hvpS0aV4rjtaH10Cea1Zu3 w==;
X-CSE-ConnectionGUID: j5aU7XmKRCSGCS3zLGfpKQ==
X-CSE-MsgGUID: wVLbzpteSeqykL9P3Bu+KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74193447"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="74193447"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 07:29:53 -0800
X-CSE-ConnectionGUID: Y6kmbdWpSeqgqrnw9MZOQg==
X-CSE-MsgGUID: inNCecYBSdSnQgWeBBRDgQ==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 07:29:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juasheem Sultan <jdsultan@google.com>, intel-gfx@lists.freedesktop.org,
 intel_xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Manasi Navare
 <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>, Sean
 Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, Rajat Jain
 <rajatja@google.com>, Juasheem Sultan <jdsultan@google.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
In-Reply-To: <20260121204705.432290-3-jdsultan@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
Date: Thu, 22 Jan 2026 17:29:46 +0200
Message-ID: <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 4DD5968D89
X-Rspamd-Action: no action

On Wed, 21 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
> When attempting the initial commit, there is a mismatch between
> the new crtc_state and the old crtc_state. This causes us to fail the
> pipe_config comparison and force a modeset. In the case where we are
> inheriting an initialized state, we can sync the new and the old state
> to pass the comparison and allow us to do a fastset and achieve an
> uninterrupted handoff to userspace.
>
> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0d527cf22866..6eef4bd2e251 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>  	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
>  		new_crtc_state->update_lrr = false;
>  
> +	/* Copying crtc state if inheriting an old state for commit */
> +	if (old_crtc_state->inherited) {
> +		new_crtc_state->hw = old_crtc_state->hw;
> +
> +		new_crtc_state->port_clock = old_crtc_state->port_clock;
> +		new_crtc_state->pipe_bpp = old_crtc_state->pipe_bpp;
> +		new_crtc_state->cpu_transcoder = old_crtc_state->cpu_transcoder;
> +		new_crtc_state->lane_count = old_crtc_state->lane_count;
> +		new_crtc_state->output_types = old_crtc_state->output_types;
> +		new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
> +		new_crtc_state->framestart_delay = old_crtc_state->framestart_delay;
> +		new_crtc_state->pixel_multiplier = old_crtc_state->pixel_multiplier;
> +		new_crtc_state->pixel_rate = old_crtc_state->pixel_rate;
> +		new_crtc_state->enhanced_framing = old_crtc_state->enhanced_framing;
> +		new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
> +		new_crtc_state->intel_dpll = old_crtc_state->intel_dpll;
> +		new_crtc_state->vrr.guardband = old_crtc_state->vrr.guardband;

I'd like to see logs of what the differences are.

BR,
Jani.

> +	}
> +
>  	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
>  		drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
>  			    crtc->base.base.id, crtc->base.name);

-- 
Jani Nikula, Intel
