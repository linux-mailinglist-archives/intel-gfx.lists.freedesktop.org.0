Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C014758FE2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 10:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5324810E41F;
	Wed, 19 Jul 2023 08:07:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7548D10E41C;
 Wed, 19 Jul 2023 08:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689754065; x=1721290065;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9dbb/jRV//9gtABh7qvJSxS/2ti2nBx+VGffDGsac1A=;
 b=Kjvbi9ia3w5tjy+ZltU8WogjRPzpbW4E+KKUu0DDBKcqLou0BQzsGI5J
 ixVfLfAVP4GrR268e2Ais5pB/B4b1ie510vf+qOgaF5qkix/F4azwLI/M
 yAMg/sa0zI0ZQpRIELvdv6qNarPxN37AFkamb5GSoHxpxWRbkIVGCYhfJ
 Cl8KTfd2n/CimZY241UWu8qEOSY48YFzDjACz/Tbj4j0sr5MTmqjMKyqt
 iFPoU6sqzyQOhnbYJduyiX+Z6yU2jxXrXJ/UFAwo2LS/FUdXrKWwY4hTp
 CufGTvbMht3EV29j6JEYYSSnP8s0tNewImDTMhaC+u7xplmnDmevy6xjY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="369961219"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369961219"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 01:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="897828838"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="897828838"
Received: from bcascian-mobl1.ger.corp.intel.com (HELO [10.213.192.119])
 ([10.213.192.119])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 01:07:22 -0700
Message-ID: <6772087b-d540-dcca-e6f4-c6ba048c969e@linux.intel.com>
Date: Wed, 19 Jul 2023 09:07:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230718084041.871888-1-tvrtko.ursulin@linux.intel.com>
 <87bkg9hxqa.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87bkg9hxqa.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_rps: Fix test after
 silent conflict harder
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
Cc: Intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/07/2023 19:37, Dixit, Ashutosh wrote:
> On Tue, 18 Jul 2023 01:40:41 -0700, Tvrtko Ursulin wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Feature test also needs adjusting after sysfs helper API changes...
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
>> Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
>> Reference: 1dfa7a007a8e ("tests/i915_pm_rps: Fix test after silent conflict")
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Lukasz Laguna <lukasz.laguna@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>   tests/i915/i915_pm_rps.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
>> index 15c74cc703c2..3ef5842dd7f8 100644
>> --- a/tests/i915/i915_pm_rps.c
>> +++ b/tests/i915/i915_pm_rps.c
>> @@ -1015,20 +1015,23 @@ static void sysfs_set_u32(int dir, const char *attr, uint32_t set)
>>   static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
>>   {
>> 	uint64_t ahnd = get_reloc_ahnd(i915, 0);
>> +	unsigned int def_up = 0, def_down = 0;
>> 	const unsigned int points = 10;
>> -	unsigned int def_up, def_down;
>> 	igt_spin_t *spin = NULL;
>> 	const intel_ctx_t *ctx;
>> 	unsigned int *ta, *tb;
>> 	unsigned int i;
>> 	int sysfs;
>> +	bool ret;
>>
>> 	sysfs = igt_sysfs_gt_open(i915, gt);
>> 	igt_require(sysfs >= 0);
>>
>> 	/* Feature test */
>> -	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
>> -	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
>> +	ret = __igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct", &def_up);
>> +	igt_require(ret);
>> +	ret = __igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct", &def_down);
>> +	igt_require(ret);
> 
> Could also use igt_sysfs_has_attr(). Ok as is too.

Getting hard to stay on top of the API richness! :)

> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Thanks for the reviews - pushed to fix the failures.

Regards,

Tvrtko

> 
>> 	igt_require(def_up && def_down);
>>
>> 	/* Check invalid percentages are rejected */
>> --
>> 2.39.2
>>
