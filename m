Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7623458EB31
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 13:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB9EB1B99;
	Wed, 10 Aug 2022 11:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2C9113F38
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 11:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660130491; x=1691666491;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xjcd16jc67qOC8DTgj8+5F1thByaww7j1zoGnJeT33E=;
 b=D4N8lQOPcu4v7skqu55v0kHdyX2GblkhMWiPqop3n7hBFgy0ChWOYLTF
 JVsRsgDL5xqqsIO6w5QZLZ1dMorAn7PAXHyakRC30wWpcoMmw/ODwESg3
 VsuPx8rddgqkifGBRrcMY5GDuz0hQwB+4bO5yG7gWTxukwF91Bc+ChHcJ
 T3fHJsVl3WOzBbYsOuCdT6ILQoo7iCIrmA24qBdHbHaMIjfs+JystOgWF
 u+Ch3UU6g+rVYoGZBtY2n1M+33b4nif03niuvctgD/mFDO/G4V748KTaL
 AzzV16UNIvQyhi4w/0pbFtFK7FqQT2KniYOIuwMsFgNJUNAz/ThLTAMSo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="270833288"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="270833288"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 04:21:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664856329"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 04:21:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220728013420.3750388-23-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-23-radhakrishna.sripada@intel.com>
Date: Wed, 10 Aug 2022 14:21:27 +0300
Message-ID: <871qtouyx4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 22/23] drm/i915/mtl: Update CHICKEN_TRANS*
 register addresses
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

On Wed, 27 Jul 2022, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
>
> In Display version 14, Transcoder Chicken Registers are moved from DPRZ to DRPOS
> to reduce register signal crossings for Unit Interface Optimization.
>
> This patch modifies the CHICKEN_TRANS macro to add a DISPLAY_VER check for
> calculating the correct platform offsets.
>
> (And also updates existing CHICKEN_TRANS occurrences to the new definition)
>
> Bspec: 34387, 50054
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  7 +++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c     |  6 +++--
>  drivers/gpu/drm/i915/i915_reg.h              | 25 +++++++++++++++-----
>  5 files changed, 29 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a4c8493f3ce7..26c99bfa5ec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2854,7 +2854,7 @@ gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
>  	if (drm_WARN_ON(&dev_priv->drm, port < PORT_A || port > PORT_E))
>  		port = PORT_A;
>  
> -	return CHICKEN_TRANS(trans[port]);
> +	return CHICKEN_TRANS(dev_priv, trans[port]);
>  }
>  
>  static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bf170bd83ef7..9e6809d11b02 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -620,7 +620,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>  		val &= ~PIPECONF_ENABLE;
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
> +		intel_de_rmw(dev_priv, CHICKEN_TRANS(dev_priv, cpu_transcoder),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
>  
>  	intel_de_write(dev_priv, reg, val);
> @@ -1839,7 +1839,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	i915_reg_t reg = CHICKEN_TRANS(crtc_state->cpu_transcoder);
> +	i915_reg_t reg = CHICKEN_TRANS(dev_priv, crtc_state->cpu_transcoder);
>  	u32 val;
>  
>  	val = intel_de_read(dev_priv, reg);
> @@ -4127,7 +4127,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	}
>  
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> -		tmp = intel_de_read(dev_priv, CHICKEN_TRANS(pipe_config->cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    CHICKEN_TRANS(dev_priv, pipe_config->cpu_transcoder));
>  
>  		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 14d2a64193b2..9c2c032c051c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -591,7 +591,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12 && pipe_config->fec_enable)
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
> +		intel_de_rmw(dev_priv, CHICKEN_TRANS(dev_priv, trans), 0,
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG);
>  
>  	intel_enable_transcoder(pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 98c3c8015a5c..532d5592c61e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1139,7 +1139,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  
>  	if (intel_dp->psr.psr2_enabled) {
>  		if (DISPLAY_VER(dev_priv) == 9)
> -			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> +			intel_de_rmw(dev_priv,
> +				     CHICKEN_TRANS(dev_priv, cpu_transcoder), 0,
>  				     PSR2_VSC_ENABLE_PROG_HEADER |
>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>  
> @@ -1149,7 +1150,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		 * cause issues if non-supported panels are used.
>  		 */
>  		if (IS_ALDERLAKE_P(dev_priv))
> -			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> +			intel_de_rmw(dev_priv,
> +				     CHICKEN_TRANS(dev_priv, cpu_transcoder), 0,
>  				     ADLP_1_BASED_X_GRANULARITY);
>  
>  		/* Wa_16011168373:adl-p */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2f9cbdd068e8..3e7dd389ba5b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5885,17 +5885,30 @@
>  #define  SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
>  #define CHICKEN_PIPESL_1(pipe) _MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
>  
> +#define _MTL_CHICKEN_TRANS_A	0x604e0
> +#define _MTL_CHICKEN_TRANS_B	0x614e0
> +#define _MTL_CHICKEN_TRANS_C	0x624e0
> +#define _MTL_CHICKEN_TRANS_D	0x634e0
> +
>  #define _CHICKEN_TRANS_A	0x420c0
>  #define _CHICKEN_TRANS_B	0x420c4
>  #define _CHICKEN_TRANS_C	0x420c8
>  #define _CHICKEN_TRANS_EDP	0x420cc
>  #define _CHICKEN_TRANS_D	0x420d8
> -#define CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
> -					    [TRANSCODER_EDP] = _CHICKEN_TRANS_EDP, \
> -					    [TRANSCODER_A] = _CHICKEN_TRANS_A, \
> -					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \
> -					    [TRANSCODER_C] = _CHICKEN_TRANS_C, \
> -					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
> +
> +#define  CHICKEN_TRANS(dev_priv, trans) ((DISPLAY_VER(dev_priv) >= 14) ? \

This would be the first such display version check in i915_reg.h. We
have a few platform checks, yes, but generally no.

*Maybe* we'll want to do something like this at some point, but right
now, I think I'd go for adding a separate MTL_CHICKEN_TRANS() and using
that where appropriate.

BR,
Jani.


> +					    _MMIO(_PICK((trans), \
> +						[TRANSCODER_A] = _MTL_CHICKEN_TRANS_A, \
> +						[TRANSCODER_B] = _MTL_CHICKEN_TRANS_B, \
> +						[TRANSCODER_C] = _MTL_CHICKEN_TRANS_C, \
> +						[TRANSCODER_D] = _MTL_CHICKEN_TRANS_D)) : \
> +					    _MMIO(_PICK((trans), \
> +						[TRANSCODER_EDP] = _CHICKEN_TRANS_EDP, \
> +						[TRANSCODER_A] = _CHICKEN_TRANS_A, \
> +						[TRANSCODER_B] = _CHICKEN_TRANS_B, \
> +						[TRANSCODER_C] = _CHICKEN_TRANS_C, \
> +						[TRANSCODER_D] = _CHICKEN_TRANS_D)))
> +
>  #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
>  #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
>  #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */

-- 
Jani Nikula, Intel Open Source Graphics Center
