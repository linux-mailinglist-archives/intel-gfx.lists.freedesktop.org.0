Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45A786BFC
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 11:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6363910E4B9;
	Thu, 24 Aug 2023 09:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E94410E4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 09:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692869511; x=1724405511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NyCZ9eR9XEHtZCuTGqIeFTqargytztBuvgghkS/tEbM=;
 b=gGKLvb8dbg/8VA+Lg3GazKu1YhDOuBgb9Gp8fyMfsPtNUTpI1Hp8PwQf
 lvLDHsGQSWhQ9pSdd3xRXpPUkPjdnw8jURWq9JATAfNBWIOhRof5U7t8L
 ncE0f/zQpWQ0fhTIexGoxmNNi7qeww2qZ2nxpGiHnu83N1QzIJjENH2q8
 69njaaQiQEFO++rOLvjwNSP9NckENFAA1z6Mpn7WtgmizouHFYEZB4EXq
 oOqa4IMudSO3K4s5yYBYrrdL5H8Mn248Pqwn19uuxlvBLTVTJUxlUfjI0
 4yl/2Ng+3kWTmuUBFgqq7sFOr3PLbPtG5eiqzn+aw0GBOqZXGxm+Xq8yc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="460747619"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460747619"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:31:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="807042682"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="807042682"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:31:49 -0700
Date: Thu, 24 Aug 2023 12:31:46 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZOcjgsomHCcKx4Ke@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-19-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824080517.693621-19-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 18/22] drm/i915/dp_mst: Enable DSC
 decompression if any stream needs this
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

On Thu, Aug 24, 2023 at 11:05:13AM +0300, Imre Deak wrote:
> Atm DSC decompression is enabled in the sink only if the first stream is
> compressed. This left compressed streams blank if the first stream was
> uncompressed.
> 
> Enable decompression whenever FEC is enabled, which will be true for all
> streams if any stream is compressed. Enabling FEC correctly in all
> streams will be only fixed by an upcoming patch.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 48f005932ad8b..e5b1567d2a9d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2907,7 +2907,13 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int ret;
>  
> -	if (!crtc_state->dsc.compression_enable)
> +	/*
> +	 * In case of MST any stream can be compressed not just the first. If
> +	 * any stream is compressed FEC will be enabled in all streams, so toggle
> +	 * decompression whenever FEC is enabled.
> +	 */
> +	if (!crtc_state->dsc.compression_enable &&
> +	    !crtc_state->fec_enable)
>  		return;
>  
>  	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
> -- 
> 2.37.2
> 
