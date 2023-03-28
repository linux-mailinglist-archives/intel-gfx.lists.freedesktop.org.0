Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 122EF6CBD86
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7971B10E17C;
	Tue, 28 Mar 2023 11:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E1B10E17C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680002784; x=1711538784;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3L6T2TABtY727KstTp4FzTgWiA4RdL/SXBzpuGWcf5A=;
 b=YJ6VrvMWJRiKr1id2iM6ps4rHq9cJXR4LovCjv/v6Cv/uupzasSfOk51
 tYhpsCJsomsN/0AXZ76lOTgS7EHEK0rVRSXhMRHvDOoZJTDA9r1nlmO5K
 AKC+pO18zLgJ5K5kwbXa+lRXZROLXsldamMkaGJSd6yb/pygMb9k5VVyk
 rjosOaze59jpUvCu5vtvznk3EyKQNdOoAsUjkhfYe9Cvrt+3nltUij2+c
 wGC6Iq/XZOd1zZ+UNnnooNlrYwEUBdPvzHoK9SI+4S1GoWNZ58dVtbu1W
 XDMouh2YUY2530WR26zrN7fcQjJsD9iNcwNg+DXYeJBtvRlfILaO5O6X5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="340562646"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="340562646"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:26:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686392171"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686392171"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 04:26:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 14:26:21 +0300
Date: Tue, 28 Mar 2023 14:26:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCLO3ZN8TC3ZpwAj@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-7-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322103412.123943-7-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 6/6] drm/i915/psr: Implement Display WA
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

On Wed, Mar 22, 2023 at 12:34:12PM +0200, Jouni Högander wrote:
> Implement Display WA #1136 for SKL/BXT.


> 
> Bspec: 21664
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c     | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
>  2 files changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b53c71c06105..24c3f75bb9d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1950,6 +1950,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  /*
>   * Wa_16013835468
>   * Wa_14015648006
> + * Display WA #1136: skl, bxt
>   */
>  static void wm_optimization_wa(struct intel_dp *intel_dp,
>  			   const struct intel_crtc_state *crtc_state)
> @@ -1957,6 +1958,17 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	bool set_wa_bit = false;
>  
> +	/*
> +	 * Display WA #1136: skl, bxt
> +	 * skl/bxt do not have chicken bit: disable PSR
> +	 */
> +	if (DISPLAY_VER(dev_priv) <= 9) {

If we limit the chicken bit to icl+ for now then this stuff
needs to be 'DISPLAY_VER < 11'.


> +		if (crtc_state->wm_level_disabled &&
> +		    intel_dp->psr.enabled)
> +			intel_psr_disable_locked(intel_dp);

This seems like it should be part of the pre_plane_update psr
disable.

> +		return;
> +	}
> +
>  	/* Wa_14015648006 */
>  	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	    IS_DISPLAY_VER(dev_priv, 11, 13))
> @@ -1999,12 +2011,17 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
>  		keep_disabled |= psr->sink_not_reliable;
>  		keep_disabled |= !crtc_state->active_planes;
>  
> +		/* Display WA #1136: skl, bxt */
> +		keep_disabled |= DISPLAY_VER(dev_priv) <= 9 &&
> +			crtc_state->wm_level_disabled;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  
>  		/*
>  		 * Wa_16013835468
>  		 * Wa_14015648006
> +		 * Display WA #1136: skl, bxt
>  		 */
>  		wm_optimization_wa(intel_dp, crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index afb751c024ba..ced61da8b496 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2278,11 +2278,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
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
