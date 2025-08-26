Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E14B35F25
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 14:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE9B10E64F;
	Tue, 26 Aug 2025 12:33:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FTfz+z6J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA0610E648;
 Tue, 26 Aug 2025 12:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756211598; x=1787747598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UEsqCRCemqRZbSjoOH782fQMcJKXVJAkA6hFk56RRfk=;
 b=FTfz+z6JToiIs9ES1CyrJxN5ShvG2fbSAsKXpFohqyBAxRlc+/d2ALA9
 RJkEZ3WMHxoTe8soiHXdS50bmxIUcxBfaGP8do1IxeqYrdqIyNmuzNQPs
 RO1QaGYv+HnFWKkfWMmBpd4eYRWBn9EC6RfEuy4aWlpbnWcpXa5hh4GER
 Dy7NmwKA+4XBhSFdJ+z7jfAP8tEv/cgLAW+XvBHxPtjAVONt5sZjHzoAw
 +j1eu+M2YgGykB8oy78cyrqMae22Zpa+i8P/Mf6h7gzX1SrOhGj4+Cof2
 /m6Bm/jbI9+AE/vt0YKF07BcEhgyfZplyxMMrMUqHJcK8IOtrPx0Pmwbo A==;
X-CSE-ConnectionGUID: eMctyUcRQ8qpGpopJIpi5g==
X-CSE-MsgGUID: eZKif94PS4am6DOWN0EyJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="61079439"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="61079439"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 05:33:18 -0700
X-CSE-ConnectionGUID: JktsIbccSNacK4sEEfj9yQ==
X-CSE-MsgGUID: C9BVL3mKTNSyhHakpTAYiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174869078"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 26 Aug 2025 05:33:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Aug 2025 15:33:15 +0300
Date: Tue, 26 Aug 2025 15:33:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/4] drm/i915/psr: New interface adding PSR idle poll
 into dsb commit
Message-ID: <aK2pi1hEhLNILzE8@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250806052213.1800559-4-jouni.hogander@intel.com>
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

On Wed, Aug 06, 2025 at 08:22:12AM +0300, Jouni Högander wrote:
> We are currently observing crc failures after we started using dsb for PSR
> updates as well. This seems to happen because PSR HW is still sending
> couple of updates using old framebuffers on wake-up.
> 
> This patch is preparing to fix that by adding interface which can be used
> to add poll ensuring PSR HW is idle into dsb commit.
> 
> v2: add pass crtc_state->dsb_commit as parameter
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 40 +++++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>  2 files changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 172bc0c39968..2254dd5a3ac4 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -42,6 +42,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dsb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
>  #include "intel_psr.h"
> @@ -2991,7 +2992,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
>  #define PSR_IDLE_TIMEOUT_MS 50
>  
>  static int
> -_psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
> +_psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state,
> +				   struct intel_dsb *dsb)
>  {
>  	struct intel_display *display = to_intel_display(new_crtc_state);
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> @@ -3001,6 +3003,13 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
>  	 * As all higher states has bit 4 of PSR2 state set we can just wait for
>  	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
>  	 */
> +	if (dsb) {
> +		intel_dsb_poll(dsb, EDP_PSR2_STATUS(display, cpu_transcoder),
> +			       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 0, 200,
> +			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);

The paramters look like they'll fit in the register. We should probably 
add some warns to intel_dsb_poll() to validate that though...

> +		return true;
> +	}
> +
>  	return intel_de_wait_for_clear(display,
>  				       EDP_PSR2_STATUS(display, cpu_transcoder),
>  				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP,
> @@ -3008,11 +3017,19 @@ _psr2_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state
>  }
>  
>  static int
> -_psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state)
> +_psr1_ready_for_pipe_update_locked(const struct intel_crtc_state *new_crtc_state,
> +				   struct intel_dsb *dsb)
>  {
>  	struct intel_display *display = to_intel_display(new_crtc_state);
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
>  
> +	if (dsb) {
> +		intel_dsb_poll(dsb, psr_status_reg(display, cpu_transcoder),
> +			       EDP_PSR_STATUS_STATE_MASK, 0, 200,
> +			       PSR_IDLE_TIMEOUT_MS * 1000 / 200);
> +		return true;
> +	}
> +
>  	return intel_de_wait_for_clear(display,
>  				       psr_status_reg(display, cpu_transcoder),
>  				       EDP_PSR_STATUS_STATE_MASK,
> @@ -3045,9 +3062,11 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
>  			continue;
>  
>  		if (intel_dp->psr.sel_update_enabled)
> -			ret = _psr2_ready_for_pipe_update_locked(new_crtc_state);
> +			ret = _psr2_ready_for_pipe_update_locked(new_crtc_state,
> +								 NULL);
>  		else
> -			ret = _psr1_ready_for_pipe_update_locked(new_crtc_state);
> +			ret = _psr1_ready_for_pipe_update_locked(new_crtc_state,
> +								 NULL);
>  
>  		if (ret)
>  			drm_err(display->drm,
> @@ -3055,6 +3074,19 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
>  	}
>  }
>  
> +void intel_psr_wait_for_idle_dsb(const struct intel_crtc_state *new_crtc_state)
> +{
> +	if (!new_crtc_state->has_psr || new_crtc_state->has_panel_replay)
> +		return;
> +
> +	if (new_crtc_state->has_sel_update)
> +		_psr2_ready_for_pipe_update_locked(new_crtc_state,
> +						   new_crtc_state->dsb_commit);

Please pass the dsb all the way from the top so that it's easier to
change the DSB usage model if needed.

Otherwise lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	else
> +		_psr1_ready_for_pipe_update_locked(new_crtc_state,
> +						   new_crtc_state->dsb_commit);
> +}
> +
>  static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 9b061a22361f..0cd0542b2450 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -52,6 +52,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
>  void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
>  void intel_psr_short_pulse(struct intel_dp *intel_dp);
>  void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state);
> +void intel_psr_wait_for_idle_dsb(const struct intel_crtc_state *new_crtc_state);
>  bool intel_psr_enabled(struct intel_dp *intel_dp);
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
