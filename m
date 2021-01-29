Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCBF308764
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 10:37:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4470D6EAAB;
	Fri, 29 Jan 2021 09:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3407C6EAAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 09:37:31 +0000 (UTC)
IronPort-SDR: 33gW33JOCtslOSGjHVaESBdWtmWn2cj6ih2SXo0Rh1lpHfPsF+g29dK4y+AfLKa1yZ4qkwya+b
 BdpI8JzbvKKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="180472436"
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="180472436"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 01:37:30 -0800
IronPort-SDR: nC6BTPloT3b0d09ORI5m5nGxlcuJcVNbEwSiylQ9H7sdZDJZFnYJvdIj60v1mzI7T7fY3uF03m
 3MsYAN8NzAuA==
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="389231978"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO [10.252.47.4])
 ([10.252.47.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 01:37:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
 <161185117340.2943.10174190803342821813@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dd2ca70a-a940-e475-6968-b63d28c8fd66@linux.intel.com>
Date: Fri, 29 Jan 2021 09:37:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161185117340.2943.10174190803342821813@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/01/2021 16:26, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-28 15:56:19)

>>> -static void assert_priolists(struct i915_sched_engine * const se)
>>> -{
>>> -     struct rb_node *rb;
>>> -     long last_prio;
>>> -
>>> -     if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>>> -             return;
>>> -
>>> -     GEM_BUG_ON(rb_first_cached(&se->queue) !=
>>> -                rb_first(&se->queue.rb_root));
>>> -
>>> -     last_prio = INT_MAX;
>>> -     for (rb = rb_first_cached(&se->queue); rb; rb = rb_next(rb)) {
>>> -             const struct i915_priolist *p = to_priolist(rb);
>>> -
>>> -             GEM_BUG_ON(p->priority > last_prio);
>>> -             last_prio = p->priority;
>>> -     }
>>> +     root->prng = next_pseudo_random32(root->prng);
>>> +     return  __ffs(root->prng) / 2;
>>
>> Where is the relationship to I915_PRIOLIST_HEIGHT? Feels root->prng %
>> I915_PRIOLIST_HEIGHT would be more obvious here unless I am terribly
>> mistaken. Or at least put a comment saying why the hack.
> 
> HEIGHT is the maximum possible for our struct. skiplists only want to
> increment the height of the tree one step at a time. So we choose a level
> with decreasing probability, and then limit that to the maximum height of
> the current tree + 1, clamped to HEIGHT.
> 
> You might notice that unlike traditional skiplists, this uses a
> probability of 0.25 for each additional level. A neat trick discovered by
> Con Kolivas (I haven't found it mentioned elsewhere) as the cost of the
> extra level (using P=.5) is the same as the extra chain length with
> P=.25. So you can scale to higher number of requests by packing more
> requests into each level.
> 
> So that is split between randomly choosing a level and then working out
> the height of the node.

Choosing levels with decreasing probability by the virtue of using ffs 
on a random number? Or because (BITS_PER_TYPE(u32) / 2) is greater than 
I915_PRIOLIST_HEIGHT?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
