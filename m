Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP4pCZZgymn27gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 13:37:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6652735A633
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 13:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3E3210E66F;
	Mon, 30 Mar 2026 11:37:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8Q2u5Th";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB4010E5F8;
 Mon, 30 Mar 2026 11:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774870675; x=1806406675;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TXEd97w9FVCXv2P6XNc9iE6HhYb2FMPNY1EV5CGuWUg=;
 b=T8Q2u5ThRFEI//bm5KSv1d4e5uoekUyD92xwBEEAvip3vE6o9ihSq0dT
 +AXgQ8dV4yWhEJ5VBegqtREJOVETa+FflpUUKjIumfgD+3G9VVjmSbv4I
 Tx6TNd6OOCx2p61tD24wVnUMFEtUcKOCE0vI/nYxtJaxQAoSsZ6JwlVa8
 hqiDX6KNYeYmHhOSXX2Mk0m+91/fhwS7UGu5zXKkqrB8F8WSQtbQz6sLN
 Dc35uESiJNFw2G/LHMaS76ViTWb3CJi+etWM+a9MHqJqEQ3+GBpiF69+i
 +VmZTjn4xJQvlLHjYoMs7ONJglASxLNlM3EdpqGfRo8Wj6Lx6iNyU1GgA A==;
X-CSE-ConnectionGUID: gbqSGR66QIaWU+6V84UWIA==
X-CSE-MsgGUID: 8x5EJKOJQOW+g1r5cMZB8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75571682"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="75571682"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 04:37:53 -0700
X-CSE-ConnectionGUID: qybKaPyhTSmfv8zLTcy+nQ==
X-CSE-MsgGUID: n60Zd3eCQeuWzTBLxXT31w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="230079618"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 04:37:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [CI] drm/i915/display: change pipe allocation order for
 discrete platforms
In-Reply-To: <20260316121837.1264876-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260316121837.1264876-1-jani.nikula@intel.com>
Date: Mon, 30 Mar 2026 14:37:47 +0300
Message-ID: <2db8f3e8adde89b85da08477ed3f4bd6b7392b5c@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 6652735A633
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026, Jani Nikula <jani.nikula@intel.com> wrote:
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

Ville, I think it's time to review and, pretty soon, merge this.

Our IGT changes to deconflate CRTCs and pipes have been merged, and
there's the removal of invalid igt_crtc_t at [1] left. The trybot CI
results on i915 for swapping pipes B and C on all platforms, not just
discrete like here, didn't break anything either anymore [2].

I'm contemplating slapping Cc: stable on this too.

There's the FIXME on the CRTC index warning. With the A+C and B+D
pairing there's no issue, the CRTC indexes remain in that order. But can
we ever really end up with B+C pairing?


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1774856079.git.jani.nikula@intel.com
[2] https://patchwork.freedesktop.org/series/163597/


>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
> We've fixed a ton of IGT assumptions on CRTC index == pipe, resending
> the patch for CI to gauge where we're at.
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 29 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
>  2 files changed, 28 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index b8189cd5d864..c7b6ebe8f3e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -393,8 +393,6 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>  
> -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> -
>  	if (HAS_CASF(display) && crtc->num_scalers >= 2)
>  		drm_crtc_create_sharpness_strength_property(&crtc->base);
>  
> @@ -406,6 +404,31 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
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
> @@ -415,7 +438,7 @@ int intel_crtc_init(struct intel_display *display)
>  		    INTEL_NUM_PIPES(display), str_plural(INTEL_NUM_PIPES(display)));
>  
>  	for_each_pipe(display, pipe) {
> -		ret = __intel_crtc_init(display, pipe);
> +		ret = __intel_crtc_init(display, reorder_pipe(display, pipe));
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b18ce0c36a64..f0843de362fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5971,6 +5971,8 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>  		 * This works because the crtcs are created in pipe order,
>  		 * and the hardware requires primary pipe < secondary pipe as well.
>  		 * Should that change we need to rethink the logic.
> +		 *
> +		 * FIXME: What about with reordered pipes?
>  		 */
>  		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
>  			    drm_crtc_index(&secondary_crtc->base)))

-- 
Jani Nikula, Intel
