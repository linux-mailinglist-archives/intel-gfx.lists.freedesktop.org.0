Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 894D786E1FB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 14:29:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD9E10EDAC;
	Fri,  1 Mar 2024 13:29:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lEHNlL1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ED710EDAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 13:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709299780; x=1740835780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHmBqiCurC6X4JlGeC+fOklDeXP6OYvNTtz7/IICMJE=;
 b=lEHNlL1ZyoNaz7B7bWmwTnax658Qe4Syar+z0GGZ8/OU3WcIDjZFMT52
 gUWKsnOfc7gaMffKwvyV4Q8Eyg48g14uZe7RhszN7NvX/d4oqaxLdwvsv
 pq/lNfTTPwbJ4jUQq3u9Yk6O9h5CBTnd+HXfLXuRCNG8l2n5sOqTbQ/8C
 64IzBsNIOzfz9mGHNqaTdYakiNyupzl9SMQ4EAafF54KGxxpqd32T6jxa
 ZzWJom5Pfq2PZpn4vfpgZ4vcHSd5RxJDWdNqiT1ER+58zJL34WRa67MYg
 IBF0QeAY37awPm/hVTFRCD1j4wiSas/QV/tn06myAityXCHeKxei7ww7h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="7650721"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="7650721"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8428549"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.5.115])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:29:36 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: lgci.bug.filing@intel.com
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.IGT: failure for drm/i915/selftests: Fix
 dependency of some timeouts on HZ
Date: Fri, 01 Mar 2024 14:29:34 +0100
Message-ID: <2693534.KRxA6XjA2N@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <170866141050.235433.7670088273514905548@8e613ede5ea5>
References: <20240222113347.648945-2-janusz.krzysztofik@linux.intel.com>
 <170866141050.235433.7670088273514905548@8e613ede5ea5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

On Friday, 23 February 2024 05:10:10 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Fix dependency of some timeouts on HZ
> URL   : https://patchwork.freedesktop.org/series/130249/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14316_full -> Patchwork_130249v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_130249v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_130249v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 8)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_130249v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_create@busy-create@smem0:
>     - shard-snb:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb2/igt@gem_create@busy-create@smem0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb5/igt@gem_create@busy-create@smem0.html
> 
>   * {igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2} (NEW):
>     - shard-dg2:          NOTRUN -> [SKIP][3] +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2.html

None of the above is related to the changes in igt@i915_selftest@live.

@BUG Filing, please update filters and re-report.

Thanks,
Janusz


> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1}:
>     - shard-dg2:          NOTRUN -> [SKIP][4] +121 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14316_full and Patchwork_130249v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_130249v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-rkl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#8293]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-6/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-6/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-6/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-7/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-7/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#6230])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8411])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#7701])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8414]) +10 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#7697])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#3555] / [i915#9323])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [PASS][60] -> [FAIL][61] ([i915#9561])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#8555])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [PASS][63] -> [FAIL][64] ([i915#5784]) +1 other test fail
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-15/igt@gem_eio@reset-stress.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-18/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_eio@suspend:
>     - shard-dg2:          [PASS][65] -> [INCOMPLETE][66] ([i915#10137])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-7/igt@gem_eio@suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4812]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [FAIL][68] ([i915#6117])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539] / [i915#4852])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][70] -> [FAIL][71] ([i915#2842])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2842]) +1 other test fail
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][74] ([i915#2842])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#7697])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3281]) +3 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3281]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [PASS][78] -> [INCOMPLETE][79] ([i915#9275])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#4613] / [i915#7582])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#4613])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#284])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@medium-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4077]) +4 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_mmap_gtt@medium-copy-xy.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4083])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_pread@self:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3282]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_pread@self.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3282]) +4 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#4270])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4270]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4079])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3297] / [i915#4880]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3297]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([fdo#109289]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#2527]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#2527] / [i915#2856])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#2856]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#6227])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][97] -> [INCOMPLETE][98] ([i915#10137] / [i915#9820] / [i915#9849])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#8399])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][100] -> [FAIL][101] ([i915#3591])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([fdo#109293] / [fdo#109506])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][103] -> [INCOMPLETE][104] ([i915#10137] / [i915#7790])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb4/igt@i915_pm_rps@reset.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb1/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#4387])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#6188])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([fdo#109303])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#8709]) +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#8709]) +7 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5286]) +3 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([fdo#111614])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([fdo#111615] / [i915#5286]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([fdo#111614])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([fdo#111614] / [i915#3638]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#5190]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([fdo#111615])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([fdo#110723]) +3 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4087]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#111827]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#7828]) +3 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#7828]) +2 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#7828]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3555]) +2 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#6944] / [i915#9424])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3299])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7118] / [i915#9424])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3555]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#3555]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#109274] / [i915#5354]) +4 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([fdo#111825]) +4 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#4103])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([fdo#110189] / [i915#9723])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([fdo#110189] / [i915#9723])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3804])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3840] / [i915#9688])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3469])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9337])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#109274]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([fdo#109274] / [fdo#111767])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([fdo#109274] / [i915#3637])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#2672]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#2672])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([fdo#109285])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][148] -> [SKIP][149] ([fdo#109271]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([fdo#111825] / [i915#1825]) +14 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#5354]) +14 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3458]) +5 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#111767] / [fdo#111825] / [i915#1825])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([fdo#109280]) +9 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3023]) +10 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-glk:          NOTRUN -> [SKIP][156] ([fdo#109271]) +40 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-glk1/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8708]) +6 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([fdo#111767] / [i915#5354])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3555] / [i915#8228]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#3555] / [i915#8228])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8228]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([fdo#109289])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9423]) +7 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#9423]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#9423]) +27 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#5235]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#5235]) +15 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#9812])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5354])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#9685])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9340])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#9519])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          NOTRUN -> [FAIL][175] ([i915#8717])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#9519]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([fdo#110189])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][179] ([fdo#109271] / [fdo#110189])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-glk1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([fdo#110189]) +3 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#9683])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([fdo#109642] / [fdo#111068] / [i915#9683])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#9685])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4235])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([fdo#109309])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][186] -> [FAIL][187] ([i915#9196])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][188] -> [FAIL][189] ([i915#9196]) +2 other tests fail
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][190] -> [FAIL][191] ([i915#9196])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-glk:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#2437])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-glk1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [PASS][193] -> [FAIL][194] ([i915#4349])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-mtlp-6/igt@perf_pmu@busy-double-start@ccs0.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][195] -> [FAIL][196] ([i915#4349]) +3 other tests fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][197] ([i915#5793])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#8516])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8516])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_udl:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([fdo#109291])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3291] / [i915#3708])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3708] / [i915#4077])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#9917])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@v3d/v3d_submit_cl@multisync-out-syncs:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([fdo#109315]) +4 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@v3d/v3d_submit_cl@multisync-out-syncs.html
> 
>   * igt@v3d/v3d_submit_csd@job-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#2575]) +5 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-10/igt@v3d/v3d_submit_csd@job-perfmon.html
> 
>   * igt@v3d/v3d_submit_csd@multiple-job-submission:
>     - shard-tglu:         NOTRUN -> [SKIP][206] ([fdo#109315] / [i915#2575]) +3 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@v3d/v3d_submit_csd@multiple-job-submission.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#7711]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_wait_bo@unused-bo-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#7711]) +4 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@vc4/vc4_wait_bo@unused-bo-1ns.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2575]) +1 other test skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@ccs2:
>     - shard-dg2:          [FAIL][210] ([i915#10086]) -> [PASS][211] +1 other test pass
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-7/igt@gem_ctx_isolation@preservation-s3@ccs2.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@ccs2.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][212] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-10/igt@gem_eio@hibernate.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][214] ([i915#2842]) -> [PASS][215] +1 other test pass
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [FAIL][216] ([i915#2842]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-all:
>     - shard-dg1:          [DMESG-WARN][218] ([i915#4423]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-15/igt@gem_exec_whisper@basic-fds-all.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-18/igt@gem_exec_whisper@basic-fds-all.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][220] ([i915#5493]) -> [PASS][221]
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [TIMEOUT][222] ([i915#5493]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][224] ([i915#10137] / [i915#9200]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [DMESG-WARN][226] ([i915#1982] / [i915#4391] / [i915#4423]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-15/igt@i915_suspend@basic-s2idle-without-i915.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][228] ([i915#5138]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-snb:          [SKIP][230] ([fdo#109271] / [fdo#111767]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][232] ([i915#2346]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-snb:          [SKIP][234] ([fdo#109271]) -> [PASS][235] +5 other tests pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][236] ([i915#9519]) -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][238] ([i915#9519]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][240] ([i915#9196]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][242] ([i915#2876]) -> [FAIL][243] ([i915#2842])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [INCOMPLETE][244] ([i915#10137] / [i915#9820] / [i915#9849]) -> [INCOMPLETE][245] ([i915#10137] / [i915#9849])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [WARN][246] ([i915#7356]) -> [INCOMPLETE][247] ([i915#10137] / [i915#9849])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][248] ([i915#3955]) -> [SKIP][249] ([fdo#110189] / [i915#3955])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][250] ([i915#3361]) -> [SKIP][251] ([i915#4281])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14316/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
>   [i915#10086]: https://gitlab.freedesktop.org/drm/intel/issues/10086
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14316 -> Patchwork_130249v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14316: ae1e283133b83b0de46f00b0ac0bca913e159216 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7723: 7723
>   Patchwork_130249v1: ae1e283133b83b0de46f00b0ac0bca913e159216 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130249v1/index.html
> 




