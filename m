Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB4621B3E8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5642B6EBD6;
	Fri, 10 Jul 2020 11:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43B66EBD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:26:06 +0000 (UTC)
IronPort-SDR: BnG8TLn1gLtla2rlO1AU5RrSbo2tyUHMAa0yoaHayP/CDmoBt4eAG+p8BaE6GfibA0F677NWMa
 hxDGAVIJhX1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136386486"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="136386486"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:26:06 -0700
IronPort-SDR: A2gvtQl3cQTOp4XorR+fOqLOPU0r3meDW42oJwuJnHbrnyKlDdtnSmwq8h12RtL8v0mcfBrvQb
 5IThGKt5zJog==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="428539440"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:26:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <115e9f3b-d75b-f5e5-24d5-1d1d253f441c@linux.intel.com>
Date: Fri, 10 Jul 2020 12:26:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/20] drm/i915/gem: Rename
 execbuf.bind_link to unbound_link
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
> Rename the current list of unbound objects so that we can track of all
> objects that we need to bind, as well as the list of currently unbound
> [unprocessed] objects.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index e4d06db3f313..bf8193d9e279 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -33,7 +33,7 @@ struct eb_vma {
>   
>   	/** This vma's place in the execbuf reservation list */
>   	struct drm_i915_gem_exec_object2 *exec;
> -	struct list_head bind_link;
> +	struct list_head unbound_link;
>   	struct list_head reloc_link;
>   
>   	struct hlist_node node;
> @@ -594,7 +594,7 @@ eb_add_vma(struct i915_execbuffer *eb,
>   		}
>   	} else {
>   		eb_unreserve_vma(ev);
> -		list_add_tail(&ev->bind_link, &eb->unbound);
> +		list_add_tail(&ev->unbound_link, &eb->unbound);
>   	}
>   }
>   
> @@ -699,7 +699,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
>   			return -EINTR;
>   
> -		list_for_each_entry(ev, &eb->unbound, bind_link) {
> +		list_for_each_entry(ev, &eb->unbound, unbound_link) {
>   			err = eb_reserve_vma(eb, ev, pin_flags);
>   			if (err)
>   				break;
> @@ -725,15 +725,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   
>   			if (flags & EXEC_OBJECT_PINNED)
>   				/* Pinned must have their slot */
> -				list_add(&ev->bind_link, &eb->unbound);
> +				list_add(&ev->unbound_link, &eb->unbound);
>   			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
>   				/* Map require the lowest 256MiB (aperture) */
> -				list_add_tail(&ev->bind_link, &eb->unbound);
> +				list_add_tail(&ev->unbound_link, &eb->unbound);
>   			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
>   				/* Prioritise 4GiB region for restricted bo */
> -				list_add(&ev->bind_link, &last);
> +				list_add(&ev->unbound_link, &last);
>   			else
> -				list_add_tail(&ev->bind_link, &last);
> +				list_add_tail(&ev->unbound_link, &last);
>   		}
>   		list_splice_tail(&last, &eb->unbound);
>   		mutex_unlock(&eb->i915->drm.struct_mutex);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
