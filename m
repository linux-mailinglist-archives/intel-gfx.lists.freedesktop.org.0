Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FDC9F4C61
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 14:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD5210E96D;
	Tue, 17 Dec 2024 13:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrP0RB/2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9C510E416;
 Tue, 17 Dec 2024 13:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734442515; x=1765978515;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OXVIwx2Ai94LIf+belFYD6qADex+jJYaFWXe4qNORIs=;
 b=nrP0RB/2NUdBLABnE8tSuXL8NYBqyw1z8o3oq0+VKZvnndtlCV6N7u4j
 dUyZ/LSxIY/YjeXG5bM1KEHDx+HeZAY9H4bnhEeFONzUGP2faRRO1RUe/
 kVtEO7CzBHZQnwP4vJyxkNOPgoB2HWhzwJXE33rm7q2Y2ogVWBDWbWamB
 SkT6syxMpBqITDarzPZKyr6/9oO3cFBnq1Y7xzJNXxk3lo0DOlzp1XvAR
 Ml7PBKQLQPaF76idyw02d1YiWDTAbfmbBUYhYiQVJ3qSyiAICIws8dfOH
 dy+2PmE7ZcXj736gUgzGUUwQlrzCjRVMvjuX309niJCZzjJkaEeiUbVFK Q==;
X-CSE-ConnectionGUID: oMT3pCGLSCeyIKSyc3Pffw==
X-CSE-MsgGUID: 9CgfGdOSTf6ofy/xiv1N5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="38646432"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="38646432"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 05:35:15 -0800
X-CSE-ConnectionGUID: dr/LMJYmQg2IH3fQmnM49g==
X-CSE-MsgGUID: vGmcgPKZSyOWvm3o/J9NCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101676131"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 05:35:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for
 drm/i915/display: handle hdmi
 connector init failures, and no HDMI/DP cases (rev2)
In-Reply-To: <173411964801.2252090.6327139475577677097@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1734099220.git.jani.nikula@intel.com>
 <173411964801.2252090.6327139475577677097@b555e5b46a47>
Date: Tue, 17 Dec 2024 15:35:09 +0200
Message-ID: <87ldweqvoy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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


There's something funky going on here, please look into it.

On Fri, 13 Dec 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: handle hdmi connector init failures, and no HDMI/DP cases (rev2)
> URL   : https://patchwork.freedesktop.org/series/142119/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15837_full -> Patchwork_142119v2_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_142119v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142119v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   
>
> Participating hosts (11 -> 12)
> ------------------------------
>
>   Additional (1): shard-dg2-set2 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_142119v2_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@debugfs_test@read_all_entries_display_on:
>     - shard-mtlp:         NOTRUN -> [ABORT][1]
>    [1]:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@debugfs_test@read_all_entries_display_on.html

Looks serious, but unrelated.

