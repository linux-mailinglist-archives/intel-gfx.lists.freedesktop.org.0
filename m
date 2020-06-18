Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486011FECB5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 09:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 146B66EAC3;
	Thu, 18 Jun 2020 07:46:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F376EAC3
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 07:46:23 +0000 (UTC)
IronPort-SDR: LvSoF9sjm4XPB8tdVIS388O6xH9pkOPkJqXznuY8iq4rjfiaURUfAU/Q17dF1WHgNCwmoFTwqM
 yoKSBq+2KGkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="160550192"
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="160550192"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:46:22 -0700
IronPort-SDR: zF9TjlEzNZ0hT+MKkrmWvnaQh6xx+mpQRsWy5AbqVM5Uv0FfaJP3WJ9JazUoWq23JcjeAnsLBb
 2Pujg+VCw/0Q==
X-IronPort-AV: E=Sophos;i="5.73,525,1583222400"; d="scan'208";a="450550188"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 00:46:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-4-tvrtko.ursulin@linux.intel.com>
 <159241310169.19488.4644166988486362775@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e7902369-6c97-c18b-728a-038a8d8c18ff@linux.intel.com>
Date: Thu, 18 Jun 2020 08:46:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159241310169.19488.4644166988486362775@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 03/10] gem_wsim: Show workload timing
 stats
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


On 17/06/2020 17:58, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:13)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Show average/min/max workload iteration and dropped period stats when 'p'
>> command is used.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   benchmarks/gem_wsim.c | 19 +++++++++++++++----
>>   1 file changed, 15 insertions(+), 4 deletions(-)
>>
>> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
>> index 9e5bfe6a36d4..60982cb73ba7 100644
>> --- a/benchmarks/gem_wsim.c
>> +++ b/benchmarks/gem_wsim.c
>> @@ -2101,7 +2101,8 @@ static void *run_workload(void *data)
>>          struct w_step *w;
>>          int throttle = -1;
>>          int qd_throttle = -1;
>> -       int count;
>> +       int count, missed = 0;
>> +       unsigned long time_tot = 0, time_min = ULONG_MAX, time_max = 0;
>>          int i;
>>   
>>          clock_gettime(CLOCK_MONOTONIC, &t_start);
>> @@ -2121,12 +2122,19 @@ static void *run_workload(void *data)
>>                                  do_sleep = w->delay;
>>                          } else if (w->type == PERIOD) {
>>                                  struct timespec now;
>> +                               int elapsed;
>>   
>>                                  clock_gettime(CLOCK_MONOTONIC, &now);
>> -                               do_sleep = w->period -
>> -                                          elapsed_us(&wrk->repeat_start, &now);
>> +                               elapsed = elapsed_us(&wrk->repeat_start, &now);
>> +                               do_sleep = w->period - elapsed;
>> +                               time_tot += elapsed;
>> +                               if (elapsed < time_min)
>> +                                       time_min = elapsed;
>> +                               if (elapsed > time_max)
>> +                                       time_max = elapsed;
> 
> Keep the running average?

Could do but why? I already have the count so adding up total elapsed 
frame time sound easiest.

Regards,

Tvrtko

> 
>>                                  if (do_sleep < 0) {
>> -                                       if (verbose > 1)
>> +                                       missed++;
>> +                                       if (verbose > 2)
>>                                                  printf("%u: Dropped period @ %u/%u (%dus late)!\n",
>>                                                         wrk->id, count, i, do_sleep);
>>                                          continue;
>> @@ -2280,6 +2288,9 @@ static void *run_workload(void *data)
>>                  printf("%c%u: %.3fs elapsed (%d cycles, %.3f workloads/s).",
>>                         wrk->background ? ' ' : '*', wrk->id,
>>                         t, count, count / t);
>> +               if (time_tot)
>> +                       printf(" Time avg/min/max=%lu/%lu/%luus; %u missed.",
>> +                              time_tot / count, time_min, time_max, missed);
>>                  putchar('\n');
>>          }
>>   
>> -- 
>> 2.20.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
