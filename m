Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B77BC71FD1E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 11:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6149510E63B;
	Fri,  2 Jun 2023 09:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F245410E63B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 09:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685696883; x=1717232883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1aeW9nEDgnf+WxgMuS5gL8S7h8pRQh9eXNdRv/6sHaA=;
 b=gOMBqP3jnS4IsoM/NqMJYLZ3HIT2VhFbop0XIWaOtU7MHzvau9AIc5iN
 KH+3wsYhTIKZpy0MRXEnu/CZyhMgpdU58Gs7ah1diOsFqMRL5627tmj4A
 fZpEXgrBf1m+LkQ8Cp+D0kyjttHAdrThyUguAjLCXGP4Q1m2T+J83v1QL
 +7PgW/TL5vPzzsSO5tUN0z5dWWcRg0F1zXp3GptEksZ5wO4mKyRWlb4SC
 8bigQb5rO3b11Uv3g3e+L1xpO9gUiR92YyYpIdj7rmvAtvnzl+yFHdsQM
 fK+7SWeSxE6LnCS7TcMvjLNQ794aVJoAr1VKEaLqXEJj5ojKl0fUS5yyu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358254259"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="358254259"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 02:07:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="954413541"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="954413541"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.46])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 02:07:43 -0700
Date: Fri, 2 Jun 2023 11:07:41 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZHmxXYT0ZcRlpJXI@ashyti-mobl2.lan>
References: <20230601144450.792228-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601144450.792228-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: limit lmem allocation size to
 succeed on SmallBars
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Thu, Jun 01, 2023 at 04:44:50PM +0200, Andrzej Hajda wrote:
> In case system is short on mappable memory (256MB on SmallBar) allocation
> of two 1GB buffers will fail.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8300
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 4493c8518e91b2..3bd6b540257b46 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -190,11 +190,18 @@ pte_tlbinv(struct intel_context *ce,
>  
>  static struct drm_i915_gem_object *create_lmem(struct intel_gt *gt)
>  {
> +	struct intel_memory_region *mr = gt->i915->mm.regions[INTEL_REGION_LMEM_0];
> +	resource_size_t size = SZ_1G;
> +
>  	/*
>  	 * Allocation of largest possible page size allows to test all types
> -	 * of pages.
> +	 * of pages. To succeed with both allocations, especially in case of Small
> +	 * BAR, try to allocate no more than quarter of mappable memory.
>  	 */
> -	return i915_gem_object_create_lmem(gt->i915, SZ_1G, I915_BO_ALLOC_CONTIGUOUS);
> +	if (mr && size > mr->io_size / 4)
> +		size = mr->io_size / 4;
> +
> +	return i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);

makes sense to me.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
