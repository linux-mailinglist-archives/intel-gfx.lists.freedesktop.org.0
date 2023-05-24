Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4859F70FBE6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 18:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6AC910E4CD;
	Wed, 24 May 2023 16:45:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE54610E4CD;
 Wed, 24 May 2023 16:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684946701; x=1716482701;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DyqXqXYSXDPBe1I9dr5Acz8Qzjk7CYYanVRgxDAy4vw=;
 b=TrdDtJMSoio0zRJO6MmM3qSVm22zqlQ73G4F8+kbgBRd+nTNbx1scZ1b
 S/fTIS3aqunT38uHrYeA7Dfk4JZoc0r18mwruq+Hg3h4fijSrfpwYzWRd
 Novzw2MHpABlY6Wd8bmg4m0ao8JvgTSI1tToOuaf1lEUQy3LyQMjpbX2i
 EBsrAkdrWwrmtM7nkY1STx5e00d2rDpRIGZzZf9nvHdhHY6DtDeOauhwd
 DqtvXzovExhuFy0tYlMbwUqKWvCEaSUiCVtrG1/qUWtCO/UhFCiyC1E7Z
 0xZKW3zIkI+HCdFvPjIFkpDF86Wc6gQgPT6tVkYv1DCe9VZ5IiplI68W4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="351134481"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="351134481"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 09:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="816658166"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="816658166"
Received: from bmhacket-mobl.ger.corp.intel.com (HELO [10.213.218.245])
 ([10.213.218.245])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 09:44:59 -0700
Message-ID: <67b53e7c-a1a8-c63a-1fbe-5e8339d8902b@linux.intel.com>
Date: Wed, 24 May 2023 17:44:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230523152407.828236-1-tvrtko.ursulin@linux.intel.com>
 <ZG49N4hh1dKDHduR@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZG49N4hh1dKDHduR@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix frequency and rc6
 counters
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/05/2023 17:37, Umesh Nerlige Ramappa wrote:
> On Tue, May 23, 2023 at 04:24:07PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Need to reset aggregated counters before adding to them otherwise numbers
>> will grow endlessly.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: 3dadeff69d4a ("intel_gpu_top: Switch pmu_counter to use 
>> aggregated values")
>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>> tools/intel_gpu_top.c | 4 ++++
>> 1 file changed, 4 insertions(+)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 4e49367a70c7..a89f13d46f11 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -710,6 +710,10 @@ static void pmu_sample(struct engines *engines)
>>     engines->ts.prev = engines->ts.cur;
>>     engines->ts.cur = pmu_read_multi(engines->fd, num_val, val);
>>
>> +    engines->freq_req.val.cur = engines->freq_req.val.prev = 0;
>> +    engines->freq_act.val.cur = engines->freq_act.val.prev = 0;
>> +    engines->rc6.val.cur = engines->rc6.val.prev = 0;
>> +
> 
> lgtm,
> 
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Pushed, thanks!

Regards,

Tvrtko
