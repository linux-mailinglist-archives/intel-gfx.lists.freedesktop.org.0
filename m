Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB7078BA6B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 23:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B14110E0E6;
	Mon, 28 Aug 2023 21:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116EF10E0E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693258974; x=1724794974;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AWOCYu3r3ku7y/o8qJj5ZZgs7SRz99QyCWr6efO6CG4=;
 b=jKTy88g7NM03iUUYcbf6CEJM+bUw7tHeW9n9+Bsg75eUk9EQV8Xi+I2/
 RzZlwQlQtvDBiGMh8jyvDZSDfZCK73l5F3l3TBlCi03ltGTKhgq1xZB/n
 xIBvd8z3kaI/W8fgFREBLb5UFMHwoQooGHtdd0ZGBrozwQsqWZEdLasI2
 KBIg01IEa0OgCzhq7M04xjUguyBLZmEBW9rT9idn/43bMYPZm/WP9GD3z
 8bpiE7AXOKZ8WYpa84s+m5uhkLDSBikcjgNiB1/qrg/+/zjNmj/HIGbc2
 /Gxno2n1nHW3k23TaiwPWFToJmSehVV8gD8d74P3YjdHIPJRFbMvTXa8/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="365415571"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="365415571"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 14:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="985058680"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="985058680"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 28 Aug 2023 14:42:50 -0700
Received: from [10.249.131.165] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.131.165])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E36293496C;
 Mon, 28 Aug 2023 22:42:49 +0100 (IST)
Message-ID: <1de9f939-1164-de25-9410-279f4558ebaa@intel.com>
Date: Mon, 28 Aug 2023 23:42:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-US
To: Linyu Yuan <quic_linyyuan@quicinc.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
 <875y534r88.fsf@intel.com> <336c1090-e15f-03f5-7fa3-7fe3784dff5d@quicinc.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <336c1090-e15f-03f5-7fa3-7fe3784dff5d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: fix compile issue of
 guc_klvs_abi.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 25.08.2023 07:50, Linyu Yuan wrote:
