Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BF1402603
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 11:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B78D89DA9;
	Tue,  7 Sep 2021 09:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 901D789DB5;
 Tue,  7 Sep 2021 09:12:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="220168220"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="220168220"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 02:12:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="523745097"
Received: from tcarvalx-mobl.ger.corp.intel.com (HELO [10.252.28.225])
 ([10.252.28.225])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 02:12:40 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com
References: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
 <20210906165515.450541-3-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <ed27bf36-a6f2-dcf8-5787-a036ea2de3d3@intel.com>
Date: Tue, 7 Sep 2021 10:12:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210906165515.450541-3-thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/gem: Implement a function
 to process all gem objects of a region
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

On 06/09/2021 17:55, Thomas Hellström wrote:
> An upcoming common pattern is to traverse the region object list and
> perform certain actions on all objects in a region. It's a little tricky
> to get the list locking right, in particular since a gem object may
> change region unless it's pinned or the object lock is held.
> 
> Define a function that does this for us and that takes an argument that
> defines the action to be performed on each object.
> 
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_region.c | 70 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_region.h | 33 ++++++++++
>   2 files changed, 103 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index 1f557b2178ed..a016ccec36f3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -80,3 +80,73 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>   	i915_gem_object_free(obj);
>   	return ERR_PTR(err);
>   }
> +
> +/**
> + * i915_gem_process_region - Iterate over all objects of a region using ops
> + * to process and optionally skip objects
> + * @mr: The memory region
> + * @apply: ops and private data
> + *
> + * This function can be used to iterate over the regions object list,
> + * checking whether to skip objects, and, if not, lock the objects and
> + * process them using the supplied ops. Note that this function temporarily
> + * removes objects from the region list while iterating, so that if run
> + * concurrently with itself may not iterate over all objects.
> + *
> + * Return: 0 if successful, negative error code on failure.
> + */
> +int i915_gem_process_region(struct intel_memory_region *mr,
> +			    struct i915_gem_apply_to_region *apply)
> +{
> +	const struct i915_gem_apply_to_region_ops *ops = apply->ops;
> +	struct drm_i915_gem_object *obj;
> +	struct list_head still_in_list;
> +	int ret = 0;
> +
> +	/*
> +	 * In the future, a non-NULL apply->ww could mean the caller is
> +	 * already in a locking transaction and provides its own context.
> +	 */
> +	GEM_WARN_ON(apply->ww);
> +
> +	INIT_LIST_HEAD(&still_in_list);
> +	mutex_lock(&mr->objects.lock);
> +	for (;;) {
> +		struct i915_gem_ww_ctx ww;
> +
> +		obj = list_first_entry_or_null(&mr->objects.list, typeof(*obj),
> +					       mm.region_link);
> +		if (!obj)
> +			break;
> +
> +		list_move_tail(&obj->mm.region_link, &still_in_list);
> +		if (!kref_get_unless_zero(&obj->base.refcount))
> +			continue;
> +
> +		/*
> +		 * Note: Someone else might be migrating the object at this
> +		 * point. The object's region is not stable until we lock
> +		 * the object.
> +		 */
> +		mutex_unlock(&mr->objects.lock);
> +		apply->ww = &ww;
> +		for_i915_gem_ww(&ww, ret, apply->interruptible) {
> +			ret = i915_gem_object_lock(obj, apply->ww);
> +			if (ret)
> +				continue;
> +
> +			if (obj->mm.region == mr)
> +				ret = ops->process_obj(apply, obj);
> +			/* Implicit object unlock */
> +		}
> +
> +		i915_gem_object_put(obj);
> +		mutex_lock(&mr->objects.lock);
> +		if (ret)
> +			break;
> +	}
> +	list_splice_tail(&still_in_list, &mr->objects.list);
> +	mutex_unlock(&mr->objects.lock);
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
> index 1008e580a89a..f62195847056 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
> @@ -12,6 +12,37 @@ struct intel_memory_region;
>   struct drm_i915_gem_object;
>   struct sg_table;
>   
> +struct i915_gem_apply_to_region;
> +
> +/**
> + * struct i915_gem_apply_to_region_ops - ops to use when iterating over all
> + * region objects.
> + */
> +struct i915_gem_apply_to_region_ops {
> +	/**
> +	 * process_obj - Process the current object

Should we mention that returning -EDEADLK might result in re-entering 
the process_obj?

> +	 * @apply: Embed this for provate data

s/provate/private

> +	 * @obj: The current object.
> +	 */
> +	int (*process_obj)(struct i915_gem_apply_to_region *apply,
> +			   struct drm_i915_gem_object *obj);
> +};
> +
> +/**
> + * struct i915_gem_apply_to_region - Argument to the struct
> + * i915_gem_apply_to_region_ops functions.
> + * @ops: The ops for the operation.
> + * @ww: Locking context used for the transaction.
> + * @interruptible: Whether to perform object locking interruptible.
> + *
> + * This structure is intended to be embedded in a private struct if needed
> + */
> +struct i915_gem_apply_to_region {
> +	const struct i915_gem_apply_to_region_ops *ops;
> +	struct i915_gem_ww_ctx *ww;
> +	u32 interruptible:1;
> +};
> +
>   void i915_gem_object_init_memory_region(struct drm_i915_gem_object *obj,
>   					struct intel_memory_region *mem);
>   void i915_gem_object_release_memory_region(struct drm_i915_gem_object *obj);
> @@ -22,4 +53,6 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>   			      resource_size_t page_size,
>   			      unsigned int flags);
>   
> +int i915_gem_process_region(struct intel_memory_region *mr,
> +			    struct i915_gem_apply_to_region *apply);
>   #endif
> 
