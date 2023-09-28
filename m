Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B67B15D2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27FF10E5E8;
	Thu, 28 Sep 2023 08:16:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9232310E5E8;
 Thu, 28 Sep 2023 08:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695888988; x=1727424988;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YNulYB4egU3QUSCfGwQ+iCeYaGpwGu3g48tjXbfEvYQ=;
 b=V+CaT2rOtnPqrCQeyEeAt6LmhvUIWlgnFiRHzFMlCs+Mtnvh0VtF/oJH
 VhLk2n5ugGGwchf5R+ba+XWg5L/wcZfjkJNXC+YtsYoANMOo9plKzAGBe
 2ZOSZ5rOufKdxCFOfq68j/L0Vzc2kXsAWplhZ/nSnz35h1bBHQ9lM94nX
 24Ry1ksg89Bbfu+r1AQMI7Q4sSbkuMJBsHKGVTBTxAxSKetybHCJQ/cIz
 ImXnAqJACjaZrXYLTDr3Xu8osxmceyNaLRjVmauHKWXD/CE0rq1rqnb1C
 h7quaBeM+3ZLhAtEbaFICZ0Y58BgrLcU2juxSvQVm+ZFfwP+/AidQ7EFi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="381912833"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="381912833"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="784618139"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="784618139"
Received: from nlachman-mobl.ger.corp.intel.com (HELO [10.213.204.130])
 ([10.213.204.130])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:16:25 -0700
Message-ID: <6a9b5529-6b41-a29b-3608-81be00934fbf@linux.intel.com>
Date: Thu, 28 Sep 2023 09:16:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
 <20230922134437.234888-4-tvrtko.ursulin@linux.intel.com>
 <ZRSM9hSf71QJn8Pw@unerlige-ril>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZRSM9hSf71QJn8Pw@unerlige-ril>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 03/12] tools/intel_gpu_top: Restore
 user friendly error message
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


On 27/09/2023 21:13, Umesh Nerlige Ramappa wrote:
> On Fri, Sep 22, 2023 at 02:44:28PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We have a nice error message displayed when an user with insufficient
>> permissions tries to run the tool, but that got lost while Meteorlake
>> support was added. Bring it back in.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> tools/intel_gpu_top.c | 10 +++++++---
>> 1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 87e9681e53b4..e01355f90458 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -554,9 +554,11 @@ static int get_num_gts(uint64_t type)
>>
>>         close(fd);
>>     }
>> -    assert(!errno || errno == ENOENT);
>> -    assert(cnt > 0);
>> -    errno = 0;
>> +
>> +    if (!cnt)
>> +        cnt = errno;
>> +    else
>> +        errno = 0;
> 
> ENOENT is the only way this logic is checking for num_gts.
> 
> In this case error is propagated only if cnt == 0. What if cnt=1 and we 
> get an error (other than ENOENT)? Should we ignore that?

If cnt >= 1 then at least one tile was found so the errno happened while 
probing for further tiles. So on single tile parts it can be ignored. On 
multi-tile parts it cannot really happen, or even if it happens 
situation would simply be "why is only one tile showing". If we want to 
cover this impossible/unlikely case then maybe like this:

	if (!cnt || (errno && errno != ENOENT))
		cnt = -errno;

> I had something like this in mind for the regression (and sorry this 
> fell through the cracks)
> 
> https://patchwork.freedesktop.org/patch/541406/?series=118973&rev=1

Oh back in June!

I think yours work too, in which case it's a matter of a style choice 
with which one to go. I don't have a strong preference - above would be 
a bit more compact, while I think it still succinctly expresses the 
failure condition ("nothing found or unexpected error while probing for 
remote tiles").

Regards,

Tvrtko

> 
> Regards,
> Umesh
> 
>>
>>     return cnt;
>> }
>> @@ -590,6 +592,8 @@ static int pmu_init(struct engines *engines)
>>     engines->fd = -1;
>>     engines->num_counters = 0;
>>     engines->num_gts = get_num_gts(type);
>> +    if (engines->num_gts <= 0)
>> +        return -1;
>>
>>     engines->irq.config = I915_PMU_INTERRUPTS;
>>     fd = _open_pmu(type, engines->num_counters, &engines->irq, 
>> engines->fd);
>> -- 
>> 2.39.2
>>
