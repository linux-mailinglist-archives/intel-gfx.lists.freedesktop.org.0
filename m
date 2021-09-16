Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBE640D69B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 11:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9315D6EB3D;
	Thu, 16 Sep 2021 09:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1501F6EB3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 09:49:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 0E2F93F36B;
 Thu, 16 Sep 2021 11:43:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4WD26aKYG4D; Thu, 16 Sep 2021 11:43:22 +0200 (CEST)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id E2C853F33C;
 Thu, 16 Sep 2021 11:43:21 +0200 (CEST)
Received: from [192.168.0.209] (unknown [192.198.151.53])
 by mail1.shipmail.org (Postfix) with ESMTPSA id C66A93601AE;
 Thu, 16 Sep 2021 11:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1631785401; bh=cZoYF+bN4MQh1PB1+KwnGv91Hmnq+39SimSxLtI+NsA=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=d6C3K6MtlCSLZOttk+bEfwRvQaA1S6Nh0ypZHHAtnVdbbjLtuivR7DYiQ8sK8Qgkt
 yDUBwUf85DIHVF2c6hLiwVBLPhQrLb/mIL6GG0QgkN8w8mk3zMj4nZBWF5tzPD2Ffz
 x72v9RMmXMgEesRBVH9oxhoko1hmb+O9/ZYj1zOY=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-2-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a0d252b5-49d9-164f-4150-56043d22f393@shipmail.org>
Date: Thu, 16 Sep 2021 11:43:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830121006.2978297-2-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915: Move __i915_gem_free_object
 to ttm_bo_destroy
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


On 8/30/21 2:09 PM, Maarten Lankhorst wrote:
> When we implement delayed destroy, we may have a second
> call to the delete_mem_notify() handler, while free_object()
> only should be called once.
>
> Move it to bo->destroy(), to ensure it's only called once.
> This fixes some weird memory corruption issues with delayed
> destroy when async eviction is used.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

I wonder whether you could push this early with a Fixes: tag, perhaps. I 
actually managed to hit this once without any vma- or async 
modifications, but a bit curious how.

Thanks,

Thomas





> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 59ca53a3ef6a..eaf2ff29dd4a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -355,11 +355,8 @@ static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>   
> -	if (likely(obj)) {
> -		/* This releases all gem object bindings to the backend. */
> +	if (likely(obj))
>   		i915_ttm_free_cached_io_st(obj);
> -		__i915_gem_free_object(obj);
> -	}
>   }
>   
>   static struct intel_memory_region *
> @@ -886,8 +883,12 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
>   {
>   	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>   
> +	/* This releases all gem object bindings to the backend. */
> +	__i915_gem_free_object(obj);
> +
>   	i915_gem_object_release_memory_region(obj);
>   	mutex_destroy(&obj->ttm.get_io_page.lock);
> +
>   	if (obj->ttm.created)
>   		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
>   }
