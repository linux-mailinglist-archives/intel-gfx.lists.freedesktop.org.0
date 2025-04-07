Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C12A7E739
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243CA10E521;
	Mon,  7 Apr 2025 16:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iMBGDFZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7A910E511;
 Mon,  7 Apr 2025 16:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744044673; x=1775580673;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OdaSzhsKXA62kCWHxUskbNXGe7Bybsc/+Yu7WNthExQ=;
 b=iMBGDFZN2iyldVHp1B4uHVtzDiIgEEhyQlhB+DGqYqyEdyEL9RFDXM6S
 zflnSA3BL34B8Dindpd96BSScNnMl/T2YyThebfmJNOqvzPTKPE2zw0Wo
 sLaJKSEg9EUMCy5xyueju9NQGnfspOd4nsfn8mRL9wFVFWTJVbk/wDNWQ
 ufPFzcEbgmduN4VmfmEN/BqsUG1qHJ1ryzJGu/e2jE5BjbK4eLsYsVe5g
 U/MH64NbiGKIJYMG2ic2lBBc0o7ELdnOUjP7pL7PeozTszyGiESmB8Zgr
 NEV8xQm9nrw5ZZ63p8LHzReIuSVYgNHUmOZizVJ9Do1JLEXFrqNgv7+wB A==;
X-CSE-ConnectionGUID: yO0e5TdVRl+kktXN6Sk6MA==
X-CSE-MsgGUID: jUDIP4R0Sqm1xrKgiCzWfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45457174"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45457174"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 09:51:13 -0700
X-CSE-ConnectionGUID: R+CtQDVcRwm5e987JPuU6g==
X-CSE-MsgGUID: bzWt5SQJQSKQotpG30pWUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133214411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Apr 2025 09:51:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Apr 2025 19:51:08 +0300
Date: Mon, 7 Apr 2025 19:51:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 08/11] drm/i915: use GOSUB to program doubled buffered
 LUT registers
Message-ID: <Z_QCfOqXvFoIDYSa@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-9-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407142359.1398410-9-chaitanya.kumar.borah@intel.com>
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

On Mon, Apr 07, 2025 at 07:53:56PM +0530, Chaitanya Kumar Borah wrote:
> With addition of double buffered GAMMA registers in PTL, we can now
> program them in the active region. Use GOSUB instruction of DSB to
> program them.
> 
> It is done in the following steps:
> 	1. intel_color_prepare_commit()
> 		- If the platform supports, prepare a dsb instance (dsb_color)
> 		  hooked to DSB0.
> 		- Add all the register write instructions to dsb_color through
> 		  the load_lut() hook
>                 - Do not add the vrr_send_push() logic to the buffer as it
> 		  should be taken care by dsb_commit instance of DSB0
>                 - Finish preparation of the buffer by aligning it to 64 bit
> 
> 	2. intel_atomic_dsb_finish()
> 		- Add the gosub instruction into the dsb_commit instance of DSB0
> 		  using intel_dsb_gosub()
> 		- If needed, add the vrr_send_push() logic to dsb_commit after it
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c    | 13 ++++++++---
>  drivers/gpu/drm/i915/display/intel_display.c  | 22 ++++++++++++++++---
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  3 files changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index bb2da3a53e9c..49429404bd82 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1982,20 +1982,27 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
>  		return;
>  
> -	crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
> +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> +		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
> +	else
> +		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
> +
>  	if (!crtc_state->dsb_color)
>  		return;
>  
>  	display->funcs.color->load_luts(crtc_state);
>  
> -	if (crtc_state->use_dsb) {
> +	if (crtc_state->use_dsb && !HAS_DOUBLE_BUFFERED_LUT(display)) {
>  		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
>  		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_interrupt(crtc_state->dsb_color);
>  	}
>  
> -	intel_dsb_finish(crtc_state->dsb_color);
> +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> +		intel_dsb_gosub_finish(crtc_state->dsb_color);
> +	else
> +		intel_dsb_finish(crtc_state->dsb_color);
>  }
>  
>  void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 69c1790199d3..85e28b4c9e66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7239,9 +7239,25 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		}
>  	}
>  
> -	if (new_crtc_state->dsb_color)
> -		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> -				new_crtc_state->dsb_color, true);
> +	if (new_crtc_state->dsb_color) {
> +		if (HAS_DOUBLE_BUFFERED_LUT(display)) {
> +			intel_dsb_gosub(new_crtc_state->dsb_commit,
> +					new_crtc_state->dsb_color);
> +
> +			if (new_crtc_state->use_dsb) {
> +				intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +
> +				intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> +				intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> +				intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
> +							  new_crtc_state);
> +				intel_dsb_interrupt(new_crtc_state->dsb_commit);
> +			}
> +		} else {
> +			intel_dsb_chain(state, new_crtc_state->dsb_commit,
> +					new_crtc_state->dsb_color, true);
> +		}
> +	}

The logic around the commit completion is getting very messy (it already
was pretty bad though).

maybe something like this:

bool intel_color_use_chained_dsb()
{
	return dsb_color && !HAS_DOUBLE_BUFFERED_LUT;
}

if (use_dsb) {
	do pipe/plane programming
}

if (use_chained_dsb())
	dsb_chain();
else if (dsb_color)
	dsb_gosub();

if (use_dsb && !use_chained_dsb() {
	do commit completion
}

>  
>  	intel_dsb_finish(new_crtc_state->dsb_commit);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 368b0d3417c2..14943b47824b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -157,6 +157,7 @@ struct intel_display_platforms {
>  #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
>  #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>  #define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
> +#define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
>  #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>  #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_DPT(__display)		(DISPLAY_VER(__display) >= 13)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
