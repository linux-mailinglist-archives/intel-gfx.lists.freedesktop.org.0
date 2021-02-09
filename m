Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1400315378
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 17:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932A16EABC;
	Tue,  9 Feb 2021 16:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42EFA6EABC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 16:11:12 +0000 (UTC)
IronPort-SDR: HkRAp410gmgEOsaf1oPLVsj6TgiyIC9Cn1mrJR2x2rVF7chqvJsNrpMlChX55xyhvLrThQ2vy0
 5K+MrMeYR88g==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="169585575"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="169585575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 08:11:10 -0800
IronPort-SDR: WMck4M0K5H8YjsxCXlz0buIzaVinXwqhYtU5oTRItrCLKgJpTR04aS0ua0eM/1qxo/oXBgHyOZ
 Y28WPqkcVUJw==
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="396216736"
Received: from gmaoz-mobl.ger.corp.intel.com (HELO [10.249.82.228])
 ([10.249.82.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 08:11:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-9-chris@chris-wilson.co.uk>
 <9a15139e-14e0-f7cd-0afe-08e7dd7aac2c@linux.intel.com>
 <161280115888.9448.15201223948689283252@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8bd4198a-907d-88c0-6714-86917515e83d@linux.intel.com>
Date: Tue, 9 Feb 2021 16:11:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161280115888.9448.15201223948689283252@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/31] drm/i915: Replace priolist rbtree
 with a skiplist
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


On 08/02/2021 16:19, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-08 15:23:17)
>>
>> On 08/02/2021 10:52, Chris Wilson wrote:
>>>    static struct list_head *
>>>    lookup_priolist(struct i915_sched *se, int prio)
>>>    {
>>> -     struct i915_priolist *p;
>>> -     struct rb_node **parent, *rb;
>>> -     bool first = true;
>>> +     struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
>>> +     struct i915_priolist_root *const root = &se->queue;
>>> +     struct i915_priolist *pl, *tmp;
>>> +     int lvl;
>>>    
>>>        lockdep_assert_held(&se->lock);
>>> -     assert_priolists(se);
>>> -
>>>        if (unlikely(se->no_priolist))
>>>                prio = I915_PRIORITY_NORMAL;
>>>    
>>> +     for_each_priolist(pl, root) { /* recycle any empty elements before us */
>>> +             if (pl->priority <= prio || !list_empty(&pl->requests))
>>> +                     break;
>>
>> This less part of the less-or-equal condition keeps confusing me as a
>> break criteria. If premise is cleaning up, why break on first smaller
>> prio? Would the idea be to prune all empty lists up to, not including,
>> the lookup prio?
> 
> Just parcelling up the work. If we tidy up all the unused nodes before
> us, we insert ourselves at the head of the tree, and all the cheap
> checks to see if this is the first request, or to find the first
> request are happy.
> 
> It's not expected to find anything unused with the tweaks to tidy up
> empty elements as we move between i915_priolist.requests, but it seems
> sensible to keep as then it should be just checking the first
> i915_priolist and breaking out.

It's fine, for some reason I missed the order is descending. Probably 
thinking about deadlines already. Need to see how that works there then. 
But a comment indicating the order would be cool.

>>> -void __i915_priolist_free(struct i915_priolist *p)
>>> +static void __remove_priolist(struct i915_sched *se, struct list_head *plist)
>>>    {
>>> -     kmem_cache_free(global.slab_priorities, p);
>>> +     struct i915_priolist_root *root = &se->queue;
>>> +     struct i915_priolist *pl, *tmp;
>>> +     struct i915_priolist *old =
>>> +             container_of(plist, struct i915_priolist, requests);
>>> +     int prio = old->priority;
>>> +     int lvl;
>>> +
>>> +     lockdep_assert_held(&se->lock);
>>> +     GEM_BUG_ON(!list_empty(plist));
>>> +
>>> +     pl = &root->sentinel;
>>> +     lvl = pl->level;
>>> +     GEM_BUG_ON(lvl < 0);
>>> +
>>> +     if (prio != I915_PRIORITY_NORMAL)
>>> +             pl_push(old, &pl->requests);
>>> +
>>> +     do {
>>> +             while (tmp = pl->next[lvl], tmp->priority > prio)
>>> +                     pl = tmp;

Ah okay, this is needed because the list is singly linked. I suggest a 
comment.

Doubly linked would not be interesting?

>>> +             if (lvl <= old->level) {
>>> +                     pl->next[lvl] = old->next[lvl];
>>> +                     if (pl == &root->sentinel && old->next[lvl] == pl) {
>>> +                             GEM_BUG_ON(pl->level != lvl);
>>> +                             pl->level--;
>>> +                     }
>>> +             }
>>> +     } while (--lvl >= 0);
>>> +     GEM_BUG_ON(tmp != old);
>>> +}
> 
>>> +struct i915_priolist *__i915_sched_dequeue_next(struct i915_sched *se)
>>> +{
>>> +     struct i915_priolist * const s = &se->queue.sentinel;
>>> +     struct i915_priolist *pl = s->next[0];
>>> +     int lvl;
>>> +
>>> +     GEM_BUG_ON(!list_empty(&pl->requests));
>>> +     GEM_BUG_ON(pl == s);
>>> +
>>> +     /* Keep pl->next[0] valid for for_each_priolist iteration */
>>> +     if (pl->priority != I915_PRIORITY_NORMAL)
>>> +             pl_push(pl, &s->requests);
>>> +
>>> +     lvl = pl->level;
>>> +     GEM_BUG_ON(lvl < 0);
>>> +     do {
>>> +             s->next[lvl] = pl->next[lvl];
>>> +             if (pl->next[lvl] == s) {
>>> +                     GEM_BUG_ON(s->level != lvl);
>>> +                     s->level--;
>>> +             }
>>> +     } while (--lvl >= 0);
>>> +
>>> +     return pl->next[0];
>>>    }
>>
>> If both __i915_sched_dequeue_next and __remove_priolist are removing an
>> empty list from the hieararchy, why can't they shared some code?
> 
> The __remove_priolist does the general search and remove, whereas
> dequeue_next is trying to keep O(1) remove-from-head. dequeue_next is
> meant to be called many, many more times than __remove_priolist.

Ok.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
