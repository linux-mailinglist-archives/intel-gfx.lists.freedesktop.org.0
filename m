Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B32AFEF4E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 19:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A5E10E348;
	Wed,  9 Jul 2025 17:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HTJcjvcb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0520D10E04F;
 Wed,  9 Jul 2025 17:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752080616; x=1783616616;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=N84e1uQUv5bB4UwEv3qlLuyINvSdi9ApVwVklBv5e6k=;
 b=HTJcjvcbdbDsHOti2BtHBep0KnsB81uaE9KQMcXaxDZQ/kOoSOrnPsvd
 QbkIK9JdpJdm7MTHzA0IbFZix7BSleGoK1s9p7aRUkeS7E4UBCQaJcyTu
 cEs1swyBNU0aPRVew0R/wlzn12PuiRUYhQqipV3Sk6BdFGOtc+bPOfL2m
 ls9pHE/qdh0RCsWtBkuI8JJ/ozSmYN9OKtXC4wwcELN1KRTZdizF4CUy/
 2iN/hESjr3ROSmFJg62VPdKOhJ4rORHJ4aBOJOa1Bj44UHqvlwxQSfxYt
 +Zg4QgYbXwNiWrnWf3F2eJL/4Kw1zYNabHPqH2NdPOyBsxAX0v7HgPCSz g==;
X-CSE-ConnectionGUID: zxpftaZXTpKGaSs2WqyLiw==
X-CSE-MsgGUID: 74OijKE7SVOiUlfSVY63Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="54482504"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="54482504"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 10:03:36 -0700
X-CSE-ConnectionGUID: O/HJLHzhQlWmL2b7Nq9g2Q==
X-CSE-MsgGUID: Yv9BgArVQYWw57otXTbxwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="161490175"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 09 Jul 2025 10:03:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jul 2025 20:03:32 +0300
Date: Wed, 9 Jul 2025 20:03:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aG6g5C-nUMPqYSzS@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709075758.2510714-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni Högander wrote:
> Currently disabling PSR2 via enable_psr module parameter causes Panel
> Replay being disabled as well. This patch changes this by still allowing
> Panel Replay even if PSR2 is disabled.
> 
> After this patch enable_psr module parameter values are:
> 
> -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
>  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
>  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
>  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
>  3 = PSR1 : yes, PSR2 = no,  Panel Replay : no
> 
> I.e. values different than -1 and 0 are handled as bitmasks where BIT0
> disables PSR2 and BIT1 disables Panel Replay.
> 
> v2:
>   - make it more clear that enable_psr is bitmask for disabling different
>     PSR modes
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_params.c   |  6 ++---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 22 ++++++++++++++-----
>  2 files changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 75316247ee8a..195af19ece5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"(default: -1 (use per-chip default))");
>  
>  intel_display_param_named_unsafe(enable_psr, int, 0400,
> -	"Enable PSR "
> -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> -	"Default: -1 (use per-chip default)");
> +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable Panel Replay (BIT1))."
> +	"Values different from 0 and -1 are handled as bitmask to disable different PSR modes."
> +	"E.g. value 3 disables both PSR2 and Panel Replay. Default: -1 (use per-chip default)");

This thing is very unintuitive. Why don't we just get replace it
with a new disable_psr modparam that is clearly just a bitmask of
what to disable?

>  
>  intel_display_param_named(psr_safest_params, bool, 0400,
>  	"Replace PSR VBT parameters by the safest and not optimal ones. This "
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a2b5688f0c82..959b868672d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -254,13 +254,16 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> +	return display->params.enable_psr == -1 ||
> +		!(display->params.enable_psr & 0x1);
> +}
> +
> +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
> +{
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> -	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		if (display->params.enable_psr == 1)
> -			return false;
>  		return true;
>  	}
>  }
> @@ -269,7 +272,8 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> -	if ((display->params.enable_psr != -1) ||
> +	if ((display->params.enable_psr != -1 &&
> +	     display->params.enable_psr & 0x2) ||
>  	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
>  		return false;
>  	return true;
> @@ -1415,6 +1419,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	if (!intel_dp->psr.sink_psr2_support)
>  		return false;
>  
> +	if (!psr2_global_enabled(intel_dp)) {
> +		drm_dbg_kms(display->drm,
> +			    "PSR2 disabled by flag\n");
> +		return false;
> +	}
> +
>  	/* JSL and EHL only supports eDP 1.3 */
>  	if (display->platform.jasperlake || display->platform.elkhartlake) {
>  		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
> @@ -1517,7 +1527,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_global_enabled(intel_dp)) {
> +	if (!sel_update_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update disabled by flag\n");
>  		goto unsupported;
> @@ -1664,7 +1674,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	u8 active_pipes = 0;
>  
>  	if (!psr_global_enabled(intel_dp)) {
> -		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
> +		drm_dbg_kms(display->drm, "PSR/Panel Replay disabled by flag\n");
>  		return;
>  	}
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
