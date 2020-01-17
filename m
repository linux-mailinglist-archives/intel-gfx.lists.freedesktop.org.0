Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC52A14086D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 11:54:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232886F4EF;
	Fri, 17 Jan 2020 10:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48066F4EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 10:54:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 02:54:15 -0800
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="218872246"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 02:54:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200109110835.29764-6-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
 <20200109110835.29764-6-vandita.kulkarni@intel.com>
Date: Fri, 17 Jan 2020 12:54:09 +0200
Message-ID: <87eevyica6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V6 5/9] drm/i915/dsi: Use private flags to
 indicate TE in cmd mode
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

On Thu, 09 Jan 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> On dsi cmd mode we do not receive vblanks instead
> we would get TE and these flags indicate TE is expected on
> which port.
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 3ad8cedb5211..6f760ea316d8 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1502,6 +1502,24 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->hw.adjusted_mode.private_flags &=
>  					~I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE;
>  
> +	/*
> +	 * In case of TE GATE cmd mode, we
> +	 * receive TE from the slave if
> +	 * dual link is enabled
> +	 */
> +	if (is_cmd_mode(intel_dsi)) {
> +		if (intel_dsi->ports == (BIT(PORT_B) | BIT(PORT_A)))
> +			pipe_config->hw.adjusted_mode.private_flags |=
> +						I915_MODE_FLAG_DSI_USE_TE1 |
> +						I915_MODE_FLAG_DSI_USE_TE0;
> +		else if (intel_dsi->ports == BIT(PORT_B))
> +			pipe_config->hw.adjusted_mode.private_flags |=
> +						I915_MODE_FLAG_DSI_USE_TE1;
> +		else
> +			pipe_config->hw.adjusted_mode.private_flags |=
> +						I915_MODE_FLAG_DSI_USE_TE0;
> +	}
> +
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
