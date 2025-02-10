Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FF4A2F3AF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3B510E5AF;
	Mon, 10 Feb 2025 16:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwWkNdmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499C810E390;
 Mon, 10 Feb 2025 16:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739205285; x=1770741285;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/Oy3wY/RnwDkxnSHH6Nwd2rPVh0lK2Aes7P+ksPZyG4=;
 b=jwWkNdmHe7A6A6HohxfDCRgEgu8lRBTR9PdCdEg7Ij7jHyfjAA1So63/
 WmvIapLInA7H+Cgjf3pYo1l5Gh5XsF+oYH1b9H6t0MQDmw69zn/BHLRTa
 FNNL0DJvSJJ/pKMfAq/fyGMx+pNlzUYFA/CR6kMl9qFZKx0hmHSN8t2Ti
 V36TDLy5DJ4tpBKPUsGcPBFhe+mfNcHICDQf0F3tuaG84YiUnmeNAgsF1
 j56xNOp++herSzA7g4xSk5hj38UzeAlb2IH+amYBaQFP+d7CMlPyzGXkD
 4hKDWaS2woQA6f/2hBdORJijYQJE7eS0X6l/416dRxn3RJsD+vCsFh67U g==;
X-CSE-ConnectionGUID: BX8HGy1fQw2kwhtWLSL6xw==
X-CSE-MsgGUID: GElouJ6UTLSeOStGpquCEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50430924"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50430924"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:34:45 -0800
X-CSE-ConnectionGUID: bliyfc7QRxmLmj8uJ3kkyQ==
X-CSE-MsgGUID: M7L7x82WToOynYv60078Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112457935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:34:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:34:41 +0200
Date: Mon, 10 Feb 2025 18:34:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v6 10/12] drm/i915/psr: Add function for triggering
 "Frame Change" event
Message-ID: <Z6oqoXl72drpJ_ma@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-11-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127102846.1237560-11-jouni.hogander@intel.com>
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

On Mon, Jan 27, 2025 at 12:28:44PM +0200, Jouni Högander wrote:
> Add new function to trigger "Frame Change" event for ensuring we are waking
> up before vblank evasion.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 22 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h |  3 +++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index c6712312a04d4..945cab1537732 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -44,6 +44,7 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_snps_phy.h"
> +#include "intel_vblank.h"
>  #include "skl_universal_plane.h"
>  
>  /**
> @@ -2289,6 +2290,27 @@ bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state)
>  	return false;
>  }
>  
> +/**
> + * intel_psr_trigger_frame_change_event - Trigger "Frame Change" event
> + * @state: the atomic state
> + * @dsb: DSB context
> + * @crtc: the CRTC
> + *
> + * Generate PSR "Frame Change" event.
> + */
> +void intel_psr_trigger_frame_change_event(struct intel_atomic_state *state,
> +					  struct intel_dsb *dsb,

IIRC I made the dsb the first parameter everywhere else.
We should try to be consistent about it.

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +					  struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *crtc_state =
> +		intel_pre_commit_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	if (crtc_state->has_psr)
> +		intel_de_write_dsb(display, dsb,
> +				   CURSURFLIVE(display, crtc->pipe), 0);
> +}
> +
>  static u32 man_trk_ctl_enable_bit_get(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index e6eba6633a92b..1cd9ab8aa6e81 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -64,6 +64,9 @@ bool intel_psr_link_ok(struct intel_dp *intel_dp);
>  
>  void intel_psr_lock(const struct intel_crtc_state *crtc_state);
>  void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
> +void intel_psr_trigger_frame_change_event(struct intel_atomic_state *state,
> +					  struct intel_dsb *dsb,
> +					  struct intel_crtc *crtc);
>  void intel_psr_connector_debugfs_add(struct intel_connector *connector);
>  void intel_psr_debugfs_register(struct intel_display *display);
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
