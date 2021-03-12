Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F7933911A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 16:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF16E6F88D;
	Fri, 12 Mar 2021 15:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACD36F88D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 15:20:34 +0000 (UTC)
IronPort-SDR: Rrp6vP+ZcTJ29wOq6LvacEa4MgB6cFthA4ELpRdpc2UdVDWUmttPiBKkeJ6+hrsB1JyfS+wItZ
 bkra1upUAV7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="168759529"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="168759529"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 07:20:34 -0800
IronPort-SDR: z8CWhNNv+7vBwhkpG0Z85aCUMTrZwTvR9VotI8adDMOA4FDSFSHrgcqACYI1jJjZ8o07zPNU0n
 cNqmf/l7t72w==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="411033810"
Received: from nstrumtz-desk02.ger.corp.intel.com (HELO [10.214.213.111])
 ([10.214.213.111])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 07:20:30 -0800
To: Jason Ekstrand <jason@jlekstrand.net>,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311181733.1048640-1-jason@jlekstrand.net>
 <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
 <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
 <25050bac-d576-bfdc-b318-21bcc8afd6f8@linux.intel.com>
 <CAM0jSHPMaKHnJFynL6XBZ8DvB9xTK_zeGo3PJmZedXNCWg-iLA@mail.gmail.com>
 <CAOFGe96BJKupsL8RysPQAbA-p0nvuHJw2r5Hp4cCeynyFBc5ww@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3204ccdb-37b1-f2b5-6170-2a88cd4be8bd@linux.intel.com>
Date: Fri, 12 Mar 2021 15:20:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAOFGe96BJKupsL8RysPQAbA-p0nvuHJw2r5Hp4cCeynyFBc5ww@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Drop relocation support on
 all new hardware (v4)
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/03/2021 14:52, Jason Ekstrand wrote:
> On Fri, Mar 12, 2021 at 6:17 AM Matthew Auld
> <matthew.william.auld@gmail.com> wrote:
>>
>> On Fri, 12 Mar 2021 at 11:47, Tvrtko Ursulin
>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>
>>>
>>> On 12/03/2021 10:56, Matthew Auld wrote:
>>>> On Fri, 12 Mar 2021 at 09:50, Tvrtko Ursulin
>>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>>
>>>>>
>>>>> On 11/03/2021 18:17, Jason Ekstrand wrote:
>>>>>> The Vulkan driver in Mesa for Intel hardware never uses relocations if
>>>>>> it's running on a version of i915 that supports at least softpin which
>>>>>> all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
>>>>>> only supported by iris which never uses relocations.  The older i965
>>>>>> driver in Mesa does use relocations but it only supports Intel hardware
>>>>>> through Gen11 and has been deprecated for all hardware Gen9+.  The
>>>>>> compute driver also never uses relocations.  This only leaves the media
>>>>>> driver which is supposed to be switching to softpin going forward.
>>>>>> Making softpin a requirement for all future hardware seems reasonable.
>>>>>>
>>>>>> There is one piece of hardware enabled by default in i915: RKL which was
>>>>>> enabled by e22fa6f0a976 which has not yet landed in drm-next so this
>>>>>> almost but not really a userspace API change for RKL.  If it becomes a
>>>>>> problem, we can always add !IS_ROCKETLAKE(eb->i915) to the condition.
>>>>>>
>>>>>> Rejecting relocations starting with newer Gen12 platforms has the
>>>>>> benefit that we don't have to bother supporting it on platforms with
>>>>>> local memory.  Given how much CPU touching of memory is required for
>>>>>> relocations, not having to do so on platforms where not all memory is
>>>>>> directly CPU-accessible carries significant advantages.
>>>>>>
>>>>>> v2 (Jason Ekstrand):
>>>>>>     - Allow TGL-LP platforms as they've already shipped
>>>>>>
>>>>>> v3 (Jason Ekstrand):
>>>>>>     - WARN_ON platforms with LMEM support in case the check is wrong
>>>>>>
>>>>>> v4 (Jason Ekstrand):
>>>>>>     - Call out Rocket Lake in the commit message
>>>>>>
>>>>>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
>>>>>> Acked-by: Keith Packard <keithp@keithp.com>
>>>>>> Cc: Dave Airlie <airlied@redhat.com>
>>>>>> Cc: Daniel Vetter <daniel.vetter@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
>>>>>>     1 file changed, 12 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> index 99772f37bff60..b02dbd16bfa03 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
>>>>>>         return err;
>>>>>>     }
>>>>>>
>>>>>> -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>>>>>> +static int check_relocations(const struct i915_execbuffer *eb,
>>>>>> +                          const struct drm_i915_gem_exec_object2 *entry)
>>>>>>     {
>>>>>>         const char __user *addr, *end;
>>>>>>         unsigned long size;
>>>>>> @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>>>>>>         if (size == 0)
>>>>>>                 return 0;
>>>>>>
>>>>>> +     /* Relocations are disallowed for all platforms after TGL-LP */
>>>>>> +     if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>>>>>> +             return -EINVAL;
>>>>>
>>>>> I still recommend ENODEV as more inline with our established error
>>>>> codes. (Platform does not support vs dear userspace you messed up your
>>>>> flags, modes, whatever.)
> 
> I don't know that I care that much what color we paint this shed.  I
> just want it decided so we can all move on.  Here's a few comments:
> 
>   -ENODEV, at least based on the DRM error code docs doesn't make much
> sense to me because the device is very much still there, you just did
> something wrong.
> 
>   -EOPNOTSUPP I could see but the operation of execbuf is very much
> supported, just not with this set of parameters.  This makes sense to
> me for the removal of pread/pwrite but not here.
> 
>   -EINVAL is always a correct choice but tells you nothing.  On the
> other hand, this is what's returned by drm_invalid_op which is what we
> use when we entirely delete a feature.
> 
> As someone who has spent way too much of their life trying to figure
> out why execbuffer is returning -EINVAL, I really don't think one more
> makes it any worse.  If anything, -EINVAL has the advantage that you
> can smash some #defines at the top of the file and get dmesg stuff
> which can be pretty useful.
> 
> In any case, could we please pick a color so I can send a, hopefully
> final, new version. :-)

EINVAL is not the end of the world for me and you have some r-bs and 
acks already so your call.

I was simply pointing our how to stay consistent with the other ioctls 
in i915. Because to me consistency trumps a lot of other things. So if 
we go along the route of ENODEV makes no sense argument, then I wouldn't 
be far from suggesting to evaluate all of the existing ones as well.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