>
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [DMESG-WARN][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-2/igt@i915_module_load@load.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-8/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-3/igt@i915_module_load@load.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-3/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-6/igt@i915_module_load@load.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-10/igt@i915_module_load@load.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-5/igt@i915_module_load@load.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-10/igt@i915_module_load@load.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-7/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-6/igt@i915_module_load@load.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-11/igt@i915_module_load@load.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-5/igt@i915_module_load@load.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-8/igt@i915_module_load@load.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-4/igt@i915_module_load@load.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-2/igt@i915_module_load@load.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-6/igt@i915_module_load@load.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-11/igt@i915_module_load@load.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-7/igt@i915_module_load@load.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-1/igt@i915_module_load@load.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-3/igt@i915_module_load@load.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-5/igt@i915_module_load@load.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-1/igt@i915_module_load@load.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-4/igt@i915_module_load@load.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-4/igt@i915_module_load@load.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@i915_module_load@load.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-3/igt@i915_module_load@load.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@i915_module_load@load.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-8/igt@i915_module_load@load.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-7/igt@i915_module_load@load.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-10/igt@i915_module_load@load.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@i915_module_load@load.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-5/igt@i915_module_load@load.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@i915_module_load@load.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@i915_module_load@load.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-3/igt@i915_module_load@load.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-10/igt@i915_module_load@load.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-2/igt@i915_module_load@load.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-2/igt@i915_module_load@load.html

[39] is supposed to have [DMESG-WARN] but it doesn't, and the URL is
exactly the same for [38], [39], and [46].

>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@i915_module_load@load.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-8/igt@i915_module_load@load.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-6/igt@i915_module_load@load.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-5/igt@i915_module_load@load.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-7/igt@i915_module_load@load.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-6/igt@i915_module_load@load.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-2/igt@i915_module_load@load.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@i915_module_load@load.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@i915_module_load@load.html
>
>   * igt@kms_async_flips@crc-atomic:
>     - shard-dg1:          NOTRUN -> [WARN][49]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_async_flips@crc-atomic.html

Can't find the warn here either.

>
>   * igt@kms_async_flips@crc-atomic@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [CRASH][50] +3 other tests crash
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_async_flips@crc-atomic@pipe-c-hdmi-a-4.html

(kms_async_flips:2525) CRITICAL: Last errno: 28, No space left on device

>
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][51] -> [INCOMPLETE][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@kms_async_flips@crc@pipe-a-hdmi-a-1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk6/igt@kms_async_flips@crc@pipe-a-hdmi-a-1.html
>
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [CRASH][53] +2 other tests crash
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@kms_async_flips@crc@pipe-b-hdmi-a-2.html

(kms_async_flips:2039) CRITICAL: Last errno: 28, No space left on device

BR,
Jani.

>
>   * igt@kms_plane_cursor@viewport@pipe-c-hdmi-a-3-size-256:
>     - shard-dg2:          [PASS][54] -> [FAIL][55] +1 other test fail
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-3/igt@kms_plane_cursor@viewport@pipe-c-hdmi-a-3-size-256.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-6/igt@kms_plane_cursor@viewport@pipe-c-hdmi-a-3-size-256.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_142119v2_full that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#8411])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html
>
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#11078])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html
>
>   * igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8414]) +6 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@drm_fdinfo@most-busy-idle-check-all@bcs0.html
>
>   * igt@gem_basic@multigpu-create-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#7697])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@gem_basic@multigpu-create-close.html
>
>   * igt@gem_busy@semaphore:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#3936])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_busy@semaphore.html
>
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3555] / [i915#9323])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
>
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#9323])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
>
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [PASS][63] -> [INCOMPLETE][64] ([i915#12392] / [i915#7297])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>
>   * igt@gem_ctx_persistence@engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][65] ([i915#1099]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb5/igt@gem_ctx_persistence@engines-queued.html
>
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8555])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@gem_ctx_persistence@heartbeat-close.html
>
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8555])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-hang.html
>
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#8555]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-many.html
>
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#280])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@gem_ctx_sseu@engines.html
>
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#280])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_ctx_sseu@mmap-args.html
>
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [PASS][71] -> [FAIL][72] ([i915#12543] / [i915#5784])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-18/igt@gem_eio@reset-stress.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-13/igt@gem_eio@reset-stress.html
>
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#4525]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_exec_balancer@parallel-bb-first.html
>
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#6334]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@gem_exec_capture@capture-invisible.html
>
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#6344])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
>
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3539] / [i915#4852])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>     - shard-rkl:          [PASS][77] -> [DMESG-WARN][78] ([i915#12964]) +4 other tests dmesg-warn
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3281]) +10 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#3281]) +6 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_exec_reloc@basic-wc-read.html
>
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3281])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-noreloc.html
>
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][82] -> [INCOMPLETE][83] ([i915#11441] / [i915#13304])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
>
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [PASS][84] -> [INCOMPLETE][85] ([i915#11441])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_exec_suspend@basic-s0@lmem0.html
>
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg2:          NOTRUN -> [ABORT][86] ([i915#7975] / [i915#8213]) +1 other test abort
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_exec_suspend@basic-s4-devices.html
>
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4860]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_fence_thrash@bo-write-verify-y.html
>
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#4613] / [i915#7582])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
>
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4613]) +4 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][90] ([i915#4613])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@gem_lmem_swapping@random-engines.html
>
>   * igt@gem_media_vme:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#284])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_media_vme.html
>
>   * igt@gem_mmap_gtt@close-race:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4077]) +8 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@gem_mmap_gtt@close-race.html
>
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4077])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_mmap_gtt@fault-concurrent-y.html
>
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4083]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_mmap_wc@read-write-distinct.html
>
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4083]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_mmap_wc@write-gtt-read-wc.html
>
>   * igt@gem_pread@exhaustion:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#3282]) +2 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@gem_pread@exhaustion.html
>
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3282]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
>
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][98] ([i915#12964]) +1 other test timeout
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html
>
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][99] ([i915#12917] / [i915#12964])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_pxp@create-regular-context-1.html
>
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4270])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4270]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@gem_pxp@reject-modify-context-protection-on.html
>
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#5190] / [i915#8428]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
>
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3297]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
>
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3297]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@gem_userptr_blits@dmabuf-unsync.html
>
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3297] / [i915#4880])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
>
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3281] / [i915#3297])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@gem_userptr_blits@relocations.html
>
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#3297]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@gem_userptr_blits@unsync-unmap-cycles.html
>
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#2527]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@gen9_exec_parse@allowed-all.html
>
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#2527]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html
>
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][110] -> [ABORT][111] ([i915#9820])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#6412])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@i915_module_load@resize-bar.html
>
>   * igt@i915_pm_freq_mult@media-freq@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#6590]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@i915_pm_freq_mult@media-freq@gt1.html
>
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [PASS][114] -> [FAIL][115] ([i915#3591])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#4387])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
>
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4212])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4215])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4215] / [i915#5190])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#12454] / [i915#12712])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
>
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-tglu:         [PASS][121] -> [FAIL][122] ([i915#10991]) +1 other test fail
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-tglu-8/igt@kms_async_flips@alternate-sync-async-flip.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.html
>
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#8709]) +7 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
>
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#8709]) +15 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
>
>   * igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][125] ([i915#13287])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-1/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-2.html
>
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [CRASH][126] ([i915#13287])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html
>
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#5286]) +5 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
>
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#5286])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4538] / [i915#5286])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#3638]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_big_fb@linear-32bpp-rotate-90.html
>
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3638]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
>
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-glk:          NOTRUN -> [SKIP][132] +64 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][133] +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
>
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4538]) +3 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
>
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#10307] / [i915#10434] / [i915#6095])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
>
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#6095]) +104 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#12805])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#6095]) +199 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-13/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html
>
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#6095]) +19 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
>
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][141] ([i915#12796]) +1 other test incomplete
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
>
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#12313])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#10307] / [i915#6095]) +158 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
>
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#7213]) +3 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
>
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4087]) +3 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
>
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#7828]) +7 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_chamelium_audio@hdmi-audio.html
>
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#7828]) +4 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd.html
>
>   * igt@kms_color@deep-color:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555]) +1 other test skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_color@deep-color.html
>
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3116]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html
>
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#7118] / [i915#9424])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_content_protection@uevent.html
>
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#3555]) +6 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_cursor_crc@cursor-offscreen-32x32.html
>
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#3555]) +2 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#13049])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x170.html
>
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#9809])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#4103] / [i915#4213]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#13046] / [i915#5354]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
>
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-snb:          NOTRUN -> [FAIL][157] ([i915#2346])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#9723])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl:
>     - shard-snb:          NOTRUN -> [FAIL][159] ([i915#12170])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl.html
>
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [FAIL][160] ([i915#11968])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
>
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3804])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#3840])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_dsc@dsc-with-bpc.html
>
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#3555] / [i915#3840])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_dsc@dsc-with-formats.html
>
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#1839]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_feature_discovery@display-4x.html
>
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#9934]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
>
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3637])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
>
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#9934]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
>
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-snb:          NOTRUN -> [FAIL][168] ([i915#11989]) +1 other test fail
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check.html
>
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#9934]) +4 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_flip@2x-wf_vblank-ts-check.html
>
>   * igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][170] ([i915#12964]) +14 other tests dmesg-warn
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1.html
>
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2:
>     - shard-rkl:          [PASS][171] -> [FAIL][172] ([i915#11989] / [i915#12840])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a2.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#2672]) +3 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#2672])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#2587] / [i915#2672]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
>
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
>
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          [PASS][180] -> [FAIL][181] ([i915#6880]) +2 other tests fail
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#5354]) +5 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg1:          NOTRUN -> [SKIP][183] +28 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
>
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#1825])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3458]) +11 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][186] +17 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-snb:          NOTRUN -> [SKIP][187] +474 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3458]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#8708]) +12 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#8708])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#8708])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#1825]) +39 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3023]) +20 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
>
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_hdr@static-toggle.html
>
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#3555] / [i915#8228])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_hdr@static-toggle-suspend.html
>
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#12394])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_joiner@basic-force-ultra-joiner.html
>
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#12394])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#12339])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][199] ([i915#12178])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic.html
>
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][200] ([i915#7862]) +1 other test fail
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
>
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3555] / [i915#8821])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_plane_lowres@tiling-yf.html
>
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#12247]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a.html
>
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#12247]) +14 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#5354])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#12343])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_pm_backlight@brightness-with-dpms.html
>
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3361])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
>
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][207] -> [SKIP][208] ([i915#4281])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
>
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#9340])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html
>
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#8430])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_pm_lpsp@screens-disabled.html
>
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][211] -> [SKIP][212] ([i915#9519]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>     - shard-rkl:          [PASS][213] -> [SKIP][214] ([i915#9519])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#9519]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#6524])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_prime@basic-crc-hybrid.html
>
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][217] ([i915#11520]) +11 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb4/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
>
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#11520]) +4 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][219] ([i915#11520]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
>
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#11520]) +8 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
>
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#4348])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_psr2_su@page_flip-nv12.html
>
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_psr@fbc-pr-sprite-render.html
>
>   * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#9688]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html
>
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html
>
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cpu.html
>
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#9685])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#12755])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-90.html
>
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#5289])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#5289])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][230] ([i915#13179]) +1 other test abort
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_selftest@drm_framebuffer.html
>
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][231] ([i915#13179]) +1 other test abort
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
>
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg1:          NOTRUN -> [FAIL][232] ([IGT#160] / [i915#6493])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-14/igt@kms_sysfs_edid_timing.html
>
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          NOTRUN -> [FAIL][233] ([i915#10959])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html
>
>   * igt@kms_universal_plane@cursor-fb-leak:
>     - shard-mtlp:         [PASS][234] -> [FAIL][235] ([i915#9196]) +1 other test fail
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html
>
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9906])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@kms_vrr@max-min.html
>
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#9906])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_vrr@seamless-rr-switch-virtual.html
>
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#2437]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html
>
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#2435])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html
>
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#2433])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@perf@unprivileged-single-ctx-counters.html
>
>   * igt@perf_pmu@busy-double-start@vcs0:
>     - shard-dg2:          [PASS][241] -> [FAIL][242] ([i915#4349])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-6/igt@perf_pmu@busy-double-start@vcs0.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vcs0.html
>
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#8850])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@perf_pmu@cpu-hotplug.html
>
>   * igt@perf_pmu@most-busy-check-all:
>     - shard-rkl:          [PASS][244] -> [FAIL][245] ([i915#4349]) +1 other test fail
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-6/igt@perf_pmu@most-busy-check-all.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@perf_pmu@most-busy-check-all.html
>
>   * igt@prime_busy@hang:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][246] ([i915#12917] / [i915#12964]) +2 other tests dmesg-warn
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@prime_busy@hang.html
>
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#3291] / [i915#3708])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-4/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#3291] / [i915#3708]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@prime_vgem@basic-write.html
>
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#3708])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-7/igt@prime_vgem@fence-read-hang.html
>
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#9917])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
>
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#9917])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>     - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#9917])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][253] ([i915#10729]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-4/igt@gem_mmap_offset@clear-via-pagefault.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
>
>   * igt@i915_module_load@load:
>     - shard-glk:          ([PASS][255], [PASS][256], [PASS][257], [PASS][258], [PASS][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267], [PASS][268], [PASS][269], [PASS][270], [PASS][271], [PASS][272], [PASS][273], [DMESG-WARN][274], [PASS][275], [PASS][276], [PASS][277]) ([i915#118]) -> ([PASS][278], [PASS][279], [PASS][280], [PASS][281], [PASS][282], [PASS][283], [PASS][284], [PASS][285], [PASS][286], [PASS][287], [PASS][288], [PASS][289], [PASS][290], [PASS][291], [PASS][292], [PASS][293], [PASS][294], [PASS][295], [PASS][296], [PASS][297], [PASS][298], [PASS][299], [PASS][300])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk4/igt@i915_module_load@load.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk2/igt@i915_module_load@load.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@i915_module_load@load.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk1/igt@i915_module_load@load.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk2/igt@i915_module_load@load.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk9/igt@i915_module_load@load.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk3/igt@i915_module_load@load.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk1/igt@i915_module_load@load.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@i915_module_load@load.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk6/igt@i915_module_load@load.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk6/igt@i915_module_load@load.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk6/igt@i915_module_load@load.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk1/igt@i915_module_load@load.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@i915_module_load@load.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@i915_module_load@load.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@i915_module_load@load.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk3/igt@i915_module_load@load.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk9/igt@i915_module_load@load.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk3/igt@i915_module_load@load.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk7/igt@i915_module_load@load.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk7/igt@i915_module_load@load.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk4/igt@i915_module_load@load.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk5/igt@i915_module_load@load.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk9/igt@i915_module_load@load.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk2/igt@i915_module_load@load.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk8/igt@i915_module_load@load.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk6/igt@i915_module_load@load.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk6/igt@i915_module_load@load.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk2/igt@i915_module_load@load.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk1/igt@i915_module_load@load.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk3/igt@i915_module_load@load.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk4/igt@i915_module_load@load.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk6/igt@i915_module_load@load.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk3/igt@i915_module_load@load.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk8/igt@i915_module_load@load.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk2/igt@i915_module_load@load.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk1/igt@i915_module_load@load.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk5/igt@i915_module_load@load.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk4/igt@i915_module_load@load.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@i915_module_load@load.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk7/igt@i915_module_load@load.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk6/igt@i915_module_load@load.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk3/igt@i915_module_load@load.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk5/igt@i915_module_load@load.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk4/igt@i915_module_load@load.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk9/igt@i915_module_load@load.html
>
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][301] -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
>
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [FAIL][303] ([i915#12739] / [i915#3591]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>
>   * igt@kms_addfb_basic@bo-too-small:
>     - shard-rkl:          [DMESG-WARN][305] ([i915#12964]) -> [PASS][306] +7 other tests pass
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-4/igt@kms_addfb_basic@bo-too-small.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-1/igt@kms_addfb_basic@bo-too-small.html
>
>   * igt@kms_atomic_transition@modeset-transition-fencing:
>     - shard-glk:          [FAIL][307] ([i915#12238]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing.html
>
>   * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
>     - shard-glk:          [FAIL][309] ([i915#11859]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [DMESG-FAIL][311] ([i915#11627] / [i915#13314]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [DMESG-FAIL][313] ([i915#13314]) -> [PASS][314] +1 other test pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
>     - shard-dg1:          [DMESG-WARN][315] ([i915#4423]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-14/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-12/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
>
>   * igt@kms_cursor_crc@cursor-onscreen-128x128:
>     - shard-snb:          [INCOMPLETE][317] -> [PASS][318] +1 other test pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-snb4/igt@kms_cursor_crc@cursor-onscreen-128x128.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-snb5/igt@kms_cursor_crc@cursor-onscreen-128x128.html
>
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - shard-glk:          [FAIL][319] ([i915#2346]) -> [PASS][320] +2 other tests pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
>     - shard-mtlp:         [FAIL][321] ([i915#11989]) -> [PASS][322] +2 other tests pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
>
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          [FAIL][323] ([i915#6880]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][325] ([i915#9295]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
>
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][327] ([i915#9519]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>
>   
> #### Warnings ####
>
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [DMESG-WARN][329] ([i915#12964]) -> [ABORT][330] ([i915#9820])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][331] ([i915#10131] / [i915#9820]) -> [ABORT][332] ([i915#10131] / [i915#10887])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>
>   * igt@i915_selftest@mock:
>     - shard-glk:          [DMESG-WARN][333] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][334] ([i915#9311])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-glk7/igt@i915_selftest@mock.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-glk4/igt@i915_selftest@mock.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-dg1:          [SKIP][335] ([i915#2587] / [i915#2672] / [i915#3555] / [i915#4423]) -> [SKIP][336] ([i915#2587] / [i915#2672] / [i915#3555])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          [SKIP][337] ([i915#2587] / [i915#2672] / [i915#4423]) -> [SKIP][338] ([i915#2587] / [i915#2672])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          [SKIP][339] ([i915#10433] / [i915#3458]) -> [SKIP][340] ([i915#3458]) +3 other tests skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
>
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][341] ([i915#12713]) -> [SKIP][342] ([i915#13331])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg2-5/igt@kms_hdr@brightness-with-hdr.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu:         [SKIP][343] ([i915#1187] / [i915#12713]) -> [SKIP][344] ([i915#12713])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-tglu-7/igt@kms_hdr@brightness-with-hdr.html
>
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg1:          [SKIP][345] ([i915#9685]) -> [SKIP][346] ([i915#4423] / [i915#9685])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15837/shard-dg1-14/igt@kms_pm_dc@dc3co-vpb-simulation.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/shard-dg1-13/igt@kms_pm_dc@dc3co-vpb-simulation.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [IGT#160]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/160
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11627]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11968]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11968
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12170]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12170
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12840
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13287]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13287
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13314
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6493
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15837 -> Patchwork_142119v2
>
>   CI-20190529: 20190529
>   CI_DRM_15837: 8f7b64e137723da601f3c07d0cda22566cf994d5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8154: 8603734a61b57f766ee60f24e63d18f88232a3c6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142119v2: 8f7b64e137723da601f3c07d0cda22566cf994d5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v2/index.html

-- 
Jani Nikula, Intel
