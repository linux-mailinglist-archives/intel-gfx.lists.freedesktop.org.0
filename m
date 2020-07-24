Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC9B22C2CD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 12:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D756E946;
	Fri, 24 Jul 2020 10:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D491F6E946
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 10:07:21 +0000 (UTC)
IronPort-SDR: nCrbH+q76+5Z7wAm9J9WT+k9S+LKpqHiYm3Q9uhnu1k0kpPfDuW3WBLoBYQpFUzcfyeEn5LLiB
 4sZlcd0++4+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="149875025"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="149875025"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 03:07:21 -0700
IronPort-SDR: 7qkU6bxtxdmqv7y5n54kb0OE+YrIMad4LuJKeNWQ92r9I51Mg31v+0cn0Qg9rHEPs4qSsIaJh+
 xwBrLI2pjPXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="463180451"
Received: from dmackroy-mobl1.ger.corp.intel.com (HELO [10.249.37.188])
 ([10.249.37.188])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 03:07:19 -0700
To: Chris Wilson <chris.p.wilson@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-3-umesh.nerlige.ramappa@intel.com>
 <159558277976.21069.2416672457874030480@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <dd661523-be0f-e90d-f450-2079fb109ce0@intel.com>
Date: Fri, 24 Jul 2020 13:07:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159558277976.21069.2416672457874030480@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report
 trigger registers
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/07/2020 12:26, Chris Wilson wrote:
> Quoting Umesh Nerlige Ramappa (2020-07-24 01:18:59)
>> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>>
>> OA reports can be triggered into the OA buffer by writing into the
>> OAREPORTTRIG registers. Whitelist the registers to allow user to trigger
>> reports.
>>
>> v2:
>> - Move related change to this patch (Lionel)
>> - Bump up perf revision (Lionel)
>>
>> v3: Pardon whitelisted registers for selftest (Umesh)
>> v4: Document supported gens for the feature (Lionel)
>>
>> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++++++++++++++++
>>   .../gpu/drm/i915/gt/selftest_workarounds.c    |  8 ++++++
>>   drivers/gpu/drm/i915/i915_perf.c              | 11 +++++---
>>   3 files changed, 42 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index cef1c122696f..a72ebfd115e5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1387,6 +1387,20 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
>>          whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
>>   }
>>   
>> +static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
>> +{
>> +       /* OA buffer trigger report 2/6 used by performance query */
>> +       whitelist_reg(w, OAREPORTTRIG2);
>> +       whitelist_reg(w, OAREPORTTRIG6);
> The other question is: are you sure these are per-context registers?
All the registers exposed in this series are global.
>> +}
>> +
>> +static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
>> +{
>> +       /* OA buffer trigger report 2/6 used by performance query */
>> +       whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
>> +       whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
>> +}
>> +
>>   static void gen9_whitelist_build(struct i915_wa_list *w)
>>   {
>>          /* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
>> @@ -1400,6 +1414,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
>>   
>>          /* WaSendPushConstantsFromMMIO:skl,bxt */
>>          whitelist_reg(w, COMMON_SLICE_CHICKEN2);
>> +
>> +       /* Performance counters support */
>> +       gen9_whitelist_build_performance_counters(w);
>>   }
>>   
>>   static void skl_whitelist_build(struct intel_engine_cs *engine)
>> @@ -1493,6 +1510,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
>>   
>>          /* WaEnablePreemptionGranularityControlByUMD:cnl */
>>          whitelist_reg(w, GEN8_CS_CHICKEN1);
>> +
>> +       /* Performance counters support */
>> +       gen9_whitelist_build_performance_counters(w);
>>   }
>>   
>>   static void icl_whitelist_build(struct intel_engine_cs *engine)
>> @@ -1522,6 +1542,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>>                  whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>>                                    RING_FORCE_TO_NONPRIV_ACCESS_RD |
>>                                    RING_FORCE_TO_NONPRIV_RANGE_4);
>> +
>> +               /* Performance counters support */
>> +               gen9_whitelist_build_performance_counters(w);
>>                  break;
>>   
>>          case VIDEO_DECODE_CLASS:
>> @@ -1572,6 +1595,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>>   
>>                  /* Wa_1806527549:tgl */
>>                  whitelist_reg(w, HIZ_CHICKEN);
>> +
>> +               /* Performance counters support */
>> +               gen12_whitelist_build_performance_counters(w);
>>                  break;
>>          default:
>>                  whitelist_reg_ext(w,
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>> index febc9e6692ba..3b1d3dbcd477 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
>> @@ -934,6 +934,10 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
>>          static const struct regmask pardon[] = {
>>                  { GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
>>                  { GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
>> +               { OAREPORTTRIG2, INTEL_GEN_MASK(8, 11) },
>> +               { OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
>> +               { GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
>> +               { GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
> Because we are not making the mistake of exposing more globals, and the
> pardon is a list of our past sins, not an excuse for more.

I'm afraid the HW design leave us no choice on Gen12 :(


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
