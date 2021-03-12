Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E89E338B86
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 12:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE38E6E0EA;
	Fri, 12 Mar 2021 11:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909056E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 11:33:05 +0000 (UTC)
IronPort-SDR: BjOQQfaJy1EPnFRgTrH6mHf77ip0yCHNT9EzHuGCpnPM7lzn6F63BYeRQ2FpZLo+zk4n80Kbwa
 9va5BsfctyZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250183267"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="250183267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 03:33:04 -0800
IronPort-SDR: csFsYlfKEa7X+c/Hlpzjm2pV1G1vMSMZNVHivEy2wZmuxdndyNeKR3kCBu6iAtwDD+m21M6XLP
 VQDpKJ58WGTA==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="404390804"
Received: from abdelh1x-mobl.amr.corp.intel.com (HELO [10.252.50.43])
 ([10.252.50.43])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 03:33:03 -0800
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20210310215007.782649-1-jason@jlekstrand.net>
 <20210311181733.1048640-1-jason@jlekstrand.net>
 <39bfc60f-cc5a-d793-5cea-e1b8e0751d62@linux.intel.com>
 <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0cdae8c1-df51-be5f-a331-e541dbbd191b@linux.intel.com>
Date: Fri, 12 Mar 2021 12:33:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHMirGmPp3UrFTr3vPv-EVbw1wjveAYWZ=Xdc0KF8hRb9g@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 2021-03-12 om 11:56 schreef Matthew Auld:
> On Fri, 12 Mar 2021 at 09:50, Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>> On 11/03/2021 18:17, Jason Ekstrand wrote:
>>> The Vulkan driver in Mesa for Intel hardware never uses relocations if
>>> it's running on a version of i915 that supports at least softpin which
>>> all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12+ is
>>> only supported by iris which never uses relocations.  The older i965
>>> driver in Mesa does use relocations but it only supports Intel hardware
>>> through Gen11 and has been deprecated for all hardware Gen9+.  The
>>> compute driver also never uses relocations.  This only leaves the media
>>> driver which is supposed to be switching to softpin going forward.
>>> Making softpin a requirement for all future hardware seems reasonable.
>>>
>>> There is one piece of hardware enabled by default in i915: RKL which was
>>> enabled by e22fa6f0a976 which has not yet landed in drm-next so this
>>> almost but not really a userspace API change for RKL.  If it becomes a
>>> problem, we can always add !IS_ROCKETLAKE(eb->i915) to the condition.
>>>
>>> Rejecting relocations starting with newer Gen12 platforms has the
>>> benefit that we don't have to bother supporting it on platforms with
>>> local memory.  Given how much CPU touching of memory is required for
>>> relocations, not having to do so on platforms where not all memory is
>>> directly CPU-accessible carries significant advantages.
>>>
>>> v2 (Jason Ekstrand):
>>>   - Allow TGL-LP platforms as they've already shipped
>>>
>>> v3 (Jason Ekstrand):
>>>   - WARN_ON platforms with LMEM support in case the check is wrong
>>>
>>> v4 (Jason Ekstrand):
>>>   - Call out Rocket Lake in the commit message
>>>
>>> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
>>> Acked-by: Keith Packard <keithp@keithp.com>
>>> Cc: Dave Airlie <airlied@redhat.com>
>>> Cc: Daniel Vetter <daniel.vetter@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
>>>   1 file changed, 12 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> index 99772f37bff60..b02dbd16bfa03 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>> @@ -1764,7 +1764,8 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
>>>       return err;
>>>   }
>>>
>>> -static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>>> +static int check_relocations(const struct i915_execbuffer *eb,
>>> +                          const struct drm_i915_gem_exec_object2 *entry)
>>>   {
>>>       const char __user *addr, *end;
>>>       unsigned long size;
>>> @@ -1774,6 +1775,14 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>>>       if (size == 0)
>>>               return 0;
>>>
>>> +     /* Relocations are disallowed for all platforms after TGL-LP */
>>> +     if (INTEL_GEN(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>>> +             return -EINVAL;
>> I still recommend ENODEV as more inline with our established error
>> codes. (Platform does not support vs dear userspace you messed up your
>> flags, modes, whatever.)
>>
>>> +
>>> +     /* All discrete memory platforms are Gen12 or above */
>>> +     if (WARN_ON(HAS_LMEM(eb->i915)))
>>> +             return -EINVAL;
>> What was the conclusion on value of supporting fake lmem?
> >From the previous thread, nothing is currently using it, we did have a
> dedicated machine in CI but that has been gone for some months it
> seems, so it might already be broken. Also its use was limited only to
> the live selftests, which can't even hit this path. The plan was to
> eventually remove it, since supporting both real and fake lmem in the
> same tree is likely more effort than it's worth.

I think -EINVAL is fine, but not against -ENODEV either, up to author imo.

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
