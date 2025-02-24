Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE88A41B8D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 11:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D4F10E221;
	Mon, 24 Feb 2025 10:48:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOmGrJqV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A268410E221;
 Mon, 24 Feb 2025 10:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740394109; x=1771930109;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OMX8ok9HZAHROB3BqfjWy9c4ghvUiTDGhDukSet6xHU=;
 b=QOmGrJqV1Ww5D24gi/NZHWhJ3Lh+GtRTg4aN5//xIyesnz+yr+YWydnw
 pBqBhYG8JNHcb+VHFoB3UwIQT343Lnstjxd+ygfOJmog9xGup632jOsvr
 EcqSLrpgHzRQac72feYWrsAVfvDMJj+pXh88lbzOdcQNJ/e3V0+29HMHo
 PL6dB7J0n1c6yl0mccYfh7fIkNN49dpf7mtoCMJvnNQauwpwsfctTK6c3
 qSJdm0ZNEoUmYU+DY3VxDFnNt3j1w69hdFU8Eeu5MNuS+cCz6UUwApv6x
 WciDLoxFcQHwv06biexSZBUQAZ6UgMtr2PoQu1ix8Qx1aYKLg863+0nvN g==;
X-CSE-ConnectionGUID: KjIqb9HLQTKkWzxccnF7gw==
X-CSE-MsgGUID: EX5MpPfZQ+a+5o0TiXY2bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="63612291"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="63612291"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:48:28 -0800
X-CSE-ConnectionGUID: s8tQUJbzQEqXT1+9MrixjA==
X-CSE-MsgGUID: RRqm6R07TNOSYr7uOJGLYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="139249107"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:48:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
In-Reply-To: <20250224080847.326350-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-5-animesh.manna@intel.com>
Date: Mon, 24 Feb 2025 12:48:22 +0200
Message-ID: <87r03n7h55.fsf@intel.com>
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
> For every commit the dependent condition for LOBF is checked
> and accordingly update has_lobf flag which will be used
> to update the ALPM_CTL register during commit.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
>  3 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 1438e125cde1..83719ee1721c 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -312,6 +312,22 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  		(first_sdp_position + waketime_in_lines);
>  }
>  
> +void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 alpm_ctl;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
> +	if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {

You don't need to even read the register if crtc_state->has_lobf is
true.

> +		alpm_ctl &= ~ALPM_CTL_LOBF_ENABLE;
> +		intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
> +	}
> +}
> +
>  static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 91f51fb24f98..c6efd25c2062 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  				    struct drm_connector_state *conn_state);
>  void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +void intel_alpm_lobf_update(const struct intel_crtc_state *crtc_state);
>  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 26aa32d4d50e..44258ba0d951 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -37,6 +37,7 @@
>  #include "icl_dsi.h"
>  #include "intel_alpm.h"
>  #include "intel_audio.h"
> +#include "intel_alpm.h"
>  #include "intel_audio_regs.h"
>  #include "intel_backlight.h"
>  #include "intel_combo_phy.h"
> @@ -3621,6 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
>  	intel_ddi_set_dp_msa(crtc_state, conn_state);
>  
>  	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +	intel_alpm_lobf_update(crtc_state);
>  
>  	intel_backlight_update(state, encoder, crtc_state, conn_state);
>  	drm_connector_update_privacy_screen(conn_state);

-- 
Jani Nikula, Intel
