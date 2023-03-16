Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7E96BCA4B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:04:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D506210EC14;
	Thu, 16 Mar 2023 09:04:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7698410EC14;
 Thu, 16 Mar 2023 09:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678957477; x=1710493477;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LBX+V/F2H/Icf6lS5m4ZyqQ3RMKmGBX/x0laSgInieM=;
 b=i/Y+H0cSLtLq/FNFgdvNyHo8QY7Tw9yc59Y7Qgl4BSkdKqw+j+lQYM22
 RJa6uMT1RMfrPbUHoYZVt4xjKd6Nk2NxQ1HLx2xrayeDcRwlwVlGxAutA
 SRWVGOSt/qMVuMwubKPPw4Zhl+bJvUqhZdzm+5u6yV/CIjJxYnnfoanrX
 AU7SzH1O3Gw5N8eEnuqLP9XXEGBqGxmtF7K0A1rmbaSOlSvwuCgnleCh8
 QcBgaTA3NYO4Y40OXtuLR8Zd9CYr09vFceL+TDrQ+0t7WQRz19RPtFVFr
 O/b/GNjUzEbXo9OnsNdV/3sxZcww6bJKCiamCjFkf+2M8xn5JlGGhTiW6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402800948"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="402800948"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="679831878"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="679831878"
Received: from kflynn1-mobl3.ger.corp.intel.com (HELO [10.213.236.25])
 ([10.213.236.25])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:04:26 -0700
Message-ID: <170dfb87-2f42-2ea3-968f-18415509a879@linux.intel.com>
Date: Thu, 16 Mar 2023 09:04:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
 <ZBC8GxZjeR5+bHOm@orsosgc001.jf.intel.com>
 <6f83991b-e4d6-b573-9e1c-074f2c612ff7@linux.intel.com>
 <ZBIi1269Dm/++c9t@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZBIi1269Dm/++c9t@orsosgc001.jf.intel.com>
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


On 15/03/2023 19:56, Umesh Nerlige Ramappa wrote:
> On Wed, Mar 15, 2023 at 09:20:49AM +0000, Tvrtko Ursulin wrote:
>>
>> Hi Umesh,
>>
>> On 14/03/2023 18:25, Umesh Nerlige Ramappa wrote:
>>> lgtm,
>>>
>>> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> Thanks - I had one second thought though. See below please.
>>
>>> On Tue, Mar 14, 2023 at 12:17:40PM +0000, Tvrtko Ursulin wrote:
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> On a slow machine, or with many processes and/or file descriptors to
>>>> parse, the period of the scanning loop can drift significantly from the
>>>> assumed value. This results in artificially inflated client busyness
>>>> percentages.
>>>>
>>>> To alleviate the issue take some real timestamps and use actual elapsed
>>>> time when calculating relative busyness.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> ---
>>>> tools/intel_gpu_top.c | 39 ++++++++++++++++++++++++++++++++++++++-
>>>> 1 file changed, 38 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>>> index e13e35b71f4b..af4b350da8e4 100644
>>>> --- a/tools/intel_gpu_top.c
>>>> +++ b/tools/intel_gpu_top.c
>>>> @@ -43,6 +43,7 @@
>>>> #include <sys/types.h>
>>>> #include <unistd.h>
>>>> #include <termios.h>
>>>> +#include <time.h>
>>>> #include <sys/sysmacros.h>
>>>>
>>>> #include "igt_perf.h"
>>>> @@ -2524,6 +2525,38 @@ static void show_help_screen(void)
>>>> "\n");
>>>> }
>>>>
>>>> +static int gettime(struct timespec *ts)
>>>> +{
>>>> +    memset(ts, 0, sizeof(*ts));
>>>> +
>>>> +#ifdef CLOCK_MONOTONIC_RAW
>>>> +    if (!clock_gettime(CLOCK_MONOTONIC_RAW, ts))
>>>> +        return 0;
>>>> +#endif
>>>> +#ifdef CLOCK_MONOTONIC_COARSE
>>>> +    if (!clock_gettime(CLOCK_MONOTONIC_COARSE, ts))
>>>> +        return 0;
>>>> +#endif
>>
>> So I copied this (with some edits) from igt_core.c but I think I 
>> should actually remove the CLOCK_MONOTONIC_COARSE option. The usage in 
>> intel_gpu_top is not performance sensitive and tick granularity 
>> actually defeats to point of this patch.
>>
>> Okay to keep the r-b if I remove it?
> 
> Sure, okay to keep the R-b.

Thanks, pushed!

Regards,

Tvrtko
