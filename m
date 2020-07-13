Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D43921D93F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 16:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788506E1F3;
	Mon, 13 Jul 2020 14:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F407B6E1F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 14:54:02 +0000 (UTC)
IronPort-SDR: uEwQym0qQOezyhODZUD9DDX+dTLvftpD3VbPbH51lXkoMpLYhtQG4/4LA7O98BNZ1Smq79ZiXf
 +Oa6R1h2sk2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="146105706"
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="146105706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 07:54:01 -0700
IronPort-SDR: nDnoqOYtc97iz3Z1tfNHdKpfJ1jL/joSUECnYqtnwJib5CwVP8UjEtqjuDfvHxXp6bep1pxCek
 blCqiU0yC2YA==
X-IronPort-AV: E=Sophos;i="5.75,347,1589266800"; d="scan'208";a="459321814"
Received: from thoebenx-mobl.ger.corp.intel.com (HELO [10.255.194.109])
 ([10.255.194.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 07:53:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-12-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9e293a7a-0592-f102-bcc3-3d0d36c4da4f@linux.intel.com>
Date: Mon, 13 Jul 2020 15:53:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-12-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/gem: Separate the ww_mutex
 walker into its own list
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


On 06/07/2020 07:19, Chris Wilson wrote:
> In preparation for making eb_vma bigger and heavy to run inn parallel,

in

> we need to stop apply an in-place swap() to reorder around ww_mutex

applying

> deadlocks. Keep the array intact and reorder the locks using a dedicated
> list.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 83 ++++++++++++-------
>   1 file changed, 54 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 6d20be29ff3c..4d8ac89c56fc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -37,6 +37,7 @@ struct eb_vma {
>   	struct list_head bind_link;
>   	struct list_head unbound_link;
>   	struct list_head reloc_link;
> +	struct list_head submit_link;
>   
>   	struct hlist_node node;
>   	u32 handle;
> @@ -248,6 +249,8 @@ struct i915_execbuffer {
>   	/** list of vma that have execobj.relocation_count */
>   	struct list_head relocs;
>   
> +	struct list_head submit_list;
> +
>   	/**
>   	 * Track the most recently used object for relocations, as we
>   	 * frequently have to perform multiple relocations within the same
> @@ -341,6 +344,42 @@ static void eb_vma_array_put(struct eb_vma_array *arr)
>   	kref_put(&arr->kref, eb_vma_array_destroy);
>   }
>   
> +static int
> +eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)

vmas plural?

> +{
> +	struct eb_vma *ev;
> +	int err = 0;
> +
> +	list_for_each_entry(ev, &eb->submit_list, submit_link) {
> +		struct i915_vma *vma = ev->vma;
> +
> +		err = ww_mutex_lock_interruptible(&vma->resv->lock, acquire);
> +		if (err == -EDEADLK) {
> +			struct eb_vma *unlock = ev, *en;
> +
> +			list_for_each_entry_safe_continue_reverse(unlock, en,
> +								  &eb->submit_list,
> +								  submit_link) {
> +				ww_mutex_unlock(&unlock->vma->resv->lock);
> +				list_move_tail(&unlock->submit_link, &eb->submit_list);
> +			}
> +
> +			GEM_BUG_ON(!list_is_first(&ev->submit_link, &eb->submit_list));
> +			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
> +							       acquire);
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(ev,
> +							     &eb->submit_list,
> +							     submit_link)
> +				ww_mutex_unlock(&ev->vma->resv->lock);
> +			break;
> +		}
> +	}
> +
> +	return err;
> +}
> +
>   static int eb_create(struct i915_execbuffer *eb)
>   {
>   	/* Allocate an extra slot for use by the command parser + sentinel */
> @@ -393,6 +432,10 @@ static int eb_create(struct i915_execbuffer *eb)
>   		eb->lut_size = -eb->buffer_count;
>   	}
>   
> +	INIT_LIST_HEAD(&eb->bind_list);
> +	INIT_LIST_HEAD(&eb->submit_list);
> +	INIT_LIST_HEAD(&eb->relocs);
> +
>   	return 0;
>   }
>   
> @@ -574,6 +617,7 @@ eb_add_vma(struct i915_execbuffer *eb,
>   	}
>   
>   	list_add_tail(&ev->bind_link, &eb->bind_list);
> +	list_add_tail(&ev->submit_link, &eb->submit_list);
>   
>   	if (entry->relocation_count)
>   		list_add_tail(&ev->reloc_link, &eb->relocs);
> @@ -910,9 +954,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   	unsigned int i;
>   	int err = 0;
>   
> -	INIT_LIST_HEAD(&eb->bind_list);
> -	INIT_LIST_HEAD(&eb->relocs);
> -
>   	for (i = 0; i < eb->buffer_count; i++) {
>   		struct i915_vma *vma;
>   
> @@ -1583,38 +1624,19 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   
>   static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   {
> -	const unsigned int count = eb->buffer_count;
>   	struct ww_acquire_ctx acquire;
> -	unsigned int i;
> +	struct eb_vma *ev;
>   	int err = 0;
>   
>   	ww_acquire_init(&acquire, &reservation_ww_class);
>   
> -	for (i = 0; i < count; i++) {
> -		struct eb_vma *ev = &eb->vma[i];
> -		struct i915_vma *vma = ev->vma;
> -
> -		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
> -		if (err == -EDEADLK) {
> -			GEM_BUG_ON(i == 0);
> -			do {
> -				int j = i - 1;
> -
> -				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
> -
> -				swap(eb->vma[i],  eb->vma[j]);
> -			} while (--i);
> +	err = eb_lock_vma(eb, &acquire);
> +	if (err)
> +		goto err_fini;
>   
> -			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
> -							       &acquire);
> -		}
> -		if (err)
> -			break;
> -	}
>   	ww_acquire_done(&acquire);
>   
> -	while (i--) {
> -		struct eb_vma *ev = &eb->vma[i];
> +	list_for_each_entry(ev, &eb->submit_list, submit_link) {
>   		struct i915_vma *vma = ev->vma;
>   		unsigned int flags = ev->flags;
>   		struct drm_i915_gem_object *obj = vma->obj;
> @@ -1671,6 +1693,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   	intel_gt_chipset_flush(eb->engine->gt);
>   	return 0;
>   
> +err_fini:
> +	ww_acquire_fini(&acquire);
>   err_skip:
>   	i915_request_set_error_once(eb->request, err);
>   	return err;
> @@ -1952,9 +1976,10 @@ static int eb_parse(struct i915_execbuffer *eb)
>   	if (err)
>   		goto err_trampoline;
>   
> -	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
> -	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
>   	eb->batch = &eb->vma[eb->buffer_count++];
> +	eb->batch->vma = i915_vma_get(shadow);
> +	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
> +	list_add_tail(&eb->batch->submit_link, &eb->submit_list);
>   	eb->vma[eb->buffer_count].vma = NULL;
>   
>   	eb->trampoline = trampoline;
> 

Just a temporary stage... are we reviewing those? Best if they can be 
avoided.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
