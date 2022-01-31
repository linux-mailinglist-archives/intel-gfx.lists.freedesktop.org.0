Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5584A49B6
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 15:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EA210E23D;
	Mon, 31 Jan 2022 14:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E6810E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 14:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643640943; x=1675176943;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4wDgUuVQNO6F4vNqB/FGpCoNtkWLsA26DF1NeArSRo8=;
 b=FonViO/T/T7yhkEtsCMTeXlV/ml744rale76vLZQ2Qy3ULQuJ6fXlMyr
 ou84e95sy143XYVTu8ubudAB9e0TMNoBucsiIvGaBqfod4oRWZCkpgOjF
 a87Nel0JGVW82VgS4El8NsmNR7fKSrJ3Kv1y7jr3FwF16WtkdvrW9aSR2
 n4CNZpa+HZ+DaBCVOa9to3isrR8fb5+LlM/affaHsmk/kF9m16RrTTiKr
 EC5s+vnGuY/ZbFZTGU91+W68Go/0lUprQl5Zytg0vqGhhv/dqfxhNYAEF
 ajzvYl+rdHTD16jueQXa3OitQwE4XL+c8lUxb4aiKcBx37MOLbUrswxYg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="333830900"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="333830900"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:55:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537210469"
Received: from tcallagh-mobl.ger.corp.intel.com (HELO [10.213.246.230])
 ([10.213.246.230])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:55:41 -0800
Message-ID: <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
Date: Mon, 31 Jan 2022 14:55:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220128221020.188253-5-michael.cheng@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/01/2022 22:10, Michael Cheng wrote:
> Use drm_clflush_virt_range instead of clflushopt and remove the memory
> barrier, since drm_clflush_virt_range takes care of that.
> 
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 498b458fd784..0854276ff7ba 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
>   static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
>   {
>   	if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
> -		if (flushes & CLFLUSH_BEFORE) {
> -			clflushopt(addr);
> -			mb();
> -		}
> +		if (flushes & CLFLUSH_BEFORE)
> +			drm_clflush_virt_range(addr, sizeof(addr));
>   
>   		*addr = value;
>   
> @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
>   		 * to ensure ordering of clflush wrt to the system.
>   		 */
>   		if (flushes & CLFLUSH_AFTER)
> -			clflushopt(addr);
> +			drm_clflush_virt_range(addr, sizeof(addr));
>   	} else
>   		*addr = value;
>   }

Slightly annoying thing here (maybe in some other patches from the series as well) is that the change adds a function call to x86 only code path, because relocations are not supported on discrete as per:

static in
eb_validate_vma(...)
         /* Relocations are disallowed for all platforms after TGL-LP.  This
          * also covers all platforms with local memory.
          */

         if (entry->relocation_count &&
             GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
                 return -EINVAL;

How acceptable would be, for the whole series, to introduce a static inline i915 cluflush wrapper and so be able to avoid functions calls on x86? Is this something that has been discussed and discounted already?

Regards,

Tvrtko

P.S. Hmm I am now reminded of my really old per platform build patches. With them you would be able to compile out large portions of the driver when building for ARM. Probably like a 3rd if my memory serves me right.
