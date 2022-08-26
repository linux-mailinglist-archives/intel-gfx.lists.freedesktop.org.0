Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4225A2695
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 13:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587E110E1BC;
	Fri, 26 Aug 2022 11:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6213C10E1BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 11:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661512106; x=1693048106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GZk7dzbn8Dc6JJRPfc8YZlcMsGyWTFYK7X8l7V8YHzs=;
 b=YiMHvNDGxdnGvmQq1l57UgB5mz8u1pp5czo0hmzfBz9ngjhKvzj4pCdr
 gHRmA7rRchcMZvjBbV5eS96xrHv/o7uSeccRyBKra56goowvsWkXvGnds
 92GCz7ok//XW0/8muSprnWtmswvj+08KkMmbzHNcNFF2li8Styc9AiUls
 NbPjN4oHI6te6PQGRe++E3637Oh1CQKCRrn2iM7n/lp2YwJV6UBQJ+NA7
 tPuqaGjpo+3CHTMasjmSpLiNIlnYy1uBvmBtYmLxzJiTGuOuarIQ719zf
 XiSC5LkwWsLxZyPFu1fAK2H7wsApGEy0ORtI8vsUNrA+Zh7Ld5gLy7YoD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="380776200"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="380776200"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 04:08:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="640018677"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Aug 2022 04:08:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Aug 2022 14:08:22 +0300
Date: Fri, 26 Aug 2022 14:08:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ywippo6I1KprqxZc@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
 <e2e92085888815e4f47ea117cc43499e595f3161.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e2e92085888815e4f47ea117cc43499e595f3161.1661503049.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/dpll: replace BUG_ON() with
 drm_WARN_ON()
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

On Fri, Aug 26, 2022 at 11:38:14AM +0300, Jani Nikula wrote:
> Avoid BUG_ON(). Actually check the dpll count and bail out loudly with
> drm_WARN_ON() from the loop before overflowing
> i915->dpll.shared_dplls[].
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 118598c9a809..8dd405553cfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4199,6 +4199,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>  	dpll_info = dpll_mgr->dpll_info;
>  
>  	for (i = 0; dpll_info[i].name; i++) {
> +		if (drm_WARN_ON(&dev_priv->drm,
> +				i >= ARRAY_SIZE(dev_priv->dpll.shared_dplls)))
> +			break;

Shame we can't neatly use a BUILD_BUG_ON() when assigning .dpll_info.

For patches 2-5
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
>  		dev_priv->dpll.shared_dplls[i].info = &dpll_info[i];
>  	}
> @@ -4206,8 +4210,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>  	dev_priv->dpll.mgr = dpll_mgr;
>  	dev_priv->dpll.num_shared_dpll = i;
>  	mutex_init(&dev_priv->dpll.lock);
> -
> -	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);
>  }
>  
>  /**
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
