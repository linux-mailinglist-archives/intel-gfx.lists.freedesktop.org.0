Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ7XNAfkFmpIvAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:31:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA2B5E4352
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D2D10E7AE;
	Wed, 27 May 2026 12:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAP1L8O2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD4A910E1E6;
 Wed, 27 May 2026 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779885059; x=1811421059;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Uiy+Ov5RxiiQ8HJU+jPK5JaA5XnMcUkgxvRI1KhO4L8=;
 b=AAP1L8O2qf+SEoe4j1zcQmxJdSnjHMdxxX21vC51SpGk6GZZlNSnPNoX
 TSJf6hlmFZF8DvRctF+TMX3ZDf6qSTkE7xaQOmeT8GFVsdK2sqVjyubxA
 LZtw8uikv4Lyw+cAkiNm3T6/BDnaeNfALVW2Iz8HX2DIBsazSiF326dcO
 5m1xsk8fdICFuIrZcU1Td1ARIQ5NA4bXrTNL0aZS4xiQMXegkauDFtXa4
 Nwi3RNQzvCAm2QWwMkmO1gwbq5EcTocQLC4Me2S9lOIs/fUr4+JvYcZCO
 g+CjQRb5NLUHqNMpKlKkP6LBXpVOKezCXHgimsL/aQHXvz3dG8YctVy3E Q==;
X-CSE-ConnectionGUID: /kWnGA1VR6GifF4sfJb1TQ==
X-CSE-MsgGUID: dmJHTt5AQBiCSlp539FVZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="103385398"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="103385398"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 05:30:58 -0700
X-CSE-ConnectionGUID: Vg/OKJVZSvKoy3Z9O33evQ==
X-CSE-MsgGUID: znqyOfmgTkaG7p3hRfp6Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="244050723"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 05:30:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v4 08/13] drm/i915/display: Store DC3CO eligibility in
 PSR state
In-Reply-To: <20260526191826.3786009-9-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-9-dibin.moolakadan.subrahmanian@intel.com>
Date: Wed, 27 May 2026 15:30:53 +0300
Message-ID: <1fe60be5868c1a6f9ac2a60007a14989f2d4989a@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: EEA2B5E4352
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Store DC3CO eligibility in intel_dp->psr during
> intel_psr_post_plane_update() so PSR configuration
> can take DC3CO into account.
>
> This will be used to control PSR2 parameters such as idle frames.
>
> Changes in v2:
> - Use intel_display_power_dc3co_allowed(display) instead
>   of intel_dc3co_allowed(state)
>
> Changes in v4:
> - Update psr.dc3co_eligible before
>   intel_psr_enable_locked() call (sashiko)
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c           | 7 +++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1cfc585530dc..c21f5d1e2003 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1770,6 +1770,8 @@ struct intel_psr {
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
> +	/* DC3CO eligibility used to control PSR configuration */
> +	bool dc3co_eligible;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 730ca7af7873..d4b294beecef 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2300,6 +2300,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
>  	intel_dp->psr.active_non_psr_pipes = 0;
>  	intel_dp->psr.pkg_c_latency_used = 0;
> +	intel_dp->psr.dc3co_eligible = false;
>  }
>  
>  /**
> @@ -3090,10 +3091,14 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
> +	bool dc3co_eligible;
>  
>  	if (!crtc_state->has_psr)
>  		return;
>  
> +	dc3co_eligible = intel_display_power_dc3co_allowed(display) &&
> +			      intel_display_power_dc3co_supported(display);

Maybe just "allowed"? Eligible sounds fancy, and makes you wonder what's
the difference with allowed.

And allowed() should never return true if !supported(), i.e. allowed()
&& supported() shouldn't have to be required here.

BR,
Jani.


> +
>  	verify_panel_replay_dsc_state(crtc_state);
>  
>  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> @@ -3121,6 +3126,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>  			keep_disabled = true;
>  		}
>  
> +		intel_dp->psr.dc3co_eligible = dc3co_eligible;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  		else if (psr->enabled && !crtc_state->wm_level_disabled)

-- 
Jani Nikula, Intel
