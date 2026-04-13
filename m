Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPmrLOWp3GkEUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:31:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 122B13E9250
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 10:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4987A10E378;
	Mon, 13 Apr 2026 08:31:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jdrh+wnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03EB710E376;
 Mon, 13 Apr 2026 08:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776069089; x=1807605089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qtVTG4IbqbqViXITZFdWk88uSCE3RHGetwLHytXQ0pA=;
 b=Jdrh+wnLB++ApwNwyIZZzi+F28RgmNMQhEBILz5N0ZyECRy7lWB53j1R
 LNht/YGI3884XRssKY1EGxL197iSkW5OKoutSbdl4zUbzoQ0l9ISBtsvJ
 1Imh9OEDG23CozS3gkxbyKVTVNa0L7Ws3W9lH+iqArJ7icAzwkQXVwnI/
 V515PBFEmFXJSqBNjc3ByHJnuOsqMhc2YC88ZJd7AE18SJdSS6/UWfU0s
 fSR8PeejAPByIDqFhNDmdqUNsc+cUhyW555BdYea+TotD2lAIwwpWxhCH
 PFQRRuAfRxPqCtJa2LzI26WJXEy5d04U4XdaA/63LbUbf8ohwLUCSL43H g==;
X-CSE-ConnectionGUID: 3h2Wu61TSbCy+HSnF9fh2A==
X-CSE-MsgGUID: UqIJ2YQTTHus8p7Hb+4Vlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="87625255"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="87625255"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:31:29 -0700
X-CSE-ConnectionGUID: xOVmc26STgS4z0p0FCI/7w==
X-CSE-MsgGUID: TeY5SlVETruYFO5fGmIirQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="234709208"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 01:31:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 01/12] drm/i915/vrr: Add HAS_EMP_AS_SDP_TL macro
In-Reply-To: <20260413035349.1730312-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-2-ankit.k.nautiyal@intel.com>
Date: Mon, 13 Apr 2026 11:31:23 +0300
Message-ID: <902d39b5ef740d820ceb73847232102b5a0a6edd@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 122B13E9250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> double buffering point and transmission line for VRR packets for
> HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.

Okay, EMP AS SDP TL is where I draw the line. I don't understand this
acronym soup anymore. HAS_EMP_AS_SDL_TL() is meaningless to me.

The idea with the HAS_*() helpers is to make the code more *readable*.

The absolute minimum is to explain what these acronyms mean in commit
messages or comments, but you could just make the HAS_*() macro more
readable on its own.

I'm also not convinced we need to put all the HAS_*() macros in
intel_display_device.h when we could place some of them inside the
single .c file that uses them.


BR,
Jani.


>
> Add a macro for this and use it in intel_vrr.c
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c            | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1170ac346615..9338ea087e92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>  #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>  #define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
> +#define HAS_EMP_AS_SDP_TL(__display)	(DISPLAY_VERx100(__display) == 1401 || DISPLAY_VER(__display) >= 20)
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
>  #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index fae1186a90b2..1fed597439b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -656,7 +656,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	 * Since currently we support VRR only for DP/eDP, so this is programmed
>  	 * to for Adaptive Sync SDP to Vsync start.
>  	 */
> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> +	if (HAS_EMP_AS_SDP_TL(display))
>  		intel_de_write(display,
>  			       EMP_AS_SDP_TL(display, cpu_transcoder),
>  			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));

-- 
Jani Nikula, Intel
