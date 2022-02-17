Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F924BA83F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 19:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0D110E1EA;
	Thu, 17 Feb 2022 18:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F97610E1EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 18:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645122642; x=1676658642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vgDyCsWZBkuWdY0SQFvqQzCUSzo0U4lrkk+xQxQO3eI=;
 b=glB5jqISLDb4Y5fVBhMyQkK/RbtbfNnqKMhZGUAsCJS3czr2W3utbTGq
 tI791IDHOJzDM5fJlSr4Yxcqs2HNwC5WEwCnPDHDxvsq9KBPNmTS85OIj
 we0kmYrlgWu1wGn/7OlQrfOt9WXQ4sijP6RRZIXTShmeqyYmuSrPLFZY1
 0/D4v0Qh6s77P9+n+XqwFZVJ8K30DEI4+LYVUQ4B5AAeZGuvlOZ4PIrl3
 y8l4K8dRPmgjzsDkwe6kiIOxCo9lVNd3kjs8Ev3WcgH52J1Zjt4h7JuI2
 yaOzDoByfv8G5hRUs2yAVbvtI8DQ/TAJoZWvGeFldzIL5XjdTGMDEcYPi Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="314208705"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="314208705"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:30:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="503042758"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:30:40 -0800
Date: Thu, 17 Feb 2022 20:31:00 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220217183100.GB3823@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214091811.13725-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Split pre-icl vs. icl+ SAGV
 hooks apart
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

On Mon, Feb 14, 2022 at 11:18:10AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> To further reduce the confusion between the pre-icl vs. icl+
> SAGV codepaths let's do a full split.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 120 ++++++++++++++++++++------------
>  1 file changed, 77 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 068870b17c43..8b70cdc3b58b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3785,34 +3785,44 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
>  	return 0;
>  }
>  
> -void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> +static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =
> +		intel_atomic_get_new_bw_state(state);
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	if (!intel_can_enable_sagv(i915, new_bw_state))
> +		intel_disable_sagv(i915);
> +}
> +
> +static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =
> +		intel_atomic_get_new_bw_state(state);
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	if (intel_can_enable_sagv(i915, new_bw_state))
> +		intel_enable_sagv(i915);
> +}
> +
> +static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	const struct intel_bw_state *new_bw_state;
> -	const struct intel_bw_state *old_bw_state;
> -	u32 new_mask = 0;
> +	const struct intel_bw_state *old_bw_state =
> +		intel_atomic_get_old_bw_state(state);
> +	const struct intel_bw_state *new_bw_state =
> +		intel_atomic_get_new_bw_state(state);
> +	u32 new_mask;
>  
> -	/*
> -	 * Just return if we can't control SAGV or don't have it.
> -	 * This is different from situation when we have SAGV but just can't
> -	 * afford it due to DBuf limitation - in case if SAGV is completely
> -	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> -	 * as it will throw an error. So have to check it here.
> -	 */
> -	if (!intel_has_sagv(dev_priv))
> -		return;
> -
> -	new_bw_state = intel_atomic_get_new_bw_state(state);
>  	if (!new_bw_state)
>  		return;
>  
> -	if (DISPLAY_VER(dev_priv) < 11) {
> -		if (!intel_can_enable_sagv(dev_priv, new_bw_state))
> -			intel_disable_sagv(dev_priv);
> -		return;
> -	}
> -
> -	old_bw_state = intel_atomic_get_old_bw_state(state);
>  	/*
>  	 * Nothing to mask
>  	 */
> @@ -3837,34 +3847,18 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
>  	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
>  }
>  
> -void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> +static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	const struct intel_bw_state *new_bw_state;
> -	const struct intel_bw_state *old_bw_state;
> +	const struct intel_bw_state *old_bw_state =
> +		intel_atomic_get_old_bw_state(state);
> +	const struct intel_bw_state *new_bw_state =
> +		intel_atomic_get_new_bw_state(state);
>  	u32 new_mask = 0;
>  
> -	/*
> -	 * Just return if we can't control SAGV or don't have it.
> -	 * This is different from situation when we have SAGV but just can't
> -	 * afford it due to DBuf limitation - in case if SAGV is completely
> -	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> -	 * as it will throw an error. So have to check it here.
> -	 */
> -	if (!intel_has_sagv(dev_priv))
> -		return;
> -
> -	new_bw_state = intel_atomic_get_new_bw_state(state);
>  	if (!new_bw_state)
>  		return;
>  
> -	if (DISPLAY_VER(dev_priv) < 11) {
> -		if (intel_can_enable_sagv(dev_priv, new_bw_state))
> -			intel_enable_sagv(dev_priv);
> -		return;
> -	}
> -
> -	old_bw_state = intel_atomic_get_old_bw_state(state);
>  	/*
>  	 * Nothing to unmask
>  	 */
> @@ -3882,6 +3876,46 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
>  	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
>  }
>  
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >= 11)
> +		icl_sagv_pre_plane_update(state);
> +	else
> +		skl_sagv_pre_plane_update(state);
> +}
> +
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >= 11)
> +		icl_sagv_post_plane_update(state);
> +	else
> +		skl_sagv_post_plane_update(state);
> +}
> +
>  static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -- 
> 2.34.1
> 
