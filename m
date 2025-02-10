Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38793A2F37A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 17:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C09B10E392;
	Mon, 10 Feb 2025 16:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2LSuHQr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C9410E391;
 Mon, 10 Feb 2025 16:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739204936; x=1770740936;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VQH0RKTzIqz2QJVm3/tz044M4xCqtBKgsaUzlht1cJ8=;
 b=M2LSuHQriIN/saCjJwlCMu/N1brB+3GbImyPi8Nj2dJkQAG4qPb34tIW
 U+NS+umSnpUbEnPojWV07wNpJD4EeReSw1IWTcqvNCdPcy3HgB+W3Ok79
 bX8OUMGL4kr5li6ZiCzTx4LW3Bi5cG7Oxj9q6lhC1m4Xs8FdW3Vq70VRb
 gH2Haqr9LlPkyr04+FNTv9xKjRw3ZTbkdvPv5acjEs+6yuaYoZL1AOPM0
 tM9sgpGlElwm2r2UCGuWyr1cNBLcXZ/vJUMGob+Iaz1JSDJHCkQxAoBza
 qN5VEPNJwmAYe3JU101ObDv13S/TT63gHcOT3Swibj+8qbtmYQmmmHFqB Q==;
X-CSE-ConnectionGUID: Nlw57rbmSDWGbhdYXAeCfQ==
X-CSE-MsgGUID: zw4inbmkQYGZkorLTr6rTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50429922"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50429922"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 08:28:56 -0800
X-CSE-ConnectionGUID: V4V6Px7cSuaPGWClZ9NGWQ==
X-CSE-MsgGUID: lKpd8yh/Rue9xRwUTkQQ+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112454925"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 08:28:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 18:28:52 +0200
Date: Mon, 10 Feb 2025 18:28:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v6 08/12] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken
 bit
Message-ID: <Z6opRMXBksZa3mVI@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-9-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127102846.1237560-9-jouni.hogander@intel.com>
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

On Mon, Jan 27, 2025 at 12:28:42PM +0200, Jouni Högander wrote:
> We have different approach on how flip is considered being complete. We are
> waiting for vblank on DSB and generate interrupt when it happens and this
> interrupt is considered as indication of completion -> we definitely do not
> want to skip vblank wait.
> 
> Also not skipping scanline wait shouldn't cause any problems if we are in
> DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
> we are not in DEEP_SLEEP evasion works same way as without PSR.
> 
> v2: add comment explaining why we are not setting DSB_SKIP_WAITS_EN
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 2f2812c239725..30782ab0b9082 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -164,17 +164,26 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
>  	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
>  }
>  
> +/*
> + * Bspec suggests that we should always set DSB_SKIP_WAITS_EN. We have approach
> + * different from what is explained in Bspec on how flip is considered being
> + * complete. We are waiting for vblank in DSB and generate interrupt when it
> + * happens and this interrupt is considered as indication of completion -> we
> + * definitely do not want to skip vblank wait. We also have concern what comes
> + * to skipping vblank evasion. I.e. arming registers are latched before we have
> + * managed writing them. Due to these reasons we are not setting
> + * DSB_SKIP_WAITS_EN.
> + */
>  static u32 dsb_chicken(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
>  {
>  	if (pre_commit_is_vrr_active(state, crtc))
> -		return DSB_SKIP_WAITS_EN |
> -			DSB_CTRL_WAIT_SAFE_WINDOW |
> +		return DSB_CTRL_WAIT_SAFE_WINDOW |
>  			DSB_CTRL_NO_WAIT_VBLANK |
>  			DSB_INST_WAIT_SAFE_WINDOW |
>  			DSB_INST_NO_WAIT_VBLANK;
>  	else
> -		return DSB_SKIP_WAITS_EN;
> +		return 0;
>  }
>  
>  static bool assert_dsb_has_room(struct intel_dsb *dsb)
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
