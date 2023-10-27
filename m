Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7657D938D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3503410E960;
	Fri, 27 Oct 2023 09:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97BA510E960
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698398600; x=1729934600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aM6sc0it9k2+PMabIBdNL7tZGQ9Wuag86QjH5USSaGY=;
 b=mFmsNtuIemV/dBC6qoNbEFtYJn8dD3FvBmCuWcplCfVStMdGddD1ps9V
 W9tme1KFsZNufrUtHJQu9f8ltk0B0XHlqBY/W0HyhCzDAlgIa4cnkhyEM
 GORQy1Indfa8+4jcDjmNeM6ydS3KxWBU3TPWe4r9lljLH68mIbauh0+l6
 KjNxnBEh7/w4+uyBY+HY2PdJ2noGpGnLm59JNNWW/VulRDyU631l6OkF6
 hQmB5ZF9p3kTCmEk2dU/MWsNzNPJ8k7lsZk4YESKKtxwXpLPGGirBLCwK
 udVID6NawJVtR81c4zO+3QY40MTTo/G9iMLQueONF/mKJjQDDvpkZ1xrA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="454205822"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="454205822"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="794529825"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="794529825"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:23:19 -0700
Date: Fri, 27 Oct 2023 12:23:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTuBg6B9ZF5JIXtm@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-8-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/29] drm/dp_mst: Add HBLANK expansion
 quirk for Synaptics MST hubs
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

On Tue, Oct 24, 2023 at 04:09:03AM +0300, Imre Deak wrote:
> Add a quirk for Synaptics MST hubs, which require a workaround - at leat
> on i915 - for some modes, on which the hub applies HBLANK expansion.
> These modes will only work by enabling DSC decompression for them, a
> follow-up patch will do this in i915.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
>  include/drm/display/drm_dp_helper.h     | 7 +++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index f3680f4e69708..e5d7970a9ddd0 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2245,6 +2245,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
>  	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
>  	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
>  	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
> +	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */
> +	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },
>  	/* Apple MacBookPro 2017 15 inch eDP Retina panel reports too low DP_MAX_LINK_RATE */
>  	{ OUI(0x00, 0x10, 0xfa), DEVICE_ID(101, 68, 21, 101, 98, 97), false, BIT(DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS) },
>  };
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 3d74b2cec72fd..351f38d5cc351 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -632,6 +632,13 @@ enum drm_dp_quirk {
>  	 * the DP_MAX_LINK_RATE register reporting a lower max multiplier.
>  	 */
>  	DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS,
> +	/**
> +	 * @DP_DPCD_QUIRK_HBLANK_EXPANSION_NEEDS_DSC:
> +	 *
> +	 * The device applies HBLANK expansion for some modes, but this
> +	 * requires enabling DSC.
> +	 */
> +	DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC,
>  };
>  
>  /**
> -- 
> 2.39.2
> 
