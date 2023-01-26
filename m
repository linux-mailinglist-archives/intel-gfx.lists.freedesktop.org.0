Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F071E67D0F7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 17:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFE110E2A9;
	Thu, 26 Jan 2023 16:10:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F2810E2A9;
 Thu, 26 Jan 2023 16:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674749412; x=1706285412;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ymvl7XgNxLur99uc1LCBR08n+wpKzSOZwd35jY0IRe4=;
 b=CrmcsHNI9AyuSlG7RYfWnTcKah2MRAlEsx7d9L9fMs8wJx5Mba/2+upP
 EzYXBQIEIXYZnrBV+ZjLSuiQVELastYCeyndXq33Pz+ItCYK9tFSbEhy6
 /l8ooe4XlR6T10ESPLteSEAnzF9zEI0AturcE9IWimJ6S5RsFAsFhSDlO
 tNnG2Hep2VS2opggyGbPUIq41eNQuc9oC9KRvwD7ny9zWqcyl5pohnI6q
 EsN//9KxGJnsg4LIJPYUOnRvV6LyJwgFkbZtP3VNMJ1x8a/Q9sLbKN7XO
 2JlRdG8QqBT5i5rxRXkQajuI077fA5F4cWhgoMW3ET6+Bk3ZovKeUUMAl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328955940"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="328955940"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:09:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="662910677"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="662910677"
Received: from kbrennan-mobl.ger.corp.intel.com (HELO [10.213.233.58])
 ([10.213.233.58])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:09:32 -0800
Message-ID: <e3b0efd8-7e4a-9bdf-4725-128c4637e806@linux.intel.com>
Date: Thu, 26 Jan 2023 16:09:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-2-tvrtko.ursulin@linux.intel.com>
 <20230126153938.3iotcb52eawnwbcl@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230126153938.3iotcb52eawnwbcl@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] intel_gpu_top: Fix man
 page formatting
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


On 26/01/2023 15:39, Kamil Konieczny wrote:
> On 2023-01-12 at 17:47:27 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> New lines are not respected when rst2man generates the page so try to work
>> around that by followin advice from the Internet.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks! Later I noticed there is one more thing which currently renders 
badly, this line:

   -o <file path | ->

Are you okay with re-review if I can fix that one too and respin?

Regards,

Tvrtko

>> ---
>>   man/intel_gpu_top.rst | 15 ++++++++-------
>>   1 file changed, 8 insertions(+), 7 deletions(-)
>>
>> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
>> index 748c7740c800..b0c95446a011 100644
>> --- a/man/intel_gpu_top.rst
>> +++ b/man/intel_gpu_top.rst
>> @@ -53,13 +53,14 @@ RUNTIME CONTROL
>>   
>>   Supported keys:
>>   
>> -    'q'    Exit from the tool.
>> -    'h'    Show interactive help.
>> -    '1'    Toggle between aggregated engine class and physical engine mode.
>> -    'n'    Toggle display of numeric client busyness overlay.
>> -    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
>> -    'i'    Toggle display of clients which used no GPU time.
>> -    'H'    Toggle between per PID aggregation and individual clients.
>> +|
>> +|    'q'    Exit from the tool.
>> +|    'h'    Show interactive help.
>> +|    '1'    Toggle between aggregated engine class and physical engine mode.
>> +|    'n'    Toggle display of numeric client busyness overlay.
>> +|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
>> +|    'i'    Toggle display of clients which used no GPU time.
>> +|    'H'    Toggle between per PID aggregation and individual clients.
>>   
>>   DEVICE SELECTION
>>   ================
>> -- 
>> 2.34.1
>>
