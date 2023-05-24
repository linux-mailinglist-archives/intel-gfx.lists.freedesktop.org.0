Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCAB70F768
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 15:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D1210E0BB;
	Wed, 24 May 2023 13:11:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C5110E2BB;
 Wed, 24 May 2023 13:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684933910; x=1716469910;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=imAWLnQQlYrMWn0dNv0d/PyNaz8CHqqkSd5IU478inw=;
 b=EWl9lOKYH7B/pOoVbLtSFjZKXfsSIOMykth1pVdUq+Q+0RD4vGTYCrRS
 grRFDly1JPbP+ZYxPl0kmK5fN7L7sjBdP2zq4pkdjPrVkUoiilfAT1ZR1
 eEkYk9XNS7lTPjcJeOLQbAcOn5p92DEjaTrKrKC/3RIyKaotgK0k7E592
 Xkxfji4vbahU3pKNm2Jg64ZIPwMhbTpkFk3bLhOgV+bHIcwINFRV0s10h
 igIzNDUtkIUvJCSamjPHR4bWEzki6qoUWIpIZ+tZD7P6NcEGZa/KnWeM6
 pGVgIYecrxcNiK0g2lMmQ8pJT336/bEqnpkHqZ+wAblqOSOXAZhR+OFp1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="356783749"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="356783749"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 06:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="654792277"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="654792277"
Received: from bmhacket-mobl.ger.corp.intel.com (HELO [10.213.218.245])
 ([10.213.218.245])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 06:10:51 -0700
Message-ID: <a19110cd-a8c9-db25-aef8-6915da3cebf1@linux.intel.com>
Date: Wed, 24 May 2023 14:10:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
 <20230515133630.2163170-3-tvrtko.ursulin@linux.intel.com>
 <20230523105158.wsjsnbjld4knkbr3@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230523105158.wsjsnbjld4knkbr3@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] intel_gpu_top: Move client name
 last
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


On 23/05/2023 11:51, Kamil Konieczny wrote:
> On 2023-05-15 at 14:36:30 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Move client name to be the right most field which visually aligns better
>> with top(1) and prepares for inserting memory usage fields somewhere in
>> the middle.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rob Clark <robdclark@chromium.org>
> 
> Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks Kamil, I've pushed this now having seen Rob will need to rebase 
his series anyway.

Regards,

Tvrtko

> 
>> ---
>>   tools/intel_gpu_top.c | 19 +++++++++----------
>>   1 file changed, 9 insertions(+), 10 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 453090c298bc..937280a7151a 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -1809,9 +1809,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>>   			return lines;
>>   
>>   		printf("\033[7m");
>> -		len = printf("%*s %*s ",
>> -			     clients->max_pid_len, "PID",
>> -			     clients->max_name_len, "NAME");
>> +		len = printf("%*s ", clients->max_pid_len, "PID");
>>   
>>   		if (lines++ >= con_h || len >= con_w)
>>   			return lines;
>> @@ -1825,7 +1823,9 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>>   					num_active++;
>>   			}
>>   
>> -			*class_w = width = (con_w - len) / num_active;
>> +			*class_w = width =
>> +				(con_w - len - clients->max_name_len - 1) /
>> +				num_active;
>>   
>>   			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
>>   				const char *name = iclients->classes.names[i];
>> @@ -1846,8 +1846,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>>   			}
>>   		}
>>   
>> -		n_spaces(con_w - len);
>> -		printf("\033[0m\n");
>> +		printf(" %-*s\033[0m\n", con_w - len - 1, "NAME");
>>   	} else {
>>   		if (iclients->classes.num_engines)
>>   			pops->open_struct("clients");
>> @@ -1866,6 +1865,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>>   	struct igt_drm_clients *clients = c->clients;
>>   	struct intel_clients *iclients = clients->private_data;
>>   	unsigned int i;
>> +	int len;
>>   
>>   	if (output_mode == INTERACTIVE) {
>>   		if (filter_idle && (!c->total_runtime || c->samples < 2))
>> @@ -1873,9 +1873,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>>   
>>   		lines++;
>>   
>> -		printf("%*s %*s ",
>> -		       clients->max_pid_len, c->pid_str,
>> -		       clients->max_name_len, c->print_name);
>> +		len = printf("%*s ", clients->max_pid_len, c->pid_str);
>>   
>>   		for (i = 0;
>>   		     c->samples > 1 && i <= iclients->classes.max_engine_id;
>> @@ -1898,9 +1896,10 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>>   
>>   			print_percentage_bar(pct, max, *class_w,
>>   					     numeric_clients);
>> +			len += *class_w;
>>   		}
>>   
>> -		putchar('\n');
>> +		printf(" %-*s\n", con_w - len - 1, c->print_name);
>>   	} else if (output_mode == JSON) {
>>   		char buf[64];
>>   
>> -- 
>> 2.37.2
>>
