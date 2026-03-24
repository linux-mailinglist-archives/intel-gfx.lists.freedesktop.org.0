Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCIJGZ+9wmlflQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 17:36:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998D63191A1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 17:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8BBB10E5BD;
	Tue, 24 Mar 2026 16:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzT+ykH5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2E7910E5BD;
 Tue, 24 Mar 2026 16:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774370204; x=1805906204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wy5u0lLvHQFlKEaR6pIm2ZID8L9I4NZ79N701DELhuI=;
 b=XzT+ykH5Anp+n1j2mp13Yfcej36AOo+wpQCmH7AhIZh6lhAaNNdiCpgm
 oRNVR5SF3IHD3jU30humLAAoQ6MqScTNYdHz0sUybSFQX6R2dxJ0dDlax
 pK6ujNEyVJI1ZMVQsHQRfa7kVq48serpFeeOCA6u2pumwXNOQJ7+urNlv
 m73FohVupGvoDlHKUHXgzRRn/TYWnFQ0LPxYLdCNengUeiqS8QLMgFUXn
 JJAXXxFXnPhBMj7fexUt0//acmZoWnnDEhvPCUWf1CNZcUCQ0JOkrEDLb
 PR2v+EDvf+xGhtXG/C0WECmzBN1/4Q1obv11Obgrd/Y9UawaVIouiok1Z A==;
X-CSE-ConnectionGUID: 3GyJ4sWIQAm5qVz26t51Iw==
X-CSE-MsgGUID: FmPJtYTmST2XXraWAozy5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="98014812"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="98014812"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 09:36:43 -0700
X-CSE-ConnectionGUID: pgYY84ciQ4OsPRWH9Ja/Bw==
X-CSE-MsgGUID: 7MeY/opaThePS0pNxerlgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224358670"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 09:36:41 -0700
Date: Tue, 24 Mar 2026 18:36:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH 6/8] drm/i915/display: move HSW and BDW clock gating init
 to display
Message-ID: <acK9lVDxOV_hXPiN@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
 <20260324143420.310800-7-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260324143420.310800-7-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 998D63191A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 04:29:55PM +0200, Luca Coelho wrote:
> Move the HSW and BDW display clock gating programming into the display
> code.  In this case we need two different helpers, because the common
> code between these two is split in the middle.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  .../i915/display/intel_display_clock_gating.c | 33 +++++++++++++++++++
>  .../i915/display/intel_display_clock_gating.h |  6 ++++
>  drivers/gpu/drm/i915/intel_clock_gating.c     | 31 +++--------------
>  3 files changed, 43 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> index e3b7522b4101..0b2edf6acb79 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
> @@ -123,3 +123,36 @@ void intel_display_glk_init_clock_gating(struct intel_display *display)
>  		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
>  		       PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
> +
> +static void
> +intel_display_hsw_init_clock_gating_common(struct intel_display *display,
> +					   u32 unmask_vbl)

Passing that as a parameter feels a bit obfuscated.

> +{
> +	enum pipe pipe;
> +
> +	/* WaPsrDPAMaskVBlankInSRD:hsw */
> +	intel_de_rmw(display, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
> +
> +	for_each_pipe(display, pipe) {
> +		/* WaPsrDPRSUnmaskVBlankInSRD:hsw,bdw */
> +		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe), 0, unmask_vbl);

If we want to share the function then I'd probably just do
a platform check here.

> +	}
> +}
> +
> +void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display)
> +{
> +	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> +	intel_de_rmw(display, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> +}

Why do we have two different functions that shared by
both platforms?

> +
> +void intel_display_bdw_init_clock_gating(struct intel_display *display)
> +{
> +	intel_display_hsw_init_clock_gating_common(display,
> +						   BDW_UNMASK_VBL_TO_REGS_IN_SRD);
> +}
> +
> +void intel_display_hsw_init_clock_gating(struct intel_display *display)
> +{
> +	intel_display_hsw_init_clock_gating_common(display,
> +						   HSW_UNMASK_VBL_TO_REGS_IN_SRD);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> index 4abd34fa5832..0eb240f2f69e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
> @@ -14,12 +14,18 @@ void intel_display_kbl_init_clock_gating(struct intel_display *display);
>  void intel_display_cfl_init_clock_gating(struct intel_display *display);
>  void intel_display_bxt_init_clock_gating(struct intel_display *display);
>  void intel_display_glk_init_clock_gating(struct intel_display *display);
> +void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display);
> +void intel_display_bdw_init_clock_gating(struct intel_display *display);
> +void intel_display_hsw_init_clock_gating(struct intel_display *display);
>  #else
>  static inline void intel_display_skl_init_clock_gating(struct intel_display *display) {}
>  static inline void intel_display_kbl_init_clock_gating(struct intel_display *display) {}
>  static inline void intel_display_cfl_init_clock_gating(struct intel_display *display) {}
>  static inline void intel_display_bxt_init_clock_gating(struct intel_display *display) {}
>  static inline void intel_display_glk_init_clock_gating(struct intel_display *display) {}
> +static inline void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display) {}
> +static inline void intel_display_bdw_init_clock_gating(struct intel_display *display) {}
> +static inline void intel_display_hsw_init_clock_gating(struct intel_display *display) {}
>  #endif
>  
>  #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 777314e0c75d..a8e3eb6f06c8 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -284,23 +284,12 @@ static void skl_init_clock_gating(struct drm_i915_private *i915)
>  
>  static void bdw_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	struct intel_display *display = i915->display;
> -	enum pipe pipe;
> -
> -	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> +	intel_display_bdw_hsw_init_clock_gating(i915->display);
>  
>  	/* WaSwitchSolVfFArbitrationPriority:bdw */
>  	intel_uncore_rmw(&i915->uncore, GAM_ECOCHK, 0, HSW_ECOCHK_ARB_PRIO_SOL);
>  
> -	/* WaPsrDPAMaskVBlankInSRD:bdw */
> -	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
> -
> -	for_each_pipe(display, pipe) {
> -		/* WaPsrDPRSUnmaskVBlankInSRD:bdw */
> -		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
> -				 0, BDW_UNMASK_VBL_TO_REGS_IN_SRD);
> -	}
> +	intel_display_bdw_init_clock_gating(i915->display);
>  
>  	/* WaVSRefCountFullforceMissDisable:bdw */
>  	/* WaDSRefCountFullforceMissDisable:bdw */

...
WaKVMNotificationOnConfigChange:bdw somewhere in here is also a display
thing.

And given that I think sharing anything between the platforms in
this patch is a bit premature. I think it would be better to just
move things as is, and do the code sharing refactoring as a followup
once it's easier to see what's common and what isn't.

> @@ -332,20 +321,8 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
>  
>  static void hsw_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	struct intel_display *display = i915->display;
> -	enum pipe pipe;
> -
> -	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
> -	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
> -
> -	/* WaPsrDPAMaskVBlankInSRD:hsw */
> -	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
> -
> -	for_each_pipe(display, pipe) {
> -		/* WaPsrDPRSUnmaskVBlankInSRD:hsw */
> -		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
> -				 0, HSW_UNMASK_VBL_TO_REGS_IN_SRD);
> -	}
> +	intel_display_bdw_hsw_init_clock_gating(i915->display);
> +	intel_display_hsw_init_clock_gating(i915->display);
>  
>  	/* This is required by WaCatErrorRejectionIssue:hsw */
>  	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel
