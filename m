Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46730494BD4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D4BF10E5E3;
	Thu, 20 Jan 2022 10:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475E810E5D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675016; x=1674211016;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=DQkM38f0eWqhIQuzkz5Sqbby6fPDqMkUOyK0uhJfXCI=;
 b=GNhmsBm8jkn9Z7P8JRvbmmsLMP6vkLZeMxrufe3TtOBRAnmPA6uMZlLC
 U5SGdPT1CnN0ebsr7Cn5FJETnvMT3/AlivfOsDz6uSmeArQrYjSt+HOyV
 0+rF2WPrZtZ3kxbDMEJHZwHiWFu0pKqpwsz6sttMp1Q1FyWE2yXpfUL+p
 EmcS9snFKRwxqxcwQUw3z3dQASDt/MyQAAAkR49Y5VpDv9aP/WBZthDym
 /gpgBP3tMq+xBObIlZRO7FTuhjqQ3tpPk+ChFW60VclIgb9yrokJcAN3N
 p6Qez/PK93yctUmaS5N1oD2/XFcrAS7J0kw9xadKZu/a/97s6ATRNxbaH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245520192"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245520192"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:36:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="767557043"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.213.207.182])
 ([10.213.207.182])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:36:55 -0800
Message-ID: <8f9c064b-76fc-7fd4-afdc-2545ebd7ca57@linux.intel.com>
Date: Thu, 20 Jan 2022 10:36:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220105100520.976092-1-jani.nikula@intel.com>
 <20220105100520.976092-2-jani.nikula@intel.com>
 <170a7507-ff7e-204f-eba3-89571ab87842@linux.intel.com>
 <875yqytqv4.fsf@intel.com>
 <bee03d1e-06dd-6243-e711-ab8d7c7081bb@linux.intel.com>
 <87ee5mjp7h.fsf@intel.com>
 <0a340da0-ccdc-c90f-b181-1f0ad3d5a440@linux.intel.com>
 <87wniwasil.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87wniwasil.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uncore: rename
 i915_reg_read_ioctl intel_uncore_reg_read_ioctl
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/01/2022 11:12, Jani Nikula wrote:
> On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 05/01/2022 13:18, Jani Nikula wrote:
>>> On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>>> On 05/01/2022 10:32, Jani Nikula wrote:
>>>>> On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>>>>> On 05/01/2022 10:05, Jani Nikula wrote:
>>>>>>> Follow the usual naming convention.
>>>>>>
>>>>>> But intel_uncore_ prefix usually means functions takes intel_uncore as
>>>>>> the first argument.
>>>>>>
>>>>>> Maybe solution here is that i915_reg_read_ioctl does not belong in
>>>>>> intel_uncore.c, it being the UAPI layer thing? I guess arguments could
>>>>>> be made for either way.
>>>>>
>>>>> My position is that the function and file prefixes go hand in
>>>>> hand. You'll always know where to place a function, and you'll always
>>>>> know where the function is to be found.
>>>>>
>>>>> If you can *also* make the context argument follow the pattern, it's
>>>>> obviously better, and indicates the division to files is working out
>>>>> nicely. However, in a lot of cases you'll need to pass struct
>>>>> drm_i915_private or similar as the first parameter to e.g. init
>>>>> functions. It can't be the rigid rule.
>>>>>
>>>>> I'm fine with moving the entire function somewhere else, as long as the
>>>>> declaration is not in i915_drv.h. There's no longer a i915_drv.c, and
>>>>> i915_drv.h should not have function declarations at all.
>>>>
>>>> Yes I agree it cannot be a rigid rule. I just that it feels
>>>> intel_uncore.[hc] is too low level to me to hold an ioctl
>>>> implementation, and header actually feels wrong to have the declaration.
>>>> Not least it is about _one_ of the uncores, while the ioctl is not
>>>> operating on that level, albeit undefined at the moment how exactly it
>>>> would work for multi-tile.
>>>>
>>>> Would it be too early, or unwarranted at this point, to maybe consider
>>>> adding i915_ioctls.[hc]?
>>>
>>> Then the conversation would be about putting together a ton of unrelated
>>> functions where the only thing in common is that they're an ioctl
>>> implementation. Arguably many of them would have less in common than the
>>> reg read ioctl has with uncore!
>>
>> I imagined it as a place for ioctls which don't fit anywhere else, like
>> it this case it is not a family of ioctls but and odd one out. So yes,
>> first "problem" would be there is only one to put there and no line of
>> sight for others.
>>
>>> And when is it okay to put an ioctl in the i915_ioctls.c file and when
>>> is it warranted to put it somewhere else? It's just a different set of
>>> problems.
>>
>> When it does not fit anywhere else?
>>
>>>> I like the i915_ prefix of ioctls for consistency.. i915_getparam_ioctl,
>>>> i915_query_ioctl, i915_perf_..., i915_gem_....
>>>
>>> The display ioctls have intel_ prefix anyway. It's the _ioctl suffix
>>> that we use.
>>>
>>> Again, my main driver here is cleaning up i915_drv.h. I can shove the
>>> reg read ioctl somewhere other than intel_uncore.[ch] too. But as it
>>> stands, the only alternative that seems better than intel_uncore.[ch] at
>>> the moment is adding a dedicated file for a 60-line function.
>>
>> I understand your motivation and I wouldn't nack your efforts, but I
>> also cannot yet make myself ack it. Is 60 lines so bad? Lets see..
>>
>> $ find . -name "*.c" -print0 | xargs -0 wc -l | sort -nr
>> ...
>>        59 ./selftests/mock_request.c
>>        59 ./gt/uc/intel_uc_debugfs.c
>>        59 ./gem/i915_gemfs.c
>>        52 ./selftests/igt_mmap.c
>>        51 ./selftests/igt_reset.c
>>        49 ./selftests/mock_uncore.c
>>        47 ./selftests/igt_atomic.c
>>        36 ./gt/uc/intel_huc_debugfs.c
>>        36 ./gt/intel_gt_engines_debugfs.c
>>        35 ./selftests/igt_flush_test.c
>>        34 ./selftests/librapl.c
>>        34 ./gvt/trace_points.c
>>        29 ./gt/selftests/mock_timeline.c
>>        27 ./gt/selftest_engine.c
>>        26 ./gt/uc/intel_huc_fw.c
>>        15 ./i915_config.c
>>        14 ./i915_trace_points.c
>>         9 ./display/intel_display_trace.c
>>
>> So kind of meh, wouldn't be first. I'd add a dedicated file just for the
>> benefit of being able to legitimately keep the i915_reg_read_ioctl name.
>> Come multi-tile it may get company. Even though at the moment I am not
>> aware anyone is trying to add multi-tile aware reg read, but I expect
>> there will be need as long as need for the existing one exists.
> 
> So this got stalled a bit, and sidestepped from the main goal of just
> cleaning up i915_drv.h from the clutter that absolutely does not belong
> there.
> 
> Can we just merge patch 1, leave further cleanup to follow-up, and move
> on?

Sorry but I don't think the ioctl belongs in gt/intel_uncore.h either so 
I can't make myself ack it. But I am not nacking it either, as said 
before, if you find someone else to support it.

I would add i915_ioctls.[ch] even if they hold just this one.

Regards,

Tvrtko
