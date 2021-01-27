Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B530605D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:58:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0722E6E850;
	Wed, 27 Jan 2021 15:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EB76E850
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:58:18 +0000 (UTC)
IronPort-SDR: Po6xBQvGBMl17smnhVT1SH3yPppDI23NsNbat0PACWC8Z5sR40XMhBoglp/VyPWrf7LZpPDzCV
 OtpYA+yvIngg==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="180168229"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180168229"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:58:17 -0800
IronPort-SDR: GcE5hMKYzIgH6n/96AHJrGX4fKmQVk1Nfrh3b2dkxQI9yqly89vDaqzilEv8uIr5oI0fyLsLLz
 qq/7OqKQ8WDQ==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388370897"
Received: from aohana-mobl1.ger.corp.intel.com (HELO [10.214.230.73])
 ([10.214.230.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:58:15 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <5b716048-6d94-cbbe-4092-5eaebb706561@linux.intel.com>
 <161176158580.2943.5136791152327305702@build.alporthouse.com>
 <161176227212.2943.15527894923176928677@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4b5dcbf2-5e48-3049-c4ac-f9ac0a25ad80@linux.intel.com>
Date: Wed, 27 Jan 2021 15:58:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161176227212.2943.15527894923176928677@build.alporthouse.com>
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


On 27/01/2021 15:44, Chris Wilson wrote:
> Quoting Chris Wilson (2021-01-27 15:33:05)
>> Quoting Tvrtko Ursulin (2021-01-27 15:10:43)
>>>
>>> On 25/01/2021 14:01, Chris Wilson wrote:
>>>> Replace the priolist rbtree with a skiplist. The crucial difference is
>>>> that walking and removing the first element of a skiplist is O(1), but
>>>
>>> I wasn't (and am not) familiar with them, but wikipedia page says
>>> removal is O(logN) average case to O(N) worst case.
>>>
>>> If I understand correctly O(1) could be ignoring the need to traverse
>>> from top to bottom level and removing the element from all. But since
>>> I915_PRIOLIST_HEIGHT is fixed maybe it is okay to call it O(1).
>>
>> Correct, since we removing the first element, we do not need to do the
>> lgN search and can just move the next[I915_PRIOLIST_HEIGHT] forwards.
>> (Although, I did starting doing the lgN removal for timeslicing as
>> traversing the empty levels were showing up in worst case lock hold
>> times.) But the primary means of removing from the skiplist is as we
>> consume the first request during the dequeue.
>>
>>> I wonder though why this wouldn't mean skip list would be worse for both
>>> lightly loaded and highly-loaded scenarios? Presumably height would need
>>> to be balanced to compensate for that.
>>
>> I think the answer is yes. skiplists uses probablistic balancing so they
>> are only from a bird's eye view as good as a rbtree. If you look at the
>> perf tests, the skiplists are generally faster, but it's close overall.
>>
>> What sold me was lock_stat and that I could remove a few hacky patches
>> trying to hide some of the worst case behaviour of rbtree and how we had
>> frees within the critical submit path.
>>   
>>> In summary I have no idea for what number of in-flight requests would
>>> they be better.
>>>
>>> How about putting this patch aside for now since it doesn't sound it is
>>> critical for deadline scheduling per se?
>>
>> Oh no, we are not going back to the hacky patches like
>> https://patchwork.freedesktop.org/patch/407913/?series=84900&rev=1
>> https://patchwork.freedesktop.org/patch/407903/?series=84900&rev=1
> 
> To be extra clear, the biggest drawback in using deadlines as the sort
> key is that they are very, very sparse in comparison to priorities.
> Where we would typically have only a single priority level for every
> request, with deadlines we typically have a new deadline with every
> request (and it's not until we get into priority bumping or timeslice
> deferring do we start to see the deadlines coalesce). In this situation,
> the lgN list traversal of rbtree during execlists_dequeue() was
> abyssmal, and so as the skiplists give similar lgN insertion but O(1)
> list traversal, the difference is enough to completely negate the
> overhead of having more levels to process. It is a dramatic improvement.

Okay makes sense. The change in key drives the requirement so just 
please mention in the commit message and I'll tackle the skip list 
mechanics in the meantime.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
