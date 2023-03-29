Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA06CD9A7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CAC10E530;
	Wed, 29 Mar 2023 12:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C13F10E530
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 12:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680094338; x=1711630338;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6LmQd2V94YnydSMCzhWYdy7KZ7chsJth1JdCieKAje4=;
 b=AUD+agLF+aJ7pgE81CviIhs6t3c7Tteo651LVfTB/WUrEqZ1pFovveXu
 CPzb7GMX+Y7nRO5rmYf0nPSvsxq7twHzYOHhtBvpkLONRiavBiuMjVhAI
 qg+1NEDnmT79reQhLZHQMhU7AclalZ0tqQ/a6utObi+/TZRVB9vMl6HQX
 Z5QcumxtsQUAG6I5v0BUJIeglQEx1X2Y71iECJbVjHR1MDwtvk6IgrCJJ
 kqmPeQiuWvqzD6yHQNAo/m11C1dA+slJd3mgUA8C8aDb9wDUrxyDY6jkz
 tjNKoQJOnX6IE/4F5JBfmQUzLVyDl/hlvciB1xYCF+/bAsGUDJ7gZEyZ0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="324769499"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="324769499"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:52:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677769071"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677769071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 29 Mar 2023 05:52:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 15:52:14 +0300
Date: Wed, 29 Mar 2023 15:52:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCQ0fuLJRnsGSRs0@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-7-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329094532.221450-7-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 6/6] drm/i915/psr: Implement Display WA
 #1136
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 29, 2023 at 12:45:32PM +0300, Jouni Högander wrote:
> Implement Display WA #1136 for SKL/BXT.

Pre-ICL is more accurate now.

Maybe also mention here that the chicken bit approach
might work for KBL+ but implementing that is left
out for the time being.

> 
> Bspec: 21664
> 
> v2: Handle disable psr in pre/post plane hooks
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c     | 7 +++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c | 5 -----
>  2 files changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index f86d9f83429f..52f73c65d365 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1968,11 +1968,14 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  		 * - PSR disabled in new state
>  		 * - All planes will go inactive
>  		 * - Changing between PSR versions
> +		 * - Display WA #1136: skl, bxt
>  		 */
>  		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
>  		needs_to_disable |= !new_crtc_state->has_psr;
>  		needs_to_disable |= !new_crtc_state->active_planes;
>  		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
> +		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
> +			new_crtc_state->wm_level_disabled;
>  
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
> @@ -2007,6 +2010,10 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
>  		keep_disabled |= psr->sink_not_reliable;
>  		keep_disabled |= !crtc_state->active_planes;
>  
> +		/* Display WA #1136: skl, bxt */
> +		keep_disabled |= DISPLAY_VER(dev_priv) < 11 &&
> +			crtc_state->wm_level_disabled;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 7e2e76afbf2a..5296a20d62d3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2281,11 +2281,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
>  	 */
>  	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
>  
> -	/*
> -	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
> -	 * now) perhaps?
> -	 */
> -
>  	for (level++; level < i915->display.wm.num_levels; level++) {
>  		enum plane_id plane_id;
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
