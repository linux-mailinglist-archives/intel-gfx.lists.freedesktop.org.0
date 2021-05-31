Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D9D3964D2
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 18:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C936E20E;
	Mon, 31 May 2021 16:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B806E20E
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 16:10:46 +0000 (UTC)
IronPort-SDR: NTowZWxM5oR/4RsWHPzzHZW2YreVWuNw+5eQIr+eYljrw1KdP2BsFG1d5kKnQu6xlzaxN0zVUT
 uDUESrfNKVQw==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="264569968"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="264569968"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 09:10:45 -0700
IronPort-SDR: QYwD55m5sfUMQcrPM+xPN1ZdDOzPD/zw9tYyEPdbUcZAAC9MbVYxWn6DgborjGYrxy2KBT6sF9
 +2gdDqXl64XQ==
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="478957057"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 09:10:44 -0700
Date: Mon, 31 May 2021 19:10:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210531161039.GC2863217@ideak-desk.fi.intel.com>
References: <20210519141821.227950-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519141821.227950-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Cc: intel-gfx@lists.freedesktop.org, mahesh.meena@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 07:48:21PM +0530, Tejas Upadhyay wrote:
> When pipe A is disabled and MIPI DSI is enabled on pipe B,
> the AMT KVMR feature will incorrectly see pipe A as enabled.
> Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> it set while DSI is enabled on pipe B. No impact to setting it
> all the time.
>
> Changes since V2:
> 	- Used REG_BIT, ignored pipe A and used sw state check - Jani
> 	- Made function wrapper - Jani
> Changes since V1:
>         - ./dim checkpatch errors addressed
> 
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 21 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h        |  1 +
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ce544e20f35c..799cacf4cf6e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1236,15 +1236,34 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
>  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
>  }
>  
> +/*
> + * WA 1409054076:JSL,EHL

It's also needed on ICL.

> + * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> + * the AMT KVMR feature will incorrectly see pipe A as enabled.
> + * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> + * it set while DSI is enabled on pipe B
> + */
> +static void wa_1409054076(struct intel_encoder *encoder,

The name should be more readable something like
icl_apply_kvmr_pipe_a_wa().

> +			  enum pipe pipe, bool enable)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)

Based on the above the platform check should be DISPLAY_VER == 11.

> +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> +			     enable ? 0 : IGNORE_KVMR_PIPE_A,

No need to make the clear (ie mask) param conditional.

> +			     enable ? IGNORE_KVMR_PIPE_A : 0);
> +}
>  static void gen11_dsi_enable(struct intel_atomic_state *state,
>  			     struct intel_encoder *encoder,
>  			     const struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
>  
>  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
>  
> +	wa_1409054076(encoder, crtc->pipe, true);
>  	/* step6d: enable dsi transcoder */
>  	gen11_dsi_enable_transcoder(encoder);
>  
> @@ -1398,7 +1417,9 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
>  
> +	wa_1409054076(encoder, crtc->pipe, false);

The flag should be cleared after disabling the pipe ie after
gen11_dsi_disable_transcoder().

Would be good to print a debug message during driver loading/resume if
BIOS hasn't set the WA correctly on a DSI output enabled on pipe B
already.

>  	/* step1: turn off backlight */
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
>  	intel_panel_disable_backlight(old_conn_state);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 089b5a59bed3..fe01c6e05a45 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8041,6 +8041,7 @@ enum {
>  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
>  
>  #define CHICKEN_PAR1_1			_MMIO(0x42080)
> +#define  IGNORE_KVMR_PIPE_A		REG_BIT(23)
>  #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
>  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
>  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
