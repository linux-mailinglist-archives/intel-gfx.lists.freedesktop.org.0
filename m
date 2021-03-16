Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369A233D014
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 09:47:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD7D89B8F;
	Tue, 16 Mar 2021 08:47:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C631C89B70
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 08:47:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id BAF6A44181;
 Tue, 16 Mar 2021 09:47:30 +0100 (CET)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=pig1Y/he; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMsn26vl0zg3; Tue, 16 Mar 2021 09:47:28 +0100 (CET)
Received: by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id C2107418C4;
 Tue, 16 Mar 2021 09:47:27 +0100 (CET)
Received: from [192.168.0.209] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id DFC4D36018B;
 Tue, 16 Mar 2021 09:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1615884446; bh=HJjUzF6Ua8YPnj+GjrE89HNoW9z3Hr/EEEEQzZjJAH8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pig1Y/heHujYc1WXy0QHOu+4kwytI7/KE069rFuppC2nv45dvbg65wPTk19wD8EqG
 qQC5zfE+Rj1ygxhoP6tgYxsvCKNGxFKQabAY6V4GbTiFh5g1Endq7hsRsvpWolrgDV
 mOEGuA9Y8JqaCfd9/byBMkDAD2bZ+cO0YzMIXQJI=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
 <20210311134249.588632-17-maarten.lankhorst@linux.intel.com>
 <04640842-87f1-daed-5ab2-df8b0ce66a80@shipmail.org>
 <6c91460d-5b37-9a0b-6639-2728ac47736f@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <1831346c-d988-a962-e7a3-723a3f472476@shipmail.org>
