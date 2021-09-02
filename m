Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6423FEE1A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 14:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E846E520;
	Thu,  2 Sep 2021 12:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660246E520
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 12:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="206228833"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="206228833"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 05:52:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="542643211"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 05:52:36 -0700
Date: Thu, 2 Sep 2021 15:52:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20210902125232.GA3603255@ideak-desk.fi.intel.com>
References: <20210901160402.24816-1-animesh.manna@intel.com>
 <163053748619.2831.13099290395335447669@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163053748619.2831.13099290395335447669@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_in_max_source_calculation_for_dp/edp_=28rev3=29?=
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

Hi,

On Wed, Sep 01, 2021 at 11:04:46PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Fix in max source calculation for dp/edp (rev3)
> URL   : https://patchwork.freedesktop.org/series/93622/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10544_full -> Patchwork_20939_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20939_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20939_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20939_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@pi-common@rcs0:
>     - shard-skl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl8/igt@gem_exec_schedule@pi-common@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl5/igt@gem_exec_schedule@pi-common@rcs0.html

This is
(gem_exec_schedule:1081) CRITICAL: Test assertion failure function test_pi_ringfull, file ../tests/i915/gem_exec_schedule.c:2478:
(gem_exec_schedule:1081) CRITICAL: Failed assertion: __execbuf(fd, &execbuf) == -4
(gem_exec_schedule:1081) CRITICAL: Last errno: 4, Interrupted system call
(gem_exec_schedule:1081) CRITICAL: error: 0 != -4

and looks to be some GEM specific issue. I can't see how the KMS
specific changes in this patchset would affect SKL and the above test in
particular.

Patchset pushed, thanks.

> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][3] ([i915#1845]) -> [SKIP][4] +6 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
>     - {shard-rkl}:        [SKIP][5] ([fdo#112022]) -> [SKIP][6] +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-1/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20939_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +4 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-persistence:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][10] -> [TIMEOUT][11] ([i915#2369] / [i915#3063] / [i915#3648])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-tglb1/igt@gem_eio@unwedge-stress.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          NOTRUN -> [FAIL][12] ([i915#2846])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-apl:          [PASS][15] -> [SKIP][16] ([fdo#109271])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([fdo#109313])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb7/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3323])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3323])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-tglb:         NOTRUN -> [FAIL][25] ([i915#3318])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#2856])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb3/igt@gen9_exec_parse@bb-start-far.html
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2856])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb7/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3777])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][31] ([i915#3722])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +279 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689] / [i915#3886]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#3689]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +26 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1982]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][46] ([i915#1319]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111828])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +52 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][49] ([i915#180])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271]) +286 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +33 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([i915#155] / [i915#180] / [i915#636])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2122])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2122])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111825]) +9 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1188])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([fdo#108145] / [i915#265])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([i915#265]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +6 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb3/igt@kms_vblank@pipe-d-wait-forked.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2437])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2994])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-apl8/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][85] ([i915#2582]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@fbdev@write.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-rkl}:        [FAIL][87] ([i915#3115]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-5/igt@gem_eio@reset-stress.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-5/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][89] ([i915#2846]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
>     - {shard-rkl}:        [FAIL][91] ([i915#2846]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        [FAIL][93] ([i915#2842]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][95] ([i915#2842]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][97] ([i915#2842]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - {shard-rkl}:        [FAIL][99] ([i915#2428]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-iclb:         [FAIL][101] ([i915#2428]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - {shard-rkl}:        [SKIP][103] ([i915#3012]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][105] ([i915#1397]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - {shard-rkl}:        [SKIP][107] ([fdo#109308]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress:
>     - shard-tglb:         [INCOMPLETE][109] ([i915#2411]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-tglb8/igt@i915_pm_rpm@gem-execbuf-stress.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@i915_pm_rpm@gem-execbuf-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][111] ([i915#3921]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@requests:
>     - shard-tglb:         [DMESG-FAIL][113] ([i915#4062]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-tglb5/igt@i915_selftest@live@requests.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-tglb6/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][115] ([i915#2521]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][117] ([i915#3721]) -> [PASS][118] +3 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][119] ([i915#3638]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_color@pipe-b-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122] +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        [SKIP][123] ([fdo#112022]) -> [PASS][124] +5 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][125] ([i915#2346] / [i915#533]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - {shard-rkl}:        [SKIP][127] ([fdo#111825]) -> [PASS][128] +4 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
>     - {shard-rkl}:        [SKIP][129] ([fdo#111314]) -> [PASS][130] +4 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][131] ([i915#79]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +5 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - {shard-rkl}:        [SKIP][135] ([i915#1849]) -> [PASS][136] +18 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][139] ([i915#198] / [i915#1982]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@pipe-b-query-forked-hang:
>     - {shard-rkl}:        [SKIP][141] ([i915#1845]) -> [PASS][142] +15 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/shard-rkl-2/igt@kms_vblank@pipe-b-query-forked-hang.html
>    [142]: ht
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20939/index.html
