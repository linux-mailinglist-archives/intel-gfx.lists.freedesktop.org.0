Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 039D94A4928
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 15:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313CF10E40C;
	Mon, 31 Jan 2022 14:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C39B10E40C
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 14:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643638584; x=1675174584;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=r3D4QklcYteBOE0HMakpbpTsGBBR42OOKqGyt9hsQqQ=;
 b=Xjdg9m9TicWnCb+I3dI45uGnI/T7EziAOON0Bcba2mpHroHJQeG7uXuD
 bRUp7pFB35QaBoj777kahLYavk7sdhQzcwDymcfho46IaNaZxkKiy1CrU
 gr4K3kbW5IWdbeAPNVFQp4CrGz7zALbDtKRwNMGwyAVMuxyIGaEL9NSL+
 gMOkK4vHP2dEAkjdah4gyB8NyyuurqxHcz1SmHFZfWvbZGSnOnzsvE8ra
 QeNOfbz/N1xwdRdU6IfirXaJMiNxrHytravhcf7+rHEICRWoPQlzSb3BG
 Zn580asLOrenWQ1WWv9gBfmyLe1OJKUCNQWKdZgebLzUzlYnIALaF781P w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="310778350"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="310778350"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:16:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="626378972"
Received: from gaia.fi.intel.com ([10.237.72.183])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2022 06:16:21 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 191F05C0FA1; Mon, 31 Jan 2022 16:15:59 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <03fdb37a-29a3-278f-459d-8a1247401823@linux.intel.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-3-michael.cheng@intel.com>
 <03fdb37a-29a3-278f-459d-8a1247401823@linux.intel.com>
Date: Mon, 31 Jan 2022 16:15:59 +0200
Message-ID: <87ilu09ejk.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> writes:

> On 28/01/2022 22:10, Michael Cheng wrote:
>> Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
>> prevent compiler errors when building for non-x86 architectures.
>> 
>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> index 960a9aaf4f3a..90b5daf9433d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> @@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
>>   
>>   static void invalidate_csb_entries(const u64 *first, const u64 *last)
>>   {
>> -	clflush((void *)first);
>> -	clflush((void *)last);
>> +	drm_clflush_virt_range((void *)first, sizeof(*first));
>> +	drm_clflush_virt_range((void *)last, sizeof(*last));
>
> How about dropping the helper and from the single call site do:
>
> drm_clflush_virt_range(&buf[0], num_entries * sizeof(buf[0]));
>
> One less function call and CSB is a single cacheline before Gen11 ayway, 
> two afterwards, so overall better conversion I think. How does that sound?

It would definitely work. Now trying to remember why it went into
explicit clflushes: iirc as this is gpu/cpu coherency, the
wbinvd_on_all_cpus we get with *virt_range would then be just
unnecessary perf hit.

-Mika

>
> Regards,
>
> Tvrtko
>
>>   }
>>   
>>   /*
>> 
