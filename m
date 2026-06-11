Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LecONk9tKmq6pAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:09:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ACA66FB8D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 10:09:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jYIPSPO0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E4510E647;
	Thu, 11 Jun 2026 08:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795F910E647;
 Thu, 11 Jun 2026 08:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781165388; x=1812701388;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L4FYyAVQZCE3K3P8p2yB3De6g3RB+38aLqosT3HGZyc=;
 b=jYIPSPO0IKpZrtuz9cZd/b0epFytazfTc57R0SbN5VMkWJpZqZ6AWtIx
 0x5oXdGQxBYtEdsFZe9VkGCxVHTL549bOU6wMA2cEPRBU3XGg0NP9pFvx
 Ej9xP5WLQNjJoJaMk4YTF6vRrVcTEBlSb1NDObf9aV/u/srw1lY/9g1Go
 He1WN4Kuudf6d1Yg0sGHnpLfvUKeMWwJylpT/Ki55tZKQ5KyPvKK+7ALf
 MASVft6Tji6bl1wK2tSmPJrtvR/CGCA32sStCRMFGRLQNmVLTkOQymFg5
 SgIDVOdJ+e35muKmM9EMtkNZlvgjUUZHwoYAVJ3Iq7NjOTPFKNG2mVEfj w==;
X-CSE-ConnectionGUID: CwwJVEseQO2tQfseBJrC4w==
X-CSE-MsgGUID: FWcGQ1uqQAG3A2U8386btA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85869890"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="85869890"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:09:47 -0700
X-CSE-ConnectionGUID: dMfvpTBbQKmvi5jc5uj+Qw==
X-CSE-MsgGUID: 3NWBx8IpT36mPP8cH8xpCA==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.165])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 01:09:44 -0700
Date: Thu, 11 Jun 2026 11:09:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com
Subject: Re: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Message-ID: <aiptRZnAtlMivRUl@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260603195416.91639-5-animesh.manna@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,vesa.org:url,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12ACA66FB8D

On Thu, Jun 04, 2026 at 01:24:00AM +0530, Animesh Manna wrote:
> Let intel_set_transcoder_timings() take the target transcoder as an
> explicit argument instead of always using crtc_state->cpu_transcoder.
> This makes the helper reusable for callers that need to program timings
> for a transcoder other than the CRTC's CPU transcoder.
> 
> Update all existing callers to pass crtc_state->cpu_transcoder so there
> is no functional change.
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++----------
>  1 file changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8e269b71f18e..9031264a34fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -132,7 +132,8 @@
>  #include "vlv_dsi_pll.h"
>  #include "vlv_dsi_regs.h"
>  
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
> +static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
> +					 enum transcoder transcoder);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipe_misc(struct intel_dsb *dsb,
> @@ -1504,7 +1505,7 @@ static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  					       &crtc_state->dp_m2_n2);
>  	}
>  
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>  
>  	ilk_set_pipeconf(crtc_state);
>  }
> @@ -1635,7 +1636,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  					       &crtc_state->dp_m2_n2);
>  	}
>  
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>  
>  	if (cpu_transcoder != TRANSCODER_EDP)
>  		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
> @@ -2048,7 +2049,7 @@ static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_st
>  					       &crtc_state->dp_m2_n2);
>  	}
>  
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>  
>  	i9xx_set_pipeconf(crtc_state);
>  }
> @@ -2664,17 +2665,17 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
>  	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>  }
>  
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> +static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
> +					 enum transcoder transcoder)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe = crtc->pipe;
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift = 0;
>  
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));

If you want to rename the variable, then do so in a separate patch.
Mixing the rename with other changes is destroying the signal to
noise ratio of the patch.

>  
>  	/* We need to be careful not to changed the adjusted mode, for otherwise
>  	 * the hw state checker will get angry at the mismatch. */
> @@ -2703,7 +2704,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 */
>  	if (DISPLAY_VER(display) >= 13) {
>  		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
> +			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
>  			       crtc_state->set_context_latency);
>  
>  		/*
> @@ -2718,16 +2719,16 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  
>  	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
>  		intel_de_write(display,
> -			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
> +			       TRANS_VSYNCSHIFT(display, transcoder),
>  			       vsyncshift);
>  
> -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
>  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HBLANK(display, transcoder),
>  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HSYNC(display, transcoder),
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> @@ -2740,13 +2741,13 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	if (intel_vrr_always_use_vrr_tg(display))
>  		crtc_vtotal = 1;
>  
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VSYNC(display, transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>  
> @@ -2754,7 +2755,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
>  	 * documented on the DDI_FUNC_CTL register description, EDP Input Select
>  	 * bits. */
> -	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
> +	if (display->platform.haswell && transcoder == TRANSCODER_EDP &&
>  	    (pipe == PIPE_B || pipe == PIPE_C))
>  		intel_de_write(display, TRANS_VTOTAL(display, pipe),
>  			       VACTIVE(crtc_vdisplay - 1) |
> @@ -2769,7 +2770,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		 * followed by BE which DPRX devices are unable to handle.
>  		 * https://groups.vesa.org/wg/DP/document/20494
>  		 */
> -		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
>  			       crtc_state->min_hblank);
>  	}
>  }
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
