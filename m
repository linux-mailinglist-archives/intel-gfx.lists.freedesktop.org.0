Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BDB6BABF8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 10:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59F210E028;
	Wed, 15 Mar 2023 09:20:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7BD010E028;
 Wed, 15 Mar 2023 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678872053; x=1710408053;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VToJ+hT7t5Ir5fX7X1PbI/PvrKbWdzgNvXOVGo94AaU=;
 b=YHD8/ZxglS5xScS2yV5P+3ZbFJvnSpkgPFrFHxv0/zM/Sx4T0YpJ1CZ4
 Z3kx0JhwFdbjL2GyZuLnW4f1+LQE3fn54CIhTUbK5jB4c9NOPN/zdIGnA
 H0saHHGYapyXmSbtRbpIddpKBDNRPISmXNB7meK1hX1padFbpqZtuMlWa
 vsU7l6yMbyt8qdaDpt6O/tLaUS6Wbvm5ILpEwPmVfyYUQRq+eTUsj8IT1
 KWWe2DrH50qc0TXfG5yMD2dqc7MuHWA4XPKM8DiEtcyhYFSKnc5HHH5+U
 7BvL/B+bdB82VeOn5NQsxYbzEIGz8dP1OcycmlPkeQ2m4xjvZTcrmoP+Q A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="365333116"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="365333116"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 02:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="629387359"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="629387359"
Received: from mchanan-mobl.ger.corp.intel.com (HELO [10.213.222.39])
 ([10.213.222.39])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 02:20:51 -0700
Message-ID: <6f83991b-e4d6-b573-9e1c-074f2c612ff7@linux.intel.com>
Date: Wed, 15 Mar 2023 09:20:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
 <ZBC8GxZjeR5+bHOm@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZBC8GxZjeR5+bHOm@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Use actual period when
 calculating client busyness
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Umesh,

On 14/03/2023 18:25, Umesh Nerlige Ramappa wrote:
> lgtm,
> 
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks - I had one second thought though. See below please.

> On Tue, Mar 14, 2023 at 12:17:40PM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> On a slow machine, or with many processes and/or file descriptors to
>> parse, the period of the scanning loop can drift significantly from the
>> assumed value. This results in artificially inflated client busyness
>> percentages.
>>
>> To alleviate the issue take some real timestamps and use actual elapsed
>> time when calculating relative busyness.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>> tools/intel_gpu_top.c | 39 ++++++++++++++++++++++++++++++++++++++-
>> 1 file changed, 38 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index e13e35b71f4b..af4b350da8e4 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -43,6 +43,7 @@
>> #include <sys/types.h>
>> #include <unistd.h>
>> #include <termios.h>
>> +#include <time.h>
>> #include <sys/sysmacros.h>
>>
>> #include "igt_perf.h"
>> @@ -2524,6 +2525,38 @@ static void show_help_screen(void)
>> "\n");
>> }
>>
>> +static int gettime(struct timespec *ts)
>> +{
>> +    memset(ts, 0, sizeof(*ts));
>> +
>> +#ifdef CLOCK_MONOTONIC_RAW
>> +    if (!clock_gettime(CLOCK_MONOTONIC_RAW, ts))
>> +        return 0;
>> +#endif
>> +#ifdef CLOCK_MONOTONIC_COARSE
>> +    if (!clock_gettime(CLOCK_MONOTONIC_COARSE, ts))
>> +        return 0;
>> +#endif

So I copied this (with some edits) from igt_core.c but I think I should 
actually remove the CLOCK_MONOTONIC_COARSE option. The usage in 
intel_gpu_top is not performance sensitive and tick granularity actually 
defeats to point of this patch.

Okay to keep the r-b if I remove it?

Regards,

Tvrtko

>> +
>> +    return clock_gettime(CLOCK_MONOTONIC, ts);
>> +}
>> +
>> +static unsigned long elapsed_us(struct timespec *prev, unsigned int 
>> period_us)
>> +{
>> +    unsigned long elapsed;
>> +    struct timespec now;
>> +
>> +    if (gettime(&now))
>> +        return period_us;
>> +
>> +    elapsed = ((now.tv_nsec - prev->tv_nsec) / 1000 +
>> +               (unsigned long)USEC_PER_SEC * (now.tv_sec - 
>> prev->tv_sec));
>> +
>> +    *prev = now;
>> +
>> +    return elapsed;
>> +}
>> +
>> int main(int argc, char **argv)
>> {
>>     unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>> @@ -2537,6 +2570,7 @@ int main(int argc, char **argv)
>>     char *pmu_device, *opt_device = NULL;
>>     struct igt_device_card card;
>>     char *codename = NULL;
>> +    struct timespec ts;
>>
>>     /* Parse options */
>>     while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
>> @@ -2690,6 +2724,7 @@ int main(int argc, char **argv)
>>
>>     pmu_sample(engines);
>>     scan_clients(clients, false);
>> +    gettime(&ts);
>>     codename = igt_device_get_pretty_name(&card, false);
>>
>>     if (output_mode == JSON)
>> @@ -2698,6 +2733,7 @@ int main(int argc, char **argv)
>>     while (!stop_top) {
>>         struct clients *disp_clients;
>>         bool consumed = false;
>> +        unsigned int scan_us;
>>         int j, lines = 0;
>>         struct winsize ws;
>>         struct client *c;
>> @@ -2720,6 +2756,7 @@ int main(int argc, char **argv)
>>         t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
>>
>>         disp_clients = scan_clients(clients, true);
>> +        scan_us = elapsed_us(&ts, period_us);
>>
>>         if (stop_top)
>>             break;
>> @@ -2757,7 +2794,7 @@ int main(int argc, char **argv)
>>
>>                     lines = print_client(c, engines, t,
>>                                  lines, con_w,
>> -                                 con_h, period_us,
>> +                                 con_h, scan_us,
>>                                  &class_w);
>>                 }
>>
>> -- 
>> 2.37.2
>>
