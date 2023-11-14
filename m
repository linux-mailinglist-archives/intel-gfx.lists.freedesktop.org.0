Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1DF7EB446
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 16:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C33210E454;
	Tue, 14 Nov 2023 15:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15A410E454
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 15:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699977445; x=1731513445;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=nlxMwyZWnjOOybAiG8BKK1donz+Sv1IN1D9y7h4KySM=;
 b=QtGHeUnuB0uONXPjoPZYEqO2IAVVOqu7/504yc+5cOKonXiUoZ+aQtnA
 V+u/OO3lCsC6UTxEVmy2GEkLazGJGIB6pOjTro5srPYqYfkZnMiWzDgZe
 WdgWmMtgtDjkHTwWdNfZmXlm1+viakDMc+dynTMkBlM+vX/PNnptdhqZq
 GFoRR4BbzrWM+YF8ubMVJLsVTGwkOGknIvCcApYD2bYuL1eH1VGHeo7Eo
 9RzHGlMZ2+Eg5ssQG/lRoT8hUv5YoMNOFnU1oXMbNxk++SwT2r52x0Bum
 LtEVdywCeLcxiwVA58UVBzT2SIqIT3OMZOCBhoiSW0916fQRXnRvtUPVH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="390478507"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="390478507"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:57:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="768289340"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="768289340"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:57:15 -0800
Date: Tue, 14 Nov 2023 17:57:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZVOY2qX64FnxcAe+@ideak-desk.fi.intel.com>
References: <20231113142051.258864-1-imre.deak@intel.com>
 <169993779538.29256.13113346634311890277@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169993779538.29256.13113346634311890277@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Tune_down_FEC_detection_timeout_error_message?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 14, 2023 at 04:56:35AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Tune down FEC detection timeout error message
> URL   : https://patchwork.freedesktop.org/series/126340/
> State : success

