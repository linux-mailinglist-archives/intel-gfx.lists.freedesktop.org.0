Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7266078F4AD
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 23:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09DB10E6EA;
	Thu, 31 Aug 2023 21:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652CC10E4AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 02:05:11 +0000 (UTC)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37U1TBOc019755; Wed, 30 Aug 2023 02:05:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=1b6uao/4nTQ7R8G8oHXy7ADUUXcbgP9nztyU1Nqbsx4=;
 b=ZPBg66ZaPBiM0yy3kUNcdYdrZ8jUb0iBkR796IoeU+rDoFIpZRcPUtIuzCXbyVW5Dxgr
 Jyn3FOWFJfq003osxYLxhW/0euetpwbCCtYacF/WRGx/K4h1Xqt3Zk8dNq69JHYPoF92
 C1MLIOK6L1XB3lEUNj/GAtPDjT3M4YMpKuw5Bl8TmLOsgr2/5ScIMtB4gdTNFO5dV4AK
 TtdphSb4aiqCIGuq/oPd1n3z2eaUuei4WzktnkPR7JZawVelLG0Db4CUjZKSAtn29Oo/
 Dq+B715GHIk8iH+3tNjVAIhhFWoWSWbLKUcdr0OwNJCumIboBQhdz4ko5Fka6I9YndKg RQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss7metyqt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 30 Aug 2023 02:05:09 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com
 [10.47.209.197])
 by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37U25823014686
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 30 Aug 2023 02:05:08 GMT
Received: from [10.233.19.102] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Tue, 29 Aug
 2023 19:05:06 -0700
Message-ID: <4d9602cf-67d4-9613-e71c-955e5c2c810d@quicinc.com>
Date: Wed, 30 Aug 2023 10:05:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Michal Wajdeczko <michal.wajdeczko@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
 <875y534r88.fsf@intel.com> <336c1090-e15f-03f5-7fa3-7fe3784dff5d@quicinc.com>
 <1de9f939-1164-de25-9410-279f4558ebaa@intel.com>
From: Linyu Yuan <quic_linyyuan@quicinc.com>
In-Reply-To: <1de9f939-1164-de25-9410-279f4558ebaa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800
 signatures=585085
X-Proofpoint-ORIG-GUID: ROqZhPU1hJsWbZAcCmov3pV7A3XfiEWF
X-Proofpoint-GUID: ROqZhPU1hJsWbZAcCmov3pV7A3XfiEWF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 bulkscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308300017
X-Mailman-Approved-At: Thu, 31 Aug 2023 21:33:53 +0000
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


