Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMGjHPJsBGprIQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:22:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E8C532F9D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 14:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE80F10EE0B;
	Wed, 13 May 2026 12:22:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVVGkfVP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF7610E310;
 Wed, 13 May 2026 12:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778674926; x=1810210926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Q2AmufHZmcfNdac0DVHV63dmP7Znq3xFIg0zI32DZSM=;
 b=FVVGkfVPv2ttDUpl7O5sDMeqGzIclbu6niJgC1JAOj9AuYy+tSSvDtWU
 tCEp83sxYq+BbSMaCWekE2jCAiKQdxg/iGyWlYbWzNf2YYpLl2FsIxrB8
 RFikW1WMqWmTYq2lrV1aCrtxDgaBVLw92n6xIlQWi31wNqtXPMEz2toyn
 JmVLQX/WTaCr9HDX17Dj2X0uWQK/yXe22jWptGpuA10fbxF84dh+AfVBW
 /xqFwTSh72jEJlSm0CFoss+dswvnOxWIKGW636yBmHJawtfNt+cHvZKHB
 4DpL81JAVPZeA2AfHmek1TAuXQu1OkQ41ETdaD21Yi0bzNiAcKD+AzVuW Q==;
X-CSE-ConnectionGUID: wBT3jIuJQguy5NFsBoIaUQ==
X-CSE-MsgGUID: tmJmjeUXRoermcpf612pnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90701376"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90701376"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 05:22:06 -0700
X-CSE-ConnectionGUID: LD4vV1F/QoKfs/htGheQiw==
X-CSE-MsgGUID: oIsXx8kbQXW6hDrVIoin0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="233801292"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 05:22:04 -0700
Date: Wed, 13 May 2026 15:22:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 3/6] drm/i915/display: always pass display->drm to
 for_each_intel_crtc*()
Message-ID: <agRs6QXvPgY6xuDa@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
 <447a5b2309e213abb849601727d45b406d440c88.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <447a5b2309e213abb849601727d45b406d440c88.1778659089.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: C7E8C532F9D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 10:58:37AM +0300, Jani Nikula wrote:
> In preparation for always passing struct intel_display to
> for_each_intel_crtc*() family of iterators, start off by unifying their
> usage to always having struct intel_display *display around, and passing
> display->drm to them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c       | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_plane.c   | 3 ++-
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 33d8f6b6afea..4cd07410ad72 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -3533,10 +3533,11 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
>  
>  static int ilk_sanitize_watermarks_add_affected(struct drm_atomic_commit *state)
>  {
> +	struct intel_display *display = to_intel_display(state->dev);
>  	struct drm_plane *plane;
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(state->dev, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_crtc_state *crtc_state;
>  
>  		crtc_state = intel_atomic_get_crtc_state(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 682a0514ec81..7126a88ca090 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5692,6 +5692,7 @@ int intel_modeset_commit_pipes(struct intel_display *display,
>   */
>  static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *first_crtc_state = NULL;
> @@ -5719,7 +5720,7 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
>  		return 0;
>  
>  	/* w/a possibly needed, check how many crtc's are already enabled. */
> -	for_each_intel_crtc(state->base.dev, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
>  		if (IS_ERR(crtc_state))
>  			return PTR_ERR(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index a1f9558d53af..911ae261d1b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -1794,6 +1794,7 @@ static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,
>  static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
>  					    u8 joined_pipes)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	u8 prev_affected_planes, affected_planes = 0;
>  
>  	/*
> @@ -1811,7 +1812,7 @@ static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
>  	do {
>  		struct intel_crtc *crtc;
>  
> -		for_each_intel_crtc_in_pipe_mask(state->base.dev, crtc, joined_pipes) {
> +		for_each_intel_crtc_in_pipe_mask(display->drm, crtc, joined_pipes) {
>  			int ret;
>  
>  			ret = intel_crtc_add_planes_to_state(state, crtc, affected_planes);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
