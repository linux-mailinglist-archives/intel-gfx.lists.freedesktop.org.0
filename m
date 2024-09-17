Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CC997B3D7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8808010E4DC;
	Tue, 17 Sep 2024 17:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FtZU/dBj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F73010E4DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 17:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726595890; x=1758131890;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QaZfnda+N9bo/ra4L2kdhO3u2+D1yFI9a492apOemWw=;
 b=FtZU/dBjh+QExcnYicgkN0DU3pPOssMasvPjx552MigwfozW2uAMX8IH
 at5gFbT5jhNyGg66JBj+dkbaUnH7+wLQJZP3tc7UJpJIc5lCeNZM9ECQh
 4qgF6gBl2aviGA+j0j7H+1fyv95igtKf0qB/C2Mx41t1myiVlWcnpFb0w
 Yj42C1DjteMWeno6w4MaohRl27aMRfTTUBK4B9LXGnnnfaS5Fmj5XvHwu
 7iuDaPr3kX4BLuJdRu6IdgCsxZEPiyXVnyVazEL8U7LV+nKklEIsviVA8
 08Lc1JdP4ZlPekPYbz2J6QNKDU2Ol/8A8xGWCUzvYhsn1/WoaGN8+0Xgz w==;
X-CSE-ConnectionGUID: D+mFZHckQneCY4t28MLiOA==
X-CSE-MsgGUID: YVQvkDJ2T0+A9Zk8iXUlJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25628463"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25628463"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:58:10 -0700
X-CSE-ConnectionGUID: wFU+p3r4TpOBW2yuGOUa7A==
X-CSE-MsgGUID: 16CHmupUTVq+iOq8IsBSHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69373692"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Sep 2024 10:58:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2024 20:58:07 +0300
Date: Tue, 17 Sep 2024 20:58:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add block_dc6_needed variable
 into intel_crtc
Message-ID: <ZunDL2o0m8E8kt1R@intel.com>
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
 <20240917063600.3086259-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240917063600.3086259-2-jouni.hogander@intel.com>
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

On Tue, Sep 17, 2024 at 09:35:59AM +0300, Jouni Högander wrote:
> We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
> prevent DC6 in case of Panel Replay. This causes problems if user-space is
> polling for vblank events. For this purpose add new block_dc6_needed
> variable into intel_crtc. Check if eDP Panel Replay is possible and set the
> variable accordingly.
> 
> v3: check that encoder is dp
> v2: set/clear block_dc6_needed in intel_crtc_vblank_on/off
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c       | 17 +++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_types.h  |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_psr.c        |  1 +
>  3 files changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index aed3853952be8..34a60b5b1e55b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -24,6 +24,7 @@
>  #include "intel_display_irq.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> @@ -123,6 +124,20 @@ u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state)
>  void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_encoder *encoder;
> +
> +	for_each_encoder_on_crtc(crtc->base.dev, &crtc->base, encoder) {
> +		struct intel_dp *intel_dp;
> +
> +		if (!intel_encoder_is_dp(encoder))
> +			continue;
> +
> +		intel_dp = enc_to_intel_dp(encoder);
> +
> +		if (intel_dp_is_edp(intel_dp) &&
> +		    CAN_PANEL_REPLAY(intel_dp))
> +			crtc->block_dc6_needed = true;
> +	}

This could just a function provided by intel_psr.c so that
we don't have to to see any of the details.

Is there some reason this isn't simply looking at
crtc_state->has_panel_replay?

>  
>  	assert_vblank_disabled(&crtc->base);
>  	drm_crtc_set_max_vblank_count(&crtc->base,
> @@ -150,6 +165,8 @@ void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state)
>  
>  	drm_crtc_vblank_off(&crtc->base);
>  	assert_vblank_disabled(&crtc->base);
> +
> +	crtc->block_dc6_needed = false;
>  }
>  
>  struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 000ab373c8879..df0c3eb750809 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1413,6 +1413,13 @@ struct intel_crtc {
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> +
> +	/*
> +	 * We need to block DC6 entry in case of Panel Replay as enabling VBI doesn't
> +	 * prevent DC6 in case of Panel Replay. This causes problems if user-space is
> +	 * polling for vblank events.
> +	 */

We should point out the fact that panel replay turns the
link off only while in DC states. Otherwise I'm sure to
get confused by this again in the future.

> +	u8 block_dc6_needed;

That sounds a bit too generic perhaps. block_dc_for_vblank or something?

>  };
>  
>  struct intel_plane {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4f29ac32ff85b..957f470b08fe8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -35,6 +35,7 @@
>  #include "intel_cursor_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
