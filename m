Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 156157EF77C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 19:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902EB10E148;
	Fri, 17 Nov 2023 18:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C4310E148
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 18:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700245909; x=1731781909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SNX+YaZs8pgPD4DgC6y3bcxXuqpzQzllp2uC1xLXJho=;
 b=PTY0ipDNvznwkLwlM/5bi4hUttiBfizyh17Mz0k7cqEt3aMKwu+0OW0B
 ObqgXwmuaoRSuDYMv8idrXCAOGiVy1mETHRxbzSbI8Ged0bwJ7AidOfuV
 2H01DIDq787DiCWFSCEMFbjdws6LsDbuuAlpo9r7K47FmDKqtH5/C4cCQ
 bagF7K1wccvsdpwXMf0knpDKljC5/wVnmiKxAMYvPy+NvfOz7Uhk+FRZs
 8dHVCo/x38gXJWRqzQcee7V4gwvQBp+wqITOOTZkPewlPYBY3/an5sZ7c
 3SZrcliGvInLIwSCcrFC8wxlkuUGzARVyAz2NdKEQucgVg0xqUfKDEiKQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="477563463"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477563463"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 10:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="883193932"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="883193932"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.9.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 10:31:47 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Fri, 17 Nov 2023 19:31:44 +0100
Message-ID: <8297076.T7Z3S40VBb@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <170023968333.7876.8596943056061240623@emeril.freedesktop.org>
References: <20231116140719.1046040-2-janusz.krzysztofik@linux.intel.com>
 <170023968333.7876.8596943056061240623@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vma=3A_Fix_VMA_UAF_on_destroy_against_deactivate_race_=28?=
 =?utf-8?q?rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org,
 LGCI Bug Filing <lgci.bug.filing@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 17 November 2023 17:48:03 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/vma: Fix VMA UAF on destroy against deactivate race (rev2)
> URL   : https://patchwork.freedesktop.org/series/126530/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13884_full -> Patchwork_126530v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126530v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126530v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126530v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf_pmu@most-busy-idle-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@perf_pmu@most-busy-idle-check-all@bcs0.html

Hi Ashutosh, Umesh,

Can you please have a look at this pre-merge report and give your opinion if 
root cause may be the same as either

https://jira.devtools.intel.com/browse/VLK-28445 / http://gfx-ci.igk.intel.com/cibuglog-ng/issue/5071 

or 

https://jira.devtools.intel.com/browse/VLK-38744 / http://gfx-ci.igk.intel.com/cibuglog-ng/issue/7363, 

then not related to the VMA fix under test?

@Andi, if Ashutosh or Umesh confirm that's a false positive, could you please 
ask BUG Filing for updating filters and re-reporting so we have this green 
before merging?

