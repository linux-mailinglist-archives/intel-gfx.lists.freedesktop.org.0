Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24477786C38
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 11:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E95310E51A;
	Thu, 24 Aug 2023 09:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A847010E51C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 09:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692870261; x=1724406261;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Q1pEw1ChbatfRsqoTon+2RhSmKnD8DpxUzG+G+x+fmc=;
 b=WkNXC6fnbBL2wfNHWGR+G6ZcegqyMcj+RMIjyUxLmOKg5USqo2bDIE35
 Tw4uuJKDcV77JSgpG30tjMDJu6KyHmcEvO/uEBgY8LYOED1nbvUJd3WUF
 GVOJnmA2d2fdLAvzKIWhBvDQKeGlGkKsrx4HDXtkPO8YBx0HxsDThqKef
 A/dA0mI0xODB/NmCy9gTdWuA2G+Z0u6Y0KsGe2zIyWrhooT1AEAflILfF
 ISGkitiEeBnoWWBDQJD7g+ydv6klxK12xfeU+lujZXEWVwB070qD7K0Mz
 5OCuXFEQCz/fjehoaMd1aDuRt7i3Xa18n2kZs1DAfoBGM98mlnqOS9zg7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405398378"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405398378"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="860640994"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="860640994"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:44:20 -0700
Date: Thu, 24 Aug 2023 12:44:16 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZOcmcL/02VeOGFbF@intel.com>
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

One thing that a bit I'm a bit concerned is that whether won't it conflict
with that intel_ddi_post_disable hook called for the last mst stream?

I see that it also calls intel_dsc_disable, however there is !mst check first,
however for Bigjoiner case, there is no such check.
Wondering should we add it there?..

>  	if (DISPLAY_VER(dev_priv) >= 9)
>  		skl_scaler_disable(old_crtc_state);
>  	else
> -- 
> 2.37.2
> 
