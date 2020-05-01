Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C7A1C1266
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 14:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6436E229;
	Fri,  1 May 2020 12:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62A76E229
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 12:47:39 +0000 (UTC)
IronPort-SDR: dNiDYtZV4lkocLAWqebaQ0FwfUGe6LKgpb7kRg4gUQerA5+EY1TPQDLGyfmmFax01zMHs5o5Xq
 QC4/Z1nGJaEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 05:47:39 -0700
IronPort-SDR: 4EBL2CN359NJqVw62HE0lzKck7kn/5QGKYT0RZRmcrY9Iaj/6LrpePCZvLIaIwWJNYD91WxFaK
 GwN4BW+9HHLQ==
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="283168408"
Received: from stal1-mobl.ger.corp.intel.com (HELO [10.214.218.50])
 ([10.214.218.50])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 05:47:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
 <20200501101900.22543-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8f82fa9c-9d01-4569-03b1-341d574b77e5@linux.intel.com>
Date: Fri, 1 May 2020 13:47:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501101900.22543-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Try an alternate engine
 for relocations
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


On 01/05/2020 11:19, Chris Wilson wrote:
> If at first we don't succeed, try try again.
> 
> No all engines may support the MI ops we need to perform asynchronous
> relocation patching, and so we end up failing back to a synchronous
> operation that has a liability of blocking. However, Tvrtko pointed out
> we don't need to use the same engine to perform the relocations as we
> are planning to execute the execbuf on, and so if we switch over to a
> working engine, we can perform the relocation asynchronously. The user
> execbuf will be queued after the relocations by virtue of fencing.
> 
> This patch creates a new context per execbuf requiring asynchronous
> relocations on an unusable engines. This is perhaps a bit excessive and
> can be amoriated by a small context cache, but for the moment we only
> need it for working around a little used engine on Sandybridge, and only
> if relocations are actually required.
> 
> Now we just need to teach the relocation code to handle physical
> addressing for gen2/3, and we should then have universal support!
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Testcase: igt/gem_exec_reloc/basic-spin # snb
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 32 ++++++++++++++++---
>   1 file changed, 27 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index b224a453e2a3..6d649de3a796 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1280,6 +1280,7 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
>   }
>   
>   static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
> +			     struct intel_engine_cs *engine,
>   			     unsigned int len)
>   {
>   	struct reloc_cache *cache = &eb->reloc_cache;
> @@ -1289,7 +1290,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>   	u32 *cmd;
>   	int err;
>   
> -	pool = intel_gt_get_buffer_pool(eb->engine->gt, PAGE_SIZE);
> +	pool = intel_gt_get_buffer_pool(engine->gt, PAGE_SIZE);
>   	if (IS_ERR(pool))
>   		return PTR_ERR(pool);
>   
> @@ -1312,7 +1313,23 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>   	if (err)
>   		goto err_unmap;
>   
> -	rq = i915_request_create(eb->context);
> +	if (engine == eb->context->engine) {
> +		rq = i915_request_create(eb->context);
> +	} else {
> +		struct intel_context *ce;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(rq);
> +			goto err_unpin;
> +		}
> +
> +		i915_vm_put(ce->vm);
> +		ce->vm = i915_vm_get(eb->context->vm);
> +
> +		rq = intel_context_create_request(ce);
> +		intel_context_put(ce);
> +	}
>   	if (IS_ERR(rq)) {
>   		err = PTR_ERR(rq);
>   		goto err_unpin;
> @@ -1363,10 +1380,15 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
>   	int err;
>   
>   	if (unlikely(!cache->rq)) {
> -		if (!intel_engine_can_store_dword(eb->engine))
> -			return ERR_PTR(-ENODEV);
> +		struct intel_engine_cs *engine = eb->engine;
> +
> +		if (!intel_engine_can_store_dword(engine)) {
> +			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
> +			if (!engine || !intel_engine_can_store_dword(engine))
> +				return ERR_PTR(-ENODEV);
> +		}
>   
> -		err = __reloc_gpu_alloc(eb, len);
> +		err = __reloc_gpu_alloc(eb, engine, len);
>   		if (unlikely(err))
>   			return ERR_PTR(err);
>   	}
> 

If you are not worried about the context create dance on SNB, and it is 
limited to VCS, then neither am I.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
