Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB9921B3EB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2EE6EBD5;
	Fri, 10 Jul 2020 11:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4958E6EBD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:27:28 +0000 (UTC)
IronPort-SDR: x+HAAKkVpldwVXWGV2eBf3iLrSi9MgUd10UyY5G1HXUbkLvbbyACmsGVsBc0Bv2IEOD4lqWAug
 Ox7xB6CrJWbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149651319"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149651319"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:27:27 -0700
IronPort-SDR: iVNO8WYN03A1SWDkel0XOhYyQmz1QivFplrYW1ttckb7YFAcfEdxpcLPEe8LlYtCwNgfuIcw03
 8IUjdhlnzw3g==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="428539623"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:27:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0d4526e4-3e3b-a3f1-a014-7f08360b210f@linux.intel.com>
Date: Fri, 10 Jul 2020 12:27:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/20] drm/i915/gem: Break apart the early
 i915_vma_pin from execbuf object lookup
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
> As a prelude to the next step where we want to perform all the object
> allocations together under the same lock, we first must delay the
> i915_vma_pin() as that implicitly does the allocations for us, one by
> one. As it only does the allocations one by one, it is not allowed to
> wait/evict, whereas pulling all the allocations together the entire set
> can be scheduled as one.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 70 +++++++++++--------
>   1 file changed, 39 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bf8193d9e279..35a57c1fc9c3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -33,6 +33,8 @@ struct eb_vma {
>   
>   	/** This vma's place in the execbuf reservation list */
>   	struct drm_i915_gem_exec_object2 *exec;
> +
> +	struct list_head bind_link;
>   	struct list_head unbound_link;
>   	struct list_head reloc_link;
>   
> @@ -240,8 +242,8 @@ struct i915_execbuffer {
>   	/** actual size of execobj[] as we may extend it for the cmdparser */
>   	unsigned int buffer_count;
>   
> -	/** list of vma not yet bound during reservation phase */
> -	struct list_head unbound;
> +	/** list of all vma required to bound for this execbuf */
> +	struct list_head bind_list;
>   
>   	/** list of vma that have execobj.relocation_count */
>   	struct list_head relocs;
> @@ -565,6 +567,8 @@ eb_add_vma(struct i915_execbuffer *eb,
>   						    eb->lut_size)]);
>   	}
>   
> +	list_add_tail(&ev->bind_link, &eb->bind_list);
> +
>   	if (entry->relocation_count)
>   		list_add_tail(&ev->reloc_link, &eb->relocs);
>   
> @@ -586,16 +590,6 @@ eb_add_vma(struct i915_execbuffer *eb,
>   
>   		eb->batch = ev;
>   	}
> -
> -	if (eb_pin_vma(eb, entry, ev)) {
> -		if (entry->offset != vma->node.start) {
> -			entry->offset = vma->node.start | UPDATE;
> -			eb->args->flags |= __EXEC_HAS_RELOC;
> -		}
> -	} else {
> -		eb_unreserve_vma(ev);
> -		list_add_tail(&ev->unbound_link, &eb->unbound);
> -	}
>   }
>   
>   static int eb_reserve_vma(const struct i915_execbuffer *eb,
> @@ -670,13 +664,31 @@ static int wait_for_timeline(struct intel_timeline *tl)
>   	} while (1);
>   }
>   
> -static int eb_reserve(struct i915_execbuffer *eb)
> +static int eb_reserve_vm(struct i915_execbuffer *eb)
>   {
> -	const unsigned int count = eb->buffer_count;
>   	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
> -	struct list_head last;
> +	struct list_head last, unbound;
>   	struct eb_vma *ev;
> -	unsigned int i, pass;
> +	unsigned int pass;
> +
> +	INIT_LIST_HEAD(&unbound);
> +	list_for_each_entry(ev, &eb->bind_list, bind_link) {
> +		struct drm_i915_gem_exec_object2 *entry = ev->exec;
> +		struct i915_vma *vma = ev->vma;
> +
> +		if (eb_pin_vma(eb, entry, ev)) {
> +			if (entry->offset != vma->node.start) {
> +				entry->offset = vma->node.start | UPDATE;
> +				eb->args->flags |= __EXEC_HAS_RELOC;
> +			}
> +		} else {
> +			eb_unreserve_vma(ev);
> +			list_add_tail(&ev->unbound_link, &unbound);
> +		}
> +	}
> +
> +	if (list_empty(&unbound))
> +		return 0;
>   
>   	/*
>   	 * Attempt to pin all of the buffers into the GTT.
> @@ -699,7 +711,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
>   			return -EINTR;
>   
> -		list_for_each_entry(ev, &eb->unbound, unbound_link) {
> +		list_for_each_entry(ev, &unbound, unbound_link) {
>   			err = eb_reserve_vma(eb, ev, pin_flags);
>   			if (err)
>   				break;
> @@ -710,13 +722,11 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   		}
>   
>   		/* Resort *all* the objects into priority order */
> -		INIT_LIST_HEAD(&eb->unbound);
> +		INIT_LIST_HEAD(&unbound);
>   		INIT_LIST_HEAD(&last);
> -		for (i = 0; i < count; i++) {
> -			unsigned int flags;
> +		list_for_each_entry(ev, &eb->bind_list, bind_link) {
> +			unsigned int flags = ev->flags;
>   
> -			ev = &eb->vma[i];
> -			flags = ev->flags;
>   			if (flags & EXEC_OBJECT_PINNED &&
>   			    flags & __EXEC_OBJECT_HAS_PIN)
>   				continue;
> @@ -725,17 +735,17 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   
>   			if (flags & EXEC_OBJECT_PINNED)
>   				/* Pinned must have their slot */
> -				list_add(&ev->unbound_link, &eb->unbound);
> +				list_add(&ev->unbound_link, &unbound);
>   			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
>   				/* Map require the lowest 256MiB (aperture) */
> -				list_add_tail(&ev->unbound_link, &eb->unbound);
> +				list_add_tail(&ev->unbound_link, &unbound);
>   			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
>   				/* Prioritise 4GiB region for restricted bo */
>   				list_add(&ev->unbound_link, &last);
>   			else
>   				list_add_tail(&ev->unbound_link, &last);
>   		}
> -		list_splice_tail(&last, &eb->unbound);
> +		list_splice_tail(&last, &unbound);
>   		mutex_unlock(&eb->i915->drm.struct_mutex);
>   
>   		if (err == -EAGAIN) {
> @@ -891,8 +901,8 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
>   	unsigned int i;
>   	int err = 0;
>   
> +	INIT_LIST_HEAD(&eb->bind_list);
>   	INIT_LIST_HEAD(&eb->relocs);
> -	INIT_LIST_HEAD(&eb->unbound);
>   
>   	for (i = 0; i < eb->buffer_count; i++) {
>   		struct i915_vma *vma;
> @@ -1539,11 +1549,9 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   	if (err)
>   		return err;
>   
> -	if (!list_empty(&eb->unbound)) {
> -		err = eb_reserve(eb);
> -		if (err)
> -			return err;
> -	}
> +	err = eb_reserve_vm(eb);
> +	if (err)
> +		return err;
>   
>   	/* The objects are in their final locations, apply the relocations. */
>   	if (eb->args->flags & __EXEC_HAS_RELOC) {
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
