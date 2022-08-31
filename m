Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8D5A8210
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6377B10E469;
	Wed, 31 Aug 2022 15:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF4110E46F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661960687; x=1693496687;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=zM/scukVHXstGvrbj+6bpxp7BM6kCozEa0XGgfIUFt0=;
 b=lfhugg2NXJ6GdoXGBYlXLGR2/CDcJLcvXr3rdii+1Q2jWnzq7ZMVFkOX
 clHr7cQyfIKigxFsDNzJhWgprnFUDGL7I0a2jorhu7XA9ut9+GajLJKej
 hHNM3rd2BwCdWAucs/Fd5rynF9HTSaSoM5q9tFg3M6Gf6A7RO90yAsg+T
 AdgvU6M9cJGPhZlWFEtPshMQb8NNwi0LEJcyd5aKuX81/j3dce9OZ8EMP
 yc9Jbxy/UPWY1s5m15PqWB+dOZnmZiA0wPVbDqepawJOR9Pw5aMA97j3R
 F7iYwMtgQq6qDd/s/uuZ7oyq2NILiNF5m4HkfR23ZGIyIn7XmSBz7kKiq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381773533"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="381773533"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:44:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="641918594"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.2.39])
 ([10.213.2.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:44:45 -0700
Message-ID: <3745e576-3c2c-e643-67a5-d84f3a66c3d6@intel.com>
Date: Wed, 31 Aug 2022 17:44:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220830093411.1511040-1-jani.nikula@intel.com>
 <20220830093411.1511040-2-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220830093411.1511040-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/dpll: replace BUG_ON() with
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30.08.2022 11:34, Jani Nikula wrote:
> Avoid BUG_ON(). Actually check the dpll count and bail out loudly with
> drm_WARN_ON() from the loop before overflowing
> i915->dpll.shared_dplls[].
> 
> v2: Rebase
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index bbe142056c7c..ed267c918009 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4199,6 +4199,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>   	dpll_info = dpll_mgr->dpll_info;
>   
>   	for (i = 0; dpll_info[i].name; i++) {
> +		if (drm_WARN_ON(&dev_priv->drm,
> +				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
> +			break;
> +

Shouldn't this check be replaced by some compile time checker.
Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


>   		drm_WARN_ON(&dev_priv->drm, i != dpll_info[i].id);
>   		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
>   	}
> @@ -4206,8 +4210,6 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>   	dev_priv->display.dpll.mgr = dpll_mgr;
>   	dev_priv->display.dpll.num_shared_dpll = i;
>   	mutex_init(&dev_priv->display.dpll.lock);
> -
> -	BUG_ON(dev_priv->display.dpll.num_shared_dpll > I915_NUM_PLLS);
>   }
>   
>   /**