On 8/29/2023 5:42 AM, Michal Wajdeczko wrote:
>
> On 25.08.2023 07:50, Linyu Yuan wrote:
>> On 8/25/2023 1:37 PM, Jani Nikula wrote:
>>> On Fri, 25 Aug 2023, Linyu Yuan <quic_linyyuan@quicinc.com> wrote:
>>>> GCC report GUC_KLV_0_KEY and GUC_KLV_0_LEN is not constant when do
>>>> preprocessing.
>>> Please paste the actual compiler warning.
>>
>>    CC      drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
>> In file included from <command-line>:0:0:
>> In function ‘__guc_context_policy_add_priority.isra.47’,
>>      inlined from ‘__guc_context_set_prio.isra.48’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3332:3,
>>      inlined from ‘guc_context_set_prio’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3360:2:
>> ././include/linux/compiler_types.h:397:38: error: call to
>> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
>> mask is not constant
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>                                        ^
>> ././include/linux/compiler_types.h:378:4: note: in definition of macro
>> ‘__compiletime_assert’
>>      prefix ## suffix();    \
>>      ^~~~~~
>> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
>> ‘_compiletime_assert’
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>    ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro
>> ‘compiletime_assert’
>>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                       ^~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:65:3: note: in expansion of macro
>> ‘BUILD_BUG_ON_MSG’
>>     BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>>     ^~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: in expansion of macro
>> ‘__BF_FIELD_CHECK’
>>     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>>     ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
>> expansion of macro ‘FIELD_PREP’
>>     FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>>     ^~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
>> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>>   MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>>   ^~~~~~~~~~~~~~~~~~~~~~~
>> In function ‘__guc_context_policy_add_preemption_timeout.isra.51’,
>>      inlined from ‘__guc_context_set_preemption_timeout’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3005:3:
>> ././include/linux/compiler_types.h:397:38: error: call to
>> ‘__compiletime_assert_1793’ declared with attribute error: FIELD_PREP:
>> mask is not constant
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>                                        ^
>> ././include/linux/compiler_types.h:378:4: note: in definition of macro
>> ‘__compiletime_assert’
>>      prefix ## suffix();    \
>>      ^~~~~~
>> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
>> ‘_compiletime_assert’
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>    ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro
>> ‘compiletime_assert’
>>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                       ^~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:65:3: note: in expansion of macro
>> ‘BUILD_BUG_ON_MSG’
>>     BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>>     ^~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: in expansion of macro
>> ‘__BF_FIELD_CHECK’
>>     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>>     ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
>> expansion of macro ‘FIELD_PREP’
>>     FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>>     ^~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2468:1: note: in
>> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>>   MAKE_CONTEXT_POLICY_ADD(preemption_timeout, PREEMPTION_TIMEOUT)
>>   ^~~~~~~~~~~~~~~~~~~~~~~
>> In function ‘__guc_context_policy_add_priority.isra.47’,
>>      inlined from ‘__guc_add_request’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
>> ././include/linux/compiler_types.h:397:38: error: call to
>> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
>> mask is not constant
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>                                        ^
>> ././include/linux/compiler_types.h:378:4: note: in definition of macro
>> ‘__compiletime_assert’
>>      prefix ## suffix();    \
>>      ^~~~~~
>> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
>> ‘_compiletime_assert’
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>    ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro
>> ‘compiletime_assert’
>>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                       ^~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:65:3: note: in expansion of macro
>> ‘BUILD_BUG_ON_MSG’
>>     BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>>     ^~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: in expansion of macro
>> ‘__BF_FIELD_CHECK’
>>     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>>     ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
>> expansion of macro ‘FIELD_PREP’
>>     FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>>     ^~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
>> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>>   MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>>   ^~~~~~~~~~~~~~~~~~~~~~~
>> In function ‘__guc_context_policy_add_priority.isra.47’,
>>      inlined from ‘register_context’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
>> ././include/linux/compiler_types.h:397:38: error: call to
>> ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP:
>> mask is not constant
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>                                        ^
>> ././include/linux/compiler_types.h:378:4: note: in definition of macro
>> ‘__compiletime_assert’
>>      prefix ## suffix();    \
>>      ^~~~~~
>> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
>> ‘_compiletime_assert’
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>    ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro
>> ‘compiletime_assert’
>>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                       ^~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:65:3: note: in expansion of macro
>> ‘BUILD_BUG_ON_MSG’
>>     BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>>     ^~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: in expansion of macro
>> ‘__BF_FIELD_CHECK’
>>     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>>     ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in
>> expansion of macro ‘FIELD_PREP’
>>     FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
>>     ^~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in
>> expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
>>   MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
>>   ^~~~~~~~~~~~~~~~~~~~~~~
>> In function ‘__guc_scheduling_policy_add_klv.isra.56’,
>>      inlined from ‘guc_init_global_schedule_policy’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4449:3,
>>      inlined from ‘intel_guc_submission_enable’ at
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4490:6:
>> ././include/linux/compiler_types.h:397:38: error: call to
>> ‘__compiletime_assert_1882’ declared with attribute error: FIELD_PREP:
>> mask is not constant
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>                                        ^
>> ././include/linux/compiler_types.h:378:4: note: in definition of macro
>> ‘__compiletime_assert’
>>      prefix ## suffix();    \
>>      ^~~~~~
>> ././include/linux/compiler_types.h:397:2: note: in expansion of macro
>> ‘_compiletime_assert’
>>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>    ^~~~~~~~~~~~~~~~~~~
>> ./include/linux/build_bug.h:39:37: note: in expansion of macro
>> ‘compiletime_assert’
>>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>>                                       ^~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:65:3: note: in expansion of macro
>> ‘BUILD_BUG_ON_MSG’
>>     BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
>>     ^~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: in expansion of macro
>> ‘__BF_FIELD_CHECK’
>>     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>>     ^~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4401:17: note: in
>> expansion of macro ‘FIELD_PREP’
>>    *(klv_ptr++) = FIELD_PREP(GUC_KLV_0_KEY, action) |
>>                   ^~~~~~~~~~
>> scripts/Makefile.build:243: recipe for target
>> 'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed
>>
> What GCC/.config was it?


gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0


make ARCH=x86 allyesconfig


>
> In the meantime, can you try simpler fix below (we want to avoid
> external dependencies in GuC ABI headers)
>
> -#define GUC_KLV_0_KEY                          (0xffff << 16)
> +#define GUC_KLV_0_KEY                          (0xffffu << 16)
>
> Michal
>
>>> BR,
>>> Jani.
>>>
>>>
>>>
>>>> Change to use GENMASK() to avoid the issue.
>>>>
>>>> Signed-off-by: Linyu Yuan <quic_linyyuan@quicinc.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 4 ++--
>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>>> index 58012edd4eb0..fd3c16695e5f 100644
>>>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>>> @@ -29,8 +29,8 @@
>>>>     */
>>>>      #define GUC_KLV_LEN_MIN                1u
>>>> -#define GUC_KLV_0_KEY                (0xffff << 16)
>>>> -#define GUC_KLV_0_LEN                (0xffff << 0)
>>>> +#define GUC_KLV_0_KEY                GENMASK(31, 16)
>>>> +#define GUC_KLV_0_LEN                GENMASK(15, 0)
>>>>    #define GUC_KLV_n_VALUE                (0xffffffff << 0)
>>>>      /**
