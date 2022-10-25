Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD04D60C6A8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 10:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4409D10E18A;
	Tue, 25 Oct 2022 08:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AA710E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 08:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666687215; x=1698223215;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=g7MVCF/+VzUuc0ANX5JgmkjUeGq543Z2DXlYDGVoPIs=;
 b=QHcGMtvYPZHLWnlKKd4G2E893LkPnXBCpHBgvm4cI3eAxTz2a6Kwh5h4
 Ke/hXiwiYCI3p+HHuDa4cN0RnYJqNEV3kFZULH3Js9dHJ36H4Ti/sjVtx
 dC6+siy8pXeFZecukCGVpEn2TCyTQ8CkDu+Daj/QQbuQNN53NJfVmfx8t
 rhPOa3Z9cqKQVVn6esliCJUviVFPN7amqjp1Es1Y8G9z62Zv6KTz8DJhI
 D84E7RXU+EwSkrioHxyD0ZnvsPCQWpwHRctlTpzgsrQtD9jVQUfgFn+kq
 RAZF2K1KxoovvBXgo4H97DNHiN3mjT84J4o9dLwkNHa3VbPFKsh+FAkxO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="369691393"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="369691393"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 01:40:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="756857043"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="756857043"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.45.43])
 ([10.252.45.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 01:40:12 -0700
Message-ID: <48981b93-7373-4e2e-537b-c32e1dc2f98a@linux.intel.com>
Date: Tue, 25 Oct 2022 10:40:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221024101946.28974-1-matthew.auld@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221024101946.28974-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/uapi: expose GTT alignment"
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Michal Mrozek <michal.mrozek@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/24/2022 12:19 PM, Matthew Auld wrote:
> The process for merging uAPI is to have UMD side ready and reviewed and
> merged before merging. Revert for now until that is ready.
>
> This reverts commit d54576a074a29d4901d0a693cd84e1a89057f694.
>
> Reported-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Michal Mrozek <michal.mrozek@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Yang A Shi <yang.a.shi@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_query.c |  1 -
>   include/uapi/drm/i915_drm.h       | 29 ++---------------------------
>   2 files changed, 2 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index 111377f210ed..6ec9c9fb7b0d 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -498,7 +498,6 @@ static int query_memregion_info(struct drm_i915_private *i915,
>   		info.region.memory_class = mr->type;
>   		info.region.memory_instance = mr->instance;
>   		info.probed_size = mr->total;
> -		info.gtt_alignment = mr->min_page_size;
>   
>   		if (mr->type == INTEL_MEMORY_LOCAL)
>   			info.probed_cpu_visible_size = mr->io_size;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index c2dce8633005..9bf281ec1125 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3466,33 +3466,8 @@ struct drm_i915_memory_region_info {
>   	/** @region: The class:instance pair encoding */
>   	struct drm_i915_gem_memory_class_instance region;
>   
> -	union {
> -		/** @rsvd0: MBZ */
> -		__u32 rsvd0;
> -		/**
> -		 * @gtt_alignment:
> -		 *
> -		 * The minimum required GTT alignment for this type of memory.
> -		 * When allocating a GTT address it must be aligned to this
> -		 * value or larger. On some platforms the kernel might opt to
> -		 * using 64K pages for I915_MEMORY_CLASS_DEVICE, where 64K GTT
> -		 * pages can then be used if we also use 64K GTT alignment.
> -		 *
> -		 * NOTE: If this is zero then this must be an older
> -		 * kernel which lacks support for this field.
> -		 *
> -		 * Side note: For larger objects (especially for
> -		 * I915_MEMORY_CLASS_DEVICE), like 2M+ in size, userspace should
> -		 * consider potentially bumping the GTT alignment to say 2M,
> -		 * which could potentially increase the likelihood of the kernel
> -		 * being able to utilise 2M GTT pages underneath, if the layout
> -		 * of the physical pages allows it.  On some configurations we
> -		 * can then also use a more efficient page-table layout, if we
> -		 * can't use the more desirable 2M GTT page, so long as we know
> -		 * that the entire page-table will be used by this object.
> -		 */
> -		__u32 gtt_alignment;
> -	};
> +	/** @rsvd0: MBZ */
> +	__u32 rsvd0;
>   
>   	/**
>   	 * @probed_size: Memory probed by the driver
