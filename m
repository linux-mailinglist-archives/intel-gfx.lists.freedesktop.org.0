Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6FE7BE216
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 16:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FD910E11A;
	Mon,  9 Oct 2023 14:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE27A10E11A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 14:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696860388; x=1728396388;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Lh5RT4HOjNjxU6c9RRVZ3Yg0wU/iMoeKvwpIhXlGSB0=;
 b=HChE0uL/5ooK1K9zCkovmD0ZhPsN7xpul7cJ0+3U46KGAtYWuXIJ251D
 KdVi/yLImd0DHWGE5XnrRjX013gqKVg0laBVNEk+VA+fgfbtaeLBB64e2
 Of5tr+mUO3HSnmEU7iYzbhNcRuNUio37wfK5mbqHvUpS4kH+d/Z8+2SlI
 RnHeulOkpjL7gAYBBRrY/g16V7w9jh07MuaSk2qNHIWAPdZCjgbZaEC54
 uWvMy4bbxjQqE0n/TkyfwU6TIQ3dsFqd3pNqshViDOqOKtZ2RF1ifamLV
 sAewLoNe6XlGWp7qg/njdsWOkrKptXuvmHhiEZGHqjHSwgWOrpN4u/Eq/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383026979"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383026979"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="782501053"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="782501053"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:04:29 -0700
Date: Mon, 9 Oct 2023 17:04:26 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSQH/KxD1GAZZpAp@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-6-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/19] drm/i915/dp: Use connector DSC DPCD
 in i915_dsc_fec_support_show()
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

On Fri, Oct 06, 2023 at 04:37:13PM +0300, Imre Deak wrote:
> Use the connector's DSC DPCD capabilities in i915_dsc_fec_support_show()
> instead of the version stored in the encoder. Atm the two are identical,
> but a follow-up patch will store the (MST) connector specific version
> in the connector.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 834a8e50ea4fb..2836826f8c05f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1234,19 +1234,19 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
>  		seq_printf(m, "DSC_Enabled: %s\n",
>  			   str_yes_no(crtc_state->dsc.compression_enable));
>  		seq_printf(m, "DSC_Sink_Support: %s\n",
> -			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
> +			   str_yes_no(drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)));
>  		seq_printf(m, "DSC_Output_Format_Sink_Support: RGB: %s YCBCR420: %s YCBCR444: %s\n",
> -			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
>  								      DP_DSC_RGB)),
> -			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
>  								      DP_DSC_YCbCr420_Native)),
> -			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd,
>  								      DP_DSC_YCbCr444)));
>  		seq_printf(m, "Force_DSC_Enable: %s\n",
>  			   str_yes_no(intel_dp->force_dsc_en));
>  		if (!intel_dp_is_edp(intel_dp))
>  			seq_printf(m, "FEC_Sink_Support: %s\n",
> -				   str_yes_no(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
> +				   str_yes_no(drm_dp_sink_supports_fec(connector->dp.fec_capability)));
>  	} while (try_again);
>  
>  	drm_modeset_drop_locks(&ctx);
> -- 
> 2.39.2
> 
