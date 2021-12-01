Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D2D464B31
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 11:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B0C6E9E2;
	Wed,  1 Dec 2021 10:06:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3556E9E2;
 Wed,  1 Dec 2021 10:06:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223658221"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223658221"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:06:31 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="609496167"
Received: from zma6-mobl1.amr.corp.intel.com (HELO [10.212.27.7])
 ([10.212.27.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:06:30 -0800
Message-ID: <6ee343d6-df54-3c89-5d80-9073884805f5@linux.intel.com>
Date: Wed, 1 Dec 2021 10:06:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: "Rogozhkin, Dmitry V" <dmitry.v.rogozhkin@intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
 <20211119125945.55056-6-tvrtko.ursulin@linux.intel.com>
 <3894f6c21d51bdd4a188f077e146d36a3d6ddb71.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <3894f6c21d51bdd4a188f077e146d36a3d6ddb71.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 6/6] intel_gpu_top: Add a sanity check
 discovered busy metric is per engine
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/12/2021 02:20, Rogozhkin, Dmitry V wrote:
> On Fri, 2021-11-19 at 12:59 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Adding a cross-check with ABI config name space and not just relying
>> on
>> sysfs names.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
>> ---
>>   tools/intel_gpu_top.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 41c59a72c09d..81c724d1fe1c 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -376,6 +376,12 @@ static struct engines *discover_engines(char
>> *device)
>>   			break;
>>   		}
>>   
>> +		/* Double check config is an engine config. */
>> +		if (engine->busy.config >= __I915_PMU_OTHER(0)) {
>> +			free((void *)engine->name);
>> +			continue;
>> +		}
>> +
>>   		engine->class = (engine->busy.config &
>>   				 (__I915_PMU_OTHER(0) - 1)) >>
>>   				I915_PMU_CLASS_SHIFT;
> 
> This works for me.
> Acked-by: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>

Thanks, pushed!

> However, looking to the existing code down below the place where you've
> added a fix, it seems to me that 'free((void *)engine->name)' might be
> missing on a number of other error paths and on non-error exit path as
> well.

Error paths are all fatal (tool simply exits) so it's moot. No real 
value to cleanup piecemeal. It is the same for normal exit if that is 
what you mean. Would be nicer I guess but it's a task for a rainy idle day.

Regards,

Tvrtko
