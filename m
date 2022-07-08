Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A9756BE0A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 18:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2473410E342;
	Fri,  8 Jul 2022 16:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E3C10E342
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 16:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657296575; x=1688832575;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2nFCOmSn5xyRsm2aCTNcRs3nm5RKu5A1X4RCm3T9Gik=;
 b=e5AvYoFQn/CEocxISBC3GfNoZwm3pWj8cTsOeTQAfYiJ9LLiNRUhY9bm
 DSUd5S6ioriBSW2ByRw1TzAi5hlDKJkdyvgfqClbXrLG7QI0Rnr4jyPGa
 0528gYsSORZcWH7lxIAXsRQsTUoZCQKG74KJeoUDyEJgAnTlI8tX5bWkj
 GA471EqGM1BDWc5k5hgPubfJ7J2Pjn6t6jA4zFfzt5Dd784wnBuA6wGLY
 UHgRNL2gYqWC0BW3hhK0MggOj5WYyKst+UJDf5GXbfsuTsRhJCR1LkRUv
 Q0ZLLLRFg+nvviaUPVVwX9TUfxxQnIjv66YwCGDqruYU5fDwAl5khUELx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="283063755"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="283063755"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 09:09:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="626749260"
Received: from orsosgc001.jf.intel.com ([10.165.21.135])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 09:09:34 -0700
Date: Fri, 8 Jul 2022 09:09:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YshWvt0abeiCmRu5@orsosgc001.jf.intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
 <165728784098.4505.10608543927823141096@emeril.freedesktop.org>
 <YshSDaC2HFdFz9Hq@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <YshSDaC2HFdFz9Hq@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_i915/perf=3A_Replace_DRM=5FDEBUG_wi?=
 =?utf-8?q?th_driver_specific_drm=5Fdbg_call?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 08:49:33AM -0700, Matt Roper wrote:
>On Fri, Jul 08, 2022 at 01:44:00PM +0000, Patchwork wrote:
>> == Series Details ==
>>
>> Series: series starting with [1/2] i915/perf: Replace DRM_DEBUG with driver specific drm_dbg call
>> URL   : https://patchwork.freedesktop.org/series/106062/
>> State : failure
>>
>> == Summary ==
>>
>> CI Bug Log - changes from CI_DRM_11857_full -> Patchwork_106062v1_full
>> ====================================================
>>
>> Summary
>> -------
>>
>>   **FAILURE**
>>
>>   Serious unknown changes coming with Patchwork_106062v1_full absolutely need to be
>>   verified manually.
>>
>>   If you think the reported changes have nothing to do with the changes
>>   introduced in Patchwork_106062v1_full, please notify your bug team to allow them
>>   to document this new failure mode, which will reduce false positives in CI.
>>
>>
>>
>> Participating hosts (13 -> 13)
>> ------------------------------
>>
>>   No changes in participating hosts
>>
>> Possible new issues
>> -------------------
>>
>>   Here are the unknown changes that may have been introduced in Patchwork_106062v1_full:
>>
>> ### IGT changes ###
>>
>> #### Possible regressions ####
>>
>>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>>     - shard-apl:          [PASS][1] -> [WARN][2]
>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>
>Seems to be the same warning seen in
>
>https://gitlab.freedesktop.org/drm/intel/-/issues/2684
>https://gitlab.freedesktop.org/drm/intel/-/issues/2681
>https://gitlab.freedesktop.org/drm/intel/-/issues/1804
>
>but on a different platform.  Not caused by these patches.
>
>>
>>   * igt@i915_selftest@live@slpc:
>>     - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
>>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl7/igt@i915_selftest@live@slpc.html
>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl6/igt@i915_selftest@live@slpc.html
>
>Log cuts off in middle.  Likely a sporadic system/network crash; not
>caused by the changes here.
>
>>
>>   * igt@kms_async_flips@test-time-stamp@pipe-a-edp-1:
>>     - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
>>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb1/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html
>>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb8/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html
>
>Another unexpected incomplete.  Not caused by these patches.
>
>
>Series applied to drm-intel-gt-next (with a minor tweak to the author
>line to make the formatting match the s-o-b line).  Thanks for the
>patches and reviews.

Thanks for applying this,
Umesh

>
>
>Matt
>
