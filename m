Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F876E45E2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E79710E418;
	Mon, 17 Apr 2023 10:58:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEB710E426;
 Mon, 17 Apr 2023 10:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729120; x=1713265120;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/7zi6SIX54iZ8oPf0yXNq4N3nScwjtexT3HEbXx64VI=;
 b=XuzEIT6fDzllWCM+cHmtucQLSAkEfNJ3Wqvtjq7xRLuqI1R13SnDqHGH
 PLP75QmWmP3VGvVmgQ2bXEQH9LyJSMwRurUsqB8FKyox0p2Fv1HJ4S1R4
 a3PP01+0k1rkCjm64upSHS3F2ax+1Wtl+RFm+ItDR14X5PxyZ1C6lWZzD
 AFyHDMopEnG+rrJpwD/eKiCcZuyj8b4QW3R6OImvUXf7co3ywMbuoWUQ5
 Y5jyUy+e81renwmYBDCxQlVadZ1u0E0KxsNKZVa+IAxoFyVKllOmJ7+tJ
 QhFFUe1u2IkVCOPZHqkEV+W8ttC/xnL45rBlqWM6SDcmS+Q5O+cpp/b1l w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="410073316"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="410073316"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="755278290"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="755278290"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO [10.213.232.210])
 ([10.213.232.210])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:58:38 -0700
Message-ID: <93ff2b62-3840-57a5-09a4-08ed264fedeb@linux.intel.com>
Date: Mon, 17 Apr 2023 11:58:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
 <20230328125429.1970202-4-tvrtko.ursulin@linux.intel.com>
 <20230414152814.vynozqkcrdete2bp@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230414152814.vynozqkcrdete2bp@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Show
 non-normalized client usage in numeric mode
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


Hi Kamil,

On 14/04/2023 16:28, Kamil Konieczny wrote:
> On 2023-03-28 at 13:54:29 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> When numeric display is selected in the interactive mode it is more
>> descriptive to show client's non-normalized (by number of engines per
>> class) usage. Rendering of the visual representation (bar) is kept the
>> same.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks for reviewing all three and merging them too!

Regards,

Tvrtko

>> ---
>>   tools/intel_gpu_top.c | 20 +++++++++++---------
>>   1 file changed, 11 insertions(+), 9 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 36da016c3df0..b6827b3de9bd 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -1275,14 +1275,14 @@ static void n_spaces(const unsigned int n)
>>   }
>>   
>>   static void
>> -print_percentage_bar(double percent, int max_len, bool numeric)
>> +print_percentage_bar(double percent, double max, int max_len, bool numeric)
>>   {
>>   	int bar_len, i, len = max_len - 2;
>>   	const int w = 8;
>>   
>>   	assert(max_len > 0);
>>   
>> -	bar_len = ceil(w * percent * len / 100.0);
>> +	bar_len = ceil(w * percent * len / max);
>>   	if (bar_len > w * len)
>>   		bar_len = w * len;
>>   
>> @@ -2010,7 +2010,8 @@ print_engine(struct engines *engines, unsigned int i, double t,
>>   			      engine->display_name, engine_items[0].buf);
>>   
>>   		val = pmu_calc(&engine->busy.val, 1e9, t, 100);
>> -		print_percentage_bar(val, con_w > len ? con_w - len : 0, false);
>> +		print_percentage_bar(val, 100.0, con_w > len ? con_w - len : 0,
>> +				     false);
>>   
>>   		printf("%s\n", buf);
>>   
>> @@ -2292,23 +2293,24 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
>>   		       clients->max_name_len, c->print_name);
>>   
>>   		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
>> -			double pct;
>> +			double pct, max;
>>   
>>   			if (!clients->class[i].num_engines)
>>   				continue; /* Assert in the ideal world. */
>>   
>> -			pct = (double)c->val[i] / period_us / 1e3 * 100 /
>> -			      clients->class[i].num_engines;
>> +			pct = (double)c->val[i] / period_us / 1e3 * 100;
>>   
>>   			/*
>>   			 * Guard against possible time-drift between sampling
>>   			 * client data and time we obtained our time-delta from
>>   			 * PMU.
>>   			 */
>> -			if (pct > 100.0)
>> -				pct = 100.0;
>> +			max = 100.0 * clients->class[i].num_engines;
>> +			if (pct > max)
>> +				pct = max;
>>   
>> -			print_percentage_bar(pct, *class_w, numeric_clients);
>> +			print_percentage_bar(pct, max, *class_w,
>> +					     numeric_clients);
>>   		}
>>   
>>   		putchar('\n');
>> -- 
>> 2.37.2
>>
