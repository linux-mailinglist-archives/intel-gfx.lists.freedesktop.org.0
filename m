Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AD9134F5C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 23:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973D36E348;
	Wed,  8 Jan 2020 22:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92566E343;
 Wed,  8 Jan 2020 22:28:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 14:28:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="423056826"
Received: from rmfosha-dev-1.fm.intel.com (HELO [10.19.83.123])
 ([10.19.83.123])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jan 2020 14:28:35 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200104153746.2175482-1-chris@chris-wilson.co.uk>
 <20200105010643.2207837-1-chris@chris-wilson.co.uk>
 <65f5226b-9f8d-9442-1131-4c4768cfa41c@linux.intel.com>
 <157839316240.2273.2749522722629040780@skylake-alporthouse-com>
From: "Fosha, Robert M" <robert.m.fosha@intel.com>
Message-ID: <2d8e70a0-69e7-a448-6b1f-e477dcf8dc9d@intel.com>
Date: Wed, 8 Jan 2020 14:19:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <157839316240.2273.2749522722629040780@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf: Find the
 associated perf-type for a particular device
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
Cc: igt-dev@lists.freedesktop.org, saurabhg.gupta@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/7/20 2:32 AM, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-01-07 09:53:39)
>> +Arek, Saurabhg
>>
>> On 05/01/2020 01:06, Chris Wilson wrote:
>>> Since with multiple devices, we may have multiple different perf_pmu
>>> each with their own type, we want to find the right one for the job.
>>>
>>> The tests are run with a specific fd, from which we can extract the
>>> appropriate bus-id and find the associated perf-type. The performance
>>> monitoring tools are a little more general and not yet ready to probe
>>> all device or bind to one in particular, so we just assume the default
>>> igfx for the time being.
>>>
>>> v2: Extract the bus address from out of sysfs
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: "Robert M. Fosha" <robert.m.fosha@intel.com>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>

Tested-by: Robert M. Fosha <robert.m.fosha@intel.com>

>>> ---
>>>    benchmarks/gem_wsim.c          |  4 +-
>>>    lib/igt_perf.c                 | 84 +++++++++++++++++++++++++++++++---
>>>    lib/igt_perf.h                 | 13 ++++--
>>>    overlay/gem-interrupts.c       |  2 +-
>>>    overlay/gpu-freq.c             |  4 +-
>>>    overlay/gpu-top.c              | 12 ++---
>>>    overlay/rc6.c                  |  2 +-
>>>    tests/i915/gem_ctx_freq.c      |  2 +-
>>>    tests/i915/gem_ctx_sseu.c      |  2 +-
>>>    tests/i915/gem_exec_balancer.c | 18 +++++---
>>>    tests/perf_pmu.c               | 84 ++++++++++++++++++----------------
>>>    tools/intel_gpu_top.c          |  2 +-
>>>    12 files changed, 159 insertions(+), 70 deletions(-)
>>>
>>> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
>>> index 6305e0d7a..9156fdc90 100644
>>> --- a/benchmarks/gem_wsim.c
>>> +++ b/benchmarks/gem_wsim.c
>>> @@ -2268,8 +2268,8 @@ busy_init(const struct workload_balancer *balancer, struct workload *wrk)
>>>        for (d = &engines[0]; d->id != VCS; d++) {
>>>                int pfd;
>>>    
>>> -             pfd = perf_i915_open_group(I915_PMU_ENGINE_BUSY(d->class,
>>> -                                                             d->inst),
>>> +             pfd = perf_igfx_open_group(I915_PMU_ENGINE_BUSY(d->class,
>>> +                                                             d->inst),
>>>                                           bb->fd);
>>>                if (pfd < 0) {
>>>                        if (d->id != VCS2)
>>> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>>> index e3dec2cc2..840add043 100644
>>> --- a/lib/igt_perf.c
>>> +++ b/lib/igt_perf.c
>>> @@ -4,17 +4,77 @@
>>>    #include <stdlib.h>
>>>    #include <string.h>
>>>    #include <errno.h>
>>> +#include <sys/stat.h>
>>>    #include <sys/sysinfo.h>
>>> +#include <sys/sysmacros.h>
>>>    
>>>    #include "igt_perf.h"
>>>    
>>> -uint64_t i915_type_id(void)
>>> +static char *bus_address(int i915, char *path, int pathlen)
>>> +{
>>> +     struct stat st;
>>> +     int len = -1;
>>> +     int dir;
>>> +     char *s;
>>> +
>>> +     if (fstat(i915, &st) || !S_ISCHR(st.st_mode))
>>> +             return NULL;
>>> +
>>> +     snprintf(path, pathlen, "/sys/dev/char/%d:%d",
>>> +              major(st.st_rdev), minor(st.st_rdev));
>>> +
>>> +     dir = open(path, O_RDONLY);
>>> +     if (dir != -1) {
>>> +             len = readlinkat(dir, "device", path, pathlen - 1);
>>> +             close(dir);
>>> +     }
>>> +     if (len < 0)
>>> +             return NULL;
>>> +
>>> +     path[len] = '\0';
>>> +
>>> +     /* strip off the relative path */
>>> +     s = strrchr(path, '/');
>>> +     if (s)
>>> +             memmove(path, s + 1, len - (s - path) + 1);
>>> +
>>> +     return path;
>>> +}
>>> +
>>> +const char *i915_perf_device(int i915, char *buf, int buflen)
>>> +{
>>> +#define prefix "i915-"
>>> +#define plen strlen(prefix)
>>> +
>>> +     if (!buf || buflen < plen)
>>> +             return "i915";
>>> +
>>> +     memcpy(buf, prefix, plen);
>>> +
>>> +     if (!bus_address(i915, buf + plen, buflen - plen) ||
>>> +         strcmp(buf + plen, "0000:00:02.0") == 0) /* legacy name for igfx */
>>> +             buf[plen - 1] = '\0';
>>> +
>>> +     return buf;
>>> +}
>> So DRM fd -> PCI string conversion, yes? On a glance it looks okay.
>> However Arek probably has this data as part of "[PATCH i-g-t 0/4] device
>> selection && lsgpu" (https://patchwork.freedesktop.org/series/70285/).
> If the string is known, we can use it. This simple routine is *simple*
> yet effective :)
>   
>> Also:
>>
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/52
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/51
> How lightweight are they aiming to be?
>   
>> And VLK-5588.
>>
>> This patch is overlap with #52 and then #51/VLK-5588 is about allowing
>> card selection for tools.
>>
>> How to meld the two with minimum effort? We could put this in and then
>> later replace the PCI name resolve with a library routine and re-adjust
>> tools to allow card selection via some mechanism.
> Exactly. All we need here is a name to lookup the perf type id. One
> routine to provide an introspection method for a given fd and assumption
> of i915, does not prevent better methods :)
>
> I do wonder though if we should have perf_name in our sysfs.
> -Chris

Agree with idea of adding this change now and re-adjusting if other 
mechanism is added for other tests/tools. If no other concerns from 
Tvrtko or Arek
Reviewed-by: Robert M. Fosha <robert.m.fosha@intel.com>

-Rob
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
