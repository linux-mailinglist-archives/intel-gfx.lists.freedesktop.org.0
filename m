Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09772C8DDC1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFE410E7F6;
	Thu, 27 Nov 2025 10:57:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijLSjTqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B9C10E7BE;
 Thu, 27 Nov 2025 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764241027; x=1795777027;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ao+pkl3cVWvWYtMOiCLkqAudNogzbUpelxFO0eFNYng=;
 b=ijLSjTqnsFFce9zM2gf8PAaRrw0T7MhPYmviXhlUok6LyDumBrmIkFUI
 3TYUgTyPGZzF0Qsn8/6S/XXUXw/dzk276fPA0hjEGtvbLI66oXY307EnI
 HcZeH25K6IeLKvgIsDX+iZgGMdzqUNnyQ00szMg+dHzEfnv59hG2qIWHk
 DLGwPnKKFK+P5XMxcS3yI9pjrfODCb1dhzApWlfihIwihGuocZcHcdw0k
 RPA4V7No1TGKmH+JJEAVw+aOmGEYgEecnVwR8NxfkHPlPT433o7EZbDsW
 SuQEJuY2akZylsPuy/xwp6TsvduUGU3pftzxOWGeje7lFAWVGsmzhhXlC A==;
X-CSE-ConnectionGUID: jskDD8bZTlKfdypnELYr+w==
X-CSE-MsgGUID: 0GRfmhh5Ry6DpLVRKhcFTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="91766390"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="91766390"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:57:06 -0800
X-CSE-ConnectionGUID: ECYTp6DUSCyo+h1TLDsdiQ==
X-CSE-MsgGUID: wHSE5SpYTAOeW2aihmWHXQ==
X-ExtLoop1: 1
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:57:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v9 16/17] drm/i915/display: Add function to configure
 event for dc balance
In-Reply-To: <20251127091614.648791-17-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-17-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 27 Nov 2025 12:57:01 +0200
Message-ID: <8491ef6cd5f8f06d72337eb676ba50b037b0829e@intel.com>
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

On Thu, 27 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Configure pipe dmc event for dc balance enable/disable.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c |  2 ++
>  3 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 147adcd18320..8de8e69780fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -859,6 +859,21 @@ static void dmc_configure_event(struct intel_display *display,
>  		      dmc_id, num_handlers, event_id);
>  }
>  
> +/*
> + * intel_dmc_configure_dc_balance_event() - Configure event
> + * for dc balance enable/disable
> + * @display: display instance
> + * @pipe: pipe which register use to block
> + * @enable: enable/disable
> + */

How is this comment helpful?

> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable)
> +{
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
> +}
> +
>  /**
>   * intel_dmc_block_pkgc() - block PKG C-state
>   * @display: display instance
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 9c6a42fc820e..3d8a9a593319 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
>  void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
>  void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>  			  bool block);
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable);
>  void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
>  							    enum pipe pipe, bool enable);
>  void intel_dmc_fini(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 286ffa35107b..ec2e5a94a99e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -809,6 +809,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>  		       crtc_state->vrr.dc_balance.slope);
>  	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
>  		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_dmc_configure_dc_balance_event(display, pipe, true);
>  	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>  		       ADAPTIVE_SYNC_COUNTER_EN);
>  	intel_pipedmc_dcb_enable(NULL, crtc);
> @@ -826,6 +827,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>  		return;
>  
>  	intel_pipedmc_dcb_disable(NULL, crtc);
> +	intel_dmc_configure_dc_balance_event(display, pipe, false);
>  	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
>  	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>  	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);

-- 
Jani Nikula, Intel
