Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE589DFE13
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 11:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED19610E692;
	Mon,  2 Dec 2024 10:06:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EpXySKbO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6528B10E692
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 10:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733133965; x=1764669965;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BJjGtVVLcRp+UK8Z5HJOxATgDKqyATqT9DyK3mngB8g=;
 b=EpXySKbOhPp8D8meUR99Ho4QytXKdpze9HJvXzNKAchHWkpJpOWeFtUD
 zZhQsDJihayvPFoMcTTUpHX/w5L9549NxIsYwu+K6DNNEs2lrNLbsG6Qa
 63qu0gV3he9ugvh1vlOyeGJw5QOrTO1PeEWWHAUq+41cUd1VnmExqs06/
 C+E+K6q3+T2eEd6gsVKYp/+d2GNKNOK0/H7tHOM6mjwoJIi454P4eXrED
 mutkIeXWqIi1LLQ0oQH6I+xz5AsRWf/EDRgCg2IhMee2aWNViq6OgtChv
 Juj+giU1pvZXGTyZvdTPwrOz9ap018lxF/p+N4Wj/zj62o5kV3axPAvb8 Q==;
X-CSE-ConnectionGUID: rxO/LOJwTd+vIxn6m0tN1g==
X-CSE-MsgGUID: OiMqTNEkTder+lVYetAm+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="50708483"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="50708483"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 02:06:04 -0800
X-CSE-ConnectionGUID: 0Xzczko3RXq7N9sSp8BP1Q==
X-CSE-MsgGUID: n7fTpHx+TMSSPu1N+0bhmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93902756"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.77])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 02:06:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
In-Reply-To: <20241202074615.3601692-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241202074615.3601692-1-animesh.manna@intel.com>
 <20241202074615.3601692-2-animesh.manna@intel.com>
Date: Mon, 02 Dec 2024 12:05:49 +0200
Message-ID: <87ttbm5ria.fsf@intel.com>
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

On Mon, 02 Dec 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Enablement of LOBF is added in post plane update whenever
> has_lobf flag is set. As LOBF can be enabled in non-psr
> case as well so adding in post plane update. There is no
> change of configuring alpm with psr path.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c    | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
>  3 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 55f3ae1e68c9..45865a8d1dd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -367,6 +367,25 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
>  	lnl_alpm_configure(intel_dp, crtc_state);
>  }
>  
> +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	const struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder;
> +
> +	if (!crtc_state->has_lobf)
> +		return;
> +
> +	for_each_intel_dp(display->drm, encoder) {
> +		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +		if (intel_dp_is_edp(intel_dp))
> +			intel_alpm_configure(intel_dp, crtc_state);

This gets called on all eDP, regardless of whether they have anything to
do with the crtc state.

BR,
Jani.


> +	}
> +}
> +
>  static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 8c409b10dce6..2f862b0476a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -12,6 +12,8 @@ struct intel_dp;
>  struct intel_crtc_state;
>  struct drm_connector_state;
>  struct intel_connector;
> +struct intel_atomic_state;
> +struct intel_crtc;
>  
>  void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
>  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
> @@ -21,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  				    struct drm_connector_state *conn_state);
>  void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
>  bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
>  bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a0351c97c445..d279029e90f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -55,6 +55,7 @@
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "i9xx_wm.h"
> +#include "intel_alpm.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_audio.h"
> @@ -1185,6 +1186,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  
>  	intel_psr_post_plane_update(state, crtc);
>  
> +	intel_alpm_post_plane_update(state, crtc);
> +
>  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
>  
>  	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)

-- 
Jani Nikula, Intel
