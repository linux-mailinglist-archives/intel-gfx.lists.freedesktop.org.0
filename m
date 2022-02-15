Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 995244B7488
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 20:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B4C10E171;
	Tue, 15 Feb 2022 19:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0569E10E171
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 19:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644951905; x=1676487905;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=deJnmTtExzh/IC9XgWiz8lzVyVie3z94PS/N+gt5hy4=;
 b=kzssXoq407H3vaqPfSlaa5t0goOKOjaBwZOvGME0dp7TiVvgwbGs9KT7
 GT0gkIPKv5GLhKDI5R9Ius/6TNX8Z4L0pNvwVPrI4PCZ9d4MQVJ4RdYdP
 VqMO0Dvg/yGpqFb5+dTZUumJtOyjr1cq9jRpy/cbUshjLwYSOe/PDcDvE
 qs3VoPhloGtItKjnqrklQA8wi4Xi/X7OIhEWeQHI5CG/bAOgCG18c5Rfm
 7YO/crdryQP2vNJ6l5+9AfA/fqMC47p7STZLsWTFhMCQJcxkXZhgglCio
 nrlcqAni8PssQxbJ3VGW3i000Gj7ITlx7fTBCV5Ydtz7jwxkWV5YwX5q0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250634021"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250634021"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:05:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="587863190"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:05:03 -0800
Date: Tue, 15 Feb 2022 11:05:20 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20220215190520.GB6463@labuser-Z97X-UD5H>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
 <20220215133727.13450-7-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220215133727.13450-7-anshuman.gupta@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/dgfx: Get VBT from rvda
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 07:07:27PM +0530, Anshuman Gupta wrote:
> Since OpRegion ver 2.1 MBOX3 RVDA field is Relative address of Raw
> VBT data from OpRegion Base.
> Populate the opreion->rvda accordingly.
> As Intel DGFX cards supports OpRegion version 2.2 or greater,
> RVDA as an absolute VBT physical address (Ver 2.0) doesn't applicable
> to DGFX cards.
> 
> v2:
> - Add kzalloc NULL check for opreg_rvda pointer.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 8af3a92582cb..9907dae8f3cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1625,11 +1625,31 @@ static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
>  
>  static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
>  {
> -	return ERR_PTR(-EOPNOTSUPP);
> +	struct intel_opregion *opregion = &i915->opregion;
> +	void *opreg_rvda;
> +
> +	if (!opregion->dgfx_oprom_opreg)
> +		return ERR_PTR(-EINVAL);
> +
> +	opreg_rvda = kzalloc(opregion->asle->rvds, GFP_KERNEL);
> +	if (!opreg_rvda)
> +		return ERR_PTR(-ENOMEM);
> +
> +	memcpy(opreg_rvda, opregion->dgfx_oprom_opreg + opregion->asle->rvda, opregion->asle->rvds);

The suggestion here by Chris Wilson was to replace kzalloc + memcpy with kmemdup

Please add that and give necessary credits for changes done by me in DII and suggested by Chris Wilson

Manasi

> +
> +	/* We got RVDA, OPROM opregion + vbt image not nedded anymore */
> +	kfree(opregion->dgfx_oprom_opreg);
> +	opregion->dgfx_oprom_opreg = NULL;
> +
> +	return opreg_rvda;
>  }
>  
>  static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
>  {
> +	struct intel_opregion *opregion = &i915->opregion;
> +
> +	kfree(opregion->rvda);
> +	opregion->rvda = NULL;
>  }
>  
>  static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
> -- 
> 2.26.2
> 
