Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CC2A32929
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1EC410E8D6;
	Wed, 12 Feb 2025 14:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fu+4Alfv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8545410E8D6;
 Wed, 12 Feb 2025 14:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739371958; x=1770907958;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QwNdwVY86RqulF/BkzyMu2HFsxInxjcU+ROZgWxXj5s=;
 b=Fu+4AlfvWYLRT/mPcV/Wp7nofVjJuuXeOscOlrOIJBv2oitZBZc9/vFW
 dV6rwTT8EHRBzH3tYAW+YoEg6EwXpiJM/u17qvxK91UF8hpxl0vFRggZs
 xbOFPJxQi9vBy6iWTnqbGy0b9sKbeLOTlLcSDCUIYz0uidVSYlETFN6iW
 X6WtL37Iv4kveHkuxz4glZLx0QD7o43bdzgYTiVfc5mCB89nBc+RLyepv
 igfo/msTVC9Uc2Q31UqMAiLboZnIUz1+lTmFc1WraDHxCR2Dnmfoh/LAo
 7tG+fCIn3lz/HcL/Vf1Iy+GzWdHjOJaa3PSpZRCCuEP6X6ovj5CKWDk2z g==;
X-CSE-ConnectionGUID: 3swA6NphRKKQs28w7utsAw==
X-CSE-MsgGUID: qbyYZ3ZMSES4oWP/deqiZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39914325"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39914325"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:52:38 -0800
X-CSE-ConnectionGUID: LE9YBMloTRSbgqK0iPZUhw==
X-CSE-MsgGUID: GLZ5SUR8Tz24W8hb3f86YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113052468"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 06:52:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 16:52:35 +0200
Date: Wed, 12 Feb 2025 16:52:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH v7 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z6y1s4Unvrx0Vn8z@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
 <20250212075742.995022-15-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250212075742.995022-15-jouni.hogander@intel.com>
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

On Wed, Feb 12, 2025 at 09:57:42AM +0200, Jouni Högander wrote:
> Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
> usage also when PSR is enabled for LunarLake onwards.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0ba85623835c..a6966a664d87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7698,6 +7698,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
>  static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  				    struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =
> @@ -7713,7 +7714,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  	new_crtc_state->use_dsb =
>  		new_crtc_state->update_planes &&
>  		!new_crtc_state->do_async_flip &&
> -		!new_crtc_state->has_psr &&
> +		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&

Couldn't we also do it for !selective_fetch on earlier platforms?

>  		!new_crtc_state->scaler_state.scaler_users &&
>  		!old_crtc_state->scaler_state.scaler_users &&
>  		!intel_crtc_needs_modeset(new_crtc_state) &&
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
