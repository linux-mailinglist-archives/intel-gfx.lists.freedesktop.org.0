Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 685215FEAA7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 10:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1678510E1C0;
	Fri, 14 Oct 2022 08:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4025710EAA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 08:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665736810; x=1697272810;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Jce/F8grp9VJj0pjG2jsibCpNF2+I6YIv1tK9nIljbw=;
 b=Uodh4nEytgUhrM0bdgmPuUKK/hu/UF2/5pGPwgnyaAhGLzXA/0cI8ljI
 GjgOh5oWd5RSDw0xj8MkuFGKyhMvRwvqZk/zB/WRVPSOGdTnL0RpjVyvt
 kMPAf1TQaEnikX6m5LsnF1xB+/UYXqCH8n4RYMUy6sb50VROsTSO9K6LS
 fBro6wcmiQmXssTuInOU2O8ljdCt+n/dzB0Qu53sxJkrk7VCVv/fYdDdB
 nt4Ln83rKl9u78Qm5l5B3aUqmk97AeuddUSTve8g0b93+zPWLpLQSSAmK
 G9bAb/PyihhwAdZlq3VD3XAf/Eut+ftoE1k0KNAji7k3ZHouBtG4hMcBS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391629673"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="391629673"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:39:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="696229411"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="696229411"
Received: from salamu-mobl1.ger.corp.intel.com (HELO [10.252.11.69])
 ([10.252.11.69])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:39:54 -0700
Message-ID: <43b8728b-4f05-3f32-d794-7b94ba65480c@intel.com>
Date: Fri, 14 Oct 2022 09:39:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
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
Cc: andrzej.hajda@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/10/2022 18:56, Jonathan Cavitt wrote:
> i915_ttm_to_gem can return a NULL pointer, which is
> dereferenced in i915_ttm_access_memory without first
> checking if it is NULL.  Inspecting
> i915_ttm_io_mem_reserve, it appears the correct
> behavior in this case is to return -EINVAL.

The GEM object has already been dereferenced before this point, if you 
look at the caller (vm_access_ttm). The NULL obj thing is to identify 
"ttm ghost objects", and I don't think a normal userpace object can 
suddenly become one (access_memory comes from ptrace). AFAIK ghost 
objects are just for temporarily hanging on to some memory/state, while 
the dma-resv is busy. In the places where ttm is the one giving us the 
object, then it might be possible to see these types of objects, since 
ttm could in theory pass one in (like during eviction).

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
>   
> +	if (!obj)
> +		return -EINVAL;
> +
> +	iomap = obj->mm.region->iomap.base -
> +		obj->mm.region->region.start;
> +
>   	/*
>   	 * TODO: For now just let it fail if the resource is non-mappable,
>   	 * otherwise we need to perform the memcpy from the gpu here, without
