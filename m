Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08127611627
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849AC10E857;
	Fri, 28 Oct 2022 15:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BCF10E857
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666971661; x=1698507661;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=M8+hKSPNwPgTixkdL7Pu2YuiANnJheCeygO/PlHAuLg=;
 b=llxHnb2ojzaL1E0zatvLa/PFcdcYHyQNyFcI7EH+Cfl4U59q/ErpeNrg
 pW6HotdRb/X8c2JPeuSumz1QtBihbqHVz3duCcgK8GLAtlD24WnybCXNI
 RaEKQx+kCPmB0CX/Hwb7W8h4fIaF9JNihkNl5yjHJxFUyPIDTzCzv79Yo
 MI1uu1Jm628yTvUVkiBzqsVtuK7+G0UuvnHSvA9Sj0c/tHunvXLTb2sn6
 6kyYDYV12xocZ4B4HXYxxpakg9nvxaQUFR2r1O+YgODGQlR3Om4ZaFwtL
 QcMQKKGt8x65g26U+TE3YIwOf5+1WJyJljxdpCU87AVbqhmx364g1+OSE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="295929426"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="295929426"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:41:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="738145299"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="738145299"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO [10.252.29.35])
 ([10.252.29.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:40:58 -0700
Message-ID: <814629ad-9161-9328-39be-00172a481b06@intel.com>
Date: Fri, 28 Oct 2022 16:40:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221027152723.381060-1-matthew.auld@intel.com>
 <DM5PR11MB1324BAB477F97F8640564837C1329@DM5PR11MB1324.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <DM5PR11MB1324BAB477F97F8640564837C1329@DM5PR11MB1324.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix sg_table handling
 in map_dma_buf
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/10/2022 14:55, Ruhl, Michael J wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Matthew Auld
>> Sent: Thursday, October 27, 2022 11:27 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix sg_table handling in
>> map_dma_buf
>>
>> We need to iterate over the original entries here for the sg_table,
>> pulling out the struct page for each one, to be remapped. However
>> currently this incorrectly iterates over the final dma mapped entries,
>> which is likely just one gigantic sg entry if the iommu is enabled,
>> leading to us only mapping the first struct page (and any physically
>> contiguous pages following it), even if there is potentially lots more
>> data to follow.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7306
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>> drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> index 07eee1c09aaf..05ebbdfd3b3b 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> @@ -40,13 +40,13 @@ static struct sg_table *i915_gem_map_dma_buf(struct
>> dma_buf_attachment *attachme
>> 		goto err;
>> 	}
>>
>> -	ret = sg_alloc_table(st, obj->mm.pages->nents, GFP_KERNEL);
>> +	ret = sg_alloc_table(st, obj->mm.pages->orig_nents, GFP_KERNEL);
>> 	if (ret)
>> 		goto err_free;
>>
>> 	src = obj->mm.pages->sgl;
>> 	dst = st->sgl;
>> -	for (i = 0; i < obj->mm.pages->nents; i++) {
>> +	for (i = 0; i < obj->mm.pages->orig_nents; i++) {
> 
> This really should use the for_each_sg() macro.
> 
> I proposed a clean up patch a while back that looked like this:
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index e2cdc2640c08..ccc5d46aa749 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -7,6 +7,7 @@
>   #include <linux/dma-buf.h>
>   #include <linux/highmem.h>
>   #include <linux/dma-resv.h>
> +#include <linux/scatterlist.h>
>   
>   #include "gem/i915_gem_dmabuf.h"
>   #include "i915_drv.h"
> @@ -41,12 +42,10 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
>          if (ret)
>                  goto err_free;
>   
> -       src = obj->mm.pages->sgl;
>          dst = sgt->sgl;
> -       for (i = 0; i < obj->mm.pages->nents; i++) {
> +       for_each_sg(obj->mm.pages->sgl, src, obj->mm.pages->nents, i) {
>                  sg_set_page(dst, sg_page(src), src->length, 0);
>                  dst = sg_next(dst);
> -               src = sg_next(src);
>          }
> 
> If you are updating the for loop, this might be a reasonable update as well.

Ok, but such cleanups should normally be a separate patch. I'll grab 
your series and bolt that onto this one.

> 
> Mike
> 
>> 		sg_set_page(dst, sg_page(src), src->length, 0);
>> 		dst = sg_next(dst);
>> 		src = sg_next(src);
>> --
>> 2.37.3
> 
