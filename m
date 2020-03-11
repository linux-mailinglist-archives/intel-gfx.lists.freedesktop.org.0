Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF4C1815A0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 11:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75F66E968;
	Wed, 11 Mar 2020 10:17:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF756E969
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 10:17:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 03:17:24 -0700
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="231647267"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 11 Mar 2020 03:17:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-9-tvrtko.ursulin@linux.intel.com>
 <158386512435.28297.9321243628022207699@build.alporthouse.com>
 <9f190888-77f5-a7a0-c061-3578973e261e@linux.intel.com>
 <158387113173.28297.4263001679670929491@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9d415063-3295-d788-9a39-6677133b0118@linux.intel.com>
Date: Wed, 11 Mar 2020 10:17:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158387113173.28297.4263001679670929491@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 08/12] drm/i915: Expose per-engine client
 busyness
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


On 10/03/2020 20:12, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-10 20:04:23)
>>
>> On 10/03/2020 18:32, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-03-09 18:31:25)
>>>> +static ssize_t
>>>> +show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
>>>> +{
>>>> +       struct i915_engine_busy_attribute *i915_attr =
>>>> +               container_of(attr, typeof(*i915_attr), attr);
>>>> +       unsigned int class = i915_attr->engine_class;
>>>> +       struct i915_drm_client *client = i915_attr->client;
>>>> +       u64 total = atomic64_read(&client->past_runtime[class]);
>>>> +       struct list_head *list = &client->ctx_list;
>>>> +       struct i915_gem_context *ctx;
>>>> +
>>>> +       rcu_read_lock();
>>>> +       list_for_each_entry_rcu(ctx, list, client_link) {
>>>> +               total += atomic64_read(&ctx->past_runtime[class]);
>>>> +               total += pphwsp_busy_add(ctx, class);
>>>> +       }
>>>> +       rcu_read_unlock();
>>>> +
>>>> +       total *= RUNTIME_INFO(i915_attr->i915)->cs_timestamp_period_ns;
>>>
>>> Planning early retirement? In 600 years, they'll have forgotten how to
>>> email ;)
>>
>> Shruggety shrug. :) I am guessing you would prefer both internal
>> representations (sw and pphwsp runtimes) to be consistently in
>> nanoseconds? I thought why multiply at various places when once at the
>> readout time is enough.
> 
> It's fine. I was just double checking overflow, and then remembered the
> end result is 64b nanoseconds.
> 
> Keep the internal representation convenient for accumulation, and the
> conversion at the boundary.
>   
>> And I should mention again how I am not sure at the moment how to meld
>> the two stats into one more "perfect" output.
> 
> One of the things that crossed my mind was wondering if it was possible
> to throw in a pulse before reading the stats (if active etc). Usual
> dilemma with non-preemptible contexts, so probably not worth it as those
> hogs will remain hogs.
> 
> And I worry about the disparity between sw busy and hw runtime.

How about I stop tracking accumulated sw runtime and just use it for the 
active portion. So reporting back hw runtime + sw active runtime. In 
other words sw tracking only covers the portion between context_in and 
context_out. Sounds worth a try.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
