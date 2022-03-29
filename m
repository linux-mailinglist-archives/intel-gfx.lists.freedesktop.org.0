Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDA14EAA90
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 11:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5171F10E80B;
	Tue, 29 Mar 2022 09:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA5710E807
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 09:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648546155; x=1680082155;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z0c4C/wDU1yaEMUEcaV0YtQCiIXw5dWLXN6rNo+Cq9o=;
 b=axAvj4j3LRfmOrlK1uE+DDbY0q6g6uDj6DfMCTN3a4c8SbiPT+GIyhCo
 nmPjPKIcyBGEYuFkRJKW62DE9Q2IR6g97RTEIiFhyUjzx4OywZtbNsRMb
 miYTRX+q/yK1iL3pCiyNqMmvuW2Cex7LyjE3me7m51cWTWX8tStbglV8p
 5FckjqIL4lvWtDx7xM9z9E6zmiCHklfqsvmbWKvm/y92Fg2ZUfjoQNLZk
 WzlCBjmZtqXIHTniFamE6r1c7jDymM/8C4hQXQXzTBBk+JoipzqX7FdXW
 GPIDON/ZfsHIEucNJLLiW91s+HX84zniGTUZUymTB9shwC2qYrk6ixuM2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="284104271"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="284104271"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:29:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="652814084"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:29:13 -0700
Date: Tue, 29 Mar 2022 12:29:54 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220329092954.GD1336@intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
 <20220224165103.15682-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224165103.15682-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Split color_commit() into
 noarm+arm pair
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

