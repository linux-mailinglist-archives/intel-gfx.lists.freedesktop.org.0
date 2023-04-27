Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01D86F0185
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 09:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE0B10E158;
	Thu, 27 Apr 2023 07:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A49A210E158
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 07:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682579968; x=1714115968;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=QVAzNFjhOAfh4WqiT/70X/KUopiYsxlKBCxRKd8O7Nc=;
 b=Q6030XTCcJKQm6wPXj7VgkAvqYbRAIiQ767794GDy9WyUknt1tCg4ld6
 NpC9FqFBY24kqXUx9yvmCWlEGXxZEDtNpyqSYoYsDo7BAk1p/+5c0dsD8
 syyg/fc5zAbz+LnpxdePupGmCohx5A8Rbpym0qc1+EmAVV6i1GDAuBuz7
 ctoFEfBz5ohYPJn51YHx4Sp1nkT5NAIYFWp9ArtDkhZJ7fh9lNDg1Qcc4
 76bwy6bpnFywpu5AbKZz5KXyuLw/3vWFP1r4lu4vtraHlE1c9vzUyR5cm
 f9V/c5r3VNHftJtkJ18LbMky1E1Wb9vzr5rz+2x5J7pcOOEREWlaOecab w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="326960263"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="326960263"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 00:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="696963319"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="696963319"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.66])
 ([10.213.9.66])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 00:19:26 -0700
Message-ID: <2f7ac767-841c-8ca8-b44c-69b7b4e1cc65@intel.com>
Date: Thu, 27 Apr 2023 09:19:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230425-hugepage-migrate-v8-0-7868d54eaa27@intel.com>
 <168254815516.17151.12443810028119294232@emeril.freedesktop.org>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <168254815516.17151.12443810028119294232@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hugepage_manager_and_test_for_MTL_=28rev2=29?=
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

On 27.04.2023 00:29, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Hugepage manager and test for MTL (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/116995/ 
> <https://patchwork.freedesktop.org/series/116995/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13065 -> Patchwork_116995v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_116995v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_116995v2, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/index.html
> 
> 
>     Participating hosts (41 -> 39)
> 
> Missing (2): fi-kbl-soraka fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_116995v2:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>       o bat-rpls-1: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html>


Known bug [1].
Other issues also seems not related.


[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/7978

Regards
Andrzej


> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_116995v2 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@i915_selftest@live@reset:
> 
>       o bat-rpls-2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-rpls-2/igt@i915_selftest@live@reset.html> (i915#7913 <https://gitlab.freedesktop.org/drm/intel/issues/7913>)
>   *
> 
>     igt@i915_selftest@live@slpc:
> 
>       o bat-rpls-1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-rpls-1/igt@i915_selftest@live@slpc.html> (i915#6997 <https://gitlab.freedesktop.org/drm/intel/issues/6997>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-apl-guc: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13065/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>   *
> 
>     igt@i915_selftest@live@mman:
> 
>       o bat-rpls-2: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13065/bat-rpls-2/igt@i915_selftest@live@mman.html> (i915#7392 <https://gitlab.freedesktop.org/drm/intel/issues/7392>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-rpls-2/igt@i915_selftest@live@mman.html>
>   *
> 
>     igt@i915_selftest@live@reset:
> 
>       o bat-rpls-1: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13065/bat-rpls-1/igt@i915_selftest@live@reset.html> (i915#8384 <https://gitlab.freedesktop.org/drm/intel/issues/8384>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-rpls-1/igt@i915_selftest@live@reset.html>
>   *
> 
>     igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
> 
>       o bat-dg2-8: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13065/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html> (i915#7932 <https://gitlab.freedesktop.org/drm/intel/issues/7932>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html>
> 
> 
>         Warnings
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>       o fi-tgl-1115g4: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13065/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html> (i915#8102 <https://gitlab.freedesktop.org/drm/intel/issues/8102>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116995v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html> (i915#7443 <https://gitlab.freedesktop.org/drm/intel/issues/7443> / i915#8102 <https://gitlab.freedesktop.org/drm/intel/issues/8102>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13065 -> Patchwork_116995v2
> 
> CI-20190529: 20190529
> CI_DRM_13065: d7ded126c43e062a8ed119e55a797e4c616e1967 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7272: b2786c0c504bb4fa9f2dc6082fe9332223198b24 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_116995v2: d7ded126c43e062a8ed119e55a797e4c616e1967 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 4ec1dd2a0fbf drm/i915: Use correct huge page manager for MTL
> f3c4bc9f7fc9 drm/i915: Migrate platform-dependent mock hugepage 
> selftests to live
> 