Patch is pushed to -din, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13870_full -> Patchwork_126340v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-mtlp0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126340v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic}:
>     - shard-rkl:          [PASS][1] -> [TIMEOUT][2] +3 other tests timeout
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
>     - shard-snb:          [PASS][3] -> [TIMEOUT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb5/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-snb5/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
> 
>   * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage_src_moved}:
>     - shard-apl:          [PASS][5] -> [TIMEOUT][6] +1 other test timeout
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage_src_moved.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_single_damage_src_moved.html
> 
>   * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
>     - shard-tglu:         [PASS][7] -> [TIMEOUT][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-8/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
> 
>   * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
>     - shard-dg1:          [PASS][9] -> [TIMEOUT][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-12/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-12/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
> 
>   * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
>     - shard-glk:          [PASS][11] -> [TIMEOUT][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk5/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-glk9/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126340v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [FAIL][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62]) ([i915#8293])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#8411])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-purge-cache.html
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#8411])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#6230])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@api_intel_bb@crc32.html
> 
>   * igt@drm_fdinfo@busy-check-all@ccs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8414]) +7 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@drm_fdinfo@busy-check-all@ccs0.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][67] ([i915#7742])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8414])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@fbdev@pan:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#2582])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@fbdev@pan.html
> 
>   * igt@fbdev@unaligned-write:
>     - shard-rkl:          [PASS][70] -> [SKIP][71] ([i915#2582])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@fbdev@unaligned-write.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_caching@writes:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4873])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_caching@writes.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([fdo#109314])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#8555])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#280])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4812]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_exec_balancer@bonded-semaphore.html
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4812]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([Intel XE#874])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#8555]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#4525]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg2:          NOTRUN -> [FAIL][81] ([i915#9606])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@gem_exec_capture@many-4k-incremental.html
>     - shard-rkl:          NOTRUN -> [FAIL][82] ([i915#9606])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][83] -> [FAIL][84] ([i915#2842]) +1 other test fail
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3539]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_exec_fair@basic-throttle.html
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4473] / [i915#4771])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][87] ([i915#2842])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#7697])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([fdo#112283])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3281]) +7 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          [PASS][92] -> [SKIP][93] ([i915#3281]) +8 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3281]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3281]) +7 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#4537] / [i915#4812])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4537] / [i915#4812])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][98] ([i915#7975] / [i915#8213])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][99] -> [ABORT][100] ([i915#7975] / [i915#8213])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4860])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_fenced_exec_thrash@2-spare-fences.html
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#4860]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#4613]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4613]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][105] -> [TIMEOUT][106] ([i915#5493])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8289])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@basic-short:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4077]) +14 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_mmap_gtt@basic-short.html
> 
>   * igt@gem_mmap_wc@read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#4083]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_mmap_wc@read-write.html
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4083]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_mmap_wc@read-write.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3282]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          [PASS][112] -> [SKIP][113] ([i915#3282]) +3 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3282]) +3 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_pread@exhaustion.html
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3282]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#4270]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4270]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4270])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#4270])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#768]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#8428]) +4 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4079]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          [PASS][123] -> [SKIP][124] ([i915#8411]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4885])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#4885])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4079])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3297] / [i915#4880])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate.html
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#3297])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3297])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#3297]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-mtlp:         NOTRUN -> [FAIL][132] ([i915#3318])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([fdo#109289]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-2/igt@gen3_render_linear_blits.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([fdo#109289]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@gen7_exec_parse@basic-offset.html
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([fdo#109289])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][136] -> [INCOMPLETE][137] ([i915#5566])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#2856]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#2527] / [i915#2856])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#2856]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@gen9_exec_parse@secure-batches.html
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#2527]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [PASS][142] -> [SKIP][143] ([i915#2527]) +2 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#9588])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#7091])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#8399]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-rkl:          [PASS][148] -> [WARN][149] ([i915#2681])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>     - shard-dg1:          [PASS][150] -> [FAIL][151] ([i915#3591])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@gem-evict-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4077]) +9 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@i915_pm_rpm@gem-evict-pwrite.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-dg2:          [PASS][153] -> [FAIL][154] ([fdo#103375])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-2/igt@i915_pm_rpm@system-suspend.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#6621])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-mtlp:         NOTRUN -> [FAIL][156] ([i915#8346])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#6188])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([fdo#109303])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@i915_query@query-topology-known-pci-ids.html
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([fdo#109303])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#4212])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#4212])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3826])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][163] ([i915#8247]) +3 other tests fail
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-16/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3555])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#1769] / [i915#3555])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#1769] / [i915#3555])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#1845] / [i915#4098]) +30 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#5286]) +2 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [FAIL][169] ([i915#5138])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([fdo#111614]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([fdo#111614] / [i915#3638]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([fdo#111614])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([fdo#111614]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#5190]) +9 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][175] -> [FAIL][176] ([i915#3743])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([fdo#110723]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([fdo#111615])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][180] ([fdo#111615]) +7 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#2705])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_big_joiner@2x-modeset.html
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#2705])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3742])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4087]) +3 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([fdo#111827]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([fdo#111827]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#7828]) +5 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#7828]) +6 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#7828]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#7828]) +1 other test skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@degamma@pipe-a:
>     - shard-rkl:          [PASS][191] -> [SKIP][192] ([i915#4098]) +3 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@kms_color@degamma@pipe-a.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_color@degamma@pipe-a.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7118])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3299])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#7118])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][196] ([i915#7173])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#3555] / [i915#8814]) +2 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3555]) +7 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3359]) +1 other test skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_edge_walk@128x128-top-edge:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#4098]) +19 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_cursor_edge_walk@128x128-top-edge.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#3546]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4103] / [i915#4213] / [i915#5608])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#4103])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@single-bo@all-pipes:
>     - shard-mtlp:         [PASS][205] -> [DMESG-WARN][206] ([i915#2017])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-2/igt@kms_cursor_legacy@single-bo@all-pipes.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#9227])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9226] / [i915#9261]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#8588])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3804])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#3840])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#3555] / [i915#3840])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([fdo#111767] / [i915#3637]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([fdo#109274] / [fdo#111767]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([fdo#111767] / [fdo#111825]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][216] -> [FAIL][217] ([i915#79])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([fdo#111825]) +4 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3637]) +3 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-snb:          NOTRUN -> [SKIP][220] ([fdo#109271]) +12 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([fdo#109274]) +1 other test skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3637] / [i915#4098]) +6 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#2672]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#2672] / [i915#3555])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#2672]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3555]) +13 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8810])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#2672]) +1 other test skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          [PASS][229] -> [SKIP][230] ([i915#1849] / [i915#4098]) +18 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([fdo#109280]) +7 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#1825]) +21 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#8708]) +6 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#1849] / [i915#4098]) +16 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [FAIL][235] ([i915#6880])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#8708]) +12 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#3458]) +14 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3023]) +8 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([fdo#111825] / [i915#1825]) +18 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#5354]) +26 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#3555] / [i915#8228]) +1 other test skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8228])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3555] / [i915#4098]) +4 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#6301])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          [PASS][245] -> [INCOMPLETE][246] ([i915#9392])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#4098] / [i915#8825])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8821])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_plane_lowres@tiling-yf.html
>     - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8821])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][250] ([i915#8292])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-18/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#5235]) +8 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#5235]) +11 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#5235]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#3555] / [i915#5235]) +2 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#6953] / [i915#8152])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#5235]) +7 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#3555] / [i915#4098] / [i915#8152])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#6524] / [i915#6805]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_prime@d3hot.html
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#6524])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_prime@d3hot.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [PASS][263] -> [SKIP][264] ([i915#1849]) +1 other test skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#658])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][266] ([fdo#111068] / [i915#658])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([fdo#111068] / [i915#658]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@cursor_mmap_gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][268] ([fdo#110189]) +4 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@kms_psr@cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#1072]) +6 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_psr@psr2_dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#1072]) +3 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-rkl:          [PASS][271] -> [SKIP][272] ([i915#1845] / [i915#4098]) +21 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#5289])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#4235] / [i915#5190])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#4235])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-90.html
>     - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#4235])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3555] / [i915#4098])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_setmode@invalid-clone-exclusive-crtc.html
>     - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#3555] / [i915#8823])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][279] -> [FAIL][280] ([i915#9196]) +1 other test fail
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@perf_pmu@faulting-read@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#8440])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@perf_pmu@faulting-read@gtt.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([fdo#109295] / [i915#3291] / [i915#3708])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [PASS][283] -> [SKIP][284] ([fdo#109295] / [fdo#111656] / [i915#3708])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#3708])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-11/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
>     - shard-rkl:          NOTRUN -> [FAIL][286] ([i915#9583])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html
> 
>   * igt@v3d/v3d_get_bo_offset@create-get-offsets:
>     - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#2575]) +7 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@v3d/v3d_get_bo_offset@create-get-offsets.html
> 
>   * igt@v3d/v3d_job_submission@array-job-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#2575]) +10 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@v3d/v3d_job_submission@array-job-submission.html
> 
>   * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
>     - shard-tglu:         NOTRUN -> [SKIP][289] ([fdo#109315] / [i915#2575]) +1 other test skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html
> 
>   * igt@v3d/v3d_submit_csd@valid-multisync-submission:
>     - shard-rkl:          NOTRUN -> [SKIP][290] ([fdo#109315]) +8 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-4/igt@v3d/v3d_submit_csd@valid-multisync-submission.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
>     - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#7711]) +5 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-2/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#2575])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@vc4/vc4_wait_bo@used-bo.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#7711]) +7 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#7711]) +5 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][295] ([i915#8411]) -> [PASS][296] +1 other test pass
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [FAIL][297] ([i915#7742]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@fbdev@unaligned-read:
>     - shard-rkl:          [SKIP][299] ([i915#2582]) -> [PASS][300] +1 other test pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@fbdev@unaligned-read.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][301] ([i915#6268]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - shard-rkl:          [SKIP][303] ([i915#6252]) -> [PASS][304] +1 other test pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][305] ([i915#7975] / [i915#8213] / [i915#8398]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-10/igt@gem_eio@hibernate.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          [INCOMPLETE][307] ([i915#7892]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-1/igt@gem_eio@in-flight-suspend.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-1/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][309] ([i915#2842]) -> [PASS][310]
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [FAIL][311] ([i915#2842]) -> [PASS][312] +1 other test pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - shard-rkl:          [SKIP][313] ([i915#3281]) -> [PASS][314] +3 other tests pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_reloc@basic-gtt.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][315] ([i915#7276]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][317] ([i915#3282]) -> [PASS][318] +7 other tests pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gem_readwrite@beyond-eob.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          [SKIP][319] ([i915#2527]) -> [PASS][320] +2 other tests pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@gen9_exec_parse@allowed-single.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][321] ([i915#4387]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [FAIL][323] ([i915#5138]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][325] ([i915#3743]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_color@legacy-gamma-reset@pipe-b:
>     - shard-rkl:          [SKIP][327] ([i915#4098]) -> [PASS][328] +5 other tests pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_color@legacy-gamma-reset@pipe-b.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1:
>     - shard-snb:          [DMESG-WARN][329] -> [PASS][330]
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb6/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-snb2/igt@kms_cursor_crc@cursor-suspend@pipe-a-vga-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][331] ([i915#2346]) -> [PASS][332] +1 other test pass
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          [SKIP][333] ([i915#1849] / [i915#4098]) -> [PASS][334] +6 other tests pass
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg2:          [FAIL][335] ([fdo#103375]) -> [PASS][336]
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@bad-source:
>     - shard-rkl:          [SKIP][337] ([i915#1845] / [i915#4098]) -> [PASS][338] +13 other tests pass
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_pipe_crc_basic@bad-source.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_pipe_crc_basic@bad-source.html
> 
>   * {igt@kms_pm_rpm@fences-dpms}:
>     - shard-rkl:          [SKIP][339] ([i915#1849]) -> [PASS][340]
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_pm_rpm@fences-dpms.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_pm_rpm@fences-dpms.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
>     - shard-dg1:          [SKIP][341] ([i915#9519]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
>     - shard-apl:          [TIMEOUT][343] -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
> 
>   * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage}:
>     - shard-tglu:         [TIMEOUT][345] -> [PASS][346] +2 other tests pass
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-tglu-6/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-tglu-3/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage.html
> 
>   * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
>     - shard-snb:          [TIMEOUT][347] -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-snb4/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>     - shard-mtlp:         [TIMEOUT][349] -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-8/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
>     - shard-snb:          [FAIL][351] ([i915#9196]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][353] ([i915#2434]) -> [PASS][354]
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@perf@mi-rpc.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [INCOMPLETE][355] ([i915#9408]) -> [ABORT][356] ([i915#9618])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][357] ([i915#7957]) -> [SKIP][358] ([i915#3555])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [FAIL][359] ([i915#2842]) -> [SKIP][360] ([i915#9591])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@kms_async_flips@crc@pipe-d-edp-1:
>     - shard-mtlp:         [DMESG-FAIL][361] ([i915#8561]) -> [FAIL][362] ([i915#8247])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][363] ([i915#1845] / [i915#4098]) -> [SKIP][364] ([i915#5286]) +4 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          [SKIP][365] ([i915#5286]) -> [SKIP][366] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][367] ([i915#1845] / [i915#4098]) -> [SKIP][368] ([fdo#111614] / [i915#3638]) +3 other tests skip
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-270.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][369] ([fdo#111614] / [i915#3638]) -> [SKIP][370] ([i915#1845] / [i915#4098]) +3 other tests skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][371] ([fdo#110723]) -> [SKIP][372] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          [SKIP][373] ([fdo#111615]) -> [SKIP][374] ([i915#1845] / [i915#4098]) +1 other test skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][375] ([i915#1845] / [i915#4098]) -> [SKIP][376] ([fdo#110723]) +5 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][377] ([i915#9608]) -> [SKIP][378] ([i915#3555])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_color@deep-color.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][379] ([i915#3116]) -> [SKIP][380] ([i915#1845] / [i915#4098])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][381] ([i915#1845] / [i915#4098]) -> [SKIP][382] ([i915#3116])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic@pipe-a-dp-1:
>     - shard-apl:          [TIMEOUT][383] ([i915#7173]) -> [FAIL][384] ([i915#7173] / [i915#7181])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-apl4/igt@kms_content_protection@lic@pipe-a-dp-1.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-apl2/igt@kms_content_protection@lic@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][385] ([i915#1845] / [i915#4098]) -> [SKIP][386] ([i915#7118]) +1 other test skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_content_protection@type1.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-rkl:          [SKIP][387] ([i915#1845] / [i915#4098]) -> [SKIP][388] ([i915#3555]) +2 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          [SKIP][389] ([i915#3359]) -> [SKIP][390] ([i915#1845] / [i915#4098]) +1 other test skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x170.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([i915#3359]) +1 other test skip
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([i915#4103]) +1 other test skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][395] ([fdo#111825]) -> [SKIP][396] ([i915#1845] / [i915#4098]) +5 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([fdo#111825]) +2 other tests skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][399] ([i915#3555] / [i915#3840]) -> [SKIP][400] ([i915#4098])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_dsc@dsc-basic.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][401] ([i915#1849] / [i915#4098]) -> [SKIP][402] ([i915#5439])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][403] ([i915#1849] / [i915#4098]) -> [SKIP][404] ([fdo#111825] / [i915#1825]) +25 other tests skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][405] ([fdo#111825] / [i915#1825]) -> [SKIP][406] ([i915#1849] / [i915#4098]) +32 other tests skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-rkl:          [SKIP][407] ([i915#3023]) -> [SKIP][408] ([i915#1849] / [i915#4098]) +19 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][409] ([i915#1849] / [i915#4098]) -> [SKIP][410] ([i915#3023]) +17 other tests skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][411] ([i915#3555] / [i915#8228]) -> [SKIP][412] ([i915#1845] / [i915#4098])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][413] ([i915#4816]) -> [SKIP][414] ([i915#1839] / [i915#4070] / [i915#4816])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-rkl:          [SKIP][415] ([i915#3555]) -> [SKIP][416] ([i915#1845] / [i915#4098]) +4 other tests skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-4/igt@kms_plane_lowres@tiling-4.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-5/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][417] ([i915#1845] / [i915#4098]) -> [SKIP][418] ([fdo#111615] / [i915#5289])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13870/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
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
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
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
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7181]: https://gitlab.freedesktop.org/drm/intel/issues/7181
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
>   [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
>   [i915#8823]: https://gitlab.freedesktop.org/drm/intel/issues/8823
>   [i915#8825]: https://gitlab.freedesktop.org/drm/intel/issues/8825
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
>   [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
>   [i915#9588]: https://gitlab.freedesktop.org/drm/intel/issues/9588
>   [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9608]: https://gitlab.freedesktop.org/drm/intel/issues/9608
>   [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13870 -> Patchwork_126340v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13870: 30cf0be8023394a90d58bcff7803d427909de6d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7584: 30e6ded90039edde8aa6c435001f8d63159356bb @ http
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126340v1/index.html
