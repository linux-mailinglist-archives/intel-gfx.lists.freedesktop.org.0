Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4EB1A9A45
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560846E954;
	Wed, 15 Apr 2020 10:19:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B836E954
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:19:13 +0000 (UTC)
IronPort-SDR: nfj/A5RcSNhKpOzQ4bPcoryY8rxEyNC5hRV21Qo+OF2ApY5m5s/KMSEcNi7ID04nksHFwoVwlz
 vAPJ6PTlwqWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:19:13 -0700
IronPort-SDR: ie1yUhmVyn+BpMh/ZOwpfpcFGzwhhdnLHN1BuEiJUyfJ9alhObLrmZaX7AHktmHfxruZEM9Afz
 v9x9yz0KlU+A==
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="272999990"
Received: from idodadon-mobl1.ger.corp.intel.com (HELO [10.214.240.154])
 ([10.214.240.154])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:19:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-9-tvrtko.ursulin@linux.intel.com>
 <158454005479.6873.4857418466512127070@build.alporthouse.com>
 <aec5ec90-0c1d-e1cb-f7c4-ff5b2112a005@linux.intel.com>
 <158454207359.6873.1378980328900414497@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a315f786-838d-489b-eee6-d236c57ac2ca@linux.intel.com>
Date: Wed, 15 Apr 2020 11:19:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158454207359.6873.1378980328900414497@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Expose per-engine client
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


On 18/03/2020 14:34, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-18 14:15:31)
>>
>> On 18/03/2020 14:00, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-03-18 12:11:37)
>>>> +static u64
>>>> +pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
>>>> +{
>>>> +       struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
>>>> +       struct i915_gem_engines_iter it;
>>>> +       struct intel_context *ce;
>>>> +       u64 total = 0;
>>>> +
>>>> +       for_each_gem_engine(ce, engines, it) {
>>>> +               if (ce->engine->uabi_class == class)
>>>> +                       total += ce->runtime.total;
>>>> +       }
>>>> +
>>>> +       return total;
>>>> +}
>>>> +
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
>>>
>>> Hmm. I would like to have some GEM context agnosticism here. At the
>>> moment, all I have to offer is
>>>
>>> struct client_runtime {
>>>        struct list_head client_link;
>>>        atomic64_t past_runtime;
>>>        u64 (*cur_runtime)(struct client_runtime *);
>>> };
>>
>> What exactly do you mean here? Who keeps a list and of what and what
>> does the vfunc do?
> 
> This is what you've added to GEM context. Here in i915/i915_drm_client.c
> we shouldn't have to know about i915/gem/i915_gem_context internals. So
> the GEM context registers its client_runtime (by coupling that into the
> list).

I've ignored this for now as it was feeling a bit too much for too 
little benefit and just decided to send out another simple rebase, given 
that there seems to be some urgency around this work now.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
