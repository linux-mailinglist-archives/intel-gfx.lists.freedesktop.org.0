Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 359ED764EBA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 11:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE80D10E549;
	Thu, 27 Jul 2023 09:09:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1300810E549;
 Thu, 27 Jul 2023 09:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690448987; x=1721984987;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=He0dOw7dptLZUnXzRrOdfUniby+Cv/kQGKSAsDw59MU=;
 b=bqhWU8xO340eRsMfbFMqcx9WUimAQx6tolDJNFmFCxGruewtyhfzDRPL
 BPJJ1H13XRKJCNRwpyXAcd8RSMCTyezC0U8WDTO6qgjRxOoIncrHGx5wD
 /dmLvO52in01g5oN7hH3hh24g+Emy1ZrJuOe39p7WICGPsVKmLIANZPHJ
 TXFTGChp8KUOcNDMXjVYJedrX8ExIP1xSYpp9GII3UkzZumBTcq8/0UC9
 83+2rbLFPruRbe38gjm8KQZIrDyxieFikXwZc7IqbrAF0RCbhJq+gD8sa
 cl2+WlUkOE1lQnRrsr7uGlitjsIj3Tcv144n4Q/7Mg3HFHNJGihSEQfKO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="434533015"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="434533015"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="762101427"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="762101427"
Received: from jlenehan-mobl1.ger.corp.intel.com (HELO [10.213.228.208])
 ([10.213.228.208])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:09:45 -0700
Message-ID: <e830c186-4379-0d37-622d-93a2325dad9b@linux.intel.com>
Date: Thu, 27 Jul 2023 10:09:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
 <20230705163105.3804677-4-tvrtko.ursulin@linux.intel.com>
 <20230726173205.qzfle72ipv35bkae@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230726173205.qzfle72ipv35bkae@kamilkon-desk1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] gputop: Add memory information
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


On 26/07/2023 18:32, Kamil Konieczny wrote:
> Hi Tvrtko,
> 
> On 2023-07-05 at 17:31:05 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Show total and resident memory usage for clients which support it.
>>
>> For simplicity all memory regions are summed up and shown under a single
>> heading.
>>
>> Co-developed-by: Rob Clark <robdclark@chromium.org>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   tools/gputop.c | 34 +++++++++++++++++++++++++++++++++-
>>   1 file changed, 33 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/gputop.c b/tools/gputop.c
>> index 681f0a6bb748..b5b360cbb063 100644
>> --- a/tools/gputop.c
>> +++ b/tools/gputop.c
>> @@ -28,6 +28,7 @@
>>   
>>   #include "igt_drm_clients.h"
>>   #include "igt_drm_fdinfo.h"
>> +#include "drmtest.h"
>>   
>>   static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
>>   
>> @@ -80,7 +81,11 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>>   		return lines;
>>   
>>   	putchar('\n');
>> -	len = printf("%*s ", c->clients->max_pid_len, "PID");
>> +	if (c->regions->num_regions)
>> +		len = printf("%*s      MEM      RSS ",
>> +			     c->clients->max_pid_len, "PID");
>> +	else
>> +		len = printf("%*s ", c->clients->max_pid_len, "PID");
>>   
>>   	if (c->engines->num_engines) {
>>   		unsigned int i;
>> @@ -121,12 +126,28 @@ newheader(const struct igt_drm_client *c, const struct igt_drm_client *pc)
>>   	return !pc || c->drm_minor != pc->drm_minor;
>>   }
>>   
>> +static int
>> +print_size(uint64_t sz)
>> +{
>> +	char units[] = {'B', 'K', 'M', 'G'};
>> +	unsigned u;
> ------- ^
> Better:
> 	unsigned int u;
> 
> With that add my r-b tag,

Okay, thanks, re-send will be coming shortly, just some final smoke 
tests to do.

Regards,

Tvrtko

> 
> Regards,
> Kamil
> 
>> +
>> +	for (u = 0; u < ARRAY_SIZE(units) - 1; u++) {
>> +		if (sz < 1024)
>> +			break;
>> +		sz /= 1024;
>> +	}
>> +
>> +	return printf("%7"PRIu64"%c ", sz, units[u]);
>> +}
>> +
>>   static int
>>   print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>>   	     double t, int lines, int con_w, int con_h,
>>   	     unsigned int period_us, int *engine_w)
>>   {
>>   	unsigned int i;
>> +	uint64_t sz;
>>   	int len;
>>   
>>   	/* Filter out idle clients. */
>> @@ -143,6 +164,17 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>>   	*prevc = c;
>>   
>>   	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
>> +
>> +	if (c->regions->num_regions) {
>> +		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
>> +			sz += c->memory[i].total;
>> +		len += print_size(sz);
>> +
>> +		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
>> +			sz += c->memory[i].resident;
>> +		len += print_size(sz);
>> +	}
>> +
>>   	lines++;
>>   
>>   	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
>> -- 
>> 2.39.2
>>
