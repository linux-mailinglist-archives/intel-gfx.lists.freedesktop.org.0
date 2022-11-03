Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6725B617B62
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D988210E27B;
	Thu,  3 Nov 2022 11:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E10110E5D8;
 Thu,  3 Nov 2022 11:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667473944; x=1699009944;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=uZZ20mp1vY/gSgJfainnNp62QN2wT6t7jUYhhRTbKhE=;
 b=UDjZv0FDdIZAAkQkGhXhGvVwjv7BmqUESQ75CWndpWjC6fx6cxbPdZyx
 1Yxh8arB8jNG2W7jIlF4S0iiBBnZ7PEI37UFB7WIxJb5kwpgmvJZ3VUyQ
 zaT5+0Ag9OAS4g9xmpompPmf/pA5vURZgMoA9A09wk6Nsmyj7pluVvUKl
 ZgyrAya6aEuXOpoYg/8sCs1DcT3IibsWXsuudPpBlgbj4iwzXcSJN4CWs
 rMB4tNw8zh4qokL5j1W2/Bpf7wX8o4IjLVVvioEkBIhIcjtg4WzjqRgpp
 qImtsOVtY+jLV6Vs32l2VXkAxJzpaGXODgGcJ8Hj7P2C4PqweoGW3jUc9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="297110458"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="297110458"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:12:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="740149443"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="740149443"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.42.177])
 ([10.249.42.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:12:21 -0700
Message-ID: <0bebac6b-2b6f-4e10-014e-f47c21d31b4c@linux.intel.com>
Date: Thu, 3 Nov 2022 12:12:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221102150500.227161-1-matthew.auld@intel.com>
 <41f5ad21-9667-e678-f6a6-3b924e398152@linux.intel.com>
In-Reply-To: <41f5ad21-9667-e678-f6a6-3b924e398152@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915/module_load:
 restore gem_sanitycheck for discrete
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
Cc: intel-gfx@lists.freedesktop.org,
 Janga Rahul Kumar <janga.rahul.kumar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 11/3/2022 12:10 PM, Das, Nirmoy wrote:
> Reviewed-by: Nirmoy.das@intel.com
>
> On 11/2/2022 4:05 PM, Matthew Auld wrote:
>> This looks to be recently broken in: 5389b3f3
>> ("tests/i915/i915_module_load: Use GEM_BUSY instead of SET_CACHE for
>> sanity check").
>>
>> Which fails on discrete platforms, since we switched over to the
>> gem_busy ioctl, from the set_caching ioctl, which no longer gives
>> -ENODEV as the expected error.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Janga Rahul Kumar <janga.rahul.kumar@intel.com>
>> Cc: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
>> ---
>>   tests/i915/i915_module_load.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/tests/i915/i915_module_load.c 
>> b/tests/i915/i915_module_load.c
>> index eebb3167..d3a86b11 100644
>> --- a/tests/i915/i915_module_load.c
>> +++ b/tests/i915/i915_module_load.c
>> @@ -228,7 +228,7 @@ static void gem_sanitycheck(void)
>>   {
>>       struct drm_i915_gem_busy args = {};
>>       int i915 = __drm_open_driver(DRIVER_INTEL);
>> -    int expected = gem_has_lmem(i915) ? -ENODEV : -ENOENT;
>> +    int expected = -ENOENT;
>>       int err;
>>         err = 0;
