Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869CE79A7EA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 14:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE4189209;
	Mon, 11 Sep 2023 12:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9FF089209
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 12:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694435348; x=1725971348;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9bG2w8WZihVMgvF0jvIHHiECjW+RAq1oz9LmCDfbaxU=;
 b=AsvZ8bjgxXkMX1Xk4wZW7BgS/xkkI3wYeCrCkDLy+Af0HEUFMDLCs2/y
 cZHBXlTxO4ykk8Oi43QbPVqIyf76kHjaOV2n/SNINXxih5y/ZB9+a2nuB
 wAnp4KHadJ8Gs7DDLQS77Ieyof9kiUqCxCtFStPcNZ8GRwevXSQSGK4Cb
 dUg4SGVlPk8iGCLjeLneQJLY186J832QDUAo4FQWLHHVCdKPtGFAFxGC0
 gT50e69KXblLH4nAVEtL6edp6HKmRyBSo76TprjBQpRNSKRHsWocUmYvv
 vHE8ZhAuSwzv4Cw/15PFsOPnpbFhY2T8R2UrHCQHsRblQwJ/5jlVGlban A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="442059915"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="442059915"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 05:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="693069878"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="693069878"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 05:29:06 -0700
Date: Mon, 11 Sep 2023 15:29:00 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZP8IDFESzacPwJZK@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824080517.693621-20-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 19/22] drm/i915/dp_mst: Add missing DSC
 compression disabling
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

On Thu, Aug 24, 2023 at 11:05:14AM +0300, Imre Deak wrote:
> Add the missing DSC compression disabling step for MST streams,
> similarly to how this is done for SST outputs.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b6a717566e7c8..5eaf309f852f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -656,6 +656,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> +	intel_dsc_disable(old_crtc_state);
> +
>  	if (DISPLAY_VER(dev_priv) >= 9)
>  		skl_scaler_disable(old_crtc_state);
>  	else
> -- 
> 2.37.2
> 
