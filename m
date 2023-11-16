Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399447EE0C0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 13:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871EF10E280;
	Thu, 16 Nov 2023 12:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8492110E280
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700138073; x=1731674073;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1v62Tf1Qka/PqPd+llbLiV0CG+t01YqJQMDKJacDd6U=;
 b=K2/o2yNaAxpKBkDV/X63pCmrO0YqtERhWhFs7dnvDHI8OGIMssqcympi
 vPexWDhcPqFKs/PBh444N0EhcUEDeC4wOXLa51Xarb91uVatttiui9pIB
 Nq+3+aGHfEL+flLPRI4K83JemrcATV6hi6V2EaaNke6XBGubjnT/G6xK2
 yiR2JTEN/oV95M5zXDUHzCBKePz7Z8ZZjBV1cdoSVTILwH+WBsOucWMAL
 D7mX9rQ+z51aHHLG7dViRV+aCi96s0VysiCihLz0pI9QbEDPNoQksSTyD
 RIQlSYI2dSpWiyynF8oFOep08sqhzXhorDi0B2ykowaEyPTynMvUORcyP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370437121"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="370437121"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:34:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="1096772252"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="1096772252"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.205])
 ([10.213.28.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:34:31 -0800
Message-ID: <19a36552-1ab8-4648-9ff2-e683564c61c6@intel.com>
Date: Thu, 16 Nov 2023 13:34:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
 <ZVYAnhUoL-C0zdBK@ashyti-mobl2.lan>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZVYAnhUoL-C0zdBK@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: do not clean GT table on error
 path
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 16.11.2023 12:44, Andi Shyti wrote:
> Hi Andrzej,
>
> On Wed, Nov 15, 2023 at 11:54:03AM +0100, Andrzej Hajda wrote:
>> The only task of intel_gt_release_all is to zero gt table. Calling
>> it on error path prevents intel_gt_driver_late_release_all (called from
>> i915_driver_late_release) to cleanup GTs, causing leakage.
>> After i915_driver_late_release GT array is not used anymore so
>> it does not need cleaning at all.
>>
>> Sample leak report:
>>
>> BUG i915_request (...): Objects remaining in i915_request on __kmem_cache_shutdown()
>> ...
>> Object 0xffff888113420040 @offset=64
>> Allocated in __i915_request_create+0x75/0x610 [i915] age=18339 cpu=1 pid=1454
>>   kmem_cache_alloc+0x25b/0x270
>>   __i915_request_create+0x75/0x610 [i915]
>>   i915_request_create+0x109/0x290 [i915]
>>   __engines_record_defaults+0xca/0x440 [i915]
>>   intel_gt_init+0x275/0x430 [i915]
>>   i915_gem_init+0x135/0x2c0 [i915]
>>   i915_driver_probe+0x8d1/0xdc0 [i915]
>>
>> v2: removed whole intel_gt_release_all
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
>> Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thx all, pushed.

> Andi

