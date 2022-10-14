Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98B5FEAE6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 10:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B76910EAB3;
	Fri, 14 Oct 2022 08:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89CE810EAB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 08:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665737286; x=1697273286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7m3l5eZsKluQ98GTvDHF2LQuTgIiOEZa9D2sn6IOCyM=;
 b=em/kl8m7W5bkn+8hvuJqKB1ASTBBHPhVSvgkyudSoEpNt/PqothWM7lH
 wO0ZHP4RPNejgNqL7OcX+kiZ6o1xH8g8im/abrq3NnjtWWZtAVpQLg902
 2zN13oNIZnv3+eLKUSBoHDb2ksc70QnOX3KILjUlu8bw+gCpLSUF7Caw7
 ICR6+ubaoCCFbsVF73+5jhb1AHlYQOnNyQYmibcu17xs6U89mu9wW/Whl
 GPKoz7poMzy2AaYCXp0W2qBev96mAMovjZPvXcf/0TosYv1CDnAK8tEau
 3yZGcuI2+WvDkaVtFuLxOPh+xdJcTfuok1Yl5/6kANUINUQCOJbzirtvC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="304065847"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="304065847"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:48:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="605303605"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="605303605"
Received: from mknizews-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.213.26.40])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 01:48:03 -0700
Date: Fri, 14 Oct 2022 10:47:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <Y0kiPrwG+mRR5ApQ@ashyti-mobl2.lan>
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 andrzej.hajda@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Thu, Oct 13, 2022 at 10:56:50AM -0700, Jonathan Cavitt wrote:
> i915_ttm_to_gem can return a NULL pointer, which is
> dereferenced in i915_ttm_access_memory without first
> checking if it is NULL.  Inspecting
> i915_ttm_io_mem_reserve, it appears the correct
> behavior in this case is to return -EINVAL.
> 
> Fixes: 26b15eb0 ("drm/i915/ttm: implement access_memory")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: John C Harrison <John.C.Harrison@intel.com>
> CC: Matthew Auld <matthew.auld@intel.com>
> CC: Andrzej Hajda <andrzej.hajda@intel.com>
> CC: Nirmoy Das <nirmoy.das@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index d63f30efd631..b569624f2ed9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -704,11 +704,16 @@ static int i915_ttm_access_memory(struct ttm_buffer_object *bo,
>  				  int len, int write)
>  {
>  	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> -	resource_size_t iomap = obj->mm.region->iomap.base -
> -		obj->mm.region->region.start;
> +	resource_size_t iomap;
>  	unsigned long page = offset >> PAGE_SHIFT;
>  	unsigned long bytes_left = len;
>  
> +	if (!obj)
> +		return -EINVAL;
> +
> +	iomap = obj->mm.region->iomap.base -
> +		obj->mm.region->region.start;
> +
>  	/*
>  	 * TODO: For now just let it fail if the resource is non-mappable,
>  	 * otherwise we need to perform the memcpy from the gpu here, without
> -- 
> 2.25.1
