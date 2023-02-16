Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF90698F74
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 10:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9A010E155;
	Thu, 16 Feb 2023 09:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68EB10E155;
 Thu, 16 Feb 2023 09:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676538837; x=1708074837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XpIvRGo0FVTsPiDtJ17Uth70uixFnm5hAWbcm+sbmLA=;
 b=S+eb2NaGE88Ui6B403rCmVkQXVwdpGiD0lLxaAS3q0u1t+aBKPEehT27
 KfOrZsn7IvFCobiO7aOlNffcGVN4aPxXgdolGy8bbD5bnNKFR8ms5zRJT
 HzT/L53Krn32c0W1pfJlVXYPCN0E53L1S9sjoTGjr/o39HpnpHXdwsZkj
 SigHT3lFXy5C6h+mDsPjcErYJRWsEVvB1SulSbvHYuisSqZCcif30iuw+
 x6Yj0w6vcZx916kND/kdKriQsvN+FN17Z3v2fJbBtnm7Q1wKe1zgGfYxy
 3FIZMDGUpsozL+HWMcJ/7jkBppT4ksuI5NUfSVaOJLUykjUBSsg80jryD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="330307697"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="330307697"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 01:13:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="702489353"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="702489353"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.22.241])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 01:13:47 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Date: Thu, 16 Feb 2023 10:13:44 +0100
Message-ID: <5910983.lOV4Wx5bFT@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167650744791.17991.1616928845022863800@emeril.freedesktop.org>
References: <20230215091952.22916-1-janusz.krzysztofik@linux.intel.com>
 <167650744791.17991.1616928845022863800@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdGVz?=
 =?utf-8?q?ts=3A_Exercise_remote_request_vs_barrier_handling_race?=
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, 16 February 2023 01:30:47 CET Patchwork wrote:
> == Series Details ==
> 
> Series: tests: Exercise remote request vs barrier handling race
> URL   : https://patchwork.freedesktop.org/series/114045/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12741_full -> IGTPW_8501_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with IGTPW_8501_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in IGTPW_8501_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/index.html
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in IGTPW_8501_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * {igt@gem_barrier_race@remote-request@rcs0} (NEW):
>     - {shard-rkl}:        NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@gem_barrier_race@remote-request@rcs0.html
>     - {shard-tglu-9}:     NOTRUN -> [ABORT][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-tglu-9/igt@gem_barrier_race@remote-request@rcs0.html
>     - shard-apl:          NOTRUN -> [ABORT][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-apl1/igt@gem_barrier_race@remote-request@rcs0.html

List corruptions expected to be triggered by the new test.

> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-snb:          [PASS][4] -> [ABORT][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html

False positive, duplicate of 
https://gitlab.freedesktop.org/drm/intel/-/issues/5161. 
I've asked CI to update filters and re-report results.

Thanks,
Janusz

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - {shard-dg1}:        [PASS][6] -> [DMESG-WARN][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-dg1-12/igt@gem_lmem_evict@dontneed-evict-race.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-dg1-12/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12741_full and IGTPW_8501_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@drm_fdinfo@busy-hang@vcs1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_barrier_race@remote-request:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - Statuses : 3 abort(s) 2 pass(s) 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@prime_mmap@test_forked_cpu_write@test_forked_cpu_write-lmem0:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in IGTPW_8501_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][10] -> [ABORT][11] ([i915#5566])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271]) +32 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-snb7/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>     - shard-snb:          [PASS][13] -> [SKIP][14] ([fdo#109271])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-snb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][15] ([fdo#109271]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - {shard-rkl}:        [FAIL][17] ([i915#7742]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@fbdev@read:
>     - {shard-rkl}:        [SKIP][19] ([i915#2582]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@fbdev@read.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - {shard-rkl}:        [SKIP][21] ([i915#6252]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-5/igt@gem_ctx_persistence@hang.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-2/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - {shard-rkl}:        [FAIL][23] ([i915#5115] / [i915#7052]) -> [PASS][24] +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - {shard-dg1}:        [FAIL][25] ([i915#5784]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-dg1-17/igt@gem_eio@kms.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-dg1-13/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][27] ([i915#2846]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          [FAIL][29] ([i915#2842]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-rkl}:        [FAIL][31] ([i915#2842]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][33] ([i915#2842]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - {shard-rkl}:        [SKIP][35] ([i915#3281]) -> [PASS][36] +10 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-4/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - {shard-rkl}:        [ABORT][37] ([i915#5122]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-4/igt@gem_exec_suspend@basic-s3@smem.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-2/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - {shard-rkl}:        [SKIP][39] ([fdo#111656]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-6/igt@gem_mmap_gtt@coherency.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - {shard-rkl}:        [SKIP][41] ([i915#3282]) -> [PASS][42] +6 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - {shard-rkl}:        [SKIP][43] ([i915#2527]) -> [PASS][44] +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-3/igt@gen9_exec_parse@unaligned-access.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][45] ([i915#6258]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - {shard-rkl}:        [SKIP][47] ([i915#4098]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-4/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][49] ([i915#3591]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - {shard-tglu}:       [SKIP][51] ([i915#1397]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-tglu-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-tglu-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - {shard-rkl}:        [SKIP][53] ([i915#1845] / [i915#4098]) -> [PASS][54] +6 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [FAIL][55] ([i915#2346]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>     - shard-glk:          [FAIL][57] ([i915#2346]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - {shard-rkl}:        [SKIP][59] ([i915#1849] / [i915#4098]) -> [PASS][60] +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>     - {shard-tglu}:       [SKIP][61] ([i915#1849]) -> [PASS][62] +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][63] ([i915#1849]) -> [PASS][64] +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@sprite_plane_move:
>     - {shard-rkl}:        [SKIP][65] ([i915#1072]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@kms_psr@sprite_plane_move.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-rkl-6/igt@kms_psr@sprite_plane_move.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>     - {shard-tglu}:       [SKIP][67] ([fdo#109274]) -> [PASS][68] +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-tglu-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> 
>   * igt@kms_vblank@pipe-c-wait-forked-busy-hang:
>     - {shard-tglu}:       [SKIP][69] ([i915#1845] / [i915#7651]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-tglu-6/igt@kms_vblank@pipe-c-wait-forked-busy-hang.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-tglu-2/igt@kms_vblank@pipe-c-wait-forked-busy-hang.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [ABORT][71] ([i915#5213]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk1/igt@perf@stress-open-close.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/shard-glk6/igt@perf@stress-open-close.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6530]: https://gitlab.freedesktop.org/drm/intel/issues/6530
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7997]: https://gitlab.freedesktop.org/drm/intel/issues/7997
>   [i915#8151]: https://gitlab.freedesktop.org/drm/intel/issues/8151
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * IGT: IGT_7160 -> IGTPW_8501
> 
>   CI-20190529: 20190529
>   CI_DRM_12741: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGTPW_8501: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/index.html
>   IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8501/index.html
> 




