Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5FE86E1EF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 14:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B0810ED7A;
	Fri,  1 Mar 2024 13:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXsu48iv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014FC10ED7A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 13:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709299529; x=1740835529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NhK0RpdhIocXGw/NVotca2N5D849dDsLLehRXdeCxRE=;
 b=ZXsu48iv2HkKvd/6giKqwJTS7acUdVzblIkIFEJb7XVe+rdzbGQE2s+J
 5GgI+hva2WkzgiBaxtjcARzX2M9A4J2o1VJzfoxFqM32IHcw6IDhLLlhh
 s3x1DZXvxzx9cTr5FyXnK+w3yeDB/FMHuYpgQLEc81bRsXp1EJV1U8Jl4
 xkjvHPnSqi3yffjOFGBWryiH+zAvW6ZUfMwhD/2Nkm3xtb0oam2wjfdWm
 E88Mzpo+Gq6r573Ihuv2+mdvzVRaomgpgI3oR8QIwHn8/PT3yfLnGrD0y
 dxemSGd9Aq++h7/hiz7Nf/Zk8rb+LrjfI9K/hpesPvxFzk2AECLD0RIcX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4009523"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4009523"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:25:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8094897"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.5.115])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:25:21 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: lgci.bug.filing@intel.com
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.IGT: failure for
 drm/i915/selftest_hangcheck: Check sanity with more patience
Date: Fri, 01 Mar 2024 14:25:18 +0100
Message-ID: <3229194.vfdyTQepKt@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <170924498206.414572.5572962072439150813@8e613ede5ea5>
References: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
 <170924498206.414572.5572962072439150813@8e613ede5ea5>
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

On Thursday, 29 February 2024 23:16:22 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftest_hangcheck: Check sanity with more patience
> URL   : https://patchwork.freedesktop.org/series/130512/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14362_full -> Patchwork_130512v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_130512v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_130512v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html
> 
> Participating hosts (8 -> 9)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_130512v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@allocator-evict@vecs0:
>     - shard-rkl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/igt@gem_softpin@allocator-evict@vecs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-3/igt@gem_softpin@allocator-evict@vecs0.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

None of the two is related to the change in igt@i915_selftest@live@hangcheck.

@BUG Filing, please update filters and re-report.

