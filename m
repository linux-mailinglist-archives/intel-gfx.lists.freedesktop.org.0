Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899B726A441
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 13:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC5C89FF7;
	Tue, 15 Sep 2020 11:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC7389FF7
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 11:38:34 +0000 (UTC)
IronPort-SDR: QAI1fyWFQl7V1n1ACJSiAx44C6k6xGYrOadawXZy8O86GLBbG770SQ0dWnJ/1Po9eFlpV4e7FG
 KjVaVasqerAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156667996"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="156667996"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 04:38:34 -0700
IronPort-SDR: tmJ1b2/MlqQsyY3ZS3a1ij7MpOFBv1bIOkKQI+p+l5K/84a3ohIEWhGZyEmUQb9piEnnmVzVt2
 zmXrJGV76/nA==
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; d="scan'208";a="482738559"
Received: from emoriart-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.7.208])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 04:38:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200909085047.31004-2-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200909085047.31004-1-vandita.kulkarni@intel.com>
 <20200909085047.31004-2-vandita.kulkarni@intel.com>
Date: Tue, 15 Sep 2020 14:38:36 +0300
Message-ID: <877dsvxoar.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V9 1/4] drm/i915/dsi: Add details about TE in
 get_config
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
> We need details about enabling TE on which port
> before we enable TE through vblank enable path.
> This is based on the configuration that we receive
> from the VBT wrt ports, dual_link.
>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 30 +++++++++++++++-----------
>  1 file changed, 18 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index f4053dd6bde9..ee3c5c085cd3 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1447,6 +1447,18 @@ static bool gen11_dsi_is_periodic_cmd_mode(struct intel_dsi *intel_dsi)
>  	return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
>  }
>  
> +static void gen11_dsi_get_cmd_mode_config(struct intel_dsi *intel_dsi,
> +					  struct intel_crtc_state *pipe_config)
> +{
> +	if (intel_dsi->ports == (BIT(PORT_B) | BIT(PORT_A)))
> +		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE1 |
> +					    I915_MODE_FLAG_DSI_USE_TE0;
> +	else if (intel_dsi->ports == BIT(PORT_B))
> +		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE1;
> +	else
> +		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_USE_TE0;
> +}
> +
>  static void gen11_dsi_get_config(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *pipe_config)
>  {
> @@ -1468,6 +1480,10 @@ static void gen11_dsi_get_config(struct intel_encoder *encoder,
>  	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
>  	pipe_config->pipe_bpp = bdw_get_pipemisc_bpp(crtc);
>  
> +	/* Get the details on which TE should be enabled */
> +	if (is_cmd_mode(intel_dsi))
> +		gen11_dsi_get_cmd_mode_config(intel_dsi, pipe_config);
> +
>  	if (gen11_dsi_is_periodic_cmd_mode(intel_dsi))
>  		pipe_config->mode_flags |= I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
>  }
> @@ -1562,18 +1578,8 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	 * receive TE from the slave if
>  	 * dual link is enabled
>  	 */
> -	if (is_cmd_mode(intel_dsi)) {
> -		if (intel_dsi->ports == (BIT(PORT_B) | BIT(PORT_A)))
> -			pipe_config->mode_flags |=
> -						I915_MODE_FLAG_DSI_USE_TE1 |
> -						I915_MODE_FLAG_DSI_USE_TE0;
> -		else if (intel_dsi->ports == BIT(PORT_B))
> -			pipe_config->mode_flags |=
> -						I915_MODE_FLAG_DSI_USE_TE1;
> -		else
> -			pipe_config->mode_flags |=
> -						I915_MODE_FLAG_DSI_USE_TE0;
> -	}
> +	if (is_cmd_mode(intel_dsi))
> +		gen11_dsi_get_cmd_mode_config(intel_dsi, pipe_config);
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
