Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD37A5A6406
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 14:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A9789F38;
	Tue, 30 Aug 2022 12:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C0789F38
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 12:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661864031; x=1693400031;
 h=message-id:date:mime-version:from:subject:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=E3khkBaH1uSAxC/CpxeiijA9j8XladhuSUArnSxpPf8=;
 b=mAh8TormsglK5A+9GcRdJ5GcKMnWZswZT2vf5a9sHlsOVHCk2Qds6wq+
 C2a0aWswHPDbekG2DMz4e3uLjcgklcmeoQ/1dNEKRcOmcDL3FFzRaWvZP
 ge7Z77jGJsvvMOP9NIkYlGAFU9s24jDHpf1FuZaYYkt1m+bqmfpRyiISA
 mkHZuSQXGxLL9NLDaSC535ZpNxaZV/yfLLiVwGuEJl/TJ1yvnghOZ3ufy
 ikRokfwvhaQ9OlQJX6eERyHFZeq0wW7Jam1ABClvX3WvWklgS1B95urBC
 Xa+DNFPNQr5XOa4UyS5c14EhAkweQqNs0Fn82W+S4XFcfldUUa4Dp8bhH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="359127093"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="359127093"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:53:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="588590729"
Received: from akidokox-mobl.ger.corp.intel.com (HELO [10.213.233.249])
 ([10.213.233.249])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:53:49 -0700
Message-ID: <1e83ca7c-b12f-cba9-24ab-28e6338864a0@intel.com>
Date: Tue, 30 Aug 2022 13:53:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.0
From: Matthew Auld <matthew.auld@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220825154239.52343-1-andrzej.hajda@intel.com>
 <00b973bf-51b4-e113-48a9-f5e24167884c@intel.com>
Content-Language: en-GB
In-Reply-To: <00b973bf-51b4-e113-48a9-f5e24167884c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: allow misaligned_pin
 test work with unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/08/2022 16:46, Matthew Auld wrote:
> On 25/08/2022 16:42, Andrzej Hajda wrote:
>> In case of Small BAR configurations stolen local memory can be 
>> unmappable.
>> Since the test does not touch the memory, passing I915_BO_ALLOC_GPU_ONLY
>> flag to i915_gem_object_create_region, will prevent -ENOSPC error from
>> _i915_gem_object_stolen_init.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Pushed to drm-intel-gt-next. Thanks for the fix.

> 
>> ---
>>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
>> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> index fb5e6196347925..e050a2de5fd1df 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> @@ -1080,7 +1080,7 @@ static int misaligned_case(struct 
>> i915_address_space *vm, struct intel_memory_re
>>       bool is_stolen = mr->type == INTEL_MEMORY_STOLEN_SYSTEM ||
>>                mr->type == INTEL_MEMORY_STOLEN_LOCAL;
>> -    obj = i915_gem_object_create_region(mr, size, 0, 0);
>> +    obj = i915_gem_object_create_region(mr, size, 0, 
>> I915_BO_ALLOC_GPU_ONLY);
>>       if (IS_ERR(obj)) {
>>           /* if iGVT-g or DMAR is active, stolen mem will be 
>> uninitialized */
>>           if (PTR_ERR(obj) == -ENODEV && is_stolen)