Thanks,
Janusz

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_psr@pr_primary_mmap_cpu}:
>     - shard-mtlp:         NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_psr@pr_primary_mmap_cpu.html
> 
>   * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible}:
>     - shard-snb:          [PASS][3] -> [TIMEOUT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb5/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-snb7/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible.html
> 
>   * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>     - shard-rkl:          [PASS][6] -> [TIMEOUT][7] +1 other test timeout
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
> 
>   * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
>     - shard-tglu:         [PASS][8] -> [TIMEOUT][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-8/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
> 
>   * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][10]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
>     - shard-apl:          NOTRUN -> [TIMEOUT][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126530v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          [PASS][12] -> [SKIP][13] ([i915#8411])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@render-ccs:
>     - shard-dg2:          NOTRUN -> [FAIL][14] ([i915#6122])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@api_intel_bb@render-ccs.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#9318])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#8414]) +10 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@busy-hang@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#8414]) +6 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#8414]) +10 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [PASS][19] -> [FAIL][20] ([i915#7742])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@fbdev@eof:
>     - shard-rkl:          [PASS][21] -> [SKIP][22] ([i915#2582]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@fbdev@eof.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@fbdev@eof.html
> 
>   * igt@gem_caching@read-writes:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4873])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_caching@read-writes.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4098] / [i915#9323])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#9323])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#9323])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#7697])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][28] ([i915#9364])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_exec@basic-norecovery:
>     - shard-mtlp:         [PASS][29] -> [ABORT][30] ([i915#9262])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-1/igt@gem_ctx_exec@basic-norecovery.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_ctx_exec@basic-norecovery.html
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - shard-rkl:          [PASS][31] -> [SKIP][32] ([i915#6252])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_ctx_persistence@engines-hang@bcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#8555]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#8555])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#5882]) +5 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][36] -> [FAIL][37] ([i915#5784])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-15/igt@gem_eio@unwedge-stress.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-19/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4771])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4812])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4771]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-dg2:          NOTRUN -> [FAIL][41] ([i915#9606])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-dg2:          [PASS][42] -> [TIMEOUT][43] ([i915#3778] / [i915#7016])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#3539] / [i915#4852])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@gem_exec_fair@basic-none-vip.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4812]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4812])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-concurrent0:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#3281]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-rkl:          [PASS][49] -> [SKIP][50] ([i915#3281]) +5 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_exec_reloc@basic-wc.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#3281]) +5 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_exec_reloc@basic-wc-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#3281]) +4 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#3281]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][54] -> [ABORT][55] ([i915#7975] / [i915#8213])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4860])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#4613])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#284])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4083])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4077]) +4 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gem_mmap_gtt@bad-object.html
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4077]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_mmap_gtt@bad-object.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4077]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4083]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4083]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#3282]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3282]) +6 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
>     - shard-rkl:          [PASS][68] -> [SKIP][69] ([i915#3282]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@gem_partial_pwrite_pread@reads-uncached.html
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3282]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3282])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][72] ([i915#2658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl7/igt@gem_pwrite@basic-exhaustion.html
>     - shard-snb:          NOTRUN -> [WARN][73] ([i915#2658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4270]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#4270]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4270]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_pxp@fail-invalid-protected-context.html
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#4270])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4270]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#8428]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#768]) +5 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#4079])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gem_render_tiled_blits@basic.html
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4079])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([fdo#109312])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@gem_softpin@evict-snoop.html
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4885])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4879])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#3297]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@gem_userptr_blits@create-destroy-unsync.html
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#3297])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3297])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#3297])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([fdo#109289]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gen3_render_mixed_blits.html
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([fdo#109289]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([fdo#109289]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#2856]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          [PASS][94] -> [SKIP][95] ([i915#2527])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#2527] / [i915#2856])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#2527])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#2527])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#2856]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - shard-rkl:          [PASS][100] -> [SKIP][101] ([i915#9588])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#6227])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          NOTRUN -> [FAIL][103] ([i915#6537])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#8925])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@i915_pm_rps@thresholds-idle-park@gt0.html
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#8925])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#4387])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4387])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#6188])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglu:         [PASS][109] -> [INCOMPLETE][110] ([i915#8797])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@i915_suspend@forcewake.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-6/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-mtlp:         [PASS][111] -> [ABORT][112] ([i915#9414]) +3 other tests abort
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@i915_suspend@sysfs-reader.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-2/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#4212]) +3 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4212])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][115] ([i915#8247]) +3 other tests fail
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-17/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#6228])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([fdo#111615] / [i915#5286])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#5286])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([fdo#111614]) +3 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#5286])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [FAIL][122] ([i915#5138])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([fdo#111614])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3638]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([fdo#111614]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-rkl:          [PASS][126] -> [SKIP][127] ([i915#1845] / [i915#4098]) +23 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([fdo#111614] / [i915#3638])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#6187])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5190]) +13 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4538]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>     - shard-tglu:         NOTRUN -> [SKIP][132] ([fdo#111615])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([fdo#110723])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([fdo#111615])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([fdo#111615]) +5 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#7213])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4087] / [i915#7213]) +3 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4087]) +3 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#7828]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_color@ctm-max:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#111827])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_chamelium_color@ctm-max.html
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([fdo#111827]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_chamelium_color@ctm-max.html
> 
>   * igt@kms_chamelium_color@ctm-red-to-blue:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([fdo#111827])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_chamelium_color@ctm-red-to-blue.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#7828]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#7828]) +7 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#7828]) +12 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#7828]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@degamma@pipe-a:
>     - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#4098]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_color@degamma@pipe-a.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_color@degamma@pipe-a.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][150] ([i915#7173])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl7/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][151] ([i915#7173]) +1 other test timeout
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#3299])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3116] / [i915#3299])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3299])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#7118])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][156] ([i915#1339])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3359])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#3555])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#3555] / [i915#8814]) +2 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#3555]) +4 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#1845] / [i915#4098]) +19 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3555]) +5 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#4103] / [i915#4213] / [i915#5608])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#4103])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([fdo#109274])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3546]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([fdo#109274] / [i915#5354]) +1 other test skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][169] -> [FAIL][170] ([i915#2346])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8812])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#3840]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#3840])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([fdo#111825])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-apl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [fdo#111767])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([fdo#109274] / [fdo#111767])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-snb:          NOTRUN -> [SKIP][177] ([fdo#109271] / [fdo#111767])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#109274]) +6 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([fdo#109274] / [i915#3637]) +2 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3637] / [i915#4098]) +11 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-mtlp:         NOTRUN -> [ABORT][181] ([i915#9414])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#2672]) +3 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2672]) +6 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#2672]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3555]) +8 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8810])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [FAIL][188] ([i915#6880])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#1849] / [i915#4098] / [i915#5354]) +14 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([fdo#111825] / [i915#1825]) +8 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#8708]) +18 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([fdo#111825]) +18 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#3458]) +10 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([fdo#110189]) +5 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#8708]) +6 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][197] ([fdo#109280]) +9 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3023]) +5 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3458]) +17 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#1825]) +10 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#5354]) +29 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][202] ([fdo#109271]) +159 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#8708]) +14 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#433])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#3555] / [i915#8228])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#8228]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#8228])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_hdr@static-toggle.html
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8228])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@bad-vsync-end:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#3555] / [i915#4098]) +2 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#4816])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([fdo#109289]) +4 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#4098] / [i915#8825]) +2 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][213] ([i915#4573]) +1 other test fail
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#3555] / [i915#8806])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][215] ([i915#8292])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#6953] / [i915#8152])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#5235]) +5 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#5235]) +11 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#5235]) +7 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-19/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#6524] / [i915#6805])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [PASS][223] -> [SKIP][224] ([i915#1849])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#9683])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([fdo#111068] / [i915#9683]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#9683]) +2 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#4348])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#9681]) +2 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#9673]) +3 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_psr@psr2_cursor_render.html
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#9673])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#9673]) +1 other test skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-snb:          NOTRUN -> [SKIP][233] ([fdo#109271]) +46 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-snb6/igt@kms_rotation_crc@bad-pixel-format.html
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#4235]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#5289])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#5289])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([fdo#111615] / [i915#5289])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-14/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#3555] / [i915#4098])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#3555] / [i915#8809])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#8623])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_universal_plane@universal-plane-sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#4098]) +12 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_universal_plane@universal-plane-sanity.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][242] -> [INCOMPLETE][243] ([i915#9159])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][244] ([fdo#109271] / [i915#2437])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen12-group-exclusive-stream-ctx-handle:
>     - shard-rkl:          [PASS][245] -> [SKIP][246] ([fdo#109289])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#7387])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@perf@global-sseu-config.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#7387])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [PASS][249] -> [SKIP][250] ([i915#2434])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@perf@mi-rpc.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@perf@mi-rpc.html
>     - shard-tglu:         NOTRUN -> [SKIP][251] ([fdo#109289])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@perf@mi-rpc.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [PASS][252] -> [FAIL][253] ([i915#7484])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@semaphore-busy@vcs1:
>     - shard-dg1:          NOTRUN -> [FAIL][254] ([i915#4349]) +1 other test fail
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@perf_pmu@semaphore-busy@vcs1.html
> 
>   * igt@prime_udl:
>     - shard-mtlp:         NOTRUN -> [SKIP][255] ([fdo#109291])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#3708] / [i915#4077])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [PASS][257] -> [SKIP][258] ([fdo#109295] / [fdo#111656] / [i915#3708])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#3708])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([fdo#109307])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html
>     - shard-dg1:          NOTRUN -> [SKIP][261] ([fdo#109307] / [i915#4818])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#2575]) +10 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-18/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-flag:
>     - shard-tglu:         NOTRUN -> [SKIP][263] ([fdo#109315] / [i915#2575]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@v3d/v3d_submit_cl@bad-flag.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#2575]) +11 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_submit_csd@bad-multisync-extension:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([fdo#109315]) +3 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@v3d/v3d_submit_csd@bad-multisync-extension.html
> 
>   * igt@v3d/v3d_submit_csd@bad-pad:
>     - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#2575]) +6 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@v3d/v3d_submit_csd@bad-pad.html
> 
>   * igt@vc4/vc4_lookup_fail@bad-color-write:
>     - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#7711]) +4 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@vc4/vc4_lookup_fail@bad-color-write.html
> 
>   * igt@vc4/vc4_mmap@mmap-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#7711]) +9 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@vc4/vc4_mmap@mmap-bo.html
> 
>   * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#7711])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#7711]) +2 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-4/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
>     - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#2575]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [SKIP][272] ([i915#8411]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-dg1:          [DMESG-WARN][274] ([i915#4391] / [i915#4423]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-16/igt@core_hotunplug@unbind-rebind.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@core_hotunplug@unbind-rebind.html
> 
>   * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:
>     - shard-dg1:          [TIMEOUT][276] -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-13/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][278] ([i915#7742]) -> [PASS][279]
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@fbdev@write:
>     - shard-rkl:          [SKIP][280] ([i915#2582]) -> [PASS][281]
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@fbdev@write.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@fbdev@write.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-mtlp:         [ABORT][282] ([i915#9414]) -> [PASS][283]
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][284] ([i915#5784]) -> [PASS][285]
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-18/igt@gem_eio@reset-stress.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][286] ([i915#2842]) -> [PASS][287]
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [FAIL][288] ([i915#2842]) -> [PASS][289] +2 other tests pass
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][290] ([i915#3281]) -> [PASS][291] +16 other tests pass
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-mtlp:         [ABORT][292] ([i915#7975] / [i915#8213] / [i915#9262]) -> [PASS][293]
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-5/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-rkl:          [SKIP][294] ([fdo#111656]) -> [PASS][295]
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gem_mmap_gtt@coherency.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [SKIP][296] ([i915#3282]) -> [PASS][297] +7 other tests pass
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@gem_pwrite@basic-random.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gem_pwrite@basic-random.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [SKIP][298] ([i915#2527]) -> [PASS][299] +3 other tests pass
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * {igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0}:
>     - shard-dg1:          [FAIL][300] -> [PASS][301]
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [SKIP][302] ([i915#7984]) -> [PASS][303]
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@i915_power@sanity.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@i915_power@sanity.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [FAIL][304] ([i915#3743]) -> [PASS][305]
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * {igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs}:
>     - shard-rkl:          [SKIP][306] ([i915#4098]) -> [PASS][307] +6 other tests pass
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][308] ([i915#1845] / [i915#4098]) -> [PASS][309] +16 other tests pass
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1:
>     - shard-snb:          [ABORT][310] -> [PASS][311]
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][312] ([i915#1849] / [i915#4098] / [i915#5354]) -> [PASS][313] +5 other tests pass
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * {igt@kms_lease@simple-lease@pipe-d-hdmi-a-4}:
>     - shard-dg1:          [INCOMPLETE][314] ([i915#4423]) -> [PASS][315]
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-16/igt@kms_lease@simple-lease@pipe-d-hdmi-a-4.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-15/igt@kms_lease@simple-lease@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [INCOMPLETE][316] ([i915#180] / [i915#9392]) -> [PASS][317]
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * {igt@kms_pm_rpm@modeset-lpsp}:
>     - shard-rkl:          [SKIP][318] ([i915#9519]) -> [PASS][319] +1 other test pass
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * {igt@kms_pm_rpm@modeset-lpsp-stress}:
>     - shard-dg1:          [SKIP][320] ([i915#9519]) -> [PASS][321] +1 other test pass
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-rkl:          [INCOMPLETE][322] ([i915#9569]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
>     - shard-apl:          [TIMEOUT][324] -> [PASS][325]
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-apl6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-apl1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
> 
>   * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc}:
>     - shard-tglu:         [TIMEOUT][326] -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-10/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-4/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_no_crtc.html
> 
>   * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
>     - shard-rkl:          [TIMEOUT][328] -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-1/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][330] ([i915#9196]) -> [PASS][331] +1 other test pass
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][332] ([i915#9196]) -> [PASS][333] +1 other test pass
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][334] ([i915#2436]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-accuracy-98@rcs0:
>     - shard-dg2:          [TIMEOUT][336] -> [PASS][337] +1 other test pass
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@perf_pmu@busy-accuracy-98@rcs0.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@perf_pmu@busy-accuracy-98@rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@bcs0:
>     - shard-mtlp:         [FAIL][338] ([i915#4349]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][340] ([i915#4349]) -> [PASS][341] +3 other tests pass
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][342] ([i915#7957]) -> [SKIP][343] ([i915#3555])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          [TIMEOUT][344] -> [SKIP][345] ([i915#3539] / [i915#4852])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_pread@uncached:
>     - shard-dg2:          [TIMEOUT][346] -> [SKIP][347] ([i915#3282])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@gem_pread@uncached.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-11/igt@gem_pread@uncached.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          [SKIP][348] ([i915#2532]) -> [SKIP][349] ([i915#2527])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][350] ([i915#5286]) -> [SKIP][351] ([i915#1845] / [i915#4098]) +7 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][352] ([i915#1845] / [i915#4098]) -> [SKIP][353] ([i915#5286]) +4 other tests skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][354] ([fdo#111614] / [i915#3638]) -> [SKIP][355] ([i915#1845] / [i915#4098]) +3 other tests skip
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][356] ([i915#1845] / [i915#4098]) -> [SKIP][357] ([fdo#111614] / [i915#3638]) +2 other tests skip
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][358] ([i915#1845] / [i915#4098]) -> [SKIP][359] ([fdo#110723]) +3 other tests skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-rkl:          [SKIP][360] ([i915#1845] / [i915#4098]) -> [SKIP][361] ([fdo#111615])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          [SKIP][362] ([fdo#111615]) -> [SKIP][363] ([i915#1845] / [i915#4098])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][364] ([fdo#110723]) -> [SKIP][365] ([i915#1845] / [i915#4098]) +3 other tests skip
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][366] ([i915#1845] / [i915#4098]) -> [SKIP][367] ([i915#3116]) +1 other test skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][368] ([i915#7118]) -> [SKIP][369] ([i915#1845] / [i915#4098]) +1 other test skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_content_protection@type1.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          [SKIP][370] ([fdo#109279] / [i915#3359]) -> [SKIP][371] ([i915#1845] / [i915#4098]) +1 other test skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-rkl:          [SKIP][372] ([i915#3359]) -> [SKIP][373] ([i915#1845] / [i915#4098]) +1 other test skip
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][374] ([i915#1845] / [i915#4098]) -> [SKIP][375] ([i915#3555]) +3 other tests skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          [SKIP][376] ([i915#1845] / [i915#4098]) -> [SKIP][377] ([i915#3359])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          [SKIP][378] ([i915#3555]) -> [SKIP][379] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][380] ([fdo#111825]) -> [SKIP][381] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][382] ([i915#1845] / [i915#4098]) -> [SKIP][383] ([i915#4103])
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-rkl:          [SKIP][384] ([i915#1845] / [i915#4098]) -> [SKIP][385] ([fdo#111825]) +3 other tests skip
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-rkl:          [SKIP][386] ([fdo#111767] / [fdo#111825]) -> [SKIP][387] ([i915#1845] / [i915#4098])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          [SKIP][388] ([i915#4103]) -> [SKIP][389] ([i915#1845] / [i915#4098]) +1 other test skip
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          [SKIP][390] ([i915#3555] / [i915#3840]) -> [SKIP][391] ([i915#1845] / [i915#4098])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][392] ([i915#1845] / [i915#4098]) -> [SKIP][393] ([i915#3555] / [i915#3840])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][394] ([i915#3955]) -> [SKIP][395] ([fdo#110189] / [i915#3955])
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][396] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][397] ([fdo#111825] / [i915#1825]) +23 other tests skip
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][398] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][399] ([i915#3023]) +16 other tests skip
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][400] ([fdo#111825]) -> [SKIP][401] ([i915#1849] / [i915#4098] / [i915#5354])
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][402] ([i915#1849] / [i915#4098] / [i915#5354]) -> [SKIP][403] ([fdo#111825]) +1 other test skip
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][404] ([i915#3023]) -> [SKIP][405] ([i915#1849] / [i915#4098] / [i915#5354]) +24 other tests skip
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          [SKIP][406] ([i915#5439]) -> [SKIP][407] ([i915#1849] / [i915#4098] / [i915#5354])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          [SKIP][408] ([fdo#111825] / [i915#1825]) -> [SKIP][409] ([i915#1849] / [i915#4098] / [i915#5354]) +44 other tests skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          [SKIP][410] ([i915#3555] / [i915#8228]) -> [SKIP][411] ([i915#1845] / [i915#4098]) +1 other test skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_hdr@static-swap.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][412] ([i915#6301]) -> [SKIP][413] ([i915#1845] / [i915#4098])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-2/igt@kms_panel_fitting@legacy.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-rkl:          [SKIP][414] ([fdo#111825] / [i915#8152]) -> [SKIP][415] ([fdo#111825])
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][416] ([fdo#111615] / [i915#5289]) -> [SKIP][417] ([i915#1845] / [i915#4098])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][418] ([i915#1845] / [i915#4098]) -> [SKIP][419] ([fdo#111615] / [i915#5289]) +1 other test skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [INCOMPLETE][420] ([i915#5493]) -> [CRASH][421] ([i915#9351])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13884/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]:
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126530v2/index.html
> 




