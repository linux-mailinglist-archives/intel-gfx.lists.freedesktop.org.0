Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F8419146D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA7D6E39C;
	Tue, 24 Mar 2020 15:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5345C6E39C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:31:06 +0000 (UTC)
IronPort-SDR: EMmppNQZVUzWvRgsz0fZuiM6QOYkv/CkUOtItFkV3B/HSRBqavP5JSb3Wq2zwf4SHAkRGoMFhc
 nzNyQcr46suQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:31:05 -0700
IronPort-SDR: SLYVhgdDh3wfibI49b6DSgN5lj9oFx2YAIsOALDsZYSbt7IJT8F47m0ftk2mC0Dte+U3QoEIvH
 or6bKQKG8Y0Q==
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="419931269"
Received: from kkarwows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:31:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200312053841.2794-8-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
 <20200312053841.2794-8-vandita.kulkarni@intel.com>
Date: Tue, 24 Mar 2020 17:31:12 +0200
Message-ID: <87blolbwhr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V8 7/9] drm/i915/dsi: Add TE handler for dsi cmd
 mode.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Mar 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> In case of dual link, we get the TE on slave.
> So clear the TE on slave DSI IIR.
>
> v2: Pass only relevant masked bits to the handler (Jani)
>
> v3: Fix the check for cmd mode in TE handler function.
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 64 +++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 89489a247276..2e1418515c9f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2262,6 +2262,62 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
>  }
>  
> +void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
> +				    u32 te_trigger)
> +{
> +	enum pipe pipe = INVALID_PIPE;
> +	enum transcoder dsi_trans;
> +	enum port port;
> +	u32 val, tmp;
> +
> +	/*
> +	 * Incase of dual link, TE comes from DSI_1
> +	 * this is to check if dual link is enabled
> +	 */
> +	val = I915_READ(TRANS_DDI_FUNC_CTL2(TRANSCODER_DSI_0));
> +	val &= PORT_SYNC_MODE_ENABLE;
> +
> +	/*
> +	 * if dual link is enabled, then read DSI_0
> +	 * transcoder registers
> +	 */
> +	port = ((te_trigger & DSI1_TE && val) || (te_trigger & DSI0_TE)) ?
> +						  PORT_A : PORT_B;
> +	dsi_trans = (port == PORT_A) ? TRANSCODER_DSI_0 : TRANSCODER_DSI_1;
> +
> +	/* Check if DSI configured in command mode */
> +	val = I915_READ(DSI_TRANS_FUNC_CONF(dsi_trans));
> +	val = val & OP_MODE_MASK;
> +
> +	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {
> +		DRM_ERROR("DSI trancoder not configured in command mode\n");

drm_err()

> +		return;
> +	}
> +
> +	/* Get PIPE for handling VBLANK event */
> +	val = I915_READ(TRANS_DDI_FUNC_CTL(dsi_trans));
> +	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
> +	case TRANS_DDI_EDP_INPUT_A_ON:
> +		pipe = PIPE_A;
> +		break;
> +	case TRANS_DDI_EDP_INPUT_B_ONOFF:
> +		pipe = PIPE_B;
> +		break;
> +	case TRANS_DDI_EDP_INPUT_C_ONOFF:
> +		pipe = PIPE_C;
> +		break;
> +	default:
> +		DRM_ERROR("Invalid PIPE\n");

drm_err()... but don't want to pass INVALID_PIPE to
intel_handle_vblank() below.

> +	}
> +
> +	/* clear TE in dsi IIR */
> +	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
> +	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
> +	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
> +
> +	drm_handle_vblank(&dev_priv->drm, pipe);

Please use intel_handle_vblank(). It takes into account pipe might not
match crtc index.

> +}
> +
>  static irqreturn_t
>  gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  {
> @@ -2328,6 +2384,14 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  				found = true;
>  			}
>  
> +			if (INTEL_GEN(dev_priv) >= 11) {
> +				tmp_mask = iir & (DSI0_TE | DSI1_TE);
> +				if (tmp_mask) {
> +					gen11_dsi_te_interrupt_handler(dev_priv, tmp_mask);
> +					found = true;
> +				}
> +			}
> +
>  			if (!found)
>  				drm_err(&dev_priv->drm,
>  					"Unexpected DE Port interrupt\n");

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
