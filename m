Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bCFFBVsaIGp/vwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:13:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C806375FB
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:13:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=I639u830;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA4B10FCF3;
	Wed,  3 Jun 2026 12:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E56210FCF2;
 Wed,  3 Jun 2026 12:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780488791; x=1812024791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sETcxPSDW82x8ce8cPxleZqxZYrqetBSOKYD5RYJfXc=;
 b=I639u830UDWivh6go+5OrWv9lYCmx8lsQ8LzkAQr2qi6qJf78zW+0MLy
 sswIG1QNBJ6o896LFBuplGG9KKJP51yQwf0FrrjlJxBDuEB17HIIAFXw2
 tj3VCxSwyQreV3MwQoki1t44qIjx2MzZtWf1rRSdUQIPZMWg4m+zhZeKN
 h5bNaf9tiOhulv0jLMLXxCFf3YiQvGmccz8cd+ogu6TQjcECtG54ytWwM
 1zcMK+NjSQ89Fh22GzM7yhwlUsy6OG1QNOB2lxFLUFB4PUwqRQcPlSMlq
 9F8yAebVCNv7fylrLpFcEAEqk4HDsEBa/k/UcXlJ58Ck1o7MHKshInEFh g==;
X-CSE-ConnectionGUID: chLLqr/WRHupH//8mKzIZA==
X-CSE-MsgGUID: LkoAsNnfToWI2Y/j/axpbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="85182626"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="85182626"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:13:10 -0700
X-CSE-ConnectionGUID: t3wnsNcfTV6o8wtimtQ7vQ==
X-CSE-MsgGUID: MQDD0adJTW6gC3Tf0C3jkA==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:13:09 -0700
Date: Wed, 3 Jun 2026 15:13:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, navaremanasi@google.com
Subject: Re: [PATCH 1/6] drm/i915/display: Handle VSYNC timing in LRR path
Message-ID: <aiAaUVt3l2oRN2ZP@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
 <20260522132511.321540-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260522132511.321540-2-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.62)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20C806375FB

On Fri, May 22, 2026 at 06:55:06PM +0530, Ankit Nautiyal wrote:
> LRR already updates crtc_vtotal/crtc_vblank_end seamlessly.
> Extend the same handling to crtc_vsync_start/crtc_vsync_end so
> VSYNC timing changes are programmed and accepted via the LRR path instead
> of forcing a full modeset.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 757a78c75bbf..75c998960864 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2797,6 +2797,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));

I'm thinking we probably want some kind of comment here. Perhaps
something like this:
/*
 * DP doesn't have vertical sync, so TRANS_VSYNC only affects
 * the position of the vsync interrupt (and does so even when
 * using the VRR timing generator!). Thus updating TRANS_VSYNC
 * here seems fine even if it isn't double buffered.
 */

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>  	/*
>  	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>  	 * bits are not required. Since the support for these bits is going to
> @@ -5166,9 +5169,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
>  	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>  	if (!fastset || !pipe_config->update_lrr) { \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>  		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
>  	} \
> @@ -5782,6 +5785,8 @@ static bool lrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>  
>  	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
>  		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
> +		old_adjusted_mode->crtc_vsync_start != new_adjusted_mode->crtc_vsync_start ||
> +		old_adjusted_mode->crtc_vsync_end != new_adjusted_mode->crtc_vsync_end ||
>  		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal ||
>  		old_crtc_state->set_context_latency != new_crtc_state->set_context_latency;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
