Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A76B45FEB4D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB8910E4BB;
	Fri, 14 Oct 2022 09:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB6F10E4BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665738179; x=1697274179;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oi1pBwzqUXSjsO4YtRYScY9+AvTS1k3zIP0vzqjzMJg=;
 b=C+USLgin/gttfnyBAnp46QHVW6e0cme231Fg7uvrF0BoZp+Cz+Tp5bKy
 wJ53SSiBk5cmfPrS7LWq3iW8zIJ+IeIQot+gtD1mwxtGLel6wwS8+BESD
 BH9TYLWW6fyzmQU7a0o1Az8ddoPqIt2fF8hGBN8FIIFWhBgnH/MMGWsXI
 23Wf9qoKqc4uFlVOHWsiR8y+LbT5Wqu/4kd/AiE05HrKrhmTZ3jP4GSYE
 FbTxTz5pNSacMweLdZTM5WWT08J5GOckR1/5V5XYonEVpbW59l51RfgNY
 bLVlbxFziniq/goigoJIZvNyx3TTdggZzz58OqwD3daiLotUsS4mwRmHc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367349742"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="367349742"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:02:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="872667767"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="872667767"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.15.251])
 ([10.213.15.251])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:02:56 -0700
Message-ID: <d047cb01-d09b-45b0-3f89-41ca71832e0a@intel.com>
Date: Fri, 14 Oct 2022 11:02:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.2
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221013175650.1769399-1-jonathan.cavitt@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
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
Cc: matthew.auld@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13.10.2022 19:56, Jonathan Cavitt wrote:
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
> CC: Andi Shyti <andi.shyti@linux.intel.com> > ---
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

There are 4 occurrences of this subtraction in the code, enough for 
helper :) ?

Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   	/*
>   	 * TODO: For now just let it fail if the resource is non-mappable,
>   	 * otherwise we need to perform the memcpy from the gpu here, without

