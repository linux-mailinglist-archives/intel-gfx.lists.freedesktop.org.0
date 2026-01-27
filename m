Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MVjHex6eGnBqAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:44:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA32D91358
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 09:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED69E10E03F;
	Tue, 27 Jan 2026 08:44:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dv8hcOf/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87E010E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jan 2026 08:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769503464; x=1801039464;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Vsbrd1Wgn44Nim3sZsaERig81bKQT7LTOWibZ6pODzw=;
 b=dv8hcOf/zXl1eI3S6WwHP/Awmk7wu2drwuqBmoFQqcYvLm/GSKBw5z+H
 0PTYVh7YFGONrj8DtRJjO2pdyD1FDSsSipo6juR52QcjhaaNbtV6Xn2qu
 BUlHaVxTBb4R41VuV8UpQDIEwTLyUUnO4wBmL+7bIV5DPyl2wlGhET1Uw
 GzC3A6Fr9JoJinVWiRFl5WY/rXEa8dqMq7B0qrwRGHE9j4F/xKHqoTIMr
 uydXQHS4JGcInJzqUOwQtHMBlFDDLL1vVlMLZZyRwEvv+oKahf/HFSGhu
 Qboj1fLeCFR+86zM+hNkr6D0c784lud5z0rGrDloit7TL/ozwLej3gsNG Q==;
X-CSE-ConnectionGUID: BovgUClvRZez38234ls0UQ==
X-CSE-MsgGUID: Xee5dt13Sy+nSmtbvhuKlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70751246"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70751246"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:44:22 -0800
X-CSE-ConnectionGUID: e/9YNKAGS1SKwfoF80BUnw==
X-CSE-MsgGUID: u8/kt4XzTD2GjWfQed/F8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207719950"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 00:44:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com
Subject: Re: [PATCH] drm/i915/display: Assert valid cpu_transcoder
In-Reply-To: <20260126225702.66437-2-jonathan.cavitt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260126225702.66437-2-jonathan.cavitt@intel.com>
Date: Tue, 27 Jan 2026 10:44:17 +0200
Message-ID: <e762f92af04254a6bb867d8269f4e4ec2cff4da9@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: DA32D91358
X-Rspamd-Action: no action

On Mon, 26 Jan 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> Static analysis issue:
>
> Bit operations are being performed using bit offsets computed from
> cpu_transcoder values, which may (albeit unlikely) be -1.  Assert this
> is not the case when relevant.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 8 +++++++-
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 +++
>  4 files changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..ec947c415e5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3876,7 +3876,8 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>  static bool intel_ddi_is_audio_enabled(struct intel_display *display,
>  				       enum transcoder cpu_transcoder)
>  {
> -	if (cpu_transcoder == TRANSCODER_EDP)
> +	if (cpu_transcoder == TRANSCODER_EDP ||
> +	    drm_WARN_ON(display->drm, cpu_transcoder == INVALID_TRANSCODER))
>  		return false;
>  
>  	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
> @@ -4611,6 +4612,8 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
>  		if (!crtcs_port_sync_compatible(ref_crtc_state,
>  						crtc_state))
>  			continue;
> +		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
> +			continue;
>  		transcoders |= BIT(crtc_state->cpu_transcoder);
>  	}
>  
> @@ -4649,6 +4652,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
>  	else
>  		crtc_state->master_transcoder = ffs(port_sync_transcoders) - 1;
>  
> +	if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
> +		return -EINVAL;
> +
>  	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
>  		crtc_state->master_transcoder = INVALID_TRANSCODER;
>  		crtc_state->sync_mode_slaves_mask =
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..c9d50240d813 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5855,9 +5855,14 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
>  {
>  	const struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
> +	struct drm_device *drm;
>  	int i;
>  
> +	drm = to_intel_display(state)->drm;

Please don't add struct drm_device local variables in display code.

Add display, and use display->drm instead.

BR,
Jani.


> +
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (drm_WARN_ON(drm, new_crtc_state->cpu_transcoder == INVALID_TRANSCODER))
> +			continue;
>  		if (new_crtc_state->hw.enable &&
>  		    transcoders & BIT(new_crtc_state->cpu_transcoder) &&
>  		    intel_crtc_needs_modeset(new_crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79fd3b8d8b25..402b22423ff2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6412,6 +6412,9 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
>  		if (!crtc_state->hw.enable)
>  			continue;
>  
> +		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
> +			continue;
> +
>  		if (!(transcoders & BIT(crtc_state->cpu_transcoder)))
>  			continue;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 24f8e60df9ac..f6690130d1cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -741,6 +741,9 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
>  		if (!crtc_state->hw.active)
>  			continue;
>  
> +		if (drm_WARN_ON(display->drm, crtc_state->cpu_transcoder == INVALID_TRANSCODER))
> +			continue;
> +
>  		transcoders |= BIT(crtc_state->cpu_transcoder);
>  	}

-- 
Jani Nikula, Intel
