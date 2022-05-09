Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A30A51FD87
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 15:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9008A10F145;
	Mon,  9 May 2022 13:07:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA0710F13A;
 Mon,  9 May 2022 13:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652101635; x=1683637635;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SMcgmXeLpJY2VvFtqPwSzBDiBA6+jm6vjUVE/D5fCqE=;
 b=bBTMDWupuBoT3pxwE5xwp79TKBYbmD4ai8lWad9U4pOidUCw0kbJAfIL
 brBJ6wk5MVJahGePwuf3t1B04552QEUr2sbhLQeXIdrf69oUSd5x0VZo6
 xX8PQPFt1BXnlKKqR8WoiRgSWiYNLwKbBwcVDl6nCgLwYCpIHvUEBfkst
 ELR+5zMp+ZG/xMT8tUXTBNADbpIctrOIyYuRpOTnf1apgy2rc6/fHPvJX
 sPSpZec77U3zdGvUxROgTPlaC1mT6axBtYzBAj4Ta5h7SeDy8Xi9dj7vB
 1Dt7tmVZzGQqLUAa0jFOqNcumOMDdoKhEohcoenAuXPseCrAuwrkLfOB0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="294267953"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="294267953"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 06:07:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="519222194"
Received: from oanderso-mobl1.ger.corp.intel.com (HELO [10.213.217.157])
 ([10.213.217.157])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 06:07:13 -0700
Message-ID: <2deb2d24-034c-e2e7-4b2c-7bf501529a8c@linux.intel.com>
Date: Mon, 9 May 2022 14:07:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20220429100414.647857-1-tvrtko.ursulin@linux.intel.com>
 <5aea48fb-8b80-4873-5e37-64bec9562e46@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <5aea48fb-8b80-4873-5e37-64bec9562e46@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Enable THP on Icelake and
 beyond
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/05/2022 11:49, Matthew Auld wrote:
> On 29/04/2022 11:04, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We have a statement from HW designers that the GPU read regression when
>> using 2M pages was fixed from Icelake onwards, which was also confirmed
>> by bencharking Eero did last year:
>>
>> """
>> When IOMMU is disabled, enabling THP causes following perf changes on
>> TGL-H (GT1):
>>
>>      10-15% SynMark Batch[0-3]
>>      5-10% MemBW GPU texture, SynMark ShMapVsm
>>      3-5% SynMark TerrainFly* + Geom* + Fill* + CSCloth + Batch4
>>      1-3% GpuTest Triangle, SynMark TexMem* + DeferredAA + Batch[5-7]
>>            + few others
>>      -7% MemBW GPU blend
>>
>> In the above 3D benchmark names, * means all the variants of tests with
>> the same prefix. For example "SynMark TexMem*", means both TexMem128 &
>> TexMem512 tests in the synthetic (Intel internal) SynMark test suite.
>>
>> In the (public, but proprietary) GfxBench & GLB(enchmark) test suites,
>> there are both onscreen and offscreen variants of each test. Unless
>> explicitly stated otherwise, numbers are for both variants.
>>
>> All tests are run with FullHD monitor. All tests are fullscreen except
>> for GLB and GpuTest ones, which are run in 1/2 screen window (GpuTest
>> triangle is run both in fullscreen and 1/2 screen window).
>> """
>>
>> Since the only regression is MemBW GPU blend, against many more gains,
>> it sounds it is time to enable THP on Gen11+.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/430
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> 
> fwiw, for the series,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thanks! With a statement from hw arch, benchmark results from Eero and a 
r-b from you, I think it is justified to push this so I have. Lets see 
if someone notices an improvement.

Regards,

Tvrtko

> 
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gemfs.c | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c 
>> b/drivers/gpu/drm/i915/gem/i915_gemfs.c
>> index ee87874e59dc..c5a6bbc842fc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
>> @@ -28,12 +28,14 @@ int i915_gemfs_init(struct drm_i915_private *i915)
>>        *
>>        * One example, although it is probably better with a per-file
>>        * control, is selecting huge page allocations 
>> ("huge=within_size").
>> -     * However, we only do so to offset the overhead of iommu lookups
>> -     * due to bandwidth issues (slow reads) on Broadwell+.
>> +     * However, we only do so on platforms which benefit from it, or to
>> +     * offset the overhead of iommu lookups, where with latter it is 
>> a net
>> +     * win even on platforms which would otherwise see some performance
>> +     * regressions such a slow reads issue on Broadwell and Skylake.
>>        */
>>       opts = NULL;
>> -    if (i915_vtd_active(i915)) {
>> +    if (GRAPHICS_VER(i915) >= 11 || i915_vtd_active(i915)) {
>>           if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
>>               opts = huge_opt;
>>               drm_info(&i915->drm,
>> @@ -41,7 +43,10 @@ int i915_gemfs_init(struct drm_i915_private *i915)
>>                    opts);
>>           } else {
>>               drm_notice(&i915->drm,
>> -                   "Transparent Hugepage support is recommended for 
>> optimal performance when IOMMU is enabled!\n");
>> +                   "Transparent Hugepage support is recommended for 
>> optimal performance%s\n",
>> +                   GRAPHICS_VER(i915) >= 11 ?
>> +                   " on this platform!" :
>> +                   " when IOMMU is enabled!");
>>           }
>>       }
