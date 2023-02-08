Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355EB68F0D1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 15:28:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004AD10E780;
	Wed,  8 Feb 2023 14:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C3210E780
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675866533; x=1707402533;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SsEGsHiJcLpRbq9p2TFwT+eEmLyqb+Ae8FPGdUDAPzs=;
 b=AyM8q68NDb5mqF1Lu6v6kG1G0c/iZwAnHgi/LHXmNMfnwYQOR/xH1KWP
 PgQhO6syQ+xnXoPifLLyj6kTBx6ST8Q3cGaBUSot2ipTZhJxW2wU0PUd2
 cBA+phaqmLrNtxWoB+pHzodLtOarQfKDvfjw6wRvOaP+TpbyUlhqndET/
 qFVzQCBz47TKg6OskDTIzhhNdkTFTn0DPTmRpbQTHIQAyKEcPbB3Spz+I
 22iNnCgVsJ/Oeaztv/gN+cKZxeYAbYawuGsEMUjB2I3H3Tb0XVQGZV0K+
 TthlTuOF6iKEEmBdqBW9oXvY/L4Xyxv2Iqc8A6EGJDsiW8/kdtWOekeGC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392202287"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="392202287"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:28:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791214457"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="791214457"
Received: from lxu17-mobl.ccr.corp.intel.com (HELO intel.com) ([10.252.63.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:28:51 -0800
Date: Wed, 8 Feb 2023 15:28:49 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y+OxobZu805SfoXl@ashyti-mobl2.lan>
References: <20230127160321.374350-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230127160321.374350-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: probe lmem before the stolen
 portion
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Fri, Jan 27, 2023 at 04:03:21PM +0000, Matthew Auld wrote:
> At the very least, we have some tests that force the BAR size for
> testing purposes, which would result in different BAR size with
> stolen-lmem vs normal lmem, since the BAR is only resized as part of the
> normal lmem probing.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index cf1c0970ecb4..320a4f861659 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -489,13 +489,17 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  	if (ret)
>  		goto err_ggtt;
>  
> -	ret = intel_memory_regions_hw_probe(dev_priv);
> +	/*
> +	 * Make sure we probe lmem before we probe stolen-lmem. The BAR size
> +	 * might be different due to bar resizing.
> +	 */

uh... right! Good catch!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> +	ret = intel_gt_tiles_init(dev_priv);
>  	if (ret)
>  		goto err_ggtt;
>  
> -	ret = intel_gt_tiles_init(dev_priv);
> +	ret = intel_memory_regions_hw_probe(dev_priv);
>  	if (ret)
> -		goto err_mem_regions;
> +		goto err_ggtt;
>  
>  	ret = i915_ggtt_enable_hw(dev_priv);
>  	if (ret) {
> -- 
> 2.39.1
