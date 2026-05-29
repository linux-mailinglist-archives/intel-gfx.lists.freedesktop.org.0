Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLckOzZyGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:02:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C57C6013B8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E3010FD19;
	Fri, 29 May 2026 11:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kq33ZiDY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEDD910FD19;
 Fri, 29 May 2026 11:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052532; x=1811588532;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=A6WSynhCu/7Y+kTEsNEuCFrf290ZeqbL89iD3gp57fw=;
 b=Kq33ZiDYRHhugCVAeEcaesK2Lrxf711P9304Hyuf4x96iTmW7JZBXK6y
 kwumY5d58C1d51CBXycwOegdGOelGYcBCgoLZzUklsQ41B2p/oeSLc14t
 0ejGWqPFH0KMwQWuMI0i5Zb6CEZY4xI2LkwxLmEMUZjHmXqNvL/4JNSKS
 itrOPfJ4dj4QVFFy1WlyQyPyI6XoipK1tGgr3jghkW6hIfEVsG5dBmXHc
 i5M8eEXoHH7PrlmKiporLMnZuhEJaduhtfWkhOjN7chkMeXDuck9UXJoE
 HDuEY+4PxNDznO9QeSrctsrXcpY3Bt3SmwmOcLNv+9xaDsp95CgsirTwg A==;
X-CSE-ConnectionGUID: FmZ3/ZoMTWe339JkIX6A0A==
X-CSE-MsgGUID: uYQpcvKDRmKB9qIpsrRMwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84528329"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84528329"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:02:12 -0700
X-CSE-ConnectionGUID: ocCOQ6aoTkGHu7MwacWtIg==
X-CSE-MsgGUID: ///3QLM+QUWcp5z/mullOQ==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:02:09 -0700
Date: Fri, 29 May 2026 14:02:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com
Subject: Re: [PATCH v7 09/15] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Message-ID: <ahlyLvT7ZqvzaxwQ@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-10-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260526133811.2621675-10-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 5C57C6013B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 07:08:05PM +0530, Animesh Manna wrote:
> From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> 
> Earlier cmtg_disable() used to disable all instances of CMTG
> which cannot handle individual request for specific CMTG instance.
> Introduce cmtg_disable_all() which will disable all cmtg instances
> and cmtg_disable() only disable specific instance.
> 
> v2:
> - Use intel_de_rmw to simplify. [Uma]
> 
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 60 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
>  3 files changed, 47 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 34715280d65d..643e2e846d25 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -82,6 +82,18 @@ static void intel_cmtg_dump_config(struct intel_display *display,
>  		    str_yes_no(cmtg_config->trans_b_secondary));
>  }
>  
> +static inline enum transcoder to_cmtg_transcoder(enum transcoder cpu_transcoder)
> +{
> +	switch (cpu_transcoder) {
> +	case TRANSCODER_A:
> +		return TRANSCODER_CMTG0;
> +	case TRANSCODER_B:
> +		return TRANSCODER_CMTG1;
> +	default:
> +		return INVALID_TRANSCODER;
> +	}
> +}
> +
>  static bool intel_cmtg_transcoder_is_secondary(struct intel_display *display,
>  					       enum transcoder trans)
>  {
> @@ -125,8 +137,8 @@ static bool intel_cmtg_disable_requires_modeset(struct intel_display *display,
>  	return cmtg_config->trans_a_secondary || cmtg_config->trans_b_secondary;
>  }
>  
> -static void intel_cmtg_disable(struct intel_display *display,
> -			       struct intel_cmtg_config *cmtg_config)
> +static void intel_cmtg_disable_all(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
>  {
>  	u32 clk_sel_clr = 0;
>  	u32 clk_sel_set = 0;
> @@ -157,6 +169,36 @@ static void intel_cmtg_disable(struct intel_display *display,
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
>  }
>  
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
> +	u32 clk_sel_clr = 0;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;

I think we just want to track the cmtg transcoder in the crtc state,
instead of this stuff that just assumes things.

> +
> +	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> +		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
> +		     CMTG_SECONDARY_MODE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_ENABLE, 0);
> +
> +	if (intel_de_wait_for_clear_ms(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> +			 transcoder_name(cpu_transcoder));
> +		return;
> +	}
> +
> +	clk_sel_clr = cpu_transcoder == TRANSCODER_A ? CMTG_CLK_SEL_A_MASK : CMTG_CLK_SEL_B_MASK;
> +	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n", transcoder_name(cpu_transcoder));
> +}
> +
>  /*
>   * Read out CMTG configuration and, on platforms that allow disabling it without
>   * a modeset, do it.
> @@ -184,7 +226,7 @@ void intel_cmtg_sanitize(struct intel_display *display)
>  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>  		return;
>  
> -	intel_cmtg_disable(display, &cmtg_config);
> +	intel_cmtg_disable_all(display, &cmtg_config);
>  }
>  
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> @@ -221,18 +263,6 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
>  }
>  
> -static inline enum transcoder to_cmtg_transcoder(enum transcoder cpu_transcoder)
> -{
> -	switch (cpu_transcoder) {
> -	case TRANSCODER_A:
> -		return TRANSCODER_CMTG0;
> -	case TRANSCODER_B:
> -		return TRANSCODER_CMTG1;
> -	default:
> -		return INVALID_TRANSCODER;
> -	}
> -}
> -
>  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 12abbafa7d08..79785afccc51 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>  
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index a93236bf7b75..240a02cd4a3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -22,5 +22,6 @@
>  						    _TRANS_CMTG_CTL_A, _TRANS_CMTG_CTL_B)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> +#define  CMTG_STATE			REG_BIT(23)
>  
>  #endif /* __INTEL_CMTG_REGS_H__ */
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
