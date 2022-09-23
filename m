Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F835E756D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 10:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF5410E172;
	Fri, 23 Sep 2022 08:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C0010E172
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 08:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663920509; x=1695456509;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qYAu+SoLcP3TUl/iaV0LbDgbxLNyQl00mFY8T3k4upA=;
 b=lUWtwU7dpbpunTKkxiA8UDNBc2LrVc4MgUDmSz3sdH8UUhmXAl7r498l
 UZedHoXWJoVjuOwK8+GGVhKENUB2LSrCRpyW1+T4p8Ecy47xDMrpSm7pn
 caHyc9OEYdG92rD36VRNDVRMnndzdrsYHayc6hb6apNzyUy325BAEFE0y
 Nh4Ahj4zCNOZh7PlkXLRm2gbh8MCrbPutkcM43ZMP1OOML2bOro+yx2/N
 drsAeFjYXcNytUWQo7VrOsHpbjk27bjkDxOQnyChl//dxg+Lg2kHB8Cm/
 jT8AVZA/ynChfRhgWtzypMphGJ5kU+XlC00DpYcY5xU/14ULbtJfVlcHL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326870143"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326870143"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:08:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="597788784"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:08:27 -0700
Date: Fri, 23 Sep 2022 11:09:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <Yy1pq0DmegnkVdNn@intel.com>
References: <20220907081543.92268-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220907081543.92268-1-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend PSR support
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

On Wed, Sep 07, 2022 at 11:15:43AM +0300, Mika Kahola wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Meteorlake and display 14 platform don't have any PSR differences
> when comparing to Alderlake-P display, so it was only necessary to
> extend some checks to properly program hardware.
> 
> BSpec: 55229, 49196

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 31 +++++++++++++++---------
>  drivers/gpu/drm/i915/i915_reg.h          |  5 ++++
>  2 files changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 079b7d3d0c53..4170017969c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -515,7 +515,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  
>  	val |= psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
>  
> -	if (!IS_ALDERLAKE_P(dev_priv))
> +	if (DISPLAY_VER(dev_priv) <= 13 && !IS_ALDERLAKE_P(dev_priv))
>  		val |= EDP_SU_TRACK_ENABLE;
>  
>  	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
> @@ -598,7 +598,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  static bool
>  transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder trans)
>  {
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
>  		return trans == TRANSCODER_A || trans == TRANSCODER_B;
>  	else if (DISPLAY_VER(dev_priv) >= 12)
>  		return trans == TRANSCODER_A;
> @@ -678,7 +678,7 @@ dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum port port = dig_port->base.port;
>  
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
>  		return pipe <= PIPE_B && port <= PORT_B;
>  	else
>  		return pipe == PIPE_A && port == PORT_A;
> @@ -777,11 +777,11 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  		return intel_dp->psr.su_y_granularity == 4;
>  
>  	/*
> -	 * adl_p has 1 line granularity. For other platforms with SW tracking we
> -	 * can adjust the y coordinates to match sink requirement if multiple of
> -	 * 4.
> +	 * adl_p and display 14+ platforms has 1 line granularity.
> +	 * For other platforms with SW tracking we can adjust the y coordinates
> +	 * to match sink requirement if multiple of 4.
>  	 */
> -	if (IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
>  		y_granularity = intel_dp->psr.su_y_granularity;
>  	else if (intel_dp->psr.su_y_granularity <= 2)
>  		y_granularity = 4;
> @@ -864,7 +864,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	 * resolution requires DSC to be enabled, priority is given to DSC
>  	 * over PSR2.
>  	 */
> -	if (crtc_state->dsc.compression_enable) {
> +	if (crtc_state->dsc.compression_enable &&
> +	    (DISPLAY_VER(dev_priv) <= 13 && !IS_ALDERLAKE_P(dev_priv))) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 cannot be enabled since DSC is enabled\n");
>  		return false;
> @@ -1457,7 +1458,7 @@ static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
>  
>  static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
>  {
> -	return IS_ALDERLAKE_P(dev_priv) ?
> +	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
>  	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
>  	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>  }
> @@ -1610,7 +1611,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>  	if (clip->y1 == -1)
>  		goto exit;
>  
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14) {
>  		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
>  		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 - 1);
>  	} else {
> @@ -1647,7 +1648,15 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
>  						struct drm_rect *pipe_clip)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> -	const u16 y_alignment = crtc_state->su_y_granularity;
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u16 y_alignment;
> +
> +	/* ADLP aligns the SU region to vdsc slice height in case dsc is enabled */
> +	if (crtc_state->dsc.compression_enable &&
> +	    (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14))
> +		y_alignment = vdsc_cfg->slice_height;
> +	else
> +		y_alignment = crtc_state->su_y_granularity;
>  
>  	pipe_clip->y1 -= pipe_clip->y1 % y_alignment;
>  	if (pipe_clip->y2 % y_alignment)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c413eec3373f..260d9b680a73 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8292,6 +8292,11 @@ enum skl_power_gate {
>  #define GEN12_CULLBIT2			_MMIO(0x7030)
>  #define GEN12_STATE_ACK_DEBUG		_MMIO(0x20BC)
>  
> +#define _MTL_CLKGATE_DIS_TRANS_A			0x604E8
> +#define _MTL_CLKGATE_DIS_TRANS_B			0x614E8
> +#define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(trans, _MTL_CLKGATE_DIS_TRANS_A)
> +#define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
> +
>  #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
>  #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
>  #define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
> -- 
> 2.34.1
> 
