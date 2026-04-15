Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BePNHBa32n1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:29:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FE840296C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C797F10E6AD;
	Wed, 15 Apr 2026 09:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJnSdSjO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5026D10E6AD;
 Wed, 15 Apr 2026 09:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776245356; x=1807781356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MXdJrQuUwawnB9C14BT5ZZ4Ruq8GcdMtM4zPmC3L4KQ=;
 b=oJnSdSjOv2RFU4ZzuxFi+85BrV2QiCd7YFqh9jyeU6oZ/vf+KOwudR45
 vOUSO8aO7nzCn/P+Fjz8Nlk21U9eJ7iNESs97Pt3sLNQinoclrNE10Dqg
 O3rmqtFwBmRmvCM7rymI6ufnEk8JkqDv2D4YyWEOoKMN0jbvg3PUbi2m3
 XphfSDWBWt9nWE0dye3P3+8aIzLFcTPDPEC4GuM50w/h71z2rFzxwtmf8
 WA8TTGpIMTH/VL7jZVonsEEGSmUAwPnTafRFtTxIGdRjlZkmvSskpPQOZ
 dv2+rfqW2qwatyUBPNUsILMFjK7I1RShEqCwLrAjKk6RY5PUn8flyIPeY A==;
X-CSE-ConnectionGUID: BmV6nflLTUSiMGV3k7FO2g==
X-CSE-MsgGUID: Z341+yENSvSIZGlqxPiauw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76921943"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76921943"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:29:16 -0700
X-CSE-ConnectionGUID: Z48iwWGwS2WRWhS5bLU0LQ==
X-CSE-MsgGUID: PZ2g5F1URvKDa5zWfD9vCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="232108746"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:29:14 -0700
Date: Wed, 15 Apr 2026 12:29:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v6] drm/i915/display: change pipe allocation order for
 discrete platforms
Message-ID: <ad9aZ9oYYLWLbni1@intel.com>
References: <20260413081609.969342-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260413081609.969342-1-jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 36FE840296C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 11:16:09AM +0300, Jani Nikula wrote:
> When big joiner is enabled, it reserves the adjacent pipe as the
> secondary pipe. This happens without the user space knowing, and
> subsequent attempts at using the CRTC with that pipe will fail. If the
> user space does not have a coping mechanism, i.e. trying another CRTC,
> this leads to a black screen.
> 
> Try to reduce the impact of the problem on discrete platforms by mapping
> the CRTCs to pipes in order A, C, B, and D. If the user space reserves
> CRTCs in order, this should trick it to using pipes that are more likely
> to be available for and after joining.
> 
> Limit this to discrete platforms, which have four pipes, and no eDP, a
> combination that should benefit the most with least drawbacks.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Should be fine with the other stuff I posted earlier:
https://lore.kernel.org/intel-gfx/20260408155744.13326-1-ville.syrjala@linux.intel.com/

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> ---
> 
> v2: Also remove WARN_ON()
> 
> v3: Limit to discrete
> 
> v4: Revamp
> 
> v5: Don't screw up the loop variable, dummy
> 
> v6: Rebase, drop FIXME comment
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 29 ++++++++++++++++++++---
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index c88a6810c49f..03de219f7a64 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -411,8 +411,6 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>  
> -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> -
>  	if (HAS_CASF(display) && crtc->num_scalers >= 2)
>  		drm_crtc_create_sharpness_strength_property(&crtc->base);
>  
> @@ -426,6 +424,31 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  	return ret;
>  }
>  
> +#define HAS_PIPE(display, pipe) (DISPLAY_RUNTIME_INFO(display)->pipe_mask & BIT(pipe))
> +
> +/*
> + * Expose the pipes in order A, C, B, D on discrete platforms to trick user
> + * space into using pipes that are more likely to be available for both a) user
> + * space if pipe B has been reserved for the joiner, and b) the joiner if pipe A
> + * doesn't need the joiner.
> + *
> + * Swap pipes B and C only if both are available i.e. not fused off.
> + */
> +static enum pipe reorder_pipe(struct intel_display *display, enum pipe pipe)
> +{
> +	if (!display->platform.dgfx || !HAS_PIPE(display, PIPE_B) || !HAS_PIPE(display, PIPE_C))
> +		return pipe;
> +
> +	switch (pipe) {
> +	case PIPE_B:
> +		return PIPE_C;
> +	case PIPE_C:
> +		return PIPE_B;
> +	default:
> +		return pipe;
> +	}
> +}
> +
>  int intel_crtc_init(struct intel_display *display)
>  {
>  	enum pipe pipe;
> @@ -435,7 +458,7 @@ int intel_crtc_init(struct intel_display *display)
>  		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
>  
>  	for_each_pipe(display, pipe) {
> -		ret = __intel_crtc_init(display, pipe);
> +		ret = __intel_crtc_init(display, reorder_pipe(display, pipe));
>  		if (ret)
>  			return ret;
>  	}
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
