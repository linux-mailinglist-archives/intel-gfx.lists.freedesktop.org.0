Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF815F0D36
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:16:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B167D10ED19;
	Fri, 30 Sep 2022 14:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACF610ED17
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664547387; x=1696083387;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XkJYJKGVnlfjMa8w3+V+E3SQwLsqyPN22neWJ+vzjWc=;
 b=l2jpQlcYUeRHXhGmpK0sViV2Z8V+9gK5g++DhZ1M+Ij3RMxAZmG25Yo/
 GQx31UPQAIIhJYidWT2UqjXDeR3P6v7/t//3cfPCmQbr/ZQu7ARm0kwY6
 2E8NeSnpe1qSIfiRdoaAcmxEVVt0FToHi/sa5d42PWrT2PPxIfhexKzg1
 01lN9c/q+/H81eGza4okYuwRzdibO+XV6RcMwNvAxqdembflKNhTmNuKc
 5FKUv1g3TdK47JzEG0t0RA0+x/ZbTz9XS8BmxztYNZnnFCPm3DsSGq1Nv
 sIgAvlqtJo4mg1ar22FcMYp7WzhYi526/xZ/kHPVP304a0CO9YYAnG6wY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="364041186"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="364041186"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:16:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="797977888"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="797977888"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.22.21])
 ([10.252.22.21])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:16:25 -0700
Message-ID: <5123a754-4f4f-95cb-4d44-3e9e0905a7fc@linux.intel.com>
Date: Fri, 30 Sep 2022 16:16:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220930134731.389416-1-matthew.auld@intel.com>
 <20220930134731.389416-2-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220930134731.389416-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: check memory is mappable
 in read_from_page
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
Cc: Jianshui Yu <jianshui.yu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 9/30/2022 3:47 PM, Matthew Auld wrote:
> On small-bar systems we could be given something non-mappable here,
> which leads to nasty oops. Make this nicer by checking if the resource
> is mappable or not, and return an error otherwise.
>
> v2: drop GEM_BUG_ON(flags & I915_BO_ALLOC_GPU_ONLY)
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jianshui Yu <jianshui.yu@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c | 12 +++++++++++-
>   1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 369006c5317f..62495d5d0038 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -444,6 +444,16 @@ i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset
>   	io_mapping_unmap(src_map);
>   }
>   
> +static bool object_has_mappable_iomem(struct drm_i915_gem_object *obj)
> +{
> +	GEM_BUG_ON(!i915_gem_object_has_iomem(obj));
> +
> +	if (IS_DGFX(to_i915(obj->base.dev)))
> +		return i915_ttm_resource_mappable(i915_gem_to_ttm(obj)->resource);
> +
> +	return true;
> +}
> +
>   /**
>    * i915_gem_object_read_from_page - read data from the page of a GEM object
>    * @obj: GEM object to read from
> @@ -466,7 +476,7 @@ int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset,
>   
>   	if (i915_gem_object_has_struct_page(obj))
>   		i915_gem_object_read_from_page_kmap(obj, offset, dst, size);
> -	else if (i915_gem_object_has_iomem(obj))
> +	else if (i915_gem_object_has_iomem(obj) && object_has_mappable_iomem(obj))
>   		i915_gem_object_read_from_page_iomap(obj, offset, dst, size);
>   	else
>   		return -ENODEV;
