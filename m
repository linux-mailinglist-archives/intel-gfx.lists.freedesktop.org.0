Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5C6A421A0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E1610E3A4;
	Mon, 24 Feb 2025 13:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiOb60Z2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7427E10E242;
 Mon, 24 Feb 2025 10:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740394177; x=1771930177;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WApMRE6d5MEs8iZSeeeorrQRk9fPlEkr4fiK9PffuHg=;
 b=fiOb60Z2Joez7ycHwR1F1Jz7etYjypxwhaNeAtBYKyw4HRjwpt+IWVHq
 1kZEj1zEHZIOUChkY6M+VL+n7DQ6TArGEvPlkr/SY2muI+8AjKQLXhN40
 NJ3Uc1TzAyhmmwSLhhAs++N0S+AUnaDee7NPR/mQ58g5HJyWYnR98i4VC
 n/U46spAmGx4I20lMHtSCotmnhm1QSySafXtf71q1tOWofFXj6RVZkrIl
 /46+4BaYG2uA+BobuXaUlg5GT0CcLOY1KQM7c/EKCFs1twlA/7HjvdYRJ
 wyVmHwWAsKqjJH7e5qY6QPvo3S3y0uRfhhppwS8n4u49TWpcaWofZblVB g==;
X-CSE-ConnectionGUID: Z6IuKsaDRHazdhtqd+YaPA==
X-CSE-MsgGUID: Em1Ti9N/Sf2O9FeSWHzQaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="51357861"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="51357861"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:49:36 -0800
X-CSE-ConnectionGUID: xDlH9HphQWWLtQ8nZ1Bz8w==
X-CSE-MsgGUID: CuuT6ZNTSA++WkFJHZDsrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="153226683"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:49:34 -0800
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
Date: Mon, 24 Feb 2025 12:49:30 +0200
Message-ID: <87o6yr7h39.fsf@intel.com>
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

It's already there. We have the includes sorted so it would be easier to
spot...

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
