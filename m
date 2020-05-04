Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3861C373D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 12:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D6189E2B;
	Mon,  4 May 2020 10:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BBD789E2B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 10:52:22 +0000 (UTC)
IronPort-SDR: 2yySkGB0cAD79y3j8XzNSx0FgRf/+A+2Ob+09IB+JUKIhpUP9JRCQ1T+Dwoz2aDULhTvfrI7pK
 7hD1qQcHg3Jg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 03:52:21 -0700
IronPort-SDR: CUmuv/OTH+VQUN5qr73Bu/OXZT0mJvP09XdXUSDwr2dUz/m2bzJTIYuTuxs0sBelFYNWJVr53j
 KVXqgWWBX64g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="283869798"
Received: from lgiacri-mobl1.ger.corp.intel.com (HELO [10.252.56.72])
 ([10.252.56.72])
 by fmsmga004.fm.intel.com with ESMTP; 04 May 2020 03:52:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200504103146.1359515-1-lionel.g.landwerlin@intel.com>
 <20200504103146.1359515-3-lionel.g.landwerlin@intel.com>
 <158858893697.10831.8203285663975172418@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b3394bc0-e3e9-f30b-aa6f-186aa02cbc40@intel.com>
Date: Mon, 4 May 2020 13:52:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158858893697.10831.8203285663975172418@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v11 2/4] drm/i915/perf: stop using the
 kernel context
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

On 04/05/2020 13:42, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-05-04 11:31:44)
>> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>> index a36a455ae336..a8b903592a39 100644
>> --- a/drivers/gpu/drm/i915/i915_perf_types.h
>> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
>> @@ -16,6 +16,7 @@
>>   #include <linux/uuid.h>
>>   #include <linux/wait.h>
>>   
>> +#include "gt/intel_context_types.h"
>>   #include "gt/intel_sseu.h"
>>   #include "i915_reg.h"
>>   #include "intel_wakeref.h"
>> @@ -311,6 +312,12 @@ struct i915_perf_stream {
>>           * buffer should be checked for available data.
>>           */
>>          u64 poll_oa_period;
>> +
>> +       /**
>> +        * @config_context: A logical context for use by the perf stream for
>> +        * configuring the HW.
>> +        */
>> +       struct intel_context *config_context;
> Looks like you just want a forward decl of struct intel_context rather
> than the whole header.


Fair, plus it's already forward declared.


-Lionel


>
>>   };
>>   
>>   /**
>> @@ -348,7 +355,8 @@ struct i915_oa_ops {
>>           * @disable_metric_set: Remove system constraints associated with using
>>           * the OA unit.
>>           */
>> -       void (*disable_metric_set)(struct i915_perf_stream *stream);
>> +       void (*disable_metric_set)(struct i915_perf_stream *stream,
>> +                                  struct i915_active *active);
>>   
>>          /**
>>           * @oa_enable: Enable periodic sampling
>> -- 
>> 2.26.2
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
