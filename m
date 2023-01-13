Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1960E669ACA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 15:44:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843EB10E15B;
	Fri, 13 Jan 2023 14:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D441610E15B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 14:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673621037; x=1705157037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=f1Je4GzmJDYfGtLPRlbm62bB1mG/LH6mn2tt8r1coCg=;
 b=EdhB2eLNjLbKNTfTZaf6fR2WX0uQQFQvNQDJNiH5ymrHjUFtgZ+nD6Pc
 DtvT4fpOG8HmCpn1D2scRsnD5N0Lewme9xge7IAwCIe5xMzUiCZ5yjdFS
 jO/zTg2SG+Q2c9jW1uBsNZanlImxvmvJMVs5lqveYVwZPGh7zkB3rcxHe
 roFehXrF1mznSHmUtzAgHTNvjYuWT9+jsgAO5rM/nTsR305/beJ6huQvG
 5kuTBxuMbT5NFIiB8dOHCGAcT6/icC+gYrXThjDLwmXRHDzeBWCww5Wt4
 NbY7tIP2mSbnEinbX2xnNiEYslmU4ovIbABswMChAfGfHiU9Gh6i3gqo6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="388500319"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="388500319"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 06:43:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="635794396"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="635794396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 13 Jan 2023 06:43:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Jan 2023 16:43:54 +0200
Date: Fri, 13 Jan 2023 16:43:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y8FuKtLJuio28wwb@intel.com>
References: <20230113130628.19772-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230113130628.19772-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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

On Fri, Jan 13, 2023 at 03:06:28PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> v2: - Removed wrong comment(Rodrigo Vivi)
>     - Added HSDES to the commit msg(Rodrigo Vivi)
>     - Moved UHBR check to the MST specific code
> 
> v3: - Changed commit subject(Rodrigo Vivi)
>     - Fixed the error message if check fails(Rodrigo Vivi)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8b0e4defa3f1..36e368995bef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -339,10 +339,20 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits,
>  						  pipe_config->dp_m_n.tu, false);
> -	}
> +		if (ret < 0)
> +			return ret;
>  
> -	if (ret)
> -		return ret;
> +		if (intel_dp_is_uhbr(pipe_config)) {
> +			int output_bpp = pipe_config->dsc.compressed_bpp;
> +
> +			if (output_bpp * adjusted_mode->crtc_clock >=
> +			    pipe_config->port_clock * 72) {
> +				drm_dbg_kms(&dev_priv->drm, "UHBR check failed(required bw %d available %d)\n",
> +					    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
> +				return -EINVAL;

Doesn't this just mean the user can never enable this particular
mode? Would seem more sensible to account for the extra
limitation when we determine port_clock and/or compressed_bpp.

> +			}
> +		}
> +	}
>  
>  	ret = intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
>  	if (ret)
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