On Thu, Feb 24, 2022 at 06:51:02PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> To reduce the amount of registers written during the vblank evade
> critical section let's also split the .color_commit() hook to
> noarm+arm pair. The noarm hook runs before the vblank evasion
> with the arm hook staying inside the critical section.
> 
> Just the framework here, actually moving stuff out into the noarm
> hook will follow.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   | 59 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_color.h   |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++--
>  3 files changed, 56 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index e94ec57260f1..df775c6179b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -31,12 +31,21 @@
>  struct intel_color_funcs {
>  	int (*color_check)(struct intel_crtc_state *crtc_state);
>  	/*
> -	 * Program double buffered color management registers during
> -	 * vblank evasion. The registers should then latch during the
> -	 * next vblank start, alongside any other double buffered registers
> -	 * involved with the same commit.
> +	 * Program non-arming double buffered color management registers
> +	 * before vblank evasion. The registers should then latch after
> +	 * the arming register is written (by color_commit_arm()) during
> +	 * the next vblank start, alongside any other double buffered
> +	 * registers involved with the same commit. This hook is optional.
>  	 */
> -	void (*color_commit)(const struct intel_crtc_state *crtc_state);
> +	void (*color_commit_noarm)(const struct intel_crtc_state *crtc_state);
> +	/*
> +	 * Program arming double buffered color management registers
> +	 * during vblank evasion. The registers (and whatever other registers
> +	 * they arm that were written by color_commit_noarm) should then latch
> +	 * during the next vblank start, alongside any other double buffered
> +	 * registers involved with the same commit.
> +	 */
> +	void (*color_commit_arm)(const struct intel_crtc_state *crtc_state);
>  	/*
>  	 * Load LUTs (and other single buffered color management
>  	 * registers). Will (hopefully) be called during the vblank
> @@ -491,7 +500,7 @@ static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw
>  				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
>  }
>  
> -static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
> +static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -504,7 +513,7 @@ static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(dev_priv, PIPECONF(pipe), val);
>  }
>  
> -static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
> +static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -519,7 +528,7 @@ static void ilk_color_commit(const struct intel_crtc_state *crtc_state)
>  	ilk_load_csc_matrix(crtc_state);
>  }
>  
> -static void hsw_color_commit(const struct intel_crtc_state *crtc_state)
> +static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -530,7 +539,7 @@ static void hsw_color_commit(const struct intel_crtc_state *crtc_state)
>  	ilk_load_csc_matrix(crtc_state);
>  }
>  
> -static void skl_color_commit(const struct intel_crtc_state *crtc_state)
> +static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -1169,11 +1178,19 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
>  	dev_priv->color_funcs->load_luts(crtc_state);
>  }
>  
> -void intel_color_commit(const struct intel_crtc_state *crtc_state)
> +void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	dev_priv->color_funcs->color_commit(crtc_state);
> +	if (dev_priv->color_funcs->color_commit_noarm)
> +		dev_priv->color_funcs->color_commit_noarm(crtc_state);
> +}
> +
> +void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	dev_priv->color_funcs->color_commit_arm(crtc_state);
>  }
>  
>  static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
> @@ -2132,70 +2149,70 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
>  
>  static const struct intel_color_funcs chv_color_funcs = {
>  	.color_check = chv_color_check,
> -	.color_commit = i9xx_color_commit,
> +	.color_commit_arm = i9xx_color_commit_arm,
>  	.load_luts = chv_load_luts,
>  	.read_luts = chv_read_luts,
>  };
>  
>  static const struct intel_color_funcs i965_color_funcs = {
>  	.color_check = i9xx_color_check,
> -	.color_commit = i9xx_color_commit,
> +	.color_commit_arm = i9xx_color_commit_arm,
>  	.load_luts = i965_load_luts,
>  	.read_luts = i965_read_luts,
>  };
>  
>  static const struct intel_color_funcs i9xx_color_funcs = {
>  	.color_check = i9xx_color_check,
> -	.color_commit = i9xx_color_commit,
> +	.color_commit_arm = i9xx_color_commit_arm,
>  	.load_luts = i9xx_load_luts,
>  	.read_luts = i9xx_read_luts,
>  };
>  
>  static const struct intel_color_funcs icl_color_funcs = {
>  	.color_check = icl_color_check,
> -	.color_commit = skl_color_commit,
> +	.color_commit_arm = skl_color_commit_arm,
>  	.load_luts = icl_load_luts,
>  	.read_luts = icl_read_luts,
>  };
>  
>  static const struct intel_color_funcs glk_color_funcs = {
>  	.color_check = glk_color_check,
> -	.color_commit = skl_color_commit,
> +	.color_commit_arm = skl_color_commit_arm,
>  	.load_luts = glk_load_luts,
>  	.read_luts = glk_read_luts,
>  };
>  
>  static const struct intel_color_funcs skl_color_funcs = {
>  	.color_check = ivb_color_check,
> -	.color_commit = skl_color_commit,
> +	.color_commit_arm = skl_color_commit_arm,
>  	.load_luts = bdw_load_luts,
>  	.read_luts = NULL,
>  };
>  
>  static const struct intel_color_funcs bdw_color_funcs = {
>  	.color_check = ivb_color_check,
> -	.color_commit = hsw_color_commit,
> +	.color_commit_arm = hsw_color_commit_arm,
>  	.load_luts = bdw_load_luts,
>  	.read_luts = NULL,
>  };
>  
>  static const struct intel_color_funcs hsw_color_funcs = {
>  	.color_check = ivb_color_check,
> -	.color_commit = hsw_color_commit,
> +	.color_commit_arm = hsw_color_commit_arm,
>  	.load_luts = ivb_load_luts,
>  	.read_luts = NULL,
>  };
>  
>  static const struct intel_color_funcs ivb_color_funcs = {
>  	.color_check = ivb_color_check,
> -	.color_commit = ilk_color_commit,
> +	.color_commit_arm = ilk_color_commit_arm,
>  	.load_luts = ivb_load_luts,
>  	.read_luts = NULL,
>  };
>  
>  static const struct intel_color_funcs ilk_color_funcs = {
>  	.color_check = ilk_color_check,
> -	.color_commit = ilk_color_commit,
> +	.color_commit_arm = ilk_color_commit_arm,
>  	.load_luts = ilk_load_luts,
>  	.read_luts = ilk_read_luts,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
> index 173727aaa24d..fd873425e082 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.h
> +++ b/drivers/gpu/drm/i915/display/intel_color.h
> @@ -14,7 +14,8 @@ struct drm_property_blob;
>  
>  void intel_color_init(struct intel_crtc *crtc);
>  int intel_color_check(struct intel_crtc_state *crtc_state);
> -void intel_color_commit(const struct intel_crtc_state *crtc_state);
> +void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
> +void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
>  void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
>  void intel_color_get_config(struct intel_crtc_state *crtc_state);
>  int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 705f23be409c..741f5249db6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1778,7 +1778,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
>  	 * clocks enabled
>  	 */
>  	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> @@ -1969,7 +1970,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	 * clocks enabled
>  	 */
>  	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
>  	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
>  	if (DISPLAY_VER(dev_priv) < 9)
>  		intel_disable_primary_plane(new_crtc_state);
> @@ -2389,7 +2391,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	i9xx_pfit_enable(new_crtc_state);
>  
>  	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> @@ -2428,7 +2431,8 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  	i9xx_pfit_enable(new_crtc_state);
>  
>  	intel_color_load_luts(new_crtc_state);
> -	intel_color_commit(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
>  	/* update DSPCNTR to configure gamma for pipe bottom color */
>  	intel_disable_primary_plane(new_crtc_state);
>  
> @@ -7897,7 +7901,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>  	if (!modeset) {
>  		if (new_crtc_state->uapi.color_mgmt_changed ||
>  		    new_crtc_state->update_pipe)
> -			intel_color_commit(new_crtc_state);
> +			intel_color_commit_arm(new_crtc_state);
>  
>  		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  			bdw_set_pipemisc(new_crtc_state);
> @@ -7977,6 +7981,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  
>  	intel_fbc_update(state, crtc);
>  
> +	if (!modeset &&
> +	    (new_crtc_state->uapi.color_mgmt_changed ||
> +	     new_crtc_state->update_pipe))
> +		intel_color_commit_noarm(new_crtc_state);
> +
>  	intel_crtc_planes_update_noarm(state, crtc);
>  
>  	/* Perform vblank evasion around commit operation */
> @@ -9880,7 +9889,8 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
>  		}
>  
>  		/* Disable any background color/etc. set by the BIOS */
> -		intel_color_commit(crtc_state);
> +		intel_color_commit_noarm(crtc_state);
> +		intel_color_commit_arm(crtc_state);
>  	}
>  
>  	/* Adjust the state of the output pipe according to whether we
> -- 
> 2.34.1
> 
