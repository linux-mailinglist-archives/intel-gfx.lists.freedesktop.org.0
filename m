Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEA0A41B76
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7063610E1FC;
	Mon, 24 Feb 2025 10:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4QBCwVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FE710E1FC;
 Mon, 24 Feb 2025 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740393728; x=1771929728;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4L5ADrxTXk2BaAx3frJdknexgggOQ7n8k3XywPTYRBw=;
 b=R4QBCwVeEuCHHOIGr2DBwML+Y+PqbTbAw9Y4INQgzcUjnQy/KXJYD0Is
 LfBG4BAGPz0H8FaJBw9/2dRSY0vhwt1DRwmnMOGMJaEFVxSPTcnETJqpp
 LoiyeJXCz00WtE092bl2rHGT8kIyJDdjp3QEJ1khyCpWypAwWvQkdg4OY
 eIlH70lGiXilt2piOZht9Cg/mhEbkeK7S1BfaPxkcGr/FBclF3DKhoEA6
 6lgbvZELtDRT7bE2/9FrK89+9OAAYD4vM3KgoQjmYYMQY2UkEIfeg3XQ6
 v7FKkcQDRxyFJM8tU11aj5Mv/iFhXT+aJKqedcWAVUHrfu4RlNkbgNvFv g==;
X-CSE-ConnectionGUID: UzVxgXBHQqGLeu80PsOilQ==
X-CSE-MsgGUID: 3I8f9EQ7S7S1yNzIwwIjaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="40329586"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="40329586"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:42:08 -0800
X-CSE-ConnectionGUID: BYW5VJ8uRbW/tJsGIRfG/A==
X-CSE-MsgGUID: LdJiczpBTSe1b8lu8Um0cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121293144"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:42:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v4 1/8] drm/i915/lobf: Add lobf enablement in post plane
 update
In-Reply-To: <20250224080847.326350-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-2-animesh.manna@intel.com>
Date: Mon, 24 Feb 2025 12:42:02 +0200
Message-ID: <87zfib7hfp.fsf@intel.com>
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

On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Enablement of LOBF is added in post plane update whenever
> has_lobf flag is set. As LOBF can be enabled in non-psr
> case as well so adding in post plane update. There is no
> change of configuring alpm with psr path.
>
> v1: Initial version.
> v2: Use encoder-mask to find the associated encoder from
> crtc-state. [Jani]
> v3: Remove alpm_configure from intel_psr.c. [Jouni]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c    | 25 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
>  4 files changed, 32 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 55f3ae1e68c9..a53ed83f6b22 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -367,6 +367,31 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
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
> +	if (!(crtc_state->has_lobf || crtc_state->has_psr))
> +		return;

I think this would read better as "if not lobf and not psr" than "if not
(lobf or psr)" because of the need to verbalize the parens.

> +
> +	for_each_intel_encoder_mask(display->drm, encoder,
> +				    crtc_state->uapi.encoder_mask) {
> +		struct intel_dp *intel_dp;
> +
> +		if (!intel_encoder_is_dp(encoder))
> +			continue;
> +
> +		intel_dp = enc_to_intel_dp(encoder);
> +
> +		if (intel_dp_is_edp(intel_dp))
> +			intel_alpm_configure(intel_dp, crtc_state);
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
> index 065fdf6dbb88..5d5cee808bff 100644
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
> @@ -1077,6 +1078,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe = crtc->pipe;
>  
> +	intel_alpm_post_plane_update(state, crtc);
> +
>  	intel_psr_post_plane_update(state, crtc);
>  
>  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4e938bad808c..c1dd9c739fd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1903,9 +1903,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  			     intel_dp->psr.psr2_sel_fetch_enabled ?
>  			     IGNORE_PSR2_HW_TRACKING : 0);
>  
> -	if (intel_dp_is_edp(intel_dp))
> -		intel_alpm_configure(intel_dp, crtc_state);
> -
>  	/*
>  	 * Wa_16013835468
>  	 * Wa_14015648006

-- 
Jani Nikula, Intel
