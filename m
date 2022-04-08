Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5184F9139
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 10:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7436110E02E;
	Fri,  8 Apr 2022 08:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392E710E02E;
 Fri,  8 Apr 2022 08:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649408225; x=1680944225;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=P20P4sEf0Hm/HDgOmyakT9qCjGhdTrTnOVkqYF2TXxo=;
 b=DwnCO1fQlqdElrFYxqmWWV+Cgbxlc6PV3LMprinV2HeKpb9fguwp1lRL
 6/BbprYNvtHNApsrTDfsHMf+d1ftGgsLBzMZV8+Zz9ZqobZfO/ZWEq0nt
 KYV8tN5JHrdKmY8ZALJwI7RzNQ/L73buGNFdUrvv1rysMqp1O9QzVnjkz
 ljUY+En93t6p6xZpMxNVlUCqX2D5c9o1085IQv4GgVCWILzyoxq0fYiBR
 j3VVGP9gbnVIR1oC0aZtsJa0NJODku4nIZMJI2KY4EALk79AbVOwpIu9Q
 9JI4BE8UFqPlZZut9wQAVgQeEFmV36K3IgNWscSYXBENqikAB9POLae46 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="242143563"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="242143563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:57:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="571419235"
Received: from ddobson-mobl.ger.corp.intel.com (HELO [10.213.224.220])
 ([10.213.224.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:57:02 -0700
Message-ID: <cbef4460-580a-ab84-296c-6aa1715e8381@linux.intel.com>
Date: Fri, 8 Apr 2022 09:56:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Petri Latvala <petri.latvala@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
References: <20220328100859.13550-1-matthew.auld@intel.com>
 <YkGZcTZHHcF781Zz@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YkGZcTZHHcF781Zz@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] tests/gem_lmem_swapping:
 limit lmem to 4G
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 CQ Tang <cq.tang@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/03/2022 12:18, Petri Latvala wrote:
> On Mon, Mar 28, 2022 at 11:08:59AM +0100, Matthew Auld wrote:
>> From: CQ Tang <cq.tang@intel.com>
>>
>> On some systems lmem can be as large as 16G, which seems to trigger
>> various CI timeouts, and in the best case just takes a long time. For
>> the purposes of the test we should be able to limit to 4G, without any
>> big loss in coverage.
>>
>> v2:
>>   - No need to try again without the modparam; if it's not supported it
>>     will still load the driver just fine.
>> v3(Petri):
>>   - Add a helpful debug print in case the kernel is missing support for
>>     the lmem_size modparam.
>>
>> Signed-off-by: CQ Tang <cq.tang@intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
>> Cc: Petri Latvala <petri.latvala@intel.com>
>> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   tests/i915/gem_lmem_swapping.c | 12 +++++++++++-
>>   1 file changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
>> index 31644bcd..6cf1acec 100644
>> --- a/tests/i915/gem_lmem_swapping.c
>> +++ b/tests/i915/gem_lmem_swapping.c
>> @@ -526,11 +526,20 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>>   
>>   	igt_fixture {
>>   		struct intel_execution_engine2 *e;
>> +		char *tmp;
>>   
>> -		i915 = drm_open_driver(DRIVER_INTEL);
>> +		igt_i915_driver_unload();
>> +		igt_assert_eq(igt_i915_driver_load("lmem_size=4096"), 0);
>> +
>> +		i915 = __drm_open_driver(DRIVER_INTEL);
>>   		igt_require_gem(i915);
>>   		igt_require(gem_has_lmem(i915));
>>   
>> +		tmp = __igt_params_get(i915, "lmem_size");
>> +		if (!tmp)
>> +			igt_info("lmem_size modparam not supported on this kernel. Continuing with full lmem size. This may result in CI timeouts.");
>> +		free(tmp);
> 
> Newline at the end missing. With that added,
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>
> 
>> +
>>   		regions = gem_get_query_memory_regions(i915);
>>   		igt_require(regions);
>>   
>> @@ -556,6 +565,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>>   		intel_ctx_destroy(i915, ctx);
>>   		free(regions);
>>   		close(i915);
>> +		igt_i915_driver_unload();

If this causes an extra module unload on legacy platforms just after 
tests skips due not having local memory, is it a good idea? Would it 
make sense to move the skip to before unload and reload with lmem_size 
param and only unload if that condition was passed?

Regards,

Tvrtko

>>   	}
>>   
>>   	igt_exit();
>> -- 
>> 2.34.1
>>
