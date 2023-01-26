Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5008C67D0FE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 17:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24F710E2AA;
	Thu, 26 Jan 2023 16:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A716D10E2AA;
 Thu, 26 Jan 2023 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674749453; x=1706285453;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=0gmP2385FKSh9N9MDwTZ2zw+jKcDMB81kY1Oc8aquGM=;
 b=kG7mxLOWLla/nuTk9geOPW/0rHzBFSpVIAL9IL/0Oxj6WLX0Cj7pmjlM
 TA+nuGuhf2ZCALdkVl7DCHm9ZxyNu76CDu1rDMpqA1To9JF7KCewKGo0L
 8WDczFckXBJ9Oi90LRxJd3xb50M5QiyfWvir5w5KSU6UyeZDHNIi8TriL
 2/Jh33lCTGCAQOVUCYIUwWgHCbamPJQ5XC2im98P1fjMTnWbSD+xWWIwR
 wIE/EmlZ60M4Csrrl2MBAmBNjwFYtcr3Yjg41SaIIVauvWbnpMi+4UCeJ
 V23xXtz1wyHDX3+YwG6c7VF4yYTLXVVLDc3jqkYMhoOLdCU4ivoaJPG+4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328956400"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="328956400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:10:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="662910918"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="662910918"
Received: from kbrennan-mobl.ger.corp.intel.com (HELO [10.213.233.58])
 ([10.213.233.58])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:10:39 -0800
Message-ID: <ec09497f-f3fb-a34b-d6a4-c9763a7ba385@linux.intel.com>
Date: Thu, 26 Jan 2023 16:10:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Eero Tamminen <eero.t.tamminen@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-3-tvrtko.ursulin@linux.intel.com>
 <20230126154124.hlcokp3b62d3ncvv@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230126154124.hlcokp3b62d3ncvv@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] intel_gpu_top:
 Automatically enclose JSON output into brackets
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


On 26/01/2023 15:41, Kamil Konieczny wrote:
> On 2023-01-12 at 17:47:28 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Parsers need the whole output enclosed into square brackets so every
>> period sample becomes an array element.
>>
>> So far we have been suggesting this in the man page but we can trivially
>> make the tool output that itself.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Disclaimer with this one is that I am not really sure if it is a good 
idea. How people might use the JSON output and if this helps or harms 
them I mean, I have no idea.

Regards,

Tvrtko

>> ---
>>   man/intel_gpu_top.rst | 2 +-
>>   tools/intel_gpu_top.c | 6 ++++++
>>   2 files changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
>> index b0c95446a011..3317e04816b4 100644
>> --- a/man/intel_gpu_top.rst
>> +++ b/man/intel_gpu_top.rst
>> @@ -85,7 +85,7 @@ Filter types: ::
>>   JSON OUTPUT
>>   ===========
>>   
>> -To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point a JSON array element and will avoid "Multiple root elements" JSON validation error.
>> +JSON output will be correctly terminated when the tool cleanly exits, otherwise one square bracket needs to be added before parsing.
>>   
>>   LIMITATIONS
>>   ===========
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 6de8a164fcff..c4d98de4fe31 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -2597,6 +2597,9 @@ int main(int argc, char **argv)
>>   	scan_clients(clients, false);
>>   	codename = igt_device_get_pretty_name(&card, false);
>>   
>> +	if (output_mode == JSON)
>> +		printf("[\n");
>> +
>>   	while (!stop_top) {
>>   		struct clients *disp_clients;
>>   		bool consumed = false;
>> @@ -2683,6 +2686,9 @@ int main(int argc, char **argv)
>>   			usleep(period_us);
>>   	}
>>   
>> +	if (output_mode == JSON)
>> +		printf("]\n");
>> +
>>   	if (clients)
>>   		free_clients(clients);
>>   
>> -- 
>> 2.34.1
>>
