Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B20BCF3A0B
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 13:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DD610E3CF;
	Mon,  5 Jan 2026 12:56:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zat27u8u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D6A10E3C8;
 Mon,  5 Jan 2026 12:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767617775; x=1799153775;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RbsPvssDiHMUFGQQkZsU1Rd1sKlaNIwhTtri0wGkjBk=;
 b=Zat27u8uZKCHuJmAQOEzDq0fcMK9aw9NGVzUouruiLmhsOEVbf/42rYA
 7EN9F3M65JuuOvUTZWvEVUTSbFfKe0wJC7cPellEZeMHWQoKvrRThZ+if
 Uu8Mdp6VZjIkls+ZoPe/2TvEu4SwxtHfLNnuDOAgvnNAHzp0r93CFtWqC
 abG1J/wmBxJ/I9Xgqe/foaBfnXRDNBXafj9V79Fai06lyRmDGdqw/XO57
 BSFNwoIQ+kVsU9sZIYruhGhJb+nAuRsRK3dONz99uqpZd+fGUAKo1woLM
 2qNEf0duSfZx4xVuhJEH3LWpMmBl2npRwLYX48+YjVfo5asTdtYm04GLh A==;
X-CSE-ConnectionGUID: x1mM4yTdRPCtxUPOmq+PFw==
X-CSE-MsgGUID: FucP/iGKRqyztJ6IoN/EIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="79704738"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="79704738"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:56:15 -0800
X-CSE-ConnectionGUID: mRn/jRjsSdCmIzshzTThDQ==
X-CSE-MsgGUID: xppJanOGSWarlJ8m2XOYnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="202284308"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.3])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 04:56:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: Re: [PATCH 5/9] drm/i915/display: Track DC3CO enable source
In-Reply-To: <20251209113332.2770263-6-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-6-dibin.moolakadan.subrahmanian@intel.com>
Date: Mon, 05 Jan 2026 14:56:09 +0200
Message-ID: <90fbefb9b09b41b53fa41ce21f6eaaec53f3db3b@intel.com>
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

On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> Introduce a bitmask enum intel_dc3co_source to record which display
> features (PSR2, ALPM, LOBF) contribute to allowing DC3CO entry.
> The source tracking is added here and will be integrated into the DC3CO
> allow logic in follow-up commits.
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h       |  4 +++-
>  drivers/gpu/drm/i915/display/intel_display_core.h  |  1 +
>  drivers/gpu/drm/i915/display/intel_display_power.h | 10 ++++++++++
>  4 files changed, 25 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 205f55a87736..b14a1c9f80bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6300,6 +6300,16 @@ bool intel_dc3co_allowed(struct intel_display *display)
>  	return display->power.dc3co_allow;
>  }
>  
> +void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source)
> +{
> +	display->power.dc3co_source |= source;
> +}
> +
> +void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source)
> +{
> +	display->power.dc3co_source &= ~source;
> +}
> +

These don't belong in intel_display.[ch].

>  static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>  					     const struct intel_crtc_state *crtc_state)
>  {
> @@ -6330,6 +6340,7 @@ static void intel_dc3co_allow_check(struct intel_atomic_state *state)
>  	bool allow = true;
>  
>  	display->power.dc3co_allow = 0;
> +	intel_dc3co_source_unset(display, DC3CO_SOURCE_ALL);
>  
>  	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 97987f082560..87bbf1f66209 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -46,6 +46,7 @@ struct intel_link_m_n;
>  struct intel_plane;
>  struct intel_plane_state;
>  struct intel_power_domain_mask;
> +enum intel_dc3co_source;
>  
>  #define pipe_name(p) ((p) + 'A')
>  
> @@ -561,5 +562,6 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>  int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>  bool intel_dc3co_allowed(struct intel_display *display);
> -
> +void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source);
> +void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index fa567c95029c..4ce34c567dbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -541,6 +541,7 @@ struct intel_display {
>  
>  		/* mark dc3co entry is allowed*/
>  		bool dc3co_allow;
> +		u32 dc3co_source;
>  	} power;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..dde07f931963 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -131,6 +131,16 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>  };
>  
> +enum intel_dc3co_source {
> +	DC3CO_SOURCE_NONE = 0,
> +	DC3CO_SOURCE_PSR2 = BIT(0),
> +	DC3CO_SOURCE_ALPM = BIT(1),
> +	DC3CO_SOURCE_LOBF = BIT(2),
> +	DC3CO_SOURCE_ALL  = DC3CO_SOURCE_PSR2 |
> +			    DC3CO_SOURCE_ALPM |
> +			    DC3CO_SOURCE_LOBF,
> +};
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend

-- 
Jani Nikula, Intel
