Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hZOiCNKPMWoUmwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 20:02:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F88693C1C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 20:02:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Hz1aiLJ3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F1A10E825;
	Tue, 16 Jun 2026 18:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BD610E825;
 Tue, 16 Jun 2026 18:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781632975; x=1813168975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UoYLHCp2Z9ahkGulEfuot/G7zMgo35orEoYjbWb4HK0=;
 b=Hz1aiLJ3GU2jpXc/I1W2OS29tnvB6SvnG0xiS20GtOTSUlkWV32Wi/Ji
 ECbv4CcRiZiZNxSRYuthauqsk7Io5V+30rX1c2cHGHYQgGQpBc0JYRv3b
 5HLF9O3rITX1y60nteIkAeH6xA0SVn10G3s21aN8UZgyU5i5FjDbYLfVz
 ykhPdSwb3l6flN0yrSG1yVqpORB+m9kPBhZItgfdwTvwa5xhOIPM2VkCz
 glR3xzMNS4oB7UtT9zTU7hp+Snd4bmpg27B9jggeINbvBcvYmv1Eur1EV
 ytmyaG1o1bNJdbuJZqFoWJZMS230dmbNCs5FGrHgGkpMAcmkRe1trjvyx w==;
X-CSE-ConnectionGUID: xUz7H7RERD+bVWT5nY8hbw==
X-CSE-MsgGUID: WmAhDrL3Rc2ZN/7WoaYERA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81416901"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81416901"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 11:02:55 -0700
X-CSE-ConnectionGUID: YLV+Aq2WSn2sOZ3RZMjPJw==
X-CSE-MsgGUID: r+sjLiTsSsye5e2e9w9iJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="246947196"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 11:02:53 -0700
Date: Tue, 16 Jun 2026 21:02:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] drm/i915/dsb: shift delayed-vblank DSL wait start
 by one scanline
Message-ID: <ajGPyauYMruBI0BN@intel.com>
References: <20260608123711.1121908-1-ankit.k.nautiyal@intel.com>
 <20260608123711.1121908-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260608123711.1121908-2-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90F88693C1C

On Mon, Jun 08, 2026 at 06:07:09PM +0530, Ankit Nautiyal wrote:
> In intel_dsb_wait_for_delayed_vblank() the VRR path issues a
> WAIT_DSL_OUT(safe_window_start, vmin_safe_window_end) followed by a
> WAIT_USEC for SCL+1 scanlines to land on the delayed vblank.
> 
> Experimentally, DSB appears to observe a slightly stale PIPEDSL value.
> When the actual scanline has just reached safe_window_start, the DSB
> may still see a value at or before that boundary when WAIT_DSL_OUT is
> evaluated, causing the wait to complete immediately.
> 
> As a result, the subsequent WAIT_USEC executes too early, and the
> flip-done interrupt fires roughly one frame ahead of the delayed vblank.
> 
> Shift the scanline start back by one to ensure the wait window is
> entered reliably.
> 
> v2: Replace explicit one-scanline delay with scanline boundary
>     adjustment (safe_window_start - 1). (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index fec8a56e21ea..07dd6318d9cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -902,9 +902,17 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>  		 * the hardware itself guarantees that we're SCL lines
>  		 * away from the delayed vblank, and we won't be inside
>  		 * the vmin safe window so this extra wait does nothing.
> +		 *
> +		 * Experimentally, DSB may observe a slightly stale
> +		 * PIPEDSL value. When the actual scanline has just reached
> +		 * safe_window_start, WAIT_DSL_OUT may complete immediately
> +		 * due to the stale value.
> +		 *
> +		 * Shift the start back by one scanline to ensure the wait
> +		 * window is entered reliably.
>  		 */
>  		intel_dsb_wait_scanline_out(state, dsb,
> -					    intel_vrr_safe_window_start(crtc_state),
> +					    intel_vrr_safe_window_start(crtc_state) - 1,
>  					    intel_vrr_vmin_safe_window_end(crtc_state));
>  		/*
>  		 * When the push is sent during vblank it will trigger
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
