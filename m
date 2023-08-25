Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D111078AFF9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 14:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1753F10E2A9;
	Mon, 28 Aug 2023 12:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CF810E5FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 05:51:06 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37P5LviB014894; Fri, 25 Aug 2023 05:50:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=aDjCuYZseDjICLE8aBM2cpGuxwM89aZsrdkrd6z+1wU=;
 b=HV1qntTLsR2zQHF/hq7aKEFwB3fdLq3ojhup0dEK0WEfnumP5bZNwW2AIZWZFSBhJgA+
 7urJ8YZ6AGmvN+Mq8D+ix3X6dW/ON9jXG73qLgNYp4ypCX5kP9Tl/ma/oRTIF5VlVa+o
 p/RbuFFqwpNLxijam36sQgzxrwoHHX1oi+LN7tA3uaQmq8xqtcrJbCeNmbcYd1ATkhTr
 5lrfFGV3zw7G903T10fzvMtEkCHlnCfzjnopRvGJMlTm05MiCvHZIrHHt46zalI0XH+E
 Af2g14NCv9k+LWOmaSe/iK52m0A/24NDzZ3F5/YA0pmf2veg10fUX2K1AOAR7RJPxT9+ ig== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3spmtxr5db-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Aug 2023 05:50:51 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com
 [10.47.209.197])
 by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37P5ooJM028484
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Aug 2023 05:50:50 GMT
Received: from [10.233.19.102] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Thu, 24 Aug
 2023 22:50:48 -0700
Message-ID: <336c1090-e15f-03f5-7fa3-7fe3784dff5d@quicinc.com>
Date: Fri, 25 Aug 2023 13:50:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20230825050029.1122-1-quic_linyyuan@quicinc.com>
 <875y534r88.fsf@intel.com>
Content-Language: en-US
From: Linyu Yuan <quic_linyyuan@quicinc.com>
In-Reply-To: <875y534r88.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800
 signatures=585085
X-Proofpoint-ORIG-GUID: UXkiLI54quHez5xEcP-MlC_nKMtWbvwk
X-Proofpoint-GUID: UXkiLI54quHez5xEcP-MlC_nKMtWbvwk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-25_04,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0 mlxlogscore=999
 mlxscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308250049
X-Mailman-Approved-At: Mon, 28 Aug 2023 12:21:35 +0000
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


On 8/25/2023 1:37 PM, Jani Nikula wrote:
> On Fri, 25 Aug 2023, Linyu Yuan <quic_linyyuan@quicinc.com> wrote:
>> GCC report GUC_KLV_0_KEY and GUC_KLV_0_LEN is not constant when do
>> preprocessing.
> Please paste the actual compiler warning.


   CC      drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
In file included from <command-line>:0:0:
In function ‘__guc_context_policy_add_priority.isra.47’,
     inlined from ‘__guc_context_set_prio.isra.48’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3332:3,
     inlined from ‘guc_context_set_prio’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3360:2:
././include/linux/compiler_types.h:397:38: error: call to 
‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP: 
mask is not constant
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
././include/linux/compiler_types.h:378:4: note: in definition of macro 
‘__compiletime_assert’
     prefix ## suffix();    \
     ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro 
‘_compiletime_assert’
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro 
‘compiletime_assert’
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro 
‘BUILD_BUG_ON_MSG’
    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
    ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro 
‘__BF_FIELD_CHECK’
    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
    ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in 
expansion of macro ‘FIELD_PREP’
    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
    ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in 
expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
  ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_preemption_timeout.isra.51’,
     inlined from ‘__guc_context_set_preemption_timeout’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3005:3:
././include/linux/compiler_types.h:397:38: error: call to 
‘__compiletime_assert_1793’ declared with attribute error: FIELD_PREP: 
mask is not constant
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
././include/linux/compiler_types.h:378:4: note: in definition of macro 
‘__compiletime_assert’
     prefix ## suffix();    \
     ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro 
‘_compiletime_assert’
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro 
‘compiletime_assert’
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro 
‘BUILD_BUG_ON_MSG’
    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
    ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro 
‘__BF_FIELD_CHECK’
    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
    ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in 
expansion of macro ‘FIELD_PREP’
    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
    ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2468:1: note: in 
expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
  MAKE_CONTEXT_POLICY_ADD(preemption_timeout, PREEMPTION_TIMEOUT)
  ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_priority.isra.47’,
     inlined from ‘__guc_add_request’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
././include/linux/compiler_types.h:397:38: error: call to 
‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP: 
mask is not constant
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
././include/linux/compiler_types.h:378:4: note: in definition of macro 
‘__compiletime_assert’
     prefix ## suffix();    \
     ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro 
‘_compiletime_assert’
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro 
‘compiletime_assert’
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro 
‘BUILD_BUG_ON_MSG’
    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
    ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro 
‘__BF_FIELD_CHECK’
    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
    ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in 
expansion of macro ‘FIELD_PREP’
    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
    ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in 
expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
  ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_context_policy_add_priority.isra.47’,
     inlined from ‘register_context’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2503:2:
././include/linux/compiler_types.h:397:38: error: call to 
‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP: 
mask is not constant
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
././include/linux/compiler_types.h:378:4: note: in definition of macro 
‘__compiletime_assert’
     prefix ## suffix();    \
     ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro 
‘_compiletime_assert’
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro 
‘compiletime_assert’
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro 
‘BUILD_BUG_ON_MSG’
    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
    ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro 
‘__BF_FIELD_CHECK’
    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
    ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in 
expansion of macro ‘FIELD_PREP’
    FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
    ^~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2469:1: note: in 
expansion of macro ‘MAKE_CONTEXT_POLICY_ADD’
  MAKE_CONTEXT_POLICY_ADD(priority, SCHEDULING_PRIORITY)
  ^~~~~~~~~~~~~~~~~~~~~~~
In function ‘__guc_scheduling_policy_add_klv.isra.56’,
     inlined from ‘guc_init_global_schedule_policy’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4449:3,
     inlined from ‘intel_guc_submission_enable’ at 
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4490:6:
././include/linux/compiler_types.h:397:38: error: call to 
‘__compiletime_assert_1882’ declared with attribute error: FIELD_PREP: 
mask is not constant
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
././include/linux/compiler_types.h:378:4: note: in definition of macro 
‘__compiletime_assert’
     prefix ## suffix();    \
     ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro 
‘_compiletime_assert’
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro 
‘compiletime_assert’
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro 
‘BUILD_BUG_ON_MSG’
    BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
    ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro 
‘__BF_FIELD_CHECK’
    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
    ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4401:17: note: in 
expansion of macro ‘FIELD_PREP’
   *(klv_ptr++) = FIELD_PREP(GUC_KLV_0_KEY, action) |
                  ^~~~~~~~~~
scripts/Makefile.build:243: recipe for target 
'drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o' failed


>
> BR,
> Jani.
>
>
>
>> Change to use GENMASK() to avoid the issue.
>>
>> Signed-off-by: Linyu Yuan <quic_linyyuan@quicinc.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>> index 58012edd4eb0..fd3c16695e5f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>> @@ -29,8 +29,8 @@
>>    */
>>   
>>   #define GUC_KLV_LEN_MIN				1u
>> -#define GUC_KLV_0_KEY				(0xffff << 16)
>> -#define GUC_KLV_0_LEN				(0xffff << 0)
>> +#define GUC_KLV_0_KEY				GENMASK(31, 16)
>> +#define GUC_KLV_0_LEN				GENMASK(15, 0)
>>   #define GUC_KLV_n_VALUE				(0xffffffff << 0)
>>   
>>   /**
