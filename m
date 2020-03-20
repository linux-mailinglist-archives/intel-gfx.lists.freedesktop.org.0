Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3845D18CF56
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885EE6EB45;
	Fri, 20 Mar 2020 13:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D686EB45
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:47:43 +0000 (UTC)
IronPort-SDR: SCP56EQ2qTYfqKi24EV5JtiRHiO52fngldyGnKIbI6DpeAcYwMXEQdg+P+AcK8NZI3HjcuHyNg
 L8GvUlreRa2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 06:47:42 -0700
IronPort-SDR: 3qqT41uqNQ1wCyJ7Nd1gwY63FB7qIOxq9cyqlfL6kCP2znD0hXsPcNjMDPyKBMh9UkYr2s+RN8
 29ACTy/RLJVw==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="418717143"
Received: from ebrown1-mobl1.ger.corp.intel.com (HELO [10.252.54.178])
 ([10.252.54.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 06:47:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200320130159.3922-1-chris@chris-wilson.co.uk>
 <20200320130159.3922-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6c8963e8-02a3-5177-4ece-560349a423ef@linux.intel.com>
Date: Fri, 20 Mar 2020 13:47:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200320130159.3922-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Avoid gem_context->mutex
 for simple vma lookup
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


On 20/03/2020 13:01, Chris Wilson wrote:
> As we store the handle lookup inside a radix tree, we do not need the
> gem_context->mutex except until we need to insert our lookup into the
> common radix tree. This takes a small bit of rearranging to ensure that
> the lut we insert into the tree is ready prior to actually inserting it
> (as soon as it is exposed via the radixtree, it is visible to any other
> submission).
> 
> v2: For brownie points, remove the goto spaghetti.
> v3: Tighten up the closed-handle checks.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 136 +++++++++++-------
>   1 file changed, 87 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index c1179c00bc61..876fc2e124b9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -481,7 +481,7 @@ eb_add_vma(struct i915_execbuffer *eb,
>   
>   	GEM_BUG_ON(i915_vma_is_closed(vma));
>   
> -	ev->vma = i915_vma_get(vma);
> +	ev->vma = vma;
>   	ev->exec = entry;
>   	ev->flags = entry->flags;
>   
> @@ -728,77 +728,117 @@ static int eb_select_context(struct i915_execbuffer *eb)
>   	return 0;
>   }
>   
> -static int eb_lookup_vmas(struct i915_execbuffer *eb)
> +static int __eb_add_lut(struct i915_execbuffer *eb,
> +			u32 handle, struct i915_vma *vma)
>   {
> -	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
> -	struct drm_i915_gem_object *obj;
> -	unsigned int i, batch;
> +	struct i915_gem_context *ctx = eb->gem_context;
> +	struct i915_lut_handle *lut;
>   	int err;
>   
> -	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
> -		return -ENOENT;
> +	lut = i915_lut_handle_alloc();
> +	if (unlikely(!lut))
> +		return -ENOMEM;
>   
> -	INIT_LIST_HEAD(&eb->relocs);
> -	INIT_LIST_HEAD(&eb->unbound);
> +	i915_vma_get(vma);
> +	if (!atomic_fetch_inc(&vma->open_count))
> +		i915_vma_reopen(vma);
> +	lut->handle = handle;
> +	lut->ctx = ctx;
> +
> +	/* Check that the context hasn't been closed in the meantime */
> +	err = -EINTR;
> +	if (!mutex_lock_interruptible(&ctx->mutex)) {
> +		err = -ENOENT;
> +		if (likely(!i915_gem_context_is_closed(ctx)))
> +			err = radix_tree_insert(&ctx->handles_vma, handle, vma);
> +		if (err == 0) { /* And nor has this handle */
> +			struct drm_i915_gem_object *obj = vma->obj;
> +
> +			i915_gem_object_lock(obj);

Does this fit into Maarten's rework - nesting of object_lock under 
ctx->mutex I mean?

Other than this question it looks clean.

Regards,

Tvrtko

> +			if (idr_find(&eb->file->object_idr, handle) == obj) {
> +				list_add(&lut->obj_link, &obj->lut_list);
> +			} else {
> +				radix_tree_delete(&ctx->handles_vma, handle);
> +				err = -ENOENT;
> +			}
> +			i915_gem_object_unlock(obj);
> +		}
> +		mutex_unlock(&ctx->mutex);
> +	}
> +	if (unlikely(err))
> +		goto err;
>   
> -	batch = eb_batch_index(eb);
> +	return 0;
>   
> -	for (i = 0; i < eb->buffer_count; i++) {
> -		u32 handle = eb->exec[i].handle;
> -		struct i915_lut_handle *lut;
> +err:
> +	atomic_dec(&vma->open_count);
> +	i915_vma_put(vma);
> +	i915_lut_handle_free(lut);
> +	return err;
> +}
> +
> +static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
> +{
> +	do {
> +		struct drm_i915_gem_object *obj;
>   		struct i915_vma *vma;
> +		int err;
>   
> -		vma = radix_tree_lookup(handles_vma, handle);
> +		rcu_read_lock();
> +		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
> +		if (likely(vma))
> +			vma = i915_vma_tryget(vma);
> +		rcu_read_unlock();
>   		if (likely(vma))
> -			goto add_vma;
> +			return vma;
>   
>   		obj = i915_gem_object_lookup(eb->file, handle);
> -		if (unlikely(!obj)) {
> -			err = -ENOENT;
> -			goto err_vma;
> -		}
> +		if (unlikely(!obj))
> +			return ERR_PTR(-ENOENT);
>   
>   		vma = i915_vma_instance(obj, eb->context->vm, NULL);
>   		if (IS_ERR(vma)) {
> -			err = PTR_ERR(vma);
> -			goto err_obj;
> +			i915_gem_object_put(obj);
> +			return vma;
>   		}
>   
> -		lut = i915_lut_handle_alloc();
> -		if (unlikely(!lut)) {
> -			err = -ENOMEM;
> -			goto err_obj;
> -		}
> +		err = __eb_add_lut(eb, handle, vma);
> +		if (likely(!err))
> +			return vma;
>   
> -		err = radix_tree_insert(handles_vma, handle, vma);
> -		if (unlikely(err)) {
> -			i915_lut_handle_free(lut);
> -			goto err_obj;
> -		}
> +		i915_gem_object_put(obj);
> +		if (err != -EEXIST)
> +			return ERR_PTR(err);
> +	} while (1);
> +}
>   
> -		/* transfer ref to lut */
> -		if (!atomic_fetch_inc(&vma->open_count))
> -			i915_vma_reopen(vma);
> -		lut->handle = handle;
> -		lut->ctx = eb->gem_context;
> +static int eb_lookup_vmas(struct i915_execbuffer *eb)
> +{
> +	unsigned int batch = eb_batch_index(eb);
> +	unsigned int i;
> +	int err = 0;
>   
> -		i915_gem_object_lock(obj);
> -		list_add(&lut->obj_link, &obj->lut_list);
> -		i915_gem_object_unlock(obj);
> +	INIT_LIST_HEAD(&eb->relocs);
> +	INIT_LIST_HEAD(&eb->unbound);
> +
> +	for (i = 0; i < eb->buffer_count; i++) {
> +		struct i915_vma *vma;
> +
> +		vma = eb_lookup_vma(eb, eb->exec[i].handle);
> +		if (IS_ERR(vma)) {
> +			err = PTR_ERR(vma);
> +			break;
> +		}
>   
> -add_vma:
>   		err = eb_validate_vma(eb, &eb->exec[i], vma);
> -		if (unlikely(err))
> -			goto err_vma;
> +		if (unlikely(err)) {
> +			i915_vma_put(vma);
> +			break;
> +		}
>   
>   		eb_add_vma(eb, i, batch, vma);
>   	}
>   
> -	return 0;
> -
> -err_obj:
> -	i915_gem_object_put(obj);
> -err_vma:
>   	eb->vma[i].vma = NULL;
>   	return err;
>   }
> @@ -1494,9 +1534,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   {
>   	int err;
>   
> -	mutex_lock(&eb->gem_context->mutex);
>   	err = eb_lookup_vmas(eb);
> -	mutex_unlock(&eb->gem_context->mutex);
>   	if (err)
>   		return err;
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
