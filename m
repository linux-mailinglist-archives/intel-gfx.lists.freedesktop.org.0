Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543565117B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 19:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D442010E2E7;
	Mon, 19 Dec 2022 18:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BE810E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 18:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671473044; x=1703009044;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NvupqBcIDZcZS4i/DcG/nApL64SmFe0J3BnHFPCWiz8=;
 b=ePTqxbqShPG2V7rGuf5eAd0mdQk1raUoYUS1T6U9+9A92P9H1R20+mU8
 RKU09LImTtwHczNjz0raLCCkjHxqP0iPvU8qtKv8Yz05/o4Vxqv07LsQ5
 JJtZklXNWpKGACZLad2wge6ASa2Xj/+K2TTyYxBAwa8QYS9eajANfPsgq
 56rJYw4zm4VKEeQ6+BaKpem2hDvNhpenPEaUwsimtVmZqRWpl30gKrkfI
 o1WY0xo9ITbLNphl5ukEb8HjtWk3OqOX9g/anGt2+m7IIkehSDbZwT41W
 wOAHMU7oxlF7mEmwE87YEsBJWGg7uj60b7mRsSDayFWSeBI3TBcXm6Twq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405665415"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="405665415"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 10:04:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="979475664"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="979475664"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.42])
 ([10.213.16.42])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 10:04:02 -0800
Message-ID: <660fc517-82ad-1ecf-17c8-6f9017caaddd@intel.com>
Date: Mon, 19 Dec 2022 19:04:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221219112933.21417-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221219112933.21417-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Use helper func to find out
 map type
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19.12.2022 12:29, Nirmoy Das wrote:
> Use i915_coherent_map_type() function to find out
> map_type of the shmem obj.
> 
> v2: handle non-llc platform(Matt)
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 402f085f3a02..449c9ed44382 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -8,6 +8,7 @@
>   #include <linux/pagemap.h>
>   #include <linux/shmem_fs.h>
>   
> +#include "i915_drv.h"
>   #include "gem/i915_gem_object.h"
>   #include "gem/i915_gem_lmem.h"
>   #include "shmem_utils.h"
> @@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>   
>   struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   {
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	enum i915_map_type map_type;
>   	struct file *file;
>   	void *ptr;
>   
> @@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>   		return file;
>   	}
>   
> -	ptr = i915_gem_object_pin_map_unlocked(obj, i915_gem_object_is_lmem(obj) ?
> -						I915_MAP_WC : I915_MAP_WB);
> +	map_type = i915_coherent_map_type(i915, obj, true);
> +	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);


More lines, but less branches, some gain :)

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>   	if (IS_ERR(ptr))
>   		return ERR_CAST(ptr);
>   

