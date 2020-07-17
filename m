Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4695C223BE5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 15:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CA66EC74;
	Fri, 17 Jul 2020 13:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4E26EC74
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 13:05:02 +0000 (UTC)
IronPort-SDR: V/0yFQzqHd1zfGmrGACXKdM8adSUybUZ7t0rJy/36j4qYLRoPjHDxK93GHmMqUlL13zLKbH8z4
 1DDi+RtGZDmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137696946"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="137696946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:05:01 -0700
IronPort-SDR: FBQm30dw09VcUYoRquFZBS38FiNLvVUHpE0M1YyGyyswU/Y1uTeXmactLnEJYqzEnF34crbe0K
 V0toz52YLBvQ==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460841359"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:05:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <54de929a-9449-8ac2-a8bd-641a61d0525e@linux.intel.com>
Date: Fri, 17 Jul 2020 14:04:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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


On 15/07/2020 12:50, Chris Wilson wrote:
> Rather than require the next timeline after idling to match the MRU
> before idling, reset the index on the node and allow it to match the
> first request. However, this requires cmpxchg(u64) and so is not trivial
> on 32b, so for compatibility we just fallback to keeping the cached node
> pointing to the MRU timeline.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 21 +++++++++++++++++++--
>   1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 0854b1552bc1..6737b5615c0c 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -157,6 +157,10 @@ __active_retire(struct i915_active *ref)
>   		rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
>   		rb_insert_color(&ref->cache->node, &ref->tree);
>   		GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
> +
> +		/* Make the cached node available for reuse with any timeline */
> +		if (IS_ENABLED(CONFIG_64BIT))
> +			ref->cache->timeline = 0; /* needs cmpxchg(u64) */

Or when fence context wraps shock horror.

>   	}
>   
>   	spin_unlock_irqrestore(&ref->tree_lock, flags);
> @@ -235,9 +239,22 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
>   {
>   	struct active_node *it;
>   
> +	GEM_BUG_ON(idx == 0); /* 0 is the unordered timeline, rsvd for cache */
> +
>   	it = READ_ONCE(ref->cache);
> -	if (it && it->timeline == idx)
> -		return it;
> +	if (it) {
> +		u64 cached = READ_ONCE(it->timeline);
> +
> +		if (cached == idx)
> +			return it;
> +
> +#ifdef CONFIG_64BIT /* for cmpxchg(u64) */
> +		if (!cached && !cmpxchg(&it->timeline, 0, idx)) {
> +			GEM_BUG_ON(i915_active_fence_isset(&it->base));
> +			return it;

cpmxchg suggests this needs to be atomic, however above the check for 
equality comes from a separate read.

Since there is a lookup code path under the spinlock, perhaps the 
unlocked lookup could just fail, and then locked lookup could re-assign 
the timeline without the need for cmpxchg?

Regards,

Tvrtko

> +		}
> +#endif
> +	}
>   
>   	BUILD_BUG_ON(offsetof(typeof(*it), node));
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
