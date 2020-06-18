Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2922D1FED2C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 10:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A6D6EB03;
	Thu, 18 Jun 2020 08:06:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8606EB03
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 08:06:54 +0000 (UTC)
IronPort-SDR: n7w7KXITntSryMCsYQeXOfxbyWrEARnoyuQqWvj5bKF3Tpm6KVqmp6X7KL/746SL51QcPYjeWQ
 mUXdj4nFTohQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="141554919"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="141554919"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:06:53 -0700
IronPort-SDR: BsMMX12IfzsUZYucHEdQaloKE8Dgdc5eUVabQxQQQV/lBIfHHhVKzxBqZvDY/6gHvv6/7OlLNy
 AO2Vj8Z2A98A==
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="450556289"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 01:06:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-6-tvrtko.ursulin@linux.intel.com>
 <159241147774.19488.12762220143650374149@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <78b0713b-a1a6-34d3-99f8-bdff1ed8a83d@linux.intel.com>
Date: Thu, 18 Jun 2020 09:06:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159241147774.19488.12762220143650374149@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 05/10] gem_wsim: Support random buffer
 sizes
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


On 17/06/2020 17:31, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:15)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> See README for more details.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   benchmarks/gem_wsim.c  | 71 +++++++++++++++++++++++++++++++++---------
>>   benchmarks/wsim/README |  4 +++
>>   2 files changed, 61 insertions(+), 14 deletions(-)
>>
>> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
>> index 5893de38a98e..c1405596c46a 100644
>> --- a/benchmarks/gem_wsim.c
>> +++ b/benchmarks/gem_wsim.c
>> @@ -117,12 +117,18 @@ struct bond {
>>          enum intel_engine_id master;
>>   };
>>   
>> +struct work_buffer_size {
>> +       unsigned long size;
>> +       unsigned long min;
>> +       unsigned long max;
>> +};
>> +
>>   struct working_set {
>>          int id;
>>          bool shared;
>>          unsigned int nr;
>>          uint32_t *handles;
>> -       unsigned long *sizes;
>> +       struct work_buffer_size *sizes;
>>   };
>>   
>>   struct workload;
>> @@ -203,6 +209,7 @@ struct workload
>>          bool print_stats;
>>   
>>          uint32_t bb_prng;
>> +       uint32_t bo_prng;
>>   
>>          struct timespec repeat_start;
>>   
>> @@ -757,10 +764,12 @@ static int add_buffers(struct working_set *set, char *str)
>>           * 4m
>>           * 4g
>>           * 10n4k - 10 4k batches
>> +        * 4096-16k - random size in range
>>           */
>> -       unsigned long *sizes, size;
>> +       struct work_buffer_size *sizes;
>> +       unsigned long min_sz, max_sz;
>> +       char *n, *max = NULL;
>>          unsigned int add, i;
>> -       char *n;
>>   
>>          n = index(str, 'n');
>>          if (n) {
>> @@ -773,16 +782,34 @@ static int add_buffers(struct working_set *set, char *str)
>>                  add = 1;
>>          }
>>   
>> -       size = parse_size(str);
>> -       if (!size)
>> +       n = index(str, '-');
>> +       if (n) {
>> +               *n = 0;
>> +               max = ++n;
>> +       }
>> +
>> +       min_sz = parse_size(str);
>> +       if (!min_sz)
>>                  return -1;
>>   
>> +       if (max) {
>> +               max_sz = parse_size(max);
>> +               if (!max_sz)
>> +                       return -1;
>> +       } else {
>> +               max_sz = min_sz;
>> +       }
>> +
>>          sizes = realloc(set->sizes, (set->nr + add) * sizeof(*sizes));
>>          if (!sizes)
>>                  return -1;
>>   
>> -       for (i = 0; i < add; i++)
>> -               sizes[set->nr + i] = size;
>> +       for (i = 0; i < add; i++) {
>> +               struct work_buffer_size *sz = &sizes[set->nr + i];
>> +               sz->min = min_sz;
>> +               sz->max = max_sz;
>> +               sz->size = 0;
>> +       }
>>   
>>          set->nr += add;
>>          set->sizes = sizes;
>> @@ -824,7 +851,7 @@ static uint64_t engine_list_mask(const char *_str)
>>          return mask;
>>   }
>>   
>> -static void allocate_working_set(struct working_set *set);
>> +static void allocate_working_set(struct workload *wrk, struct working_set *set);
>>   
>>   #define int_field(_STEP_, _FIELD_, _COND_, _ERR_) \
>>          if ((field = strtok_r(fstart, ".", &fctx))) { \
>> @@ -1177,10 +1204,12 @@ add_step:
>>   
>>          wrk->nr_steps = nr_steps;
>>          wrk->steps = steps;
>> +       wrk->flags = flags;
>>          wrk->prio = arg->prio;
>>          wrk->sseu = arg->sseu;
>>          wrk->max_working_set_id = -1;
>>          wrk->working_sets = NULL;
>> +       wrk->bo_prng = (wrk->flags & SYNCEDCLIENTS) ? master_prng : rand();
>>   
>>          free(desc);
>>   
>> @@ -1234,7 +1263,7 @@ add_step:
>>           */
>>          for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
>>                  if (w->type == WORKINGSET && w->working_set.shared)
>> -                       allocate_working_set(&w->working_set);
>> +                       allocate_working_set(wrk, &w->working_set);
>>          }
>>   
>>          wrk->max_working_set_id = -1;
>> @@ -1267,6 +1296,7 @@ clone_workload(struct workload *_wrk)
>>          igt_assert(wrk);
>>          memset(wrk, 0, sizeof(*wrk));
>>   
>> +       wrk->flags = _wrk->flags;
>>          wrk->prio = _wrk->prio;
>>          wrk->sseu = _wrk->sseu;
>>          wrk->nr_steps = _wrk->nr_steps;
> 
> wrk->flags wasn't introduced in this patch, why are we needing to copy
> them now.
> 
> I see wrk->bo_prn = flags & SYNC above, but I haven't seem them used
> again later. They used to carry the balancer info and were setup in
> main. Am I not mistaken in thinking they still are being set in main()
> as well?

I couldn't remember but looking around looks like you are right. I'll do 
some experiments and remove it if confirmed.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