Date: Tue, 16 Mar 2021 09:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <6c91460d-5b37-9a0b-6639-2728ac47736f@linux.intel.com>
Content-Type: multipart/mixed; boundary="------------7144F794B13C9103FA7F4385"
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 16/69] drm/i915: Fix userptr so we do not
 have to worry about obj->mm.lock, v7.
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
Cc: Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------7144F794B13C9103FA7F4385
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 3/15/21 1:36 PM, Maarten Lankhorst wrote:
> Op 2021-03-11 om 18:24 schreef Thomas Hellström (Intel):
>> Hi, Maarten,
>>
>> On 3/11/21 2:41 PM, Maarten Lankhorst wrote:
>>> Instead of doing what we do currently, which will never work with
>>> PROVE_LOCKING, do the same as AMD does, and something similar to
>>> relocation slowpath. When all locks are dropped, we acquire the
>>> pages for pinning. When the locks are taken, we transfer those
>>> pages in .get_pages() to the bo. As a final check before installing
>>> the fences, we ensure that the mmu notifier was not called; if it is,
>>> we return -EAGAIN to userspace to signal it has to start over.
>>>
>>> Changes since v1:
>>> - Unbinding is done in submit_init only. submit_begin() removed.
>>> - MMU_NOTFIER -> MMU_NOTIFIER
>>> Changes since v2:
>>> - Make i915->mm.notifier a spinlock.
>>> Changes since v3:
>>> - Add WARN_ON if there are any page references left, should have been 0.
>>> - Return 0 on success in submit_init(), bug from spinlock conversion.
>>> - Release pvec outside of notifier_lock (Thomas).
>>> Changes since v4:
>>> - Mention why we're clearing eb->[i + 1].vma in the code. (Thomas)
>>> - Actually check all invalidations in eb_move_to_gpu. (Thomas)
>>> - Do not wait when process is exiting to fix gem_ctx_persistence.userptr.
>>> Changes since v5:
>>> - Clarify why check on PF_EXITING is (temporarily) required.
>>> Changes since v6:
>>> - Ensure userptr validity is checked in set_domain through a special path.
>>>
>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Acked-by: Dave Airlie <airlied@redhat.com>
>> Mostly LGTM. Comments / suggestions below.
>>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  18 +-
>>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 101 ++-
>>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  38 +-
>>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  10 +-
>>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +-
>>>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 796 ++++++------------
>>>   drivers/gpu/drm/i915/i915_drv.h               |   9 +-
>>>   drivers/gpu/drm/i915/i915_gem.c               |   5 +-
>>>   8 files changed, 395 insertions(+), 584 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> index 2f4980bf742e..76cb9f5c66aa 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> @@ -468,14 +468,28 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
>>>   	if (!obj)
>>>   		return -ENOENT;
>>>   
>>> +	if (i915_gem_object_is_userptr(obj)) {
>>> +		/*
>>> +		 * Try to grab userptr pages, iris uses set_domain to check
>>> +		 * userptr validity
>>> +		 */
>>> +		err = i915_gem_object_userptr_validate(obj);
>>> +		if (!err)
>>> +			err = i915_gem_object_wait(obj,
>>> +						   I915_WAIT_INTERRUPTIBLE |
>>> +						   I915_WAIT_PRIORITY |
>>> +						   (write_domain ? I915_WAIT_ALL : 0),
>>> +						   MAX_SCHEDULE_TIMEOUT);
>>> +		goto out;
>>> +	}
>>> +
>>>   	/*
>>>   	 * Proxy objects do not control access to the backing storage, ergo
>>>   	 * they cannot be used as a means to manipulate the cache domain
>>>   	 * tracking for that backing storage. The proxy object is always
>>>   	 * considered to be outside of any cache domain.
>>>   	 */
>>> -	if (i915_gem_object_is_proxy(obj) &&
>>> -	    !i915_gem_object_is_userptr(obj)) {
>>> +	if (i915_gem_object_is_proxy(obj)) {
>>>   		err = -ENXIO;
>>>   		goto out;
>>>   	}
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index c72440c10876..64d0e5fccece 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -53,14 +53,16 @@ enum {
>>>   /* __EXEC_OBJECT_NO_RESERVE is BIT(31), defined in i915_vma.h */
>>>   #define __EXEC_OBJECT_HAS_PIN		BIT(30)
>>>   #define __EXEC_OBJECT_HAS_FENCE		BIT(29)
>>> -#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
>>> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
>>> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above + */
>>> +#define __EXEC_OBJECT_USERPTR_INIT	BIT(28)
>>> +#define __EXEC_OBJECT_NEEDS_MAP		BIT(27)
>>> +#define __EXEC_OBJECT_NEEDS_BIAS	BIT(26)
>>> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 26) /* all of the above + */
>>>   #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
>>>   
>>>   #define __EXEC_HAS_RELOC	BIT(31)
>>>   #define __EXEC_ENGINE_PINNED	BIT(30)
>>> -#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
>>> +#define __EXEC_USERPTR_USED	BIT(29)
>>> +#define __EXEC_INTERNAL_FLAGS	(~0u << 29)
>>>   #define UPDATE			PIN_OFFSET_FIXED
>>>   
>>>   #define BATCH_OFFSET_BIAS (256*1024)
>>> @@ -864,6 +866,26 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>>>   		}
>>>   
>>>   		eb_add_vma(eb, i, batch, vma);
>>> +
>>> +		if (i915_gem_object_is_userptr(vma->obj)) {
>>> +			err = i915_gem_object_userptr_submit_init(vma->obj);
>>> +			if (err) {
>>> +				if (i + 1 < eb->buffer_count) {
>>> +					/*
>>> +					 * Execbuffer code expects last vma entry to be NULL,
>>> +					 * since we already initialized this entry,
>>> +					 * set the next value to NULL or we mess up
>>> +					 * cleanup handling.
>>> +					 */
>>> +					eb->vma[i + 1].vma = NULL;
>>> +				}
>>> +
>>> +				return err;
>>> +			}
>>> +
>>> +			eb->vma[i].flags |= __EXEC_OBJECT_USERPTR_INIT;
>>> +			eb->args->flags |= __EXEC_USERPTR_USED;
>>> +		}
>>>   	}
>>>   
>>>   	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
>>> @@ -965,7 +987,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
>>>   	}
>>>   }
>>>   
>>> -static void eb_release_vmas(struct i915_execbuffer *eb, bool final)
>>> +static void eb_release_vmas(struct i915_execbuffer *eb, bool final, bool release_userptr)
>>>   {
>>>   	const unsigned int count = eb->buffer_count;
>>>   	unsigned int i;
>>> @@ -979,6 +1001,11 @@ static void eb_release_vmas(struct i915_execbuffer *eb, bool final)
>>>   
>>>   		eb_unreserve_vma(ev);
>>>   
>>> +		if (release_userptr && ev->flags & __EXEC_OBJECT_USERPTR_INIT) {
>>> +			ev->flags &= ~__EXEC_OBJECT_USERPTR_INIT;
>>> +			i915_gem_object_userptr_submit_fini(vma->obj);
>>> +		}
>>> +
>>>   		if (final)
>>>   			i915_vma_put(vma);
>>>   	}
>>> @@ -1909,6 +1936,31 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
>>>   	return 0;
>>>   }
>>>   
>>> +static int eb_reinit_userptr(struct i915_execbuffer *eb)
>>> +{
>>> +	const unsigned int count = eb->buffer_count;
>>> +	unsigned int i;
>>> +	int ret;
>>> +
>>> +	if (likely(!(eb->args->flags & __EXEC_USERPTR_USED)))
>>> +		return 0;
>>> +
>>> +	for (i = 0; i < count; i++) {
>>> +		struct eb_vma *ev = &eb->vma[i];
>>> +
>>> +		if (!i915_gem_object_is_userptr(ev->vma->obj))
>>> +			continue;
>>> +
>>> +		ret = i915_gem_object_userptr_submit_init(ev->vma->obj);
>>> +		if (ret)
>>> +			return ret;
>>> +
>>> +		ev->flags |= __EXEC_OBJECT_USERPTR_INIT;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>>   static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
>>>   					   struct i915_request *rq)
>>>   {
>>> @@ -1923,7 +1975,7 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
>>>   	}
>>>   
>>>   	/* We may process another execbuffer during the unlock... */
>>> -	eb_release_vmas(eb, false);
>>> +	eb_release_vmas(eb, false, true);
>>>   	i915_gem_ww_ctx_fini(&eb->ww);
>>>   
>>>   	if (rq) {
>>> @@ -1964,10 +2016,8 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
>>>   		err = 0;
>>>   	}
>>>   
>>> -#ifdef CONFIG_MMU_NOTIFIER
>>>   	if (!err)
>>> -		flush_workqueue(eb->i915->mm.userptr_wq);
>>> -#endif
>>> +		err = eb_reinit_userptr(eb);
>>>   
>>>   err_relock:
>>>   	i915_gem_ww_ctx_init(&eb->ww, true);
>>> @@ -2029,7 +2079,7 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
>>>   
>>>   err:
>>>   	if (err == -EDEADLK) {
>>> -		eb_release_vmas(eb, false);
>>> +		eb_release_vmas(eb, false, false);
>>>   		err = i915_gem_ww_ctx_backoff(&eb->ww);
>>>   		if (!err)
>>>   			goto repeat_validate;
>>> @@ -2126,7 +2176,7 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
>>>   
>>>   err:
>>>   	if (err == -EDEADLK) {
>>> -		eb_release_vmas(eb, false);
>>> +		eb_release_vmas(eb, false, false);
>>>   		err = i915_gem_ww_ctx_backoff(&eb->ww);
>>>   		if (!err)
>>>   			goto retry;
>>> @@ -2201,6 +2251,30 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>>>   						      flags | __EXEC_OBJECT_NO_RESERVE);
>>>   	}
>>>   
>>> +#ifdef CONFIG_MMU_NOTIFIER
>>> +	if (!err && (eb->args->flags & __EXEC_USERPTR_USED)) {
>>> +		spin_lock(&eb->i915->mm.notifier_lock);
>>> +
>>> +		/*
>>> +		 * count is always at least 1, otherwise __EXEC_USERPTR_USED
>>> +		 * could not have been set
>>> +		 */
>>> +		for (i = 0; i < count; i++) {
>>> +			struct eb_vma *ev = &eb->vma[i];
>>> +			struct drm_i915_gem_object *obj = ev->vma->obj;
>>> +
>>> +			if (!i915_gem_object_is_userptr(obj))
>>> +				continue;
>>> +
>>> +			err = i915_gem_object_userptr_submit_done(obj);
>>> +			if (err)
>>> +				break;
>>> +		}
>>> +
>>> +		spin_unlock(&eb->i915->mm.notifier_lock);
>>> +	}
>>> +#endif
>>> +
>>>   	if (unlikely(err))
>>>   		goto err_skip;
>>>   
>>> @@ -3345,7 +3419,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>>>   
>>>   	err = eb_lookup_vmas(&eb);
>>>   	if (err) {
>>> -		eb_release_vmas(&eb, true);
>>> +		eb_release_vmas(&eb, true, true);
>>>   		goto err_engine;
>>>   	}
>>>   
>>> @@ -3417,6 +3491,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>>>   
>>>   	trace_i915_request_queue(eb.request, eb.batch_flags);
>>>   	err = eb_submit(&eb, batch);
>>> +
>>>   err_request:
>>>   	i915_request_get(eb.request);
>>>   	err = eb_request_add(&eb, err);
>>> @@ -3437,7 +3512,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>>>   	i915_request_put(eb.request);
>>>   
>>>   err_vma:
>>> -	eb_release_vmas(&eb, true);
>>> +	eb_release_vmas(&eb, true, true);
>>>   	if (eb.trampoline)
>>>   		i915_vma_unpin(eb.trampoline);
>>>   	WARN_ON(err == -EDEADLK);
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index 69509dbd01c7..b5af9c440ac5 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -59,6 +59,7 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *i915,
>>>   				       const void *data, resource_size_t size);
>>>   
>>>   extern const struct drm_i915_gem_object_ops i915_gem_shmem_ops;
>>> +
>>>   void __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>>>   				     struct sg_table *pages,
>>>   				     bool needs_clflush);
>>> @@ -278,12 +279,6 @@ i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
>>>   	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_NO_MMAP);
>>>   }
>>>   
>>> -static inline bool
>>> -i915_gem_object_needs_async_cancel(const struct drm_i915_gem_object *obj)
>>> -{
>>> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_ASYNC_CANCEL);
>>> -}
>>> -
>>>   static inline bool
>>>   i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
>>>   {
>>> @@ -573,16 +568,6 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>>>   void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>>>   					      enum fb_op_origin origin);
>>>   
>>> -static inline bool
>>> -i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
>>> -{
>>> -#ifdef CONFIG_MMU_NOTIFIER
>>> -	return obj->userptr.mm;
>>> -#else
>>> -	return false;
>>> -#endif
>>> -}
>>> -
>>>   static inline void
>>>   i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>>>   				  enum fb_op_origin origin)
>>> @@ -603,4 +588,25 @@ int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset,
>>>   
>>>   bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
>>>   
>>> +#ifdef CONFIG_MMU_NOTIFIER
>>> +static inline bool
>>> +i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
>>> +{
>>> +	return obj->userptr.notifier.mm;
>>> +}
>>> +
>>> +int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj);
>>> +int i915_gem_object_userptr_submit_done(struct drm_i915_gem_object *obj);
>>> +void i915_gem_object_userptr_submit_fini(struct drm_i915_gem_object *obj);
>>> +int i915_gem_object_userptr_validate(struct drm_i915_gem_object *obj);
>>> +#else
>>> +static inline bool i915_gem_object_is_userptr(struct drm_i915_gem_object *obj) { return false; }
>>> +
>>> +static inline int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj) { GEM_BUG_ON(1); return -ENODEV; }
>>> +static inline int i915_gem_object_userptr_submit_done(struct drm_i915_gem_object *obj) { GEM_BUG_ON(1); return -ENODEV; }
>>> +static inline void i915_gem_object_userptr_submit_fini(struct drm_i915_gem_object *obj) { GEM_BUG_ON(1); }
>>> +static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *obj) { GEM_BUG_ON(1); return -ENODEV; }
>>> +
>>> +#endif
>>> +
>>>   #endif
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> index 414322619781..4c0a34231623 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> @@ -7,6 +7,8 @@
>>>   #ifndef __I915_GEM_OBJECT_TYPES_H__
>>>   #define __I915_GEM_OBJECT_TYPES_H__
>>>   
>>> +#include <linux/mmu_notifier.h>
>>> +
>>>   #include <drm/drm_gem.h>
>>>   #include <uapi/drm/i915_drm.h>
>>>   
>>> @@ -34,7 +36,6 @@ struct drm_i915_gem_object_ops {
>>>   #define I915_GEM_OBJECT_IS_SHRINKABLE	BIT(2)
>>>   #define I915_GEM_OBJECT_IS_PROXY	BIT(3)
>>>   #define I915_GEM_OBJECT_NO_MMAP		BIT(4)
>>> -#define I915_GEM_OBJECT_ASYNC_CANCEL	BIT(5)
>>>   
>>>   	/* Interface between the GEM object and its backing storage.
>>>   	 * get_pages() is called once prior to the use of the associated set
>>> @@ -299,10 +300,11 @@ struct drm_i915_gem_object {
>>>   #ifdef CONFIG_MMU_NOTIFIER
>>>   		struct i915_gem_userptr {
>>>   			uintptr_t ptr;
>>> +			unsigned long notifier_seq;
>>>   
>>> -			struct i915_mm_struct *mm;
>>> -			struct i915_mmu_object *mmu_object;
>>> -			struct work_struct *work;
>>> +			struct mmu_interval_notifier notifier;
>>> +			struct page **pvec;
>>> +			int page_ref;
>>>   		} userptr;
>>>   #endif
>>>   
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> index bf61b88a2113..e7d7650072c5 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>>> @@ -226,7 +226,7 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
>>>   	 * get_pages backends we should be better able to handle the
>>>   	 * cancellation of the async task in a more uniform manner.
>>>   	 */
>>> -	if (!pages && !i915_gem_object_needs_async_cancel(obj))
>>> +	if (!pages)
>>>   		pages = ERR_PTR(-EINVAL);
>>>   
>>>   	if (!IS_ERR(pages))
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> index b466ab2def4d..1e42fbc68697 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> @@ -2,10 +2,39 @@
>>>    * SPDX-License-Identifier: MIT
>>>    *
>>>    * Copyright © 2012-2014 Intel Corporation
>>> + *
>>> +  * Based on amdgpu_mn, which bears the following notice:
>>> + *
>>> + * Copyright 2014 Advanced Micro Devices, Inc.
>>> + * All Rights Reserved.
>>> + *
>>> + * Permission is hereby granted, free of charge, to any person obtaining a
>>> + * copy of this software and associated documentation files (the
>>> + * "Software"), to deal in the Software without restriction, including
>>> + * without limitation the rights to use, copy, modify, merge, publish,
>>> + * distribute, sub license, and/or sell copies of the Software, and to
>>> + * permit persons to whom the Software is furnished to do so, subject to
>>> + * the following conditions:
>>> + *
>>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>> + * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
>>> + * THE COPYRIGHT HOLDERS, AUTHORS AND/OR ITS SUPPLIERS BE LIABLE FOR ANY CLAIM,
>>> + * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
>>> + * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
>>> + * USE OR OTHER DEALINGS IN THE SOFTWARE.
>>> + *
>>> + * The above copyright notice and this permission notice (including the
>>> + * next paragraph) shall be included in all copies or substantial portions
>>> + * of the Software.
>>> + *
>>> + */
>>> +/*
>>> + * Authors:
>>> + *    Christian König <christian.koenig@amd.com>
>>>    */
>>>   
>>>   #include <linux/mmu_context.h>
>>> -#include <linux/mmu_notifier.h>
>>>   #include <linux/mempolicy.h>
>>>   #include <linux/swap.h>
>>>   #include <linux/sched/mm.h>
>>> @@ -15,373 +44,121 @@
>>>   #include "i915_gem_object.h"
>>>   #include "i915_scatterlist.h"
>>>   
>>> -#if defined(CONFIG_MMU_NOTIFIER)
>>> -
>>> -struct i915_mm_struct {
>>> -	struct mm_struct *mm;
>>> -	struct drm_i915_private *i915;
>>> -	struct i915_mmu_notifier *mn;
>>> -	struct hlist_node node;
>>> -	struct kref kref;
>>> -	struct rcu_work work;
>>> -};
>>> -
>>> -#include <linux/interval_tree.h>
>>> -
>>> -struct i915_mmu_notifier {
>>> -	spinlock_t lock;
>>> -	struct hlist_node node;
>>> -	struct mmu_notifier mn;
>>> -	struct rb_root_cached objects;
>>> -	struct i915_mm_struct *mm;
>>> -};
>>> -
>>> -struct i915_mmu_object {
>>> -	struct i915_mmu_notifier *mn;
>>> -	struct drm_i915_gem_object *obj;
>>> -	struct interval_tree_node it;
>>> -};
>>> +#ifdef CONFIG_MMU_NOTIFIER
>>>   
>>> -static void add_object(struct i915_mmu_object *mo)
>>> +/**
>>> + * i915_gem_userptr_invalidate - callback to notify about mm change
>>> + *
>>> + * @mni: the range (mm) is about to update
>>> + * @range: details on the invalidation
>>> + * @cur_seq: Value to pass to mmu_interval_set_seq()
>>> + *
>>> + * Block for operations on BOs to finish and mark pages as accessed and
>>> + * potentially dirty.
>>> + */
>>> +static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
>>> +					const struct mmu_notifier_range *range,
>>> +					unsigned long cur_seq)
>>>   {
>>> -	GEM_BUG_ON(!RB_EMPTY_NODE(&mo->it.rb));
>>> -	interval_tree_insert(&mo->it, &mo->mn->objects);
>>> -}
>>> +	struct drm_i915_gem_object *obj = container_of(mni, struct drm_i915_gem_object, userptr.notifier);
>>> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>> +	long r;
>>>   
>>> -static void del_object(struct i915_mmu_object *mo)
>>> -{
>>> -	if (RB_EMPTY_NODE(&mo->it.rb))
>>> -		return;
>>> +	if (!mmu_notifier_range_blockable(range))
>>> +		return false;
>>>   
>>> -	interval_tree_remove(&mo->it, &mo->mn->objects);
>>> -	RB_CLEAR_NODE(&mo->it.rb);
>>> -}
>>> +	spin_lock(&i915->mm.notifier_lock);
>>>   
>>> -static void
>>> -__i915_gem_userptr_set_active(struct drm_i915_gem_object *obj, bool value)
>>> -{
>>> -	struct i915_mmu_object *mo = obj->userptr.mmu_object;
>>> +	mmu_interval_set_seq(mni, cur_seq);
>>> +
>>> +	spin_unlock(&i915->mm.notifier_lock);
>>>   
>>>   	/*
>>> -	 * During mm_invalidate_range we need to cancel any userptr that
>>> -	 * overlaps the range being invalidated. Doing so requires the
>>> -	 * struct_mutex, and that risks recursion. In order to cause
>>> -	 * recursion, the user must alias the userptr address space with
>>> -	 * a GTT mmapping (possible with a MAP_FIXED) - then when we have
>>> -	 * to invalidate that mmaping, mm_invalidate_range is called with
>>> -	 * the userptr address *and* the struct_mutex held.  To prevent that
>>> -	 * we set a flag under the i915_mmu_notifier spinlock to indicate
>>> -	 * whether this object is valid.
>>> +	 * We don't wait when the process is exiting. This is valid
>>> +	 * because the object will be cleaned up anyway.
>>> +	 *
>>> +	 * This is also temporarily required as a hack, because we
>>> +	 * cannot currently force non-consistent batch buffers to preempt
>>> +	 * and reschedule by waiting on it, hanging processes on exit.
>>>   	 */
>>> -	if (!mo)
>>> -		return;
>>> -
>>> -	spin_lock(&mo->mn->lock);
>>> -	if (value)
>>> -		add_object(mo);
>>> -	else
>>> -		del_object(mo);
>>> -	spin_unlock(&mo->mn->lock);
>>> -}
>>> -
>>> -static int
>>> -userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
>>> -				  const struct mmu_notifier_range *range)
>>> -{
>>> -	struct i915_mmu_notifier *mn =
>>> -		container_of(_mn, struct i915_mmu_notifier, mn);
>>> -	struct interval_tree_node *it;
>>> -	unsigned long end;
>>> -	int ret = 0;
>>> -
>>> -	if (RB_EMPTY_ROOT(&mn->objects.rb_root))
>>> -		return 0;
>>> -
>>> -	/* interval ranges are inclusive, but invalidate range is exclusive */
>>> -	end = range->end - 1;
>>> -
>>> -	spin_lock(&mn->lock);
>>> -	it = interval_tree_iter_first(&mn->objects, range->start, end);
>>> -	while (it) {
>>> -		struct drm_i915_gem_object *obj;
>>> -
>>> -		if (!mmu_notifier_range_blockable(range)) {
>>> -			ret = -EAGAIN;
>>> -			break;
>>> -		}
>>> -
>>> -		/*
>>> -		 * The mmu_object is released late when destroying the
>>> -		 * GEM object so it is entirely possible to gain a
>>> -		 * reference on an object in the process of being freed
>>> -		 * since our serialisation is via the spinlock and not
>>> -		 * the struct_mutex - and consequently use it after it
>>> -		 * is freed and then double free it. To prevent that
>>> -		 * use-after-free we only acquire a reference on the
>>> -		 * object if it is not in the process of being destroyed.
>>> -		 */
>>> -		obj = container_of(it, struct i915_mmu_object, it)->obj;
>>> -		if (!kref_get_unless_zero(&obj->base.refcount)) {
>>> -			it = interval_tree_iter_next(it, range->start, end);
>>> -			continue;
>>> -		}
>>> -		spin_unlock(&mn->lock);
>>> -
>>> -		ret = i915_gem_object_unbind(obj,
>>> -					     I915_GEM_OBJECT_UNBIND_ACTIVE |
>>> -					     I915_GEM_OBJECT_UNBIND_BARRIER);
>>> -		if (ret == 0)
>>> -			ret = __i915_gem_object_put_pages(obj);
>>> -		i915_gem_object_put(obj);
>>> -		if (ret)
>>> -			return ret;
>>> +	if (current->flags & PF_EXITING)
>>> +		return true;
>>>   
>>> -		spin_lock(&mn->lock);
>>> -
>>> -		/*
>>> -		 * As we do not (yet) protect the mmu from concurrent insertion
>>> -		 * over this range, there is no guarantee that this search will
>>> -		 * terminate given a pathologic workload.
>>> -		 */
>>> -		it = interval_tree_iter_first(&mn->objects, range->start, end);
>>> -	}
>>> -	spin_unlock(&mn->lock);
>>> -
>>> -	return ret;
>>> +	/* we will unbind on next submission, still have userptr pins */
>>> +	r = dma_resv_wait_timeout_rcu(obj->base.resv, true, false,
>>> +				      MAX_SCHEDULE_TIMEOUT);
>>> +	if (r <= 0)
>>> +		drm_err(&i915->drm, "(%ld) failed to wait for idle\n", r);
>> I think, since linux 5.9 where a fork is no longer setting up COW on pinned pages, and we do in fact still pin pages, I think this fence wait should be removed, together with the PF_EXIT special case, as it does not improve on anything but creates hangs that only hangcheck / watchdog can resolve. If we, in future work no longer pin the pages, which is the direction we're moving towards, let's re-add it when needed.
>>
>>>   
>>> +	return true;
>>>   }
>>>   
>>> -static const struct mmu_notifier_ops i915_gem_userptr_notifier = {
>>> -	.invalidate_range_start = userptr_mn_invalidate_range_start,
>>> +static const struct mmu_interval_notifier_ops i915_gem_userptr_notifier_ops = {
>>> +	.invalidate = i915_gem_userptr_invalidate,
>>>   };
>>>   
>>> -static struct i915_mmu_notifier *
>>> -i915_mmu_notifier_create(struct i915_mm_struct *mm)
>>> -{
>>> -	struct i915_mmu_notifier *mn;
>>> -
>>> -	mn = kmalloc(sizeof(*mn), GFP_KERNEL);
>>> -	if (mn == NULL)
>>> -		return ERR_PTR(-ENOMEM);
>>> -
>>> -	spin_lock_init(&mn->lock);
>>> -	mn->mn.ops = &i915_gem_userptr_notifier;
>>> -	mn->objects = RB_ROOT_CACHED;
>>> -	mn->mm = mm;
>>> -
>>> -	return mn;
>>> -}
>>> -
>>> -static void
>>> -i915_gem_userptr_release__mmu_notifier(struct drm_i915_gem_object *obj)
>>> -{
>>> -	struct i915_mmu_object *mo;
>>> -
>>> -	mo = fetch_and_zero(&obj->userptr.mmu_object);
>>> -	if (!mo)
>>> -		return;
>>> -
>>> -	spin_lock(&mo->mn->lock);
>>> -	del_object(mo);
>>> -	spin_unlock(&mo->mn->lock);
>>> -	kfree(mo);
>>> -}
>>> -
>>> -static struct i915_mmu_notifier *
>>> -i915_mmu_notifier_find(struct i915_mm_struct *mm)
>>> -{
>>> -	struct i915_mmu_notifier *mn, *old;
>>> -	int err;
>>> -
>>> -	mn = READ_ONCE(mm->mn);
>>> -	if (likely(mn))
>>> -		return mn;
>>> -
>>> -	mn = i915_mmu_notifier_create(mm);
>>> -	if (IS_ERR(mn))
>>> -		return mn;
>>> -
>>> -	err = mmu_notifier_register(&mn->mn, mm->mm);
>>> -	if (err) {
>>> -		kfree(mn);
>>> -		return ERR_PTR(err);
>>> -	}
>>> -
>>> -	old = cmpxchg(&mm->mn, NULL, mn);
>>> -	if (old) {
>>> -		mmu_notifier_unregister(&mn->mn, mm->mm);
>>> -		kfree(mn);
>>> -		mn = old;
>>> -	}
>>> -
>>> -	return mn;
>>> -}
>>> -
>>>   static int
>>>   i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj)
>>>   {
>>> -	struct i915_mmu_notifier *mn;
>>> -	struct i915_mmu_object *mo;
>>> -
>>> -	if (GEM_WARN_ON(!obj->userptr.mm))
>>> -		return -EINVAL;
>>> -
>>> -	mn = i915_mmu_notifier_find(obj->userptr.mm);
>>> -	if (IS_ERR(mn))
>>> -		return PTR_ERR(mn);
>>> -
>>> -	mo = kzalloc(sizeof(*mo), GFP_KERNEL);
>>> -	if (!mo)
>>> -		return -ENOMEM;
>>> -
>>> -	mo->mn = mn;
>>> -	mo->obj = obj;
>>> -	mo->it.start = obj->userptr.ptr;
>>> -	mo->it.last = obj->userptr.ptr + obj->base.size - 1;
>>> -	RB_CLEAR_NODE(&mo->it.rb);
>>> -
>>> -	obj->userptr.mmu_object = mo;
>>> -	return 0;
>>> -}
>>> -
>>> -static void
>>> -i915_mmu_notifier_free(struct i915_mmu_notifier *mn,
>>> -		       struct mm_struct *mm)
>>> -{
>>> -	if (mn == NULL)
>>> -		return;
>>> -
>>> -	mmu_notifier_unregister(&mn->mn, mm);
>>> -	kfree(mn);
>>> -}
>>> -
>>> -
>>> -static struct i915_mm_struct *
>>> -__i915_mm_struct_find(struct drm_i915_private *i915, struct mm_struct *real)
>>> -{
>>> -	struct i915_mm_struct *it, *mm = NULL;
>>> -
>>> -	rcu_read_lock();
>>> -	hash_for_each_possible_rcu(i915->mm_structs,
>>> -				   it, node,
>>> -				   (unsigned long)real)
>>> -		if (it->mm == real && kref_get_unless_zero(&it->kref)) {
>>> -			mm = it;
>>> -			break;
>>> -		}
>>> -	rcu_read_unlock();
>>> -
>>> -	return mm;
>>> +	return mmu_interval_notifier_insert(&obj->userptr.notifier, current->mm,
>>> +					    obj->userptr.ptr, obj->base.size,
>>> +					    &i915_gem_userptr_notifier_ops);
>>>   }
>>>   
>>> -static int
>>> -i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
>>> +static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
>>>   {
>>>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>> -	struct i915_mm_struct *mm, *new;
>>> -	int ret = 0;
>>> -
>>> -	/* During release of the GEM object we hold the struct_mutex. This
>>> -	 * precludes us from calling mmput() at that time as that may be
>>> -	 * the last reference and so call exit_mmap(). exit_mmap() will
>>> -	 * attempt to reap the vma, and if we were holding a GTT mmap
>>> -	 * would then call drm_gem_vm_close() and attempt to reacquire
>>> -	 * the struct mutex. So in order to avoid that recursion, we have
>>> -	 * to defer releasing the mm reference until after we drop the
>>> -	 * struct_mutex, i.e. we need to schedule a worker to do the clean
>>> -	 * up.
>>> -	 */
>>> -	mm = __i915_mm_struct_find(i915, current->mm);
>>> -	if (mm)
>>> -		goto out;
>>> +	struct page **pvec = NULL;
>>>   
>>> -	new = kmalloc(sizeof(*mm), GFP_KERNEL);
>>> -	if (!new)
>>> -		return -ENOMEM;
>>> -
>>> -	kref_init(&new->kref);
>>> -	new->i915 = to_i915(obj->base.dev);
>>> -	new->mm = current->mm;
>>> -	new->mn = NULL;
>>> -
>>> -	spin_lock(&i915->mm_lock);
>>> -	mm = __i915_mm_struct_find(i915, current->mm);
>>> -	if (!mm) {
>>> -		hash_add_rcu(i915->mm_structs,
>>> -			     &new->node,
>>> -			     (unsigned long)new->mm);
>>> -		mmgrab(current->mm);
>>> -		mm = new;
>>> +	spin_lock(&i915->mm.notifier_lock);
>>> +	if (!--obj->userptr.page_ref) {
>>> +		pvec = obj->userptr.pvec;
>>> +		obj->userptr.pvec = NULL;
>>>   	}
>>> -	spin_unlock(&i915->mm_lock);
>>> -	if (mm != new)
>>> -		kfree(new);
>>> +	GEM_BUG_ON(obj->userptr.page_ref < 0);
>>> +	spin_unlock(&i915->mm.notifier_lock);
>>>   
>>> -out:
>>> -	obj->userptr.mm = mm;
>>> -	return ret;
>>> -}
>>> -
>>> -static void
>>> -__i915_mm_struct_free__worker(struct work_struct *work)
>>> -{
>>> -	struct i915_mm_struct *mm = container_of(work, typeof(*mm), work.work);
>>> -
>>> -	i915_mmu_notifier_free(mm->mn, mm->mm);
>>> -	mmdrop(mm->mm);
>>> -	kfree(mm);
>>> -}
>>> -
>>> -static void
>>> -__i915_mm_struct_free(struct kref *kref)
>>> -{
>>> -	struct i915_mm_struct *mm = container_of(kref, typeof(*mm), kref);
>>> -
>>> -	spin_lock(&mm->i915->mm_lock);
>>> -	hash_del_rcu(&mm->node);
>>> -	spin_unlock(&mm->i915->mm_lock);
>>> -
>>> -	INIT_RCU_WORK(&mm->work, __i915_mm_struct_free__worker);
>>> -	queue_rcu_work(system_wq, &mm->work);
>>> -}
>>> -
>>> -static void
>>> -i915_gem_userptr_release__mm_struct(struct drm_i915_gem_object *obj)
>>> -{
>>> -	if (obj->userptr.mm == NULL)
>>> -		return;
>>> +	if (pvec) {
>>> +		const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
>>>   
>>> -	kref_put(&obj->userptr.mm->kref, __i915_mm_struct_free);
>>> -	obj->userptr.mm = NULL;
>>> +		unpin_user_pages(pvec, num_pages);
>>> +		kfree(pvec);
>> IIRC, CQ spotted that we should have a kvfree here right?
>>
>>> +	}
>>>   }
>>>   
>>> -struct get_pages_work {
>>> -	struct work_struct work;
>>> -	struct drm_i915_gem_object *obj;
>>> -	struct task_struct *task;
>>> -};
>>> -
>>> -static struct sg_table *
>>> -__i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
>>> -			       struct page **pvec, unsigned long num_pages)
>>> +static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
>>>   {
>>> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>> +	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
>>>   	unsigned int max_segment = i915_sg_segment_size();
>>>   	struct sg_table *st;
>>>   	unsigned int sg_page_sizes;
>>>   	struct scatterlist *sg;
>>> +	struct page **pvec;
>>>   	int ret;
>>>   
>>>   	st = kmalloc(sizeof(*st), GFP_KERNEL);
>>>   	if (!st)
>>> -		return ERR_PTR(-ENOMEM);
>>> +		return -ENOMEM;
>>> +
>>> +	spin_lock(&i915->mm.notifier_lock);
>>> +	if (GEM_WARN_ON(!obj->userptr.page_ref)) {
>>> +		spin_unlock(&i915->mm.notifier_lock);
>>> +		ret = -EFAULT;
>>> +		goto err_free;
>>> +	}
>>> +
>>> +	obj->userptr.page_ref++;
>>> +	pvec = obj->userptr.pvec;
>>> +	spin_unlock(&i915->mm.notifier_lock);
>>>   
>>>   alloc_table:
>>>   	sg = __sg_alloc_table_from_pages(st, pvec, num_pages, 0,
>>>   					 num_pages << PAGE_SHIFT, max_segment,
>>>   					 NULL, 0, GFP_KERNEL);
>>>   	if (IS_ERR(sg)) {
>>> -		kfree(st);
>>> -		return ERR_CAST(sg);
>>> +		ret = PTR_ERR(sg);
>>> +		goto err;
>>>   	}
>>>   
>>>   	ret = i915_gem_gtt_prepare_pages(obj, st);
>>> @@ -393,203 +170,20 @@ __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
>>>   			goto alloc_table;
>>>   		}
>>>   
>>> -		kfree(st);
>>> -		return ERR_PTR(ret);
>>> +		goto err;
>>>   	}
>>>   
>>>   	sg_page_sizes = i915_sg_page_sizes(st->sgl);
>>>   
>>>   	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
>>>   
>>> -	return st;
>>> -}
>>> -
>>> -static void
>>> -__i915_gem_userptr_get_pages_worker(struct work_struct *_work)
>>> -{
>>> -	struct get_pages_work *work = container_of(_work, typeof(*work), work);
>>> -	struct drm_i915_gem_object *obj = work->obj;
>>> -	const unsigned long npages = obj->base.size >> PAGE_SHIFT;
>>> -	unsigned long pinned;
>>> -	struct page **pvec;
>>> -	int ret;
>>> -
>>> -	ret = -ENOMEM;
>>> -	pinned = 0;
>>> -
>>> -	pvec = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
>>> -	if (pvec != NULL) {
>>> -		struct mm_struct *mm = obj->userptr.mm->mm;
>>> -		unsigned int flags = 0;
>>> -		int locked = 0;
>>> -
>>> -		if (!i915_gem_object_is_readonly(obj))
>>> -			flags |= FOLL_WRITE;
>>> -
>>> -		ret = -EFAULT;
>>> -		if (mmget_not_zero(mm)) {
>>> -			while (pinned < npages) {
>>> -				if (!locked) {
>>> -					mmap_read_lock(mm);
>>> -					locked = 1;
>>> -				}
>>> -				ret = pin_user_pages_remote
>>> -					(mm,
>>> -					 obj->userptr.ptr + pinned * PAGE_SIZE,
>>> -					 npages - pinned,
>>> -					 flags,
>>> -					 pvec + pinned, NULL, &locked);
>>> -				if (ret < 0)
>>> -					break;
>>> -
>>> -				pinned += ret;
>>> -			}
>>> -			if (locked)
>>> -				mmap_read_unlock(mm);
>>> -			mmput(mm);
>>> -		}
>>> -	}
>>> -
>>> -	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
>>> -	if (obj->userptr.work == &work->work) {
>>> -		struct sg_table *pages = ERR_PTR(ret);
>>> -
>>> -		if (pinned == npages) {
>>> -			pages = __i915_gem_userptr_alloc_pages(obj, pvec,
>>> -							       npages);
>>> -			if (!IS_ERR(pages)) {
>>> -				pinned = 0;
>>> -				pages = NULL;
>>> -			}
>>> -		}
>>> -
>>> -		obj->userptr.work = ERR_CAST(pages);
>>> -		if (IS_ERR(pages))
>>> -			__i915_gem_userptr_set_active(obj, false);
>>> -	}
>>> -	mutex_unlock(&obj->mm.lock);
>>> -
>>> -	unpin_user_pages(pvec, pinned);
>>> -	kvfree(pvec);
>>> -
>>> -	i915_gem_object_put(obj);
>>> -	put_task_struct(work->task);
>>> -	kfree(work);
>>> -}
>>> -
>>> -static struct sg_table *
>>> -__i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
>>> -{
>>> -	struct get_pages_work *work;
>>> -
>>> -	/* Spawn a worker so that we can acquire the
>>> -	 * user pages without holding our mutex. Access
>>> -	 * to the user pages requires mmap_lock, and we have
>>> -	 * a strict lock ordering of mmap_lock, struct_mutex -
>>> -	 * we already hold struct_mutex here and so cannot
>>> -	 * call gup without encountering a lock inversion.
>>> -	 *
>>> -	 * Userspace will keep on repeating the operation
>>> -	 * (thanks to EAGAIN) until either we hit the fast
>>> -	 * path or the worker completes. If the worker is
>>> -	 * cancelled or superseded, the task is still run
>>> -	 * but the results ignored. (This leads to
>>> -	 * complications that we may have a stray object
>>> -	 * refcount that we need to be wary of when
>>> -	 * checking for existing objects during creation.)
>>> -	 * If the worker encounters an error, it reports
>>> -	 * that error back to this function through
>>> -	 * obj->userptr.work = ERR_PTR.
>>> -	 */
>>> -	work = kmalloc(sizeof(*work), GFP_KERNEL);
>>> -	if (work == NULL)
>>> -		return ERR_PTR(-ENOMEM);
>>> -
>>> -	obj->userptr.work = &work->work;
>>> -
>>> -	work->obj = i915_gem_object_get(obj);
>>> -
>>> -	work->task = current;
>>> -	get_task_struct(work->task);
>>> -
>>> -	INIT_WORK(&work->work, __i915_gem_userptr_get_pages_worker);
>>> -	queue_work(to_i915(obj->base.dev)->mm.userptr_wq, &work->work);
>>> -
>>> -	return ERR_PTR(-EAGAIN);
>>> -}
>>> -
>>> -static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
>>> -{
>>> -	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
>>> -	struct mm_struct *mm = obj->userptr.mm->mm;
>>> -	struct page **pvec;
>>> -	struct sg_table *pages;
>>> -	bool active;
>>> -	int pinned;
>>> -	unsigned int gup_flags = 0;
>>> -
>>> -	/* If userspace should engineer that these pages are replaced in
>>> -	 * the vma between us binding this page into the GTT and completion
>>> -	 * of rendering... Their loss. If they change the mapping of their
>>> -	 * pages they need to create a new bo to point to the new vma.
>>> -	 *
>>> -	 * However, that still leaves open the possibility of the vma
>>> -	 * being copied upon fork. Which falls under the same userspace
>>> -	 * synchronisation issue as a regular bo, except that this time
>>> -	 * the process may not be expecting that a particular piece of
>>> -	 * memory is tied to the GPU.
>>> -	 *
>>> -	 * Fortunately, we can hook into the mmu_notifier in order to
>>> -	 * discard the page references prior to anything nasty happening
>>> -	 * to the vma (discard or cloning) which should prevent the more
>>> -	 * egregious cases from causing harm.
>>> -	 */
>>> -
>>> -	if (obj->userptr.work) {
>>> -		/* active flag should still be held for the pending work */
>>> -		if (IS_ERR(obj->userptr.work))
>>> -			return PTR_ERR(obj->userptr.work);
>>> -		else
>>> -			return -EAGAIN;
>>> -	}
>>> -
>>> -	pvec = NULL;
>>> -	pinned = 0;
>>> -
>>> -	if (mm == current->mm) {
>>> -		pvec = kvmalloc_array(num_pages, sizeof(struct page *),
>>> -				      GFP_KERNEL |
>>> -				      __GFP_NORETRY |
>>> -				      __GFP_NOWARN);
>>> -		if (pvec) {
>>> -			/* defer to worker if malloc fails */
>>> -			if (!i915_gem_object_is_readonly(obj))
>>> -				gup_flags |= FOLL_WRITE;
>>> -			pinned = pin_user_pages_fast_only(obj->userptr.ptr,
>>> -							  num_pages, gup_flags,
>>> -							  pvec);
>>> -		}
>>> -	}
>>> -
>>> -	active = false;
>>> -	if (pinned < 0) {
>>> -		pages = ERR_PTR(pinned);
>>> -		pinned = 0;
>>> -	} else if (pinned < num_pages) {
>>> -		pages = __i915_gem_userptr_get_pages_schedule(obj);
>>> -		active = pages == ERR_PTR(-EAGAIN);
>>> -	} else {
>>> -		pages = __i915_gem_userptr_alloc_pages(obj, pvec, num_pages);
>>> -		active = !IS_ERR(pages);
>>> -	}
>>> -	if (active)
>>> -		__i915_gem_userptr_set_active(obj, true);
>>> -
>>> -	if (IS_ERR(pages))
>>> -		unpin_user_pages(pvec, pinned);
>>> -	kvfree(pvec);
>>> +	return 0;
>>>   
>>> -	return PTR_ERR_OR_ZERO(pages);
>>> +err:
>>> +	i915_gem_object_userptr_drop_ref(obj);
>>> +err_free:
>>> +	kfree(st);
>>> +	return ret;
>>>   }
>>>   
>>>   static void
>>> @@ -599,9 +193,6 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
>>>   	struct sgt_iter sgt_iter;
>>>   	struct page *page;
>>>   
>>> -	/* Cancel any inflight work and force them to restart their gup */
>>> -	obj->userptr.work = NULL;
>>> -	__i915_gem_userptr_set_active(obj, false);
>>>   	if (!pages)
>>>   		return;
>>>   
>>> @@ -641,19 +232,161 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
>>>   		}
>>>   
>>>   		mark_page_accessed(page);
>>> -		unpin_user_page(page);
>>>   	}
>>>   	obj->mm.dirty = false;
>>>   
>>>   	sg_free_table(pages);
>>>   	kfree(pages);
>>> +
>>> +	i915_gem_object_userptr_drop_ref(obj);
>>> +}
>>> +
>>> +static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool get_pages)
>>> +{
>>> +	struct sg_table *pages;
>>> +	int err;
>>> +
>>> +	err = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	if (GEM_WARN_ON(i915_gem_object_has_pinned_pages(obj)))
>>> +		return -EBUSY;
>>> +
>>> +	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
>>> +
>>> +	pages = __i915_gem_object_unset_pages(obj);
>>> +	if (!IS_ERR_OR_NULL(pages))
>>> +		i915_gem_userptr_put_pages(obj, pages);
>>> +
>>> +	if (get_pages)
>>> +		err = ____i915_gem_object_get_pages(obj);
>>> +	mutex_unlock(&obj->mm.lock);
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>> +	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
>>> +	struct page **pvec;
>>> +	unsigned int gup_flags = 0;
>>> +	unsigned long notifier_seq;
>>> +	int pinned, ret;
>>> +
>>> +	if (obj->userptr.notifier.mm != current->mm)
>>> +		return -EFAULT;
>>> +
>>> +	ret = i915_gem_object_lock_interruptible(obj, NULL);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	/* Make sure userptr is unbound for next attempt, so we don't use stale pages. */
>>> +	ret = i915_gem_object_userptr_unbind(obj, false);
>>> +	i915_gem_object_unlock(obj);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	notifier_seq = mmu_interval_read_begin(&obj->userptr.notifier);
>>> +
>>> +	pvec = kvmalloc_array(num_pages, sizeof(struct page *), GFP_KERNEL);
>>> +	if (!pvec)
>>> +		return -ENOMEM;
>>> +
>>> +	if (!i915_gem_object_is_readonly(obj))
>>> +		gup_flags |= FOLL_WRITE;
>>> +
>>> +	pinned = ret = 0;
>>> +	while (pinned < num_pages) {
>>> +		ret = pin_user_pages_fast(obj->userptr.ptr + pinned * PAGE_SIZE,
>>> +					  num_pages - pinned, gup_flags,
>>> +					  &pvec[pinned]);
>>> +		if (ret < 0)
>>> +			goto out;
>>> +
>>> +		pinned += ret;
>>> +	}
>>> +	ret = 0;
>>> +
>>> +	spin_lock(&i915->mm.notifier_lock);
>> I think we can improve a lot on the locking here by having the object lock protect the object state and only take the driver-wide notifier lock in execbuf / userptr_invalidate. If we in addition use an rwlock as a notifier lock taken in read mode in execbuf, any potential global lock contention can be practically eliminated. But that's perhaps for a future improvement.
>>> +
>>> +	if (mmu_interval_read_retry(&obj->userptr.notifier,
>>> +		!obj->userptr.page_ref ? notifier_seq :
>>> +		obj->userptr.notifier_seq)) {
>>> +		ret = -EAGAIN;
>>> +		goto out_unlock;
>>> +	}
>>> +
>>> +	if (!obj->userptr.page_ref++) {
>>> +		obj->userptr.pvec = pvec;
>>> +		obj->userptr.notifier_seq = notifier_seq;
>>> +
>>> +		pvec = NULL;
>>> +	}
>> In addition, if we can call get_pages() here to take the page_ref, we can eliminate one page_ref and the use of _userptr_submit_fini(). That would of course require the object lock, but we'd already hold that for the object state as above.
>>
> I guess it could be optimized by not doing this dance..
>
> Perhaps this?
>
> i915_gem_object_set_pages(pvec, seq)
> {
> i915_gem_object_lock_interruptible();
>
> Directly run the set_pages() function body with pvec and seqno as argument. It will check for collisions, and return -EAGAIN if needed, 0 if notifier seqno was already set to same.
> gem_object_unlock()
> }

Yeah, I had something like the attached in mind. I think getting rid of 
submit_fini() would be helpful moving forward.

/Thomas



--------------7144F794B13C9103FA7F4385
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-drm-i915-Simplify-userptr-locking.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="0001-drm-i915-Simplify-userptr-locking.patch"

From de14ad02b8c5100cc0834711f254dbb15561c60b Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 8 Feb 2021 17:45:41 +0100
Subject: [PATCH] drm/i915: Simplify userptr locking
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Use an rwlock instead of spinlock for the global notifier lock
to reduce risk of contention in execbuf.

Protect object state with the object lock whenever possible rather
than with the global notifier lock

Don't take an explicit page_ref in userptr_submit_init() but rather
call get_pages() after obtaining the page list so that
get_pages() holds the page_ref. This means we don't need to call
userptr_submit_fini().

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 67 ++++++-------------
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 3 files changed, 25 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1ac272f4634a..5444e88baf4e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2261,7 +2261,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 
 #ifdef CONFIG_MMU_NOTIFIER
 	if (!err && (eb->args->flags & __EXEC_USERPTR_USED)) {
-		spin_lock(&eb->i915->mm.notifier_lock);
+		read_lock(&eb->i915->mm.notifier_lock);
 
 		/*
 		 * count is always at least 1, otherwise __EXEC_USERPTR_USED
@@ -2279,7 +2279,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 				break;
 		}
 
-		spin_unlock(&eb->i915->mm.notifier_lock);
+		read_unlock(&eb->i915->mm.notifier_lock);
 	}
 #endif
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 44fc0df89784..7366b47a742c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -67,11 +67,11 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 	if (!mmu_notifier_range_blockable(range))
 		return false;
 
-	spin_lock(&i915->mm.notifier_lock);
+	write_lock(&i915->mm.notifier_lock);
 
 	mmu_interval_set_seq(mni, cur_seq);
 
-	spin_unlock(&i915->mm.notifier_lock);
+	write_unlock(&i915->mm.notifier_lock);
 
 	/* During exit there's no need to wait */
 	if (current->flags & PF_EXITING)
@@ -100,16 +100,15 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj)
 
 static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct page **pvec = NULL;
 
-	spin_lock(&i915->mm.notifier_lock);
+	assert_object_held_shared(obj);
+
 	if (!--obj->userptr.page_ref) {
 		pvec = obj->userptr.pvec;
 		obj->userptr.pvec = NULL;
 	}
 	GEM_BUG_ON(obj->userptr.page_ref < 0);
-	spin_unlock(&i915->mm.notifier_lock);
 
 	if (pvec) {
 		const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
@@ -121,7 +120,6 @@ static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
 
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 	unsigned int max_segment = i915_sg_segment_size();
 	struct sg_table *st;
@@ -134,16 +132,13 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	if (!st)
 		return -ENOMEM;
 
-	spin_lock(&i915->mm.notifier_lock);
-	if (GEM_WARN_ON(!obj->userptr.page_ref)) {
-		spin_unlock(&i915->mm.notifier_lock);
-		ret = -EFAULT;
+	if (!obj->userptr.page_ref) {
+		ret = -EAGAIN;
 		goto err_free;
 	}
 
 	obj->userptr.page_ref++;
 	pvec = obj->userptr.pvec;
-	spin_unlock(&i915->mm.notifier_lock);
 
 alloc_table:
 	sg = __sg_alloc_table_from_pages(st, pvec, num_pages, 0,
@@ -234,7 +229,7 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 	i915_gem_object_userptr_drop_ref(obj);
 }
 
-static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool get_pages)
+static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
 	int err;
@@ -252,15 +247,11 @@ static int i915_gem_object_userptr_unbind(struct drm_i915_gem_object *obj, bool
 	if (!IS_ERR_OR_NULL(pages))
 		i915_gem_userptr_put_pages(obj, pages);
 
-	if (get_pages)
-		err = ____i915_gem_object_get_pages(obj);
-
 	return err;
 }
 
 int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 	struct page **pvec;
 	unsigned int gup_flags = 0;
@@ -270,39 +261,22 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	if (obj->userptr.notifier.mm != current->mm)
 		return -EFAULT;
 
+	notifier_seq = mmu_interval_read_begin(&obj->userptr.notifier);
+
 	ret = i915_gem_object_lock_interruptible(obj, NULL);
 	if (ret)
 		return ret;
 
-	/* optimistically try to preserve current pages while unlocked */
-	if (i915_gem_object_has_pages(obj) &&
-	    !mmu_interval_check_retry(&obj->userptr.notifier,
-				      obj->userptr.notifier_seq)) {
-		spin_lock(&i915->mm.notifier_lock);
-		if (obj->userptr.pvec &&
-		    !mmu_interval_read_retry(&obj->userptr.notifier,
-					     obj->userptr.notifier_seq)) {
-			obj->userptr.page_ref++;
-
-			/* We can keep using the current binding, this is the fastpath */
-			ret = 1;
-		}
-		spin_unlock(&i915->mm.notifier_lock);
+	if (notifier_seq == obj->userptr.notifier_seq && obj->userptr.pvec) {
+		i915_gem_object_unlock(obj);
+		return 0;
 	}
 
-	if (!ret) {
-		/* Make sure userptr is unbound for next attempt, so we don't use stale pages. */
-		ret = i915_gem_object_userptr_unbind(obj, false);
-	}
+	ret = i915_gem_object_userptr_unbind(obj);
 	i915_gem_object_unlock(obj);
-	if (ret < 0)
+	if (ret)
 		return ret;
 
-	if (ret > 0)
-		return 0;
-
-	notifier_seq = mmu_interval_read_begin(&obj->userptr.notifier);
-
 	pvec = kvmalloc_array(num_pages, sizeof(struct page *), GFP_KERNEL);
 	if (!pvec)
 		return -ENOMEM;
@@ -322,7 +296,9 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	}
 	ret = 0;
 
-	spin_lock(&i915->mm.notifier_lock);
+	ret = i915_gem_object_lock_interruptible(obj, NULL);
+	if (ret)
+		goto out;
 
 	if (mmu_interval_read_retry(&obj->userptr.notifier,
 		!obj->userptr.page_ref ? notifier_seq :
@@ -334,12 +310,14 @@ int i915_gem_object_userptr_submit_init(struct drm_i915_gem_object *obj)
 	if (!obj->userptr.page_ref++) {
 		obj->userptr.pvec = pvec;
 		obj->userptr.notifier_seq = notifier_seq;
-
 		pvec = NULL;
+		ret = ____i915_gem_object_get_pages(obj);
 	}
 
+	obj->userptr.page_ref--;
+
 out_unlock:
-	spin_unlock(&i915->mm.notifier_lock);
+	i915_gem_object_unlock(obj);
 
 out:
 	if (pvec) {
@@ -364,7 +342,6 @@ int i915_gem_object_userptr_submit_done(struct drm_i915_gem_object *obj)
 
 void i915_gem_object_userptr_submit_fini(struct drm_i915_gem_object *obj)
 {
-	i915_gem_object_userptr_drop_ref(obj);
 }
 
 static void
@@ -553,7 +530,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
 {
 #ifdef CONFIG_MMU_NOTIFIER
-	spin_lock_init(&dev_priv->mm.notifier_lock);
+	rwlock_init(&dev_priv->mm.notifier_lock);
 #endif
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 320e0f66122d..e88f52013e1e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -595,7 +595,7 @@ struct i915_gem_mm {
 	 * notifier_lock for mmu notifiers, memory may not be allocated
 	 * while holding this lock.
 	 */
-	spinlock_t notifier_lock;
+	rwlock_t notifier_lock;
 #endif
 
 	/* shrinker accounting, also useful for userland debugging */
-- 
2.25.1


--------------7144F794B13C9103FA7F4385
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--------------7144F794B13C9103FA7F4385--
