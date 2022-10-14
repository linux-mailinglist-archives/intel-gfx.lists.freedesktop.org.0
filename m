Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108775FEC27
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F9C10E088;
	Fri, 14 Oct 2022 09:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC1710E088
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665741167; x=1697277167;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0MGWaSBKapaCN290P4FNvLFjXVPpp8WdUWzi2kVlbjo=;
 b=muEVll3DaYp82ez2mlzta5qzVnWq1SC8aBAzH7Drgy6HsD3t9t8oZIds
 tw7PPLwX5jBzLQIQN7Ars5P2gKPj6RWRiEHBos2Tkfo0wEhlsSHQHaGMg
 JkbnRZeg2FOQmiAk50qRWRny56V2wUZpFhahPUs5BWy7QryXANu0TIGx9
 icNulxodh5d9IBkcCYXoPALCoWPdraq02bl+V8dvQFl8/ei7aT4fQ2e4O
 oESwk7hhi99jW9GgxnCzpP1vw32b8ocqKwooUR00Fn5lW1+weJSOCePtM
 iS0aQJjJocbZHVdoFShvoVo9x4JRhqbr0E4JAS4Bo526l45Vm47NRCGK4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="305323345"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="305323345"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:52:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="696249378"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696249378"
Received: from swai-mobl.ger.corp.intel.com (HELO [10.213.213.91])
 ([10.213.213.91])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:52:35 -0700
Message-ID: <980e14b8-d612-435c-a77d-aa3f5cbee325@linux.intel.com>
Date: Fri, 14 Oct 2022 10:52:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix access_memory null
 pointer exception
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
Cc: matthew.auld@intel.com, andrzej.hajda@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

A couple nit picks for the benefit of coding style.

On 13/10/2022 18:56, Jonathan Cavitt wrote:
> i915_ttm_to_gem can return a NULL pointer, which is
> dereferenced in i915_ttm_access_memory without first
> checking if it is NULL.  Inspecting
> i915_ttm_io_mem_reserve, it appears the correct
> behavior in this case is to return -EINVAL.

Too narrow wrap - see kernel's submitting-patches.rst:

   - The body of the explanation, line wrapped at 75 columns, which will
     be copied to the permanent changelog to describe this patch.

> 
> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
> CC: Matthew Auld <matthew.auld@intel.com>
> CC: Andrzej Hajda <andrzej.hajda@intel.com>
> CC: Nirmoy Das <nirmoy.das@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index d63f30efd631..b569624f2ed9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
>   				  int len, int write)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> -	resource_size_t iomap = obj->mm.region->iomap.base -
> -		obj->mm.region->region.start;
> +	resource_size_t iomap;
>   	unsigned long page = offset >> PAGE_SHIFT;
>   	unsigned long bytes_left = len;

We tend to re-order the declarations from long to narrow, where not too cumbersome, just for that extra readability.

>   
> +	if (!obj)
> +		return -EINVAL;

Someone perhaps can update the vfunc kerneldoc since it appears to be overly strict in allowed return codes.

include/drm/ttm/ttm_device.h:

         /**
          * Read/write memory buffers for ptrace access
          *
          * @bo: the BO to access
          * @offset: the offset from the start of the BO
          * @buf: pointer to source/destination buffer
          * @len: number of bytes to copy
          * @write: whether to read (0) from or write (non-0) to BO
          *
          * If successful, this function should return the number of
          * bytes copied, -EIO otherwise. If the number of bytes
          * returned is < len, the function may be called again with
          * the remainder of the buffer to copy.
          */
         int (*access_memory)(struct ttm_buffer_object *bo, unsigned long offset,
                              void *buf, int len, int write);

Regards,

Tvrtko

> +
> +	iomap = obj->mm.region->iomap.base -
> +		obj->mm.region->region.start;
> +
>   	/*
>   	 * TODO: For now just let it fail if the resource is non-mappable,
>   	 * otherwise we need to perform the memcpy from the gpu here, without
