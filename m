Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56072A49CFD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 16:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F168710ECD0;
	Fri, 28 Feb 2025 15:14:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzyIOmFP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1DA10ECD0;
 Fri, 28 Feb 2025 15:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740755683; x=1772291683;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BosQcKF0xbUdCZskmdNwHBGtWScHVCVJWXHGtFQcuuQ=;
 b=bzyIOmFPus7mKLFAAftfm49aWCyi0i3sRrbJzzjJzzoGe3XfpuVBhbil
 bk/Z49in7/YeRfn1JuyQJs29FTTxHYGv1tZYRttcrgIEu8s4/VqLUzJ4Q
 qKK4b05LdPF7UoMSX/H5AOKGBX1TxrkQ6Ze58adfRrP7nek3LgF+EiIvv
 fN+796e9+/+rYcQGU8r8pc0De2nBh5rJOcl3YEgNmW3/Hj9AfzJPR2aob
 GOuFwKUb9CpAj+NSKELQw0GC29UPPJQBoA0U7fK3vLc8zkbA29Md3NZqS
 k/jcdMX9pG/10ax5kXYXKTBMBTBk3qn4Pzuc/y1B7P1j/PR2ZbWbRhupC Q==;
X-CSE-ConnectionGUID: ZWSC3Sz6SCSd+hZJSDHV4A==
X-CSE-MsgGUID: qtnF/Nj9RdGHVN0c2xZK/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41534163"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41534163"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 07:14:43 -0800
X-CSE-ConnectionGUID: tREm9qMTReSVXNElSDg1RA==
X-CSE-MsgGUID: iEi5bqXpQYahbNkXB4b/3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122597423"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Feb 2025 07:14:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2025 17:14:39 +0200
Date: Fri, 28 Feb 2025 17:14:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Message-ID: <Z8HS36_mC1kNCN93@intel.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
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

On Tue, Feb 25, 2025 at 11:39:04PM +0530, Chaitanya Kumar Borah wrote:
> >From PTL, LUT registers are made double buffered. This helps us
> to program them in the active region without any concern of tearing.
> This particulary helps in case of displays with high refresh rates
> where vblank periods are shorter.
> 
> This patch makes the following changes
> 
> 	- Adds the macro HAS_DOUBLE_BUFFERED_LUT() to distinguish
> 	  platforms that have double buffered LUT registers.
> 
> 	- Program LUT values in active region through
> 	  intel_pre_update_crtc()
> 
> 	- Disable updating of LUT values during vblank.
> 
> 	- Disable pre-loading of LUT values as they are no longer
> 	  single buffered.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c          | 4 ++++
>  drivers/gpu/drm/i915/display/intel_crtc.c           | 4 +++-
>  drivers/gpu/drm/i915/display/intel_display.c        | 6 +++++-
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  4 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index cfe14162231d..c3ee34b96c15 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2022,6 +2022,10 @@ static bool intel_can_preload_luts(struct intel_atomic_state *state,
>  {
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> +		return false;
>  
>  	return !old_crtc_state->post_csc_lut &&
>  		!old_crtc_state->pre_csc_lut;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 5b2603ef2ff7..927f9acf61c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -432,10 +432,12 @@ static void intel_crtc_vblank_work(struct kthread_work *base)
>  	struct intel_crtc_state *crtc_state =
>  		container_of(work, typeof(*crtc_state), vblank_work);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
>  	trace_intel_crtc_vblank_work_start(crtc);
>  
> -	intel_color_load_luts(crtc_state);
> +	if (!HAS_DOUBLE_BUFFERED_LUT(display))

Wrong place. You don't even want to schedule the vblank worker
for this.

> +		intel_color_load_luts(crtc_state);
>  
>  	if (crtc_state->uapi.event) {
>  		spin_lock_irq(&crtc->base.dev->event_lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 065fdf6dbb88..919e236a9650 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6879,9 +6879,13 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>  
>  	if (!modeset &&
>  	    intel_crtc_needs_color_update(new_crtc_state) &&
> -	    !new_crtc_state->use_dsb)
> +	    !new_crtc_state->use_dsb) {
>  		intel_color_commit_noarm(NULL, new_crtc_state);
>  
> +		if (HAS_DOUBLE_BUFFERED_LUT(display))
> +			intel_color_load_luts(new_crtc_state);

Explanation missing on the double buffering behaviour of the LUT.
This now assumes that it's not self-arming, and therefore some
other register must be the arming register. Which register is it?

> +	}
> +
>  	if (!new_crtc_state->use_dsb)
>  		intel_crtc_planes_update_noarm(NULL, state, crtc);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index fc33791f02b9..419d0213e412 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -155,6 +155,7 @@ struct intel_display_platforms {
>  #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
>  #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>  #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
> +#define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
>  #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>  #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>  #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
