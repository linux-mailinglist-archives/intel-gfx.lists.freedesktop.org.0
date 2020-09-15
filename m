Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A8A26A48F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 14:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F0F89F24;
	Tue, 15 Sep 2020 12:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8386789F24
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 12:01:44 +0000 (UTC)
IronPort-SDR: msN5uBpUy+uJ82eMipQQA5C2060snEtXkaQr0LT5yEs2myo8jRyd1Q3D2wDFAX/67QZIyXjzwW
 6yX8ojgc3Pxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="160174764"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="160174764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 05:01:43 -0700
IronPort-SDR: UmZLZzkeH+xoufufjzICuhq28dBexUCFVZ7JU996CyQMuBhTi5Yeq3i5bFOpFl0TTc8CqmcEdx
 Eu/Qg0iLE0Vg==
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="482747630"
Received: from emoriart-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.208])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 05:01:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200909085047.31004-4-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200909085047.31004-1-vandita.kulkarni@intel.com>
 <20200909085047.31004-4-vandita.kulkarni@intel.com>
Date: Tue, 15 Sep 2020 15:01:45 +0300
Message-ID: <874knzxn86.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V9 3/4] drm/i915/dsi: Add TE handler for dsi cmd
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

On Wed, 09 Sep 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> In case of dual link, we get the TE on slave.
> So clear the TE on slave DSI IIR.
>
> If we are operating in TE_GATE mode, after we do
> a frame update, the transcoder will send the frame data
> to the panel, after it receives a TE. Whereas if we
> are operating in NO_GATE mode then the transcoder will
> immediately send the frame data to the panel.
> We are not dealing with the periodic command mode here.
>
> v2: Pass only relevant masked bits to the handler (Jani)
>
> v3: Fix the check for cmd mode in TE handler function.
>
> v4: Use intel_handle_vblank instead of drm_handle_vblank (Jani)
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 66 +++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index de540194ce67..f8398c5cbd4a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2299,6 +2299,64 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  		drm_err(&dev_priv->drm, "Unexpected DE Misc interrupt\n");
>  }
>  
> +void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,

Should be static.

Otherwise,

Acked-by: Jani Nikula <jani.nikula@intel.com>


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
> +		drm_err(&dev_priv->drm, "DSI trancoder not configured in command mode\n");
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
> +		drm_err(&dev_priv->drm, "Invalid PIPE\n");
> +		return;
> +	}
> +
> +	intel_handle_vblank(dev_priv, pipe);
> +
> +	/* clear TE in dsi IIR */
> +	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
> +	tmp = I915_READ(DSI_INTR_IDENT_REG(port));
> +	I915_WRITE(DSI_INTR_IDENT_REG(port), tmp);
> +
> +}
> +
>  static irqreturn_t
>  gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  {
> @@ -2363,6 +2421,14 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
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
