Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D350087CC54
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 12:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBB010E06D;
	Fri, 15 Mar 2024 11:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvlsTeY6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F09892C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 11:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710502187; x=1742038187;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CaXYkL25qVmvsLs5zT+H68F/S222p+Tq/pdLoiT0f5g=;
 b=hvlsTeY69UbnlP+OBrvjA8n6hcN3x0ZEE7CapHXngE/pUEs2cAgvNa+v
 QL37APYPx3RdH4RKLts8kZLCwTadis1wGZo/F0ANwVgiUx6D9j6zz/tJt
 cwrBPeK/2ffSlLJV+P0Xkp8lUoXR7HmNY55iRYufMW+9ZsG17vBqR6Iit
 mi+Ef+8fSQwElwMgpHqvmHGREBIcuJ75nVWfVPuggdn3aMiF+BQeKp6bK
 ZwHkpoRyxySBp7mhgwYgZBDZcabDbQWOiMZmnaBk/z/bcIL2YwTftKtYv
 Mu3fSncB5flvgBPtXFzY8a8RJ3WdmgcSwf0cR29B3sCEoAjsGj04FpJvr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5231397"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; 
   d="scan'208";a="5231397"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="827780574"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="827780574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2024 04:29:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Mar 2024 13:29:43 +0200
Date: Fri, 15 Mar 2024 13:29:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 6/6] drm/i915/mst: enable MST mode for 128b/132b
 single-stream sideband
Message-ID: <ZfQxJ7OFYq0QTxkj@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
 <1945e70fb2d39c690644f2ec0d9c3d4a4e032cb6.1709733981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1945e70fb2d39c690644f2ec0d9c3d4a4e032cb6.1709733981.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Mar 06, 2024 at 04:07:17PM +0200, Jani Nikula wrote:
> If the sink supports 128b/132b and single-stream sideband messaging,
> enable MST mode.
> 
> With this, the topology manager will still write DP_MSTM_CTRL, which
> should be ignored by the sink. In the future, the topology manager
> should probably only set the sideband messaging related parts of the
> register.
> 
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3956604d8b00..4787dc15797a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4069,7 +4069,8 @@ intel_dp_mst_mode_choose(struct intel_dp *intel_dp,
>  	if (!intel_dp_mst_source_support(intel_dp))
>  		return DRM_DP_SST;
>  
> -	if (sink_mst_mode == DRM_DP_SST_SIDEBAND_MSG)
> +	if (sink_mst_mode == DRM_DP_SST_SIDEBAND_MSG &&
> +	    !(intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B))
>  		return DRM_DP_SST;

The one question that comes to mind is whether we actually
want to use SST+sideband? I don't think there can be sinks
that only support SST+sideband but don't support SST+no-sideband
can there?

The benefits from using the no-sideband path would be:
- Use optimal link configuration instead of the max.
  I suppose we could make intel_dp_mst.c do this as well,
  at least for the SST+sideband.

- Port sync is not supported by intel_dp_mst.c currently.
  Though I think current hw should be capable of port sync even
  in full MST mode, just need to implement it.

- intel_dp_mst.c is currently limited to 8bpc.
  We should just remove that restriction now that Imre's bandwidth
  stuff should be able to cope with link bw limits properly.

OK, so all those benefits are more or less artificial at this point,
and we could work towards fixing them, even for MST proper.

Anyways, we can revisit this later if we decide that no-sideband
is the better choice for whatever reason.

Series is:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	return sink_mst_mode;
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