> 
> On 8/25/2023 1:37 PM, Jani Nikula wrote:
>> On Fri, 25 Aug 2023, Linyu Yuan <quic_linyyuan@quicinc.com> wrote:
>>> GCC report GUC_KLV_0_KEY and GUC_KLV_0_LEN is not constant when do
>>> preprocessing.
>> Please paste the actual compiler warning.
> 
> 
>   CC      drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
> In file included from <command-line>:0:0:
> In function ‘__guc_context_policy_add_priority.isra.47’,
>     inlined from ‘__guc_context_set_prio.isra.48’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3332:3,
>     inlined from ‘guc_context_set_prio’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3360:2:
> ././include/linux/compiler_types.h:397:38: error: call to
> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
> mask is not constant
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                       ^
> ././include/linux/compiler_types.h:378:4: note: in definition of macro
> ‘__compiletime_assert’
>     prefix ## suffix();    \
>     ^~~~~~
> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
> ‘_compiletime_assert’
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>   ^~~~~~~~~~~~~~~~~~~
> ./include/linux/build_bug.h:39:37: note: in expansion of macro
> ‘compiletime_assert’
>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                      ^~~~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:65:3: note: in expansion of macro
> ‘BUILD_BUG_ON_MSG’
>    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>    ^~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:114:3: note: in expansion of macro
> ‘__BF_FIELD_CHECK’
>    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
> expansion of macro ‘FIELD_PREP’
>    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>    ^~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>  ^~~~~~~~~~~~~~~~~~~~~~~
> In function ‘__guc_context_policy_add_preemption_timeout.isra.51’,
>     inlined from ‘__guc_context_set_preemption_timeout’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3005:3:
> ././include/linux/compiler_types.h:397:38: error: call to
> ‘__compiletime_assert_1793’ declared with attribute error: FIELD_PREP:
> mask is not constant
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                       ^
> ././include/linux/compiler_types.h:378:4: note: in definition of macro
> ‘__compiletime_assert’
>     prefix ## suffix();    \
>     ^~~~~~
> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
> ‘_compiletime_assert’
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>   ^~~~~~~~~~~~~~~~~~~
> ./include/linux/build_bug.h:39:37: note: in expansion of macro
> ‘compiletime_assert’
>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                      ^~~~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:65:3: note: in expansion of macro
> ‘BUILD_BUG_ON_MSG’
>    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>    ^~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:114:3: note: in expansion of macro
> ‘__BF_FIELD_CHECK’
>    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
> expansion of macro ‘FIELD_PREP’
>    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>    ^~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2468:1: note: in
> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>  MAKE_CONTEXT_POLICY_ADD(preemption_timeout, PREEMPTION_TIMEOUT)
>  ^~~~~~~~~~~~~~~~~~~~~~~
> In function ‘__guc_context_policy_add_priority.isra.47’,
>     inlined from ‘__guc_add_request’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
> ././include/linux/compiler_types.h:397:38: error: call to
> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
> mask is not constant
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                       ^
> ././include/linux/compiler_types.h:378:4: note: in definition of macro
> ‘__compiletime_assert’
>     prefix ## suffix();    \
>     ^~~~~~
> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
> ‘_compiletime_assert’
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>   ^~~~~~~~~~~~~~~~~~~
> ./include/linux/build_bug.h:39:37: note: in expansion of macro
> ‘compiletime_assert’
>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                      ^~~~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:65:3: note: in expansion of macro
> ‘BUILD_BUG_ON_MSG’
>    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>    ^~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:114:3: note: in expansion of macro
> ‘__BF_FIELD_CHECK’
>    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
> expansion of macro ‘FIELD_PREP’
>    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>    ^~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>  ^~~~~~~~~~~~~~~~~~~~~~~
> In function ‘__guc_context_policy_add_priority.isra.47’,
>     inlined from ‘register_context’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
> ././include/linux/compiler_types.h:397:38: error: call to
> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
> mask is not constant
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                       ^
> ././include/linux/compiler_types.h:378:4: note: in definition of macro
> ‘__compiletime_assert’
>     prefix ## suffix();    \
>     ^~~~~~
> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
> ‘_compiletime_assert’
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>   ^~~~~~~~~~~~~~~~~~~
> ./include/linux/build_bug.h:39:37: note: in expansion of macro
> ‘compiletime_assert’
>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                      ^~~~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:65:3: note: in expansion of macro
> ‘BUILD_BUG_ON_MSG’
>    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>    ^~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:114:3: note: in expansion of macro
> ‘__BF_FIELD_CHECK’
>    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
> expansion of macro ‘FIELD_PREP’
>    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>    ^~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>  ^~~~~~~~~~~~~~~~~~~~~~~
> In function ‘__guc_scheduling_policy_add_klv.isra.56’,
>     inlined from ‘guc_init_global_schedule_policy’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4449:3,
>     inlined from ‘intel_guc_submission_enable’ at
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4490:6:
> ././include/linux/compiler_types.h:397:38: error: call to
> ‘__compiletime_assert_1882’ declared with attribute error: FIELD_PREP:
> mask is not constant
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                       ^
> ././include/linux/compiler_types.h:378:4: note: in definition of macro
> ‘__compiletime_assert’
>     prefix ## suffix();    \
>     ^~~~~~
> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
> ‘_compiletime_assert’
>   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>   ^~~~~~~~~~~~~~~~~~~
> ./include/linux/build_bug.h:39:37: note: in expansion of macro
> ‘compiletime_assert’
>  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                      ^~~~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:65:3: note: in expansion of macro
> ‘BUILD_BUG_ON_MSG’
>    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>    ^~~~~~~~~~~~~~~~
> ./include/linux/bitfield.h:114:3: note: in expansion of macro
> ‘__BF_FIELD_CHECK’
>    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>    ^~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4401:17: note: in
> expansion of macro ‘FIELD_PREP’
>   *(klv_ptr++) = FIELD_PREP(GUC_KLV_0_KEY, action) |
>                  ^~~~~~~~~~
> scripts/Makefile.build:243: recipe for target
> 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
> 

What GCC/.config was it?

In the meantime, can you try simpler fix below (we want to avoid
external dependencies in GuC ABI headers)

-#define GUC_KLV_0_KEY                          (0xffff << 16)
+#define GUC_KLV_0_KEY                          (0xffffu << 16)

Michal

> 
>>
>> BR,
>> Jani.
>>
>>
>>
>>> Change to use GENMASK() to avoid the issue.
>>>
>>> Signed-off-by: Linyu Yuan <quic_linyyuan@quicinc.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>> index 58012edd4eb0..fd3c16695e5f 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>> @@ -29,8 +29,8 @@
>>>    */
>>>     #define GUC_KLV_LEN_MIN                1u
>>> -#define GUC_KLV_0_KEY                (0xffff << 16)
>>> -#define GUC_KLV_0_LEN                (0xffff << 0)
>>> +#define GUC_KLV_0_KEY                GENMASK(31, 16)
>>> +#define GUC_KLV_0_LEN                GENMASK(15, 0)
>>>   #define GUC_KLV_n_VALUE                (0xffffffff << 0)
>>>     /**
