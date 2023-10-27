Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7E67D938B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D6F810E95F;
	Fri, 27 Oct 2023 09:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592EA10E95F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698398542; x=1729934542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qh7MJm9k+Yxxy8yofWcEerXk2jadj4g+Ew45Hj0xMRY=;
 b=EqBMOQduRfqvkA4zPdm0H93umoQf8wyqQWwt3CBDK4HlzXt6au4KZDQd
 m2iBxaROKM9umCaBkTdEJlSLmuqGuL1mlFds2xeDLL+rqmBETz7QCEglv
 nSqdP4oysrQ1TpQUFxubaRnxEILOyyg6W1ibTj/NkAzaAL2AhoZWo+U90
 7Z1vXzXmhSdJKO0l/VLyX6yQNi0dZcRfSIToqki04dKHIS0RU2kKBBznX
 3CoK0kDZj/5vEYDUSqgmgBviPpSOjryFQF6aT5kJv3zlZS+FeAubi+sCQ
 KfHpsvdt2ss0V9UVS3C/p5F889WkXujDQ1C6jCd37AMAmsRR6GRpRP8RT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="451980249"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="451980249"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="709358387"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="709358387"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 02:22:20 -0700
Date: Fri, 27 Oct 2023 12:22:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTuBSXPUYF8KhRWB@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-7-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/29] drm/dp: Add
 DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
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

On Tue, Oct 24, 2023 at 04:09:02AM +0300, Imre Deak wrote:
> Add the DPCD flag to enable DSC passthrough in a last branch device,
> used in a follow-up i915 patch.
> 
> Also add a flag to detect HBLANK expansion support in a branch device,
> used by a workaround in a follow-up i915 patch.
> 
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  include/drm/display/drm_dp.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index e69cece404b3c..763d45a612f35 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -148,6 +148,7 @@
>  #define DP_RECEIVE_PORT_0_CAP_0		    0x008
>  # define DP_LOCAL_EDID_PRESENT		    (1 << 1)
>  # define DP_ASSOCIATED_TO_PRECEDING_PORT    (1 << 2)
> +# define DP_HBLANK_EXPANSION_CAPABLE        (1 << 3)
>  
>  #define DP_RECEIVE_PORT_0_BUFFER_SIZE	    0x009
>  
> @@ -699,6 +700,7 @@
>  
>  #define DP_DSC_ENABLE                       0x160   /* DP 1.4 */
>  # define DP_DECOMPRESSION_EN                (1 << 0)
> +# define DP_DSC_PASSTHROUGH_EN		    (1 << 1)
>  #define DP_DSC_CONFIGURATION				0x161	/* DP 2.0 */
>  
>  #define DP_PSR_EN_CFG				0x170   /* XXX 1.2? */
> -- 
> 2.39.2
> 
