Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 759CA3A7B76
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 12:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3323D6E237;
	Tue, 15 Jun 2021 10:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3516E237
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 10:09:51 +0000 (UTC)
IronPort-SDR: KOdIVMy8GZsJN5aQqNt7ong8oFYikFLSaJmzde+kcqnYdZaZkMy4vculhwe+OuDh0Q5K9acCQ/
 l8c1LgKcMibQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="202937215"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="202937215"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 03:09:50 -0700
IronPort-SDR: dgS4vx8cgndOr+Uif+Yl1ksInKE1L/ycHI57yYKK0L5OnkMTBSgfwx2DK/y2UeKZ3aLoix3Uen
 zQxEiFcVd0HA==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="639626470"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 03:09:49 -0700
Date: Tue, 15 Jun 2021 13:09:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210615100946.GB916542@ideak-desk.fi.intel.com>
References: <20210614114851.839925-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614114851.839925-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V5] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 14, 2021 at 05:18:51PM +0530, Tejas Upadhyay wrote:
> When pipe A is disabled and MIPI DSI is enabled on pipe B,
> the AMT KVMR feature will incorrectly see pipe A as enabled.
> Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> it set while DSI is enabled on pipe B. No impact to setting
> it all the time.
> 
> Changes since V4:
>         - Modified function comment Wa_<number>:icl,jsl,ehl - Lucas
>         - Modified debug message in sync state - Imre
> Changes since V3:
>         - More meaningful name to workaround - Imre
>         - Remove boolean check clear flag
>         - Add WA_verify hook in dsi sync_state
> Changes since V2:
>         - Used REG_BIT, ignored pipe A and used sw state check - Jani
>         - Made function wrapper - Jani
> Changes since V1:
>         - ./dim checkpatch errors addressed
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 44 ++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h        |  1 +
>  2 files changed, 45 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 16812488c5dd..17e318eb1ad0 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1253,15 +1253,37 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
>  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
>  }
>  
> +/*
> + * Wa_1409054076:icl,jsl,ehl
> + * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> + * the AMT KVMR feature will incorrectly see pipe A as enabled.
> + * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> + * it set while DSI is enabled on pipe B
> + */
> +static void icl_apply_kvmr_pipe_a_wa(struct intel_encoder *encoder,
> +				     enum pipe pipe, bool enable)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	if ((DISPLAY_VER(dev_priv) == 11) && pipe == PIPE_B) {

Redundant braces around a single simple statement.

> +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> +			     IGNORE_KVMR_PIPE_A,
> +			     enable ? IGNORE_KVMR_PIPE_A : 0);
> +	}
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
> +	/* Wa_1409054076:icl,jsl,ehl */
> +	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
> +
>  	/* step6d: enable dsi transcoder */
>  	gen11_dsi_enable_transcoder(encoder);
>  
> @@ -1415,6 +1437,7 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> +	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
>  
>  	/* step1: turn off backlight */
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
> @@ -1423,6 +1446,9 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
>  	/* step2d,e: disable transcoder and wait */
>  	gen11_dsi_disable_transcoder(encoder);
>  
> +	/* Wa_1409054076:icl,jsl,ehl */
> +	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, false);
> +
>  	/* step2f,g: powerdown panel */
>  	gen11_dsi_powerdown_panel(encoder);
>  
> @@ -1548,6 +1574,23 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
>  		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
>  }
>  
> +static void gen11_dsi_sync_state(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = intel_crtc->pipe;
> +
> +	/* wa verify 1409054076:icl,jsl,ehl */
> +	if ((DISPLAY_VER(dev_priv) == 11) && pipe == PIPE_B &&
> +	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) & IGNORE_KVMR_PIPE_A))
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[ENCODER:%d:%s] BIOS left IGNORE_KVMR_PIPE_A\t"
> +			    "cleared with pipe B enabled\n",

No need to wrap these kind of strings to help grepping for a message and \t
in the middle of a line doesn't look correct. With that fixed:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +			    encoder->base.base.id,
> +			    encoder->base.name);
> +}
> +
>  static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>  					struct intel_crtc_state *crtc_state)
>  {
> @@ -1966,6 +2009,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>  	encoder->post_disable = gen11_dsi_post_disable;
>  	encoder->port = port;
>  	encoder->get_config = gen11_dsi_get_config;
> +	encoder->sync_state = gen11_dsi_sync_state;
>  	encoder->update_pipe = intel_panel_update_backlight;
>  	encoder->compute_config = gen11_dsi_compute_config;
>  	encoder->get_hw_state = gen11_dsi_get_hw_state;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e915ec034c98..955027799d1d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8107,6 +8107,7 @@ enum {
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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
