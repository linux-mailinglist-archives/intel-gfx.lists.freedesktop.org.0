Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 290D37AD276
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 09:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9987710E1CE;
	Mon, 25 Sep 2023 07:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B8010E1CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 07:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695628594; x=1727164594;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kXsI55Fn1znBJ/p3yM1i4L77cENtsSm29X8kFUmzU7k=;
 b=Yp6tL02Yx98VPCYUehna64KdlQeCJzfPdqwdAWvIvf4UwtNQ5EwiiDVv
 2wfeUDad+7pw6McVwaEi61aC5BACJ7XGKQ2BdOW2mXJ8ykqNLyIHt/oMZ
 j/jiyfMg1k54ZfiHTZLmTk0UcLSxApceoyF3HCNBftBjzo0VvcQ+E9mgn
 ARq3PS0kYot+iwlo44P5cx5+gdwB9TdL6+4QRjG+sK0mQ8JtBjIKMCqjT
 lpaeF8Y8+9kCpUUplULImxGerR8fHvnPdK4dRz5js1EnUrI7XoQPyizJj
 YGJLfyPY4UOUuiHdOqT85rAtPgi5ycnA3rSh6SVhxeJ1tQh3N360WhXIT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="380067142"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="380067142"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="863773472"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="863773472"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:56:32 -0700
Date: Mon, 25 Sep 2023 10:56:29 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE9LWDKOkOxoCUo@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-21-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230914192659.757475-21-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 20/25] drm/i915/dp: Make sure the DSC PPS
 SDP is disabled whenever DSC is disabled
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

On Thu, Sep 14, 2023 at 10:26:54PM +0300, Imre Deak wrote:
> Atm the DSC PPS SDP will stay enabled after enabling and disabling DSC.
> This leaves an output blank after switching off DSC on it. Make sure the
> SDP is disabled for an uncompressed output.
> 
> v2:
> - Disable the SDP already during output disabling. (Ville)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 03010accc1c7f..e942eb95d688f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4027,7 +4027,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>  			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
>  	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
>  
> -	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
> +	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
> +	if (!enable && HAS_DSC(dev_priv))
> +		val &= ~VDIP_ENABLE_PPS;
> +
>  	/* When PSR is enabled, this routine doesn't disable VSC DIP */
>  	if (!crtc_state->has_psr)
>  		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 19548242fa0f2..a38a0e6da01bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -662,9 +662,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	 * BSpec 4287: disable DIP after the transcoder is disabled and before
>  	 * the transcoder clock select is set to none.
>  	 */
> -	if (last_mst_stream)
> -		intel_dp_set_infoframes(&dig_port->base, false,
> -					old_crtc_state, NULL);
> +	intel_dp_set_infoframes(&dig_port->base, false,
> +				old_crtc_state, NULL);
>  	/*
>  	 * From TGL spec: "If multi-stream slave transcoder: Configure
>  	 * Transcoder Clock Select to direct no clock to the transcoder"
> -- 
> 2.37.2
> 
