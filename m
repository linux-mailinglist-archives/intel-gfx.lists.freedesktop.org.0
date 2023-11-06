Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1327E21E2
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E53810E2E7;
	Mon,  6 Nov 2023 12:38:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD21210E2E7;
 Mon,  6 Nov 2023 12:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699274329; x=1730810329;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=c73WlJaTLAhvkX0X0zarhgZBmrnKQRsq+q3ffVWbJos=;
 b=DdylIFcbBgzVYAEFw51vuaQqjmdlYXNG5jc/OIc38SIX8NL5POoEvu1A
 K2GWTZw4llaxMJY12FMRWQwyPuK7lbERcjQQCQp5u6z/cW0FqQNjnED1q
 UUJmQCVHaZtEAHZ6vSaBzIpLtlt6kvlIiXh8s6Y3mn1sPdGkQ1VO/acN3
 Dec+KlgfwBoCHNwc9RivuRPpuMFjqq/43PH2p42tun81LD2O8JRSYhGuR
 ZBlZ+gI6FyqqZIl2BDUhqzzGxW1tkD24RppexxrwNfMBS9Su+D5EoFlHZ
 umWXEw9wu9AYKUKYVbjaX/ibfMgMDQTTO1b2Bk1ZXBb6i8yrMY5Thi8Va w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="389075151"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="389075151"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:38:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; 
   d="scan'208";a="3434807"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO [10.213.234.152])
 ([10.213.234.152])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:38:48 -0800
Message-ID: <710eaf92-46d5-42e8-9c46-b59571401494@linux.intel.com>
Date: Mon, 6 Nov 2023 12:38:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-3-tvrtko.ursulin@linux.intel.com>
 <20231103183254.kl4uhqzbfw7nw6i4@kamilkon-desk.igk.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231103183254.kl4uhqzbfw7nw6i4@kamilkon-desk.igk.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/9] tests/i915/drm_fdinfo: Stress
 test context close versus fdinfo reads
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


On 03/11/2023 18:32, Kamil Konieczny wrote:
> Hi Tvrtko,
> On 2023-10-12 at 09:15:40 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> A short smoke tests to exercise fdinfo reads in parallel to contexts
>> getting created and destroyed.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   tests/intel/drm_fdinfo.c | 68 ++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 68 insertions(+)
>>
>> diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
>> index 344c44dce78b..c4218b0d16e6 100644
>> --- a/tests/intel/drm_fdinfo.c
>> +++ b/tests/intel/drm_fdinfo.c
>> @@ -22,11 +22,14 @@
>>    *
>>    */
>>   
>> +#include <fcntl.h>
>> +
>>   #include "igt.h"
>>   #include "igt_core.h"
>>   #include "igt_device.h"
>>   #include "igt_drm_fdinfo.h"
>>   #include "i915/gem.h"
>> +#include "i915/gem_create.h"
>>   #include "i915/gem_vm.h"
>>   #include "intel_ctx.h"
>>   /**
>> @@ -72,6 +75,8 @@
>>    * SUBTEST: virtual-busy-idle-all
>>    *
>>    * SUBTEST: virtual-idle
>> + *
>> + * SUBTEST: context-close-stress
>>    */
>>   
>>   IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
>> @@ -717,6 +722,56 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>>   	}
>>   }
>>   
>> +static void stress_context_close(int i915)
>> +{
>> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
>> +	struct igt_helper_process reader = { };
>> +	struct drm_client_fdinfo info;
>> +	uint32_t batch;
>> +	int dir, ret;
>> +	char buf[64];
>> +
>> +	ret = snprintf(buf, sizeof(buf), "%u", i915);
>> +	igt_assert(ret > 0 && ret < sizeof(buf));
>> +
>> +	dir = open("/proc/self/fdinfo", O_DIRECTORY | O_RDONLY);
>> +	igt_assert_fd(dir);
>> +
>> +	memset(&info, 0, sizeof(info));
>> +	ret = __igt_parse_drm_fdinfo(dir, buf, &info, NULL, 0, NULL, 0);
>> +	igt_assert(ret > 0);
> 
> You repeat this pattern later, it can be made into
> function:
> 
> igt_parse_drm_fdinfo(dir, buf, *info, p1, i1, p2, i2)
> {
> 	memset(info, 0, sizeof(*info));
> 	ret = __igt_parse_drm_fdinfo(dir, buf, info, p1, i1, p2, i2);
> 	igt_assert(ret > 0);
> }
> 
>> +	igt_require(info.num_regions);
>> +
>> +	batch = gem_create(i915, 4096);
>> +	gem_write(i915, batch, 0, &bbe, sizeof(bbe));
>> +
>> +	igt_fork_helper(&reader) {
>> +		for (;;) {
>> +			memset(&info, 0, sizeof(info));
>> +			ret = __igt_parse_drm_fdinfo(dir, buf, &info,
>> +						     NULL, 0, NULL, 0);
>> +			igt_assert(ret > 0);
> 
> Here you repeat this.
> 
> With or without makeing this a function,
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks Kamil!

I opted to keep it as is to avoid having to come with a name for a new 
helper, and because it is only two instances.

Doing another CI pass on both IGT and i915 series and fingers crossed it 
is still all healthy.

Regards,

Tvrtko

> 
>> +		}
>> +	}
>> +
>> +	igt_until_timeout(10) {
>> +		struct drm_i915_gem_exec_object2 obj = {
>> +			.handle = batch,
>> +		};
>> +		struct drm_i915_gem_execbuffer2 eb = {
>> +			.buffers_ptr = to_user_pointer(&obj),
>> +			.buffer_count = 1,
>> +		};
>> +
>> +		eb.rsvd1 = gem_context_create(i915);
>> +		igt_assert(eb.rsvd1);
>> +		gem_execbuf(i915, &eb);
>> +		gem_context_destroy(i915, eb.rsvd1);
>> +	}
>> +
>> +	igt_stop_helper(&reader);
>> +}
>> +
>>   #define test_each_engine(T, i915, ctx, e) \
>>   	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
>>   		igt_dynamic_f("%s", e->name)
>> @@ -848,6 +903,19 @@ igt_main
>>   	test_each_engine("isolation", i915, ctx, e)
>>   		single(i915, ctx, e, TEST_BUSY | TEST_ISOLATION);
>>   
>> +	igt_subtest_group {
>> +		int newfd;
>> +
>> +		igt_fixture
>> +			newfd = drm_reopen_driver(i915);
>> +
>> +		igt_subtest("context-close-stress")
>> +			stress_context_close(newfd);
>> +
>> +		igt_fixture
>> +			drm_close_driver(newfd);
>> +	}
>> +
>>   	igt_fixture {
>>   		intel_ctx_destroy(i915, ctx);
>>   		drm_close_driver(i915);
>> -- 
>> 2.39.2
>>
