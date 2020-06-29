Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243DF20CF58
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 17:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778AA89DB5;
	Mon, 29 Jun 2020 15:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6391C89DB5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 15:09:06 +0000 (UTC)
IronPort-SDR: E7HjbcptabZ0VDYgEUbP02Sy02iH1yr58l3elK6Bw8qrJoUYE/GR+CKM2TZoaxnltL8ecGY6TD
 b8pQ5pMXAPkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="144175415"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="144175415"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 08:08:48 -0700
IronPort-SDR: LGOrCXYVgYkj6anCXd7xMJYxXAvznKHJ5Sqh7eYgbxmcJbtLn3WCVdSrCXtda0ohkdjHWxCeEh
 Il2EJ5Ggxfvg==
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="454224497"
Received: from tkeuter-mobl2.ger.corp.intel.com (HELO [10.249.42.155])
 ([10.249.42.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 08:08:45 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-7-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dacbaf04-a149-38e2-5c07-3d3e10589bd3@linux.intel.com>
Date: Mon, 29 Jun 2020 16:08:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-7-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/26] Revert "drm/i915/gem: Split eb_vma
 into its own allocation"
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


On 23/06/2020 15:28, Maarten Lankhorst wrote:
> This reverts commit 0f1dd02295f35dcdcbaafcbcbbec0753884ab974.
> This conflicts with the ww mutex handling, which needs to drop
> the references after gpu submission anyway, because otherwise we
> may risk unlocking a BO after first freeing it.

What is the problem here? eb_vma_array_put in eb_move_to_gpu? If so, 
could you just move this put to later in the sequence? I am simply 
thinking how to avoid controversial reverts. Because on the other hand I 
did not figure out what 0f1dd02295f35dcdcbaafcbcbbec0753884ab974 fixed 
in a few minutes I spent staring at the patch.

Regards,

Tvrtko

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 124 +++++++-----------
>   1 file changed, 51 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 7cb44915cfc7..2636a130fb57 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -40,11 +40,6 @@ struct eb_vma {
>   	u32 handle;
>   };
>   
> -struct eb_vma_array {
> -	struct kref kref;
> -	struct eb_vma vma[];
> -};
> -
>   enum {
>   	FORCE_CPU_RELOC = 1,
>   	FORCE_GTT_RELOC,
> @@ -57,6 +52,7 @@ enum {
>   #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
>   #define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
>   #define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
> +#define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
>   
>   #define __EXEC_HAS_RELOC	BIT(31)
>   #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
> @@ -287,7 +283,6 @@ struct i915_execbuffer {
>   	 */
>   	int lut_size;
>   	struct hlist_head *buckets; /** ht for relocation handles */
> -	struct eb_vma_array *array;
>   };
>   
>   static int eb_parse(struct i915_execbuffer *eb);
> @@ -299,62 +294,8 @@ static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
>   		 eb->args->batch_len);
>   }
>   
> -static struct eb_vma_array *eb_vma_array_create(unsigned int count)
> -{
> -	struct eb_vma_array *arr;
> -
> -	arr = kvmalloc(struct_size(arr, vma, count), GFP_KERNEL | __GFP_NOWARN);
> -	if (!arr)
> -		return NULL;
> -
> -	kref_init(&arr->kref);
> -	arr->vma[0].vma = NULL;
> -
> -	return arr;
> -}
> -
> -static inline void eb_unreserve_vma(struct eb_vma *ev)
> -{
> -	struct i915_vma *vma = ev->vma;
> -
> -	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
> -		__i915_vma_unpin_fence(vma);
> -
> -	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
> -		__i915_vma_unpin(vma);
> -
> -	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
> -		       __EXEC_OBJECT_HAS_FENCE);
> -}
> -
> -static void eb_vma_array_destroy(struct kref *kref)
> -{
> -	struct eb_vma_array *arr = container_of(kref, typeof(*arr), kref);
> -	struct eb_vma *ev = arr->vma;
> -
> -	while (ev->vma) {
> -		eb_unreserve_vma(ev);
> -		i915_vma_put(ev->vma);
> -		ev++;
> -	}
> -
> -	kvfree(arr);
> -}
> -
> -static void eb_vma_array_put(struct eb_vma_array *arr)
> -{
> -	kref_put(&arr->kref, eb_vma_array_destroy);
> -}
> -
>   static int eb_create(struct i915_execbuffer *eb)
>   {
> -	/* Allocate an extra slot for use by the command parser + sentinel */
> -	eb->array = eb_vma_array_create(eb->buffer_count + 2);
> -	if (!eb->array)
> -		return -ENOMEM;
> -
> -	eb->vma = eb->array->vma;
> -
>   	if (!(eb->args->flags & I915_EXEC_HANDLE_LUT)) {
>   		unsigned int size = 1 + ilog2(eb->buffer_count);
>   
> @@ -388,10 +329,8 @@ static int eb_create(struct i915_execbuffer *eb)
>   				break;
>   		} while (--size);
>   
> -		if (unlikely(!size)) {
> -			eb_vma_array_put(eb->array);
> +		if (unlikely(!size))
>   			return -ENOMEM;
> -		}
>   
>   		eb->lut_size = size;
>   	} else {
> @@ -502,6 +441,26 @@ eb_pin_vma(struct i915_execbuffer *eb,
>   	return !eb_vma_misplaced(entry, vma, ev->flags);
>   }
>   
> +static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
> +{
> +	GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));
> +
> +	if (unlikely(flags & __EXEC_OBJECT_HAS_FENCE))
> +		__i915_vma_unpin_fence(vma);
> +
> +	__i915_vma_unpin(vma);
> +}
> +
> +static inline void
> +eb_unreserve_vma(struct eb_vma *ev)
> +{
> +	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
> +		return;
> +
> +	__eb_unreserve_vma(ev->vma, ev->flags);
> +	ev->flags &= ~__EXEC_OBJECT_RESERVED;
> +}
> +
>   static int
>   eb_validate_vma(struct i915_execbuffer *eb,
>   		struct drm_i915_gem_exec_object2 *entry,
> @@ -944,13 +903,31 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
>   	}
>   }
>   
> +static void eb_release_vmas(const struct i915_execbuffer *eb)
> +{
> +	const unsigned int count = eb->buffer_count;
> +	unsigned int i;
> +
> +	for (i = 0; i < count; i++) {
> +		struct eb_vma *ev = &eb->vma[i];
> +		struct i915_vma *vma = ev->vma;
> +
> +		if (!vma)
> +			break;
> +
> +		eb->vma[i].vma = NULL;
> +
> +		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
> +			__eb_unreserve_vma(vma, ev->flags);
> +
> +		i915_vma_put(vma);
> +	}
> +}
> +
>   static void eb_destroy(const struct i915_execbuffer *eb)
>   {
>   	GEM_BUG_ON(eb->reloc_cache.rq);
>   
> -	if (eb->array)
> -		eb_vma_array_put(eb->array);
> -
>   	if (eb->lut_size > 0)
>   		kfree(eb->buckets);
>   }
> @@ -2039,12 +2016,9 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   			err = i915_vma_move_to_active(vma, eb->request, flags);
>   
>   		i915_vma_unlock(vma);
> -		eb_unreserve_vma(ev);
>   	}
>   	ww_acquire_fini(&acquire);
>   
> -	eb_vma_array_put(fetch_and_zero(&eb->array));
> -
>   	if (unlikely(err))
>   		goto err_skip;
>   
> @@ -2340,7 +2314,6 @@ static int eb_parse(struct i915_execbuffer *eb)
>   	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
>   	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
>   	eb->batch = &eb->vma[eb->buffer_count++];
> -	eb->vma[eb->buffer_count].vma = NULL;
>   
>   	eb->trampoline = trampoline;
>   	eb->batch_start_offset = 0;
> @@ -2838,6 +2811,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		args->flags |= __EXEC_HAS_RELOC;
>   
>   	eb.exec = exec;
> +	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
> +	eb.vma[0].vma = NULL;
>   
>   	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
>   	reloc_cache_init(&eb.reloc_cache, eb.i915);
> @@ -3014,6 +2989,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   	if (batch->private)
>   		intel_gt_buffer_pool_put(batch->private);
>   err_vma:
> +	if (eb.exec)
> +		eb_release_vmas(&eb);
>   	if (eb.trampoline)
>   		i915_vma_unpin(eb.trampoline);
>   	eb_unpin_engine(&eb);
> @@ -3031,7 +3008,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   
>   static size_t eb_element_size(void)
>   {
> -	return sizeof(struct drm_i915_gem_exec_object2);
> +	return sizeof(struct drm_i915_gem_exec_object2) + sizeof(struct eb_vma);
>   }
>   
>   static bool check_buffer_count(size_t count)
> @@ -3087,7 +3064,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
>   	/* Copy in the exec list from userland */
>   	exec_list = kvmalloc_array(count, sizeof(*exec_list),
>   				   __GFP_NOWARN | GFP_KERNEL);
> -	exec2_list = kvmalloc_array(count, eb_element_size(),
> +	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
>   				    __GFP_NOWARN | GFP_KERNEL);
>   	if (exec_list == NULL || exec2_list == NULL) {
>   		drm_dbg(&i915->drm,
> @@ -3165,7 +3142,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
>   	if (err)
>   		return err;
>   
> -	exec2_list = kvmalloc_array(count, eb_element_size(),
> +	/* Allocate an extra slot for use by the command parser */
> +	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
>   				    __GFP_NOWARN | GFP_KERNEL);
>   	if (exec2_list == NULL) {
>   		drm_dbg(&i915->drm, "Failed to allocate exec list for %zd buffers\n",
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
