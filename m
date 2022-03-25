Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1212A4E7112
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36B9510E2A4;
	Fri, 25 Mar 2022 10:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA8110E499;
 Fri, 25 Mar 2022 10:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648203634; x=1679739634;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DO6LbEaDymBcOo8F6/awNwVMh95nOZtawp7fBmDBVoc=;
 b=YdVoPh3M6REhurHkwRNapXx3f9hjNbbhKjCLUvx54P9YGkCv2e3N1/Ty
 /KOa3zmGy8ugvjc4BUaT639NCgVP19YaMbw6vknlirlTC3+Q+sUyZJYDl
 RWki3jKgxomZZCXRWzdyZH91XY3Qcqut72MNDhU0XmRnxUBRMDtNg/AeK
 I/Yy/R+EBVABj2j9eg9/6ICXjkhlUzCEmKHD2LcBVQMhZK1iSovuxsz5I
 o0cpOUOaOywnXVzHTSve07OGtjUMt88MRHHczH3HiwtXtHdEo4LEFbgS+
 BOUkfx6ZqEalzUUj39M4O6rVbThPVRcTQNifiqSXQDW0uQeCbbqaz4Qpt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="246080408"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="246080408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:20:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545032457"
Received: from mhenry-mobl.ger.corp.intel.com (HELO [10.252.10.83])
 ([10.252.10.83])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:20:18 -0700
Message-ID: <31737669-8504-648c-90d5-8a76d6d1abef@intel.com>
Date: Fri, 25 Mar 2022 10:20:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: Petri Latvala <petri.latvala@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
 <Yj2XCNwAQ4Y98r8L@platvala-desk.ger.corp.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Yj2XCNwAQ4Y98r8L@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4]
 tests/gem_lmem_swapping: limit lmem to 4G
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
Cc: igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/03/2022 10:18, Petri Latvala wrote:
> On Thu, Mar 24, 2022 at 02:26:20PM +0000, Matthew Auld wrote:
>> From: CQ Tang <cq.tang@intel.com>
>>
>> On some systems lmem can be as large as 16G, which seems to trigger
>> various CI timeouts, and in the best case just takes a long time. For
>> the purposes of the test we should be able to limit to 4G, without any
>> big loss in coverage.
>>
>> Signed-off-by: CQ Tang <cq.tang@intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
>> ---
>>   tests/i915/gem_lmem_swapping.c | 9 ++++++++-
>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
>> index 995a663f..ad1c989c 100644
>> --- a/tests/i915/gem_lmem_swapping.c
>> +++ b/tests/i915/gem_lmem_swapping.c
>> @@ -526,7 +526,13 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>>   	igt_fixture {
>>   		struct intel_execution_engine2 *e;
>>   
>> -		i915 = drm_open_driver(DRIVER_INTEL);
>> +		igt_i915_driver_unload();
>> +		if (igt_i915_driver_load("lmem_size=4096")) {
>> +			igt_debug("i915 missing lmem_size modparam support\n");
>> +			igt_assert_eq(igt_i915_driver_load(NULL), 0);
>> +		}
> 
> Does the driver load truly fail with an unknown param?

Yeah, I have since removed that. From the CI logs it just loads anyway...

> 
> 
