Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7468E2C5C52
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 19:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06AD6E9DB;
	Thu, 26 Nov 2020 18:58:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB2C6E938
 for <Intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 18:58:40 +0000 (UTC)
IronPort-SDR: /pNXxuraOVpGnv6eeCiWWUrh5N91yC3B7AW9H6au+vvi37Jpy6MVeS1IXc3ZsyrBDE4VKMvb45
 5iwviK29ze9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257025019"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="257025019"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 10:58:25 -0800
IronPort-SDR: Eqgh9jfBSIdWSAZcQNx06/lK3jmb2jPXzcajVmuPfpCYuiXkA7yPoSCpxMy/uehDimAt6G1a90
 GPEVJvjFl7Pg==
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="547805808"
Received: from gmoskovi-mobl.ger.corp.intel.com (HELO [10.251.182.78])
 ([10.251.182.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 10:58:24 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
 <160640980713.31673.2813856466109565459@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3cce1f1c-4867-c478-0045-6af5864eb85d@linux.intel.com>
Date: Thu, 26 Nov 2020 18:58:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160640980713.31673.2813856466109565459@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Deprecate I915_PMU_LAST and
 optimize state tracking
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


On 26/11/2020 16:56, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-26 16:47:03)
>> -static unsigned int config_enabled_bit(u64 config)
>> +static unsigned int is_tracked_config(const u64 config)
>>   {
>> -       if (is_engine_config(config))
>> +       unsigned int val;
> 
>> +/**
>> + * Non-engine events that we need to track enabled-disabled transition and
>> + * current state.
>> + */
> 
> I'm not understanding what is_tracked_config() actually means and how
> that becomes config_enabled_bit().
> 
> These look like the non-engine ones where we interact with HW during the
> sample.
> 
> How do the events we define a bit for here differ from the "untracked"
> events?

Tracked means i915 pmu needs to track enabled/disabled transitions and 
state.

So far frequency and rc6 needs that, due sampling timer decisions and 
park/unpark handling respectively.

Interrupts on the contrary don't need to do any of that. We can just 
read the count at any given time.

Is_tracked_config() for convenience returns a "bit + 1", so 0 means 
untracked.

Every tracked event needs a slot in pmu->enabled and pmu->enable_count. 
The rest don't. Before this patch I had too many bits/array elements 
reserved there.

Old state in terms of bit/slot allocation was:

  0 - 15 engine samplers. (Only 3 used, 12 wasted bits/counts).
16 - 63 other counters. (Interrupts was using a slot for no purpose.)

New state:

  0 -  2 engine samplers.
  3 - 31 other counters. (Only 3 used so far, interrupts has no slot.)

It was a handy 1:1 mapping between non-engine events and bits/slots. 
Apart from wasting bits/slots, if I want to partition the u64 config 
space a bit more then 1:1 becomes a problem.

Note that engine bits/counts in top-level struct pmu are for all/any 
engine - just because a sampling timer decision is easy like that. (Set 
bit for any engine having an active sampler of a type, and respective 
enable_count incremented by each engine instance.)

Regards,

Tvrtko

>> +
>> +       switch (config) {
>> +       case I915_PMU_ACTUAL_FREQUENCY:
>> +               val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
>> +               break;
>> +       case I915_PMU_REQUESTED_FREQUENCY:
>> +               val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
>> +               break;
>> +       case I915_PMU_RC6_RESIDENCY:
>> +               val = __I915_PMU_RC6_RESIDENCY_ENABLED;
>> +               break;
>> +       default:
>> +               return 0;
>> +       }
>> +
>> +       return val + 1;
>> +}
>> +
>> +static unsigned int config_enabled_bit(const u64 config)
>> +{
>> +       if (is_engine_config(config)) {
>>                  return engine_config_sample(config);
>> -       else
>> -               return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
>> +       } else {
>> +               unsigned int bit = is_tracked_config(config);
>> +
>> +               if (bit)
>> +                       return I915_ENGINE_SAMPLE_COUNT + bit - 1;
>> +               else
>> +                       return -1;
>> +       }
>>   }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
