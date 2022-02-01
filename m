Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3D04A5935
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 10:32:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C694110EC0D;
	Tue,  1 Feb 2022 09:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E84A10EC0D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 09:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643707935; x=1675243935;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=261TYG1u1mhkBdzdgknsBsO3wVUagZIJsuG6b0XLdfI=;
 b=BaP0WwyOqR5Hst+0w8dxnjZ18WkGp5gEq9gBkidiPN8/lZMXPlGTHLpz
 WRTsB+BOcnI3SrVa3OmsX3/Fd375MpfcYiG3PwSPAu7Rhb+AQ/pF331dh
 wzjVzrwrg/AaJPdLnfjtBHXgftWRe+leCCVc8mvb6mtWa0OJNeogy/Pze
 M9cC/+8Ae7rzQwqA4TrYYCbn148OIwh/qolapdjw5SzIY52h/K8n03R6S
 n5Ull7YacLRvZjrzpqcIsnXS1vZr7DEf3psvEAv5AaTuoJ1VGP7JvaEG3
 Zw793Xn8SQ6UZ3VVY0s44IPBIvMXIwa9YpUV5+LY9rKL3dc3r5nkSeqLy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="246486583"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="246486583"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:32:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="698345954"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO [10.213.212.46])
 ([10.213.212.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 01:32:13 -0800
Message-ID: <2d6255ee-fc85-8e8e-84bd-8b9839d65dd8@linux.intel.com>
Date: Tue, 1 Feb 2022 09:32:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-3-michael.cheng@intel.com>
 <03fdb37a-29a3-278f-459d-8a1247401823@linux.intel.com>
 <87ilu09ejk.fsf@gaia.fi.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87ilu09ejk.fsf@gaia.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Re-work
 invalidate_csb_entries
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/01/2022 14:15, Mika Kuoppala wrote:
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> writes:
> 
>> On 28/01/2022 22:10, Michael Cheng wrote:
>>> Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
>>> prevent compiler errors when building for non-x86 architectures.
>>>
>>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> index 960a9aaf4f3a..90b5daf9433d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>> @@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
>>>    
>>>    static void invalidate_csb_entries(const u64 *first, const u64 *last)
>>>    {
>>> -	clflush((void *)first);
>>> -	clflush((void *)last);
>>> +	drm_clflush_virt_range((void *)first, sizeof(*first));
>>> +	drm_clflush_virt_range((void *)last, sizeof(*last));
>>
>> How about dropping the helper and from the single call site do:
>>
>> drm_clflush_virt_range(&buf[0], num_entries * sizeof(buf[0]));
>>
>> One less function call and CSB is a single cacheline before Gen11 ayway,
>> two afterwards, so overall better conversion I think. How does that sound?
> 
> It would definitely work. Now trying to remember why it went into
> explicit clflushes: iirc as this is gpu/cpu coherency, the
> wbinvd_on_all_cpus we get with *virt_range would then be just
> unnecessary perf hit.

Right, apart that AFAICS wbinvd_on_all_cpus does not run on the 
X86_FEATURE_CLFLUSH path of drm_clflush_virt_range, which made me think 
invalidate_csb_entries might have been an a) optimisation which used the 
knowledge CSB is at most two cachelines large, and b) there is no need 
for the memory barrier since as you say it is about CPU/GPU effect so 
CPU ordering is not a concern.

Anyway, larger hammer probably does not harm much, apart that it really 
should be one call to drm_clflush_virt_range.

Regards,

Tvrtko
