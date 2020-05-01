Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8BF1C125F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171996E048;
	Fri,  1 May 2020 12:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB2A6E048
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 12:46:19 +0000 (UTC)
IronPort-SDR: LnHUfQLLnGTBMPJkjThZu95+dtDRg5/UG4kYi7iFeDDvVTbc0YxwtEBYvB6ZAKVnFp4OlZQ65n
 OlY/0BZxoehQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 05:46:19 -0700
IronPort-SDR: zXhTu+fMQh+kLybJDqaAmDjGBWRFEn3MhQKvQVArJn6fnscb1KbjpaQgLqjI23UR0NAsqNkKEE
 bCcCZ8exvmtQ==
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="283168126"
Received: from stal1-mobl.ger.corp.intel.com (HELO [10.214.218.50])
 ([10.214.218.50])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 05:46:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
 <20200501101900.22543-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b4dc0a73-894a-1745-c7e4-e316dd9e832b@linux.intel.com>
Date: Fri, 1 May 2020 13:46:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501101900.22543-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Use a single chained
 reloc batches for a single execbuf
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/05/2020 11:18, Chris Wilson wrote:
> As we can now keep chaining together a relocation batch to process any
> number of relocations, we can keep building that relocation batch for
> all of the target vma. This avoiding emitting a new request into the
> ring for each target, consuming precious ring space and a potential
> stall.
> 
> Testcase: igt/gem_exec_reloc/basic-wide-active
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 23 +++++++++++--------
>   1 file changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 293bf06b65b2..b224a453e2a3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -268,6 +268,7 @@ struct i915_execbuffer {
>   		bool has_fence : 1;
>   		bool needs_unfenced : 1;
>   
> +		struct i915_vma *target;
>   		struct i915_request *rq;
>   		u32 *rq_cmd;
>   		unsigned int rq_size;
> @@ -1087,9 +1088,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
>   {
>   	void *vaddr;
>   
> -	if (cache->rq)
> -		reloc_gpu_flush(cache);
> -
>   	if (!cache->vaddr)
>   		return;
>   
> @@ -1282,7 +1280,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
>   }
>   
>   static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
> -			     struct i915_vma *vma,
>   			     unsigned int len)
>   {
>   	struct reloc_cache *cache = &eb->reloc_cache;
> @@ -1305,7 +1302,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>   		goto out_pool;
>   	}
>   
> -	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
> +	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
>   	if (IS_ERR(batch)) {
>   		err = PTR_ERR(batch);
>   		goto err_unmap;
> @@ -1325,10 +1322,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>   	if (err)
>   		goto err_request;
>   
> -	err = reloc_move_to_gpu(rq, vma);
> -	if (err)
> -		goto err_request;
> -
>   	i915_vma_lock(batch);
>   	err = i915_request_await_object(rq, batch->obj, false);
>   	if (err == 0)
> @@ -1373,9 +1366,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
>   		if (!intel_engine_can_store_dword(eb->engine))
>   			return ERR_PTR(-ENODEV);
>   
> -		err = __reloc_gpu_alloc(eb, vma, len);
> +		err = __reloc_gpu_alloc(eb, len);
> +		if (unlikely(err))
> +			return ERR_PTR(err);
> +	}
> +
> +	if (vma != cache->target) {
> +		err = reloc_move_to_gpu(cache->rq, vma);
>   		if (unlikely(err))
>   			return ERR_PTR(err);
> +
> +		cache->target = vma;
>   	}
>   
>   	if (unlikely(cache->rq_size + len > PAGE_SIZE / sizeof(u32) - 4)) {
> @@ -1694,6 +1695,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   			if (err)
>   				return err;
>   		}
> +
> +		reloc_gpu_flush(&eb->reloc_cache);
>   	}
>   
>   	return 0;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