Thanks,
Janusz

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14362_full and Patchwork_130512v1_full:
> 
> ### New IGT tests (7) ###
> 
>   * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-a-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.46] s
> 
>   * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.31] s
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.74] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.01] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.03] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_130512v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-snb:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#8293])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb2/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb2/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb4/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb1/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb1/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#9318])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7701])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8414]) +10 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][58] -> [FAIL][59] ([i915#7742])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@vcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8414]) +5 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-check-all@vcs0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#7697])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [ABORT][62] ([i915#10183])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [PASS][63] -> [FAIL][64] ([i915#9561])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#8555]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#280])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#280]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4812]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#4525])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#6334])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#6344])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][72] ([i915#2842])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][73] ([i915#2842]) +1 other test fail
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [PASS][74] -> [FAIL][75] ([i915#2842])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3539]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#7697])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3281]) +6 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3281]) +5 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3281]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4537] / [i915#4812])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-rkl:          NOTRUN -> [ABORT][83] ([i915#7975] / [i915#8213])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4860]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4860])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4613]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk3/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#4613])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4077]) +6 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4083]) +6 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3282]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@bench:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#3282])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_pread@bench.html
> 
>   * igt@gem_pread@display:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3282])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gem_pread@display.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#4270]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4270]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4270])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5190]) +7 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#8428])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([fdo#109312])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4079])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4077]) +4 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3297] / [i915#4880]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3297]) +2 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3297]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([fdo#109289]) +2 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][106] ([i915#5566])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#2856])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#2856])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@gen9_exec_parse@shadow-peek.html
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#2527]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4881]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][111] -> [INCOMPLETE][112] ([i915#9820] / [i915#9849])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][113] -> [ABORT][114] ([i915#10131] / [i915#9820])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][115] ([i915#9820] / [i915#9849])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#8399])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#6621]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4387])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@i915_pm_sseu@full-enable.html
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#4387])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#6188])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([fdo#109302])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][122] ([i915#9311])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@i915_selftest@mock@memory_region.html
>     - shard-glk:          NOTRUN -> [DMESG-WARN][123] ([i915#9311])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk5/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4212])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3826])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#8709]) +3 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#8709]) +7 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#1769] / [i915#3555])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([fdo#111614]) +2 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#5286]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([fdo#111614]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([fdo#111614] / [i915#3638])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][133] -> [FAIL][134] ([i915#3743])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4538] / [i915#5190]) +11 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#6187])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([fdo#111615]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([fdo#110723]) +3 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#7213]) +3 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([fdo#111827]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#111827]) +2 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#7828]) +2 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#7828]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#7828]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3299]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#3116])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#6944] / [i915#9424])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#3359])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#3555] / [i915#8814])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3359]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3555]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3555]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#109274] / [i915#5354]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][155] ([i915#2346])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#9067])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([fdo#110189] / [i915#9723])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([fdo#110189] / [i915#9723])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][159] ([i915#9841]) +3 other tests fail
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_display_modes@extended-mode-basic@pipe-a-hdmi-a-1-pipe-b-vga-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3804])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#8812])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3840])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#3555] / [i915#3840])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#3840])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#1839])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#9337])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([fdo#109274]) +5 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#3637]) +2 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#2672]) +3 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#2672])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#2672]) +2 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([fdo#109285])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-snb:          [PASS][173] -> [SKIP][174] ([fdo#109271]) +8 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-snb:          [PASS][175] -> [SKIP][176] ([fdo#109271] / [fdo#111767])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#3458]) +21 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#1825]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#5354]) +23 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([fdo#111825] / [i915#1825]) +20 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([fdo#111767] / [fdo#111825] / [i915#1825])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#8708]) +14 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([fdo#111825]) +7 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3023]) +12 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#10055])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([fdo#111767] / [i915#1825])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([fdo#111767] / [i915#5354]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#8708]) +5 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#8228])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#9457]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#4816])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#6301])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-mtlp:         NOTRUN -> [SKIP][193] ([fdo#109289]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][194] ([i915#7862]) +1 other test fail
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][195] ([i915#4573]) +1 other test fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk9/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][196] ([i915#8292])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9423]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][198] ([fdo#109271]) +226 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#9423]) +15 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#5176]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9423]) +7 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#5235]) +3 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#5235]) +3 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#5235] / [i915#9423]) +7 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#5235]) +19 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#5354])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9519])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9519])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#9519])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][211] -> [SKIP][212] ([i915#9519]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pc8-residency:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([fdo#109293] / [fdo#109506])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_pm_rpm@pc8-residency.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#6524] / [i915#6805])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#6524])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([fdo#110189])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([fdo#110189]) +4 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk:          NOTRUN -> [SKIP][218] ([fdo#109271] / [fdo#110189]) +3 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#9683])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#9688]) +2 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#9732]) +16 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#9673] / [i915#9732]) +4 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#4077] / [i915#9688])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_psr@psr2-sprite-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#9732]) +13 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#4235])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][226] ([i915#8875] / [i915#9475] / [i915#9569])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#4235])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][228] ([i915#9196]) +1 other test fail
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][229] -> [FAIL][230] ([i915#9196]) +1 other test fail
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][231] -> [FAIL][232] ([i915#9196])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][233] ([fdo#109271]) +2 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#9906])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#8808] / [i915#9906])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#2437])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#2437])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][238] ([fdo#109271] / [i915#2437]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#7387])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#8850])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#8516])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#8516])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3291] / [i915#3708])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([fdo#109295] / [fdo#111656] / [i915#3708])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9917])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@v3d/v3d_submit_cl@multisync-out-syncs:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([fdo#109315]) +6 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-1/igt@v3d/v3d_submit_cl@multisync-out-syncs.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#2575]) +10 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_submit_csd@bad-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#2575]) +2 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@v3d/v3d_submit_csd@bad-bo.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#7711]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-7/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#7711])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_wait_bo@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#7711]) +9 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-5/igt@vc4/vc4_wait_bo@bad-bo.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [FAIL][252] ([i915#7742]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][254] ([i915#7297]) -> [PASS][255]
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][256] ([i915#6268]) -> [PASS][257]
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [FAIL][258] ([i915#6268]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][260] ([i915#5784]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-18/igt@gem_eio@reset-stress.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-15/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][262] ([i915#2842]) -> [PASS][263] +1 other test pass
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][264] ([i915#2842]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - shard-glk:          [FAIL][266] -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-glk3/igt@gem_exec_schedule@wide@rcs0.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk4/igt@gem_exec_schedule@wide@rcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [INCOMPLETE][268] ([i915#9849]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-dg2:          [INCOMPLETE][270] ([i915#9142]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-11/igt@i915_pm_rpm@system-suspend-devices.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         [FAIL][272] ([i915#5138]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][274] ([i915#3743]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-snb:          [SKIP][276] ([fdo#109271] / [fdo#111767]) -> [PASS][277] +1 other test pass
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-snb:          [SKIP][278] ([fdo#109271]) -> [PASS][279] +17 other tests pass
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][280] ([i915#9519]) -> [PASS][281] +1 other test pass
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [ABORT][282] ([i915#9618]) -> [INCOMPLETE][283] ([i915#9408] / [i915#9618])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-tglu:         [FAIL][284] ([i915#3591]) -> [WARN][285] ([i915#2681])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-tglu:         [WARN][286] ([i915#2681]) -> [FAIL][287] ([i915#3591])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-snb:          [SKIP][288] ([fdo#109271]) -> [INCOMPLETE][289] ([i915#8816])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb6/igt@kms_content_protection@atomic-dpms.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-snb:          [INCOMPLETE][290] -> [SKIP][291] ([fdo#109271]) +1 other test skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_content_protection@lic-type-1.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][292] ([i915#9433]) -> [SKIP][293] ([i915#9424])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg1-12/igt@kms_content_protection@mei-interface.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-snb:          [SKIP][294] ([fdo#109271] / [fdo#111767]) -> [SKIP][295] ([fdo#109271])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][296] ([fdo#109271]) -> [SKIP][297] ([fdo#109271] / [fdo#111767])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][298] ([i915#4070] / [i915#4816]) -> [SKIP][299] ([i915#4816])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg2:          [SKIP][300] ([i915#9732]) -> [SKIP][301] ([i915#9673] / [i915#9732]) +1 other test skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-1/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg2:          [SKIP][302] ([i915#9673] / [i915#9732]) -> [SKIP][303] ([i915#9732]) +2 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14362/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/shard-dg2-6/igt@kms_psr@psr-cursor-render.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10183]: https://gitlab.freedesktop.org/drm/intel/issues/10183
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9142]: https://gitlab.freedesktop.org/drm/intel/issues/9142
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
>   [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
>   [i915#9457]: https://gitlab.freedesktop.org/drm/intel/issues/9457
>   [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
>   [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
>   [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9841]: https://gitlab.freedesktop.org/drm/intel/issues/9841
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14362 -> Patchwork_130512v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_14362: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7734: 7734
>   Patchwork_130512v1: eec7a135b960c7b83b13a7c821e30f956074e439 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130512v1/index.html
> 




