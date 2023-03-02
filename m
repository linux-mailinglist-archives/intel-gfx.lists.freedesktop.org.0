Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D786A7FFF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 11:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57A010E4BA;
	Thu,  2 Mar 2023 10:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F3010E4BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 10:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677753372; x=1709289372;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=d9g83yifzG9YVaYE6mqPCSZSZtydFdBZq14NVSrtYwg=;
 b=Z/CP3rjtF0gpi1LwYbdILwMuqU5beiFLs6T2i4eDAL8199E36zyljfX2
 UBDt+9n+YMufl31kQOoACERfI1P0CdFs77lahAfFOezSzSUES2+VRUVNy
 4lv4tBuRyEJzq/YWs+nByAFWfCindHEF4sO8AlUECxB/cEVktpIJKoB+9
 Vd2NcCfdk17H0Br6qg5dYRTUOJ7lgMuJqII01tDb4s8iGY6tyz7TQhZhv
 H9S+OQXloKJfNziGjDOZYWV4PIZP29EM03FwKWTL1crhk0I/I7I1GTy64
 qY5yo1PenlYDWchxEGWTekKoAjsig2kW/FHp41RMl4f0ZCW/AG+jmDNHa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="332168615"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="332168615"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 02:36:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="849032297"
X-IronPort-AV: E=Sophos;i="5.98,227,1673942400"; d="scan'208";a="849032297"
Received: from drooney-mobl.ger.corp.intel.com (HELO [10.252.11.69])
 ([10.252.11.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 02:36:09 -0800
Message-ID: <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
Date: Thu, 2 Mar 2023 10:36:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
 <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
In-Reply-To: <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/02/2023 14:08, Matthew Auld wrote:
> On 27/02/2023 17:19, Jonathan Cavitt wrote:
>> Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock 
>> selftests into
>> live selftests as their requirements have recently become 
>> platform-dependent.
>> Additionally, apply necessary platform dependency checks to these tests.
>>
>> v2: Reorder
>>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> 
> r-b still stands for the series. Note that CI is busted atm though, so 
> we can't merge this yet. Likely need to re-trigger testing for the 
> series once CI/drm-tip is working again.

CI looks to be back. Can you trigger a retest through patchwork, or 
resend the series?

> 
> 
>> ---
>>   .../gpu/drm/i915/gem/selftests/huge_pages.c   | 22 ++++++++++++++-----
>>   1 file changed, 17 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c 
>> b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> index defece0bcb81..375f119ab261 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>> @@ -710,7 +710,7 @@ static void close_object_list(struct list_head 
>> *objects,
>>       }
>>   }
>> -static int igt_mock_ppgtt_huge_fill(void *arg)
>> +static int igt_ppgtt_huge_fill(void *arg)
>>   {
>>       struct i915_ppgtt *ppgtt = arg;
>>       struct drm_i915_private *i915 = ppgtt->vm.i915;
>> @@ -784,7 +784,8 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>           GEM_BUG_ON(!expected_gtt);
>>           GEM_BUG_ON(size);
>> -        if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>> +        if (expected_gtt & I915_GTT_PAGE_SIZE_4K &&
>> +            GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>>               expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>>           i915_vma_unpin(vma);
>> @@ -831,7 +832,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>       return err;
>>   }
>> -static int igt_mock_ppgtt_64K(void *arg)
>> +static int igt_ppgtt_64K(void *arg)
>>   {
>>       struct i915_ppgtt *ppgtt = arg;
>>       struct drm_i915_private *i915 = ppgtt->vm.i915;
>> @@ -913,6 +914,17 @@ static int igt_mock_ppgtt_64K(void *arg)
>>           unsigned int offset = objects[i].offset;
>>           unsigned int flags = PIN_USER;
>> +        /*
>> +         * For modern GTT models, the requirements for marking a 
>> page-table
>> +         * as 64K have been relaxed.  Account for this.
>> +         */
>> +
>> +        if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>> +            expected_gtt = 0;
>> +            expected_gtt |= size & (SZ_64K | SZ_2M) ? 
>> I915_GTT_PAGE_SIZE_64K : 0;
>> +            expected_gtt |= size & SZ_4K ? I915_GTT_PAGE_SIZE_4K : 0;
>> +        }
>> +
>>           for (single = 0; single <= 1; single++) {
>>               obj = fake_huge_pages_object(i915, size, !!single);
>>               if (IS_ERR(obj))
>> @@ -1910,8 +1922,6 @@ int i915_gem_huge_page_mock_selftests(void)
>>           SUBTEST(igt_mock_exhaust_device_supported_pages),
>>           SUBTEST(igt_mock_memory_region_huge_pages),
>>           SUBTEST(igt_mock_ppgtt_misaligned_dma),
>> -        SUBTEST(igt_mock_ppgtt_huge_fill),
>> -        SUBTEST(igt_mock_ppgtt_64K),
>>       };
>>       struct drm_i915_private *dev_priv;
>>       struct i915_ppgtt *ppgtt;
>> @@ -1962,6 +1972,8 @@ int i915_gem_huge_page_live_selftests(struct 
>> drm_i915_private *i915)
>>           SUBTEST(igt_ppgtt_sanity_check),
>>           SUBTEST(igt_ppgtt_compact),
>>           SUBTEST(igt_ppgtt_mixed),
>> +        SUBTEST(igt_ppgtt_huge_fill),
>> +        SUBTEST(igt_ppgtt_64K),
>>       };
>>       if (!HAS_PPGTT(i915)) {
