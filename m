Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD327BCD9DC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 16:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FD510EC47;
	Fri, 10 Oct 2025 14:53:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yrv6AwXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0299510EC32;
 Fri, 10 Oct 2025 14:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760108002; x=1791644002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lgrcKZ9+TH7h+2h7CEmz5s7z56ERO3QoeNb/N88Ozis=;
 b=Yrv6AwXmIyDHOu1jYXB4ukMJU46s95fs9ssUnw9CJOEQLrLG6MQCIEej
 JgUMaUiEiiPWPZsKQvXimllp/iPU/MsDSMKY+AjswxY8Xc8vh8OhJzK+7
 G2Fc0KwfmgDpdQcywbRakOcYg+SQZTr+UYuubjm5ihvEZOY5JffF8Phm9
 oWT0YPfzZcFp+M7J8ga7/aP4oDAhQ1ueMaOCKQF9RUpry9R8SghknoOBm
 nWA6ewocBHqWyUrWqXiItInNOkqWPU1w44EyhiibaJ6q+ACUcyWOQNYLa
 0vHqcmn2XZkuhBzGW6zASH/Q3gqOdqle9yvNdfQfHFeWnjviapAeQaS50 g==;
X-CSE-ConnectionGUID: 4hqCSeuBSXS7lMSICiYApg==
X-CSE-MsgGUID: FS4AXW2aTFGQ/+Dkx8mB2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62484334"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="62484334"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:53:21 -0700
X-CSE-ConnectionGUID: G6LO691mRY+1s8QSJyVVQQ==
X-CSE-MsgGUID: PnDN6mkLQ2amvPyZsp1pFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="181417207"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.174])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 07:53:20 -0700
Date: Fri, 10 Oct 2025 17:53:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915/vrr:
 s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Message-ID: <aOkd3YQC6ESQ-RAE@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
 <20251009090102.850344-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009090102.850344-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 09, 2025 at 02:30:56PM +0530, Ankit Nautiyal wrote:
> The helper intel_vrr_compute_config_late() practically just computes the
> guardband. Rename intel_vrr_compute_config_late() to
> intel_vrr_compute_guardband().
> 
> Since we are going to compute the guardband and then move the
> vblank_start for optmizing guardband move it to
> intel_crtc_compute_config() which handles such changes.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.h     | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b57efd870774..cd499e58bed3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2414,6 +2414,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> +	intel_vrr_compute_guardband(crtc_state);
> +
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);

Hmm. The intel_dpll_crtc_compute_clock() probably needs to move to the
very start of the function, so that we'll have an accurate clock for the 
eventual guardband calculations. In fact my plan has been to move it
into .compute_config() entirely, but I haven't had time to revisit
this topic in a while :/

For easier bisectability I'd do that move first as a separate patch.

>  	if (ret)
>  		return ret;

The other thing we have here is intel_crtc_compute_pipe_mode(). I have
a feeling I didn't consider the joiner aspect at all with the prefill
helpers. We might need the pipe_mode for the guardband calculations.
I'll have to have a look at what I did there and think a bit more about
how the joiner affects that stuff.


And the other thing I haven't considered at all is MSO. Right now
adjusted_mode will contain the per-segment timings with MSO which,
now that I think about it again, migth be a bad idea (my idea IIRC).
Eg. adjusted_mode based linetime calculations will be skewed by the
overlap included in the segement timings.

We may have to rethink the MSO apporoach to keep the full timings in
adjusted_mode and either introduce yet another mode for the per-segment
timings, or perhaps just do the full<->segment conversions as needed
(set_transcoder_timings()+its readout, compute_m_n(), maybe some other
places as well?).

> @@ -4722,8 +4724,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  	struct drm_connector *connector;
>  	int i;
>  
> -	intel_vrr_compute_config_late(crtc_state);
> -
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4bc14b5e685f..8d71d7dc9d12 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -433,7 +433,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>  		   intel_vrr_max_vblank_guardband(crtc_state));
>  }
>  
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 7317f8730089..bc9044621635 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -21,7 +21,7 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
> +void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_send_push(struct intel_dsb *dsb,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
