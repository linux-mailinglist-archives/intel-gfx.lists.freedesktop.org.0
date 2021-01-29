Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D199308C6A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC8F6EBAA;
	Fri, 29 Jan 2021 18:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1376EBAA;
 Fri, 29 Jan 2021 18:30:51 +0000 (UTC)
IronPort-SDR: f1r8yXrsliwDKysnjPh3HJG/M3hVZpwwl88dfBiE2jWFri0tamrHkNoElZUXdgtNn2co3MjSZ3
 nEGxjfhGpllA==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="241985450"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="241985450"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:30:49 -0800
IronPort-SDR: TAtEMBi8iZS/iGjSW4UadjzyrnS3pvUVn5FpjVSdtUXG2CfAiKRJ48FTKJFI4DXPCRQoWLzCI8
 wGCuFe9czIIw==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389408506"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO [10.252.47.4])
 ([10.252.47.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:30:48 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210126130505.2938391-1-chris@chris-wilson.co.uk>
 <20210126130505.2938391-2-chris@chris-wilson.co.uk>
 <7b1ef598-71d0-e289-1288-a09d1b3ad977@linux.intel.com>
 <161191397768.867.9069693179059780036@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2bfce884-2fc7-4212-eebc-140608f1a6c8@linux.intel.com>
Date: Fri, 29 Jan 2021 18:30:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161191397768.867.9069693179059780036@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/sysfs_clients: Check that
 client ids are cyclic
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 29/01/2021 09:52, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-29 09:18:50)
>> On 26/01/2021 13:05, Chris Wilson wrote:
>>> The client id used is a cyclic allocator as that reduces the likelihood
>>> of userspace seeing the same id used again (and so confusing the new
>>> client as the old). Verify that each new client has an id greater than
>>> the last.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> ---
>>>    tests/i915/sysfs_clients.c | 129 +++++++++++++++++++++++++++++++------
>>>    1 file changed, 108 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/tests/i915/sysfs_clients.c b/tests/i915/sysfs_clients.c
>>> index a3a1f81e1..d2c1ebc5f 100644
>>> --- a/tests/i915/sysfs_clients.c
>>> +++ b/tests/i915/sysfs_clients.c
>>> @@ -8,6 +8,7 @@
>>>    #include <errno.h>
>>>    #include <fcntl.h>
>>>    #include <inttypes.h>
>>> +#include <limits.h>
>>>    #include <math.h>
>>>    #include <sched.h>
>>>    #include <sys/socket.h>
>>> @@ -47,6 +48,8 @@
>>>    #define assert_within_epsilon(x, ref, tolerance) \
>>>        __assert_within_epsilon(x, ref, tolerance / 100., tolerance / 100.)
>>>    
>>> +#define BUFSZ 280
>>> +
>>>    #define MI_BATCH_BUFFER_START (0x31 << 23)
>>>    #define MI_BATCH_BUFFER_END (0xa << 23)
>>>    #define MI_ARB_CHECK (0x5 << 23)
>>> @@ -75,7 +78,7 @@ static void pidname(int i915, int clients)
>>>    {
>>>        struct dirent *de;
>>>        int sv[2], rv[2];
>>> -     char buf[280];
>>> +     char buf[BUFSZ];
>>>        int me = -1;
>>>        long count;
>>>        pid_t pid;
>>> @@ -180,7 +183,7 @@ static long count_clients(int clients)
>>>    {
>>>        struct dirent *de;
>>>        long count = 0;
>>> -     char buf[280];
>>> +     char buf[BUFSZ];
>>>        DIR *dir;
>>>    
>>>        dir = fdopendir(dup(clients));
>>> @@ -229,32 +232,113 @@ static void create(int i915, int clients)
>>>        igt_assert_eq(count_clients(clients), 1);
>>>    }
>>>    
>>> +static const char *find_client(int clients, pid_t pid, char *buf)
>>> +{
>>> +     DIR *dir = fdopendir(dup(clients));
>>> +
>>> +     /* Reading a dir as it changes does not appear to be stable, SEP */
>>> +     for (int pass = 0; pass < 2; pass++) {
>>> +             struct dirent *de;
>>> +
>>> +             rewinddir(dir);
>>> +             while ((de = readdir(dir))) {
>>> +                     if (!isdigit(de->d_name[0]))
>>> +                             continue;
>>> +
>>> +                     snprintf(buf, BUFSZ, "%s/pid", de->d_name);
>>> +                     igt_sysfs_read(clients, buf, buf, sizeof(buf));
>>> +                     if (atoi(buf) != pid)
>>> +                             continue;
>>> +
>>> +                     strncpy(buf, de->d_name, BUFSZ);
>>> +                     goto out;
>>> +             }
>>> +     }
>>> +     *buf = '\0';
>>> +out:
>>> +     closedir(dir);
>>> +     return buf;
>>> +}
>>> +
>>>    static int find_me(int clients, pid_t pid)
>>>    {
>>> -     struct dirent *de;
>>> -     char buf[280];
>>> -     int me = -1;
>>> -     DIR *dir;
>>> +     char buf[BUFSZ];
>>>    
>>> -     dir = fdopendir(dup(clients));
>>> -     igt_assert(dir);
>>> -     rewinddir(dir);
>>> +     return openat(clients,
>>> +                   find_client(clients, pid, buf),
>>> +                   O_DIRECTORY | O_RDONLY);
>>> +}
>>>    
>>> -     while ((de = readdir(dir))) {
>>> -             if (!isdigit(de->d_name[0]))
>>> -                     continue;
>>> +static int reopen_directory(int fd)
>>> +{
>>> +     char buf[BUFSZ];
>>> +     int dir;
>>>    
>>> -             snprintf(buf, sizeof(buf), "%s/pid", de->d_name);
>>> -             igt_sysfs_read(clients, buf, buf, sizeof(buf));
>>> -             if (atoi(buf) != pid)
>>> -                     continue;
>>> +     snprintf(buf, sizeof(buf), "/proc/self/fd/%d", fd);
>>> +     dir = open(buf, O_RDONLY);
>>
>> Maybe O_DIRECTORY if it is open_directory.
>>
>>> +     igt_assert_fd(dir);
>>>    
>>> -             me = openat(clients, de->d_name, O_DIRECTORY | O_RDONLY);
>>> -             break;
>>> +     return dir;
>>> +}
>>> +
>>> +static unsigned int my_id(int clients, pid_t pid)
>>> +{
>>> +     char buf[BUFSZ];
>>> +
>>> +     return atoi(find_client(clients, pid, buf));
>>> +}
>>> +
>>> +static unsigned int recycle_client(int i915, int clients)
>>> +{
>>> +     int device, client;
>>> +
>>> +     device = gem_reopen_driver(i915);
>>> +     client = my_id(clients, getpid());
>>> +     close(device);
>>> +
>>> +     return client;
>>> +}
>>> +
>>> +static void recycle(int i915, int clients)
>>> +{
>>> +     const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
>>> +
>>> +     /*
>>> +      * As we open and close clients, we do not expect to reuse old ids,
>>> +      * i.e. we use a cyclic ida. This reduces the likelihood of userspace
>>> +      * watchers becoming confused and mistaking the new client as a
>>> +      * continuation of the old.
>>> +      */
>>> +     igt_require(my_id(clients, getpid()) < INT_MAX / 2);
>>
>> Hm this is a bit dodgy - it will cause "permanent" skips if running the
>> test in a loop. Just for the client > last assert below? I guess it is
>> hard to handle wrap with forked clients.
> 
> It takes about a day to reach 2 billion ids on a fast machine. For CI, I
> think we are safe.
> 
> We could do the (int)(A - B) > 0 to handle the wrap, that would be more
> sensible.
> 
> [...]
> 
>> Okay better than nothing.
> 
> But first we need to resolve the failure to find itself. :(

Forgot about that.. Start with one child for now?

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
