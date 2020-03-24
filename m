Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9FA191460
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680EA6E0BE;
	Tue, 24 Mar 2020 15:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C666E0BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:28:30 +0000 (UTC)
IronPort-SDR: 46FXTcqGVXkz34Sv7otb+DgQvwjl9Ur3iKSwmwbAmxZphw4OPrdv1ocIMZrA91gDb9ppcUxyMm
 GdTZJDUXagXA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:28:30 -0700
IronPort-SDR: CjjbE3d13zUNsr7Awuq/Yb1PUxSrrx2ErLzi0IOxK3kL6tXQCnkNYWjnlpC4x0xR8Y4PDRFiuc
 dWzjqsHixNoQ==
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="419930264"
Received: from kkarwows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:28:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200312053841.2794-6-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
 <20200312053841.2794-6-vandita.kulkarni@intel.com>
Date: Tue, 24 Mar 2020 17:28:37 +0200
Message-ID: <87eethbwm2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V8 5/9] drm/i915/dsi: Use private flags to
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

On Thu, 12 Mar 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> On dsi cmd mode we do not receive vblanks instead
> we would get TE and these flags indicate TE is expected on
> which port.
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed up to and including this patch.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 949f4867402b..d452037b1ac9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1550,6 +1550,24 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
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
