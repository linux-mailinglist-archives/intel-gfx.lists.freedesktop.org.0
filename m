Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18D388A5AD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 16:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AECF10E078;
	Mon, 25 Mar 2024 15:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOfJQwsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4A810E078
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 15:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711378989; x=1742914989;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Nec/IiQcjm0eO5K8VFry8cfhuubixGSM6w04gm4PT0I=;
 b=IOfJQwswqjt8sSfo4QnGS46BFT0c5nbAwbVTtuvVIXKztlubKTLVoquH
 XwkbrztuBr83jaiu2Uj6loDvdUyCov78CE9lBioEokTcSfIKHfRcKwE0y
 h7ZcYKz+rJxRxoWI6hkeK6O1nTkxz+GHuXEaL8cGPwZujhJlT3PxjgYdJ
 ahHJdzjN6i2qUcBKIgsnJtIDoR+U2g45qrDO9SA7/ZvhLdJOrEU2fVGJm
 unpfmClm7UR7lrN7pnfbq3fEpRP0kMMC8AUKJl1YtH/uFfsvBKWYYoFKd
 jLYxhMbg8szZafwAeJwPMKndoH6HuhxA3f4G+RRQy1KKPhNSLgH9vsrXk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6245375"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6245375"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 08:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="827784716"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784716"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 08:03:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 17:03:04 +0200
Date: Mon, 25 Mar 2024 17:03:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v8 4/4] drm/i915/display: handle systems with duplicate
 qgv/psf gv points
Message-ID: <ZgGSKCaoUUieIja5@intel.com>
References: <20240325130156.205726-1-vinod.govindapillai@intel.com>
 <20240325130156.205726-5-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240325130156.205726-5-vinod.govindapillai@intel.com>
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

On Mon, Mar 25, 2024 at 03:01:56PM +0200, Vinod Govindapillai wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> There could be multiple qgv and psf gv points with similar values
> In case if we need to set one such QGV or psf gv  point where there
> could be duplicate entries, we would have to select all those
> points. Otherwise pcode might reject the GV configuration. We do
> handle this when we set appropriate qgv and psf gv as part of
> intel_bw_atomic_check calls. But during the bw_init force disable
> QGV points phase, we need to select all those points corresponding
> to the maximum bw as well.
> 
> v1: - use the same treatment to qgv points as well (Vinod)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 844d2d9efeb4..20c67474154e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -847,6 +847,8 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
>  		if (max_data_rate > max_bw) {
>  			max_bw_point_mask = BIT(i);
>  			max_bw = max_data_rate;
> +		} else if (max_data_rate == max_bw) {
> +			max_bw_point_mask |= BIT(i);
>  		}
>  	}
>  
> @@ -866,6 +868,8 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
>  		if (max_data_rate > max_bw) {
>  			max_bw_point_mask = BIT(i);
>  			max_bw = max_data_rate;
> +		} else if (max_data_rate == max_bw) {
> +			max_bw_point_mask |= BIT(i);

This doesn't seem entirely safe. What happens if we somehow
have two qgv points with the same bandwidth but different
uderlying clock/gear ratio/etc.?

While such behaviour may not seem entirely sensible, given
that we need to do this stuff at all, I don't think we can
assume any kind of sensible behaviour from pcode here.

So I think we will need to check that the qgv points
being used here are in fact 100% identical.

>  		}
>  	}
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
