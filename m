Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE5612BAB0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 19:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F436E079;
	Fri, 27 Dec 2019 18:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B476E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 18:49:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Dec 2019 10:49:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,364,1571727600"; d="scan'208";a="220158397"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 27 Dec 2019 10:49:16 -0800
Date: Fri, 27 Dec 2019 10:49:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191227184916.GL2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <157744295826.27189.15821386735509739903@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157744295826.27189.15821386735509739903@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgV29y?=
 =?utf-8?q?karound_updates_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 27, 2019 at 10:35:58AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Workaround updates (rev3)
> URL   : https://patchwork.freedesktop.org/series/71337/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7633_full -> Patchwork_15917_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Series applied to dinq.  Thanks Lucas for the reviews.


Matt

>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15917_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_shared@q-smoketest-bsd2:
>     - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#461])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd2.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#469])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb3/igt@gem_eio@unwedge-stress.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_nop@basic-parallel:
>     - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#435]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb8/igt@gem_exec_nop@basic-parallel.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb7/igt@gem_exec_nop@basic-parallel.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +6 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#644])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#456] / [i915#460]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@i915_pm_backlight@fade_with_suspend.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#300])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
> 
>   * igt@kms_flip_tiling@flip-to-yf-tiled:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#107931] / [i915#167])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl1/igt@kms_flip_tiling@flip-to-yf-tiled.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl7/igt@kms_flip_tiling@flip-to-yf-tiled.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-tglb:         [PASS][25] -> [FAIL][26] ([fdo#111842] / [i915#608])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@kms_psr2_su@frontbuffer.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb6/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#460])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@short-reads:
>     - shard-apl:          [PASS][29] -> [TIMEOUT][30] ([i915#51])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl2/igt@perf@short-reads.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-apl3/igt@perf@short-reads.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-snb:          [FAIL][31] ([i915#490]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>     - shard-tglb:         [INCOMPLETE][33] ([fdo#111677]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>   * igt@i915_selftest@live_requests:
>     - shard-tglb:         [INCOMPLETE][35] ([fdo#112057]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb8/igt@i915_selftest@live_requests.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb9/igt@i915_selftest@live_requests.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-glk:          [INCOMPLETE][37] ([i915#58] / [k.org#198133]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-glk6/igt@i915_selftest@mock_requests.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-glk2/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>     - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-tglb:         [INCOMPLETE][41] ([i915#456] / [i915#460] / [i915#516]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html
>     - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-tglb:         [FAIL][49] ([i915#49]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-yf:
>     - shard-kbl:          [DMESG-WARN][53] ([i915#56] / [i915#78]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-yf.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-yf.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
>     - shard-tglb:         [INCOMPLETE][55] ([i915#460]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-tglb8/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [INCOMPLETE][57] ([i915#82]) -> [DMESG-WARN][58] ([i915#443] / [i915#444])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-snb2/igt@gem_eio@kms.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-snb4/igt@gem_eio@kms.html
> 
>   * igt@gem_tiled_blits@interruptible:
>     - shard-hsw:          [FAIL][59] ([i915#832]) -> [FAIL][60] ([i915#818])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-hsw1/igt@gem_tiled_blits@interruptible.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-hsw7/igt@gem_tiled_blits@interruptible.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [INCOMPLETE][61] ([i915#61]) -> [FAIL][62] ([i915#818])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-hsw7/igt@gem_tiled_blits@normal.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-hsw7/igt@gem_tiled_blits@normal.html
> 
>   * igt@kms_color@pipe-a-ctm-0-25:
>     - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [FAIL][64] ([i915#182])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl4/igt@kms_color@pipe-a-ctm-0-25.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
>   [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#182]: https://gitlab.freedesktop.org/drm/intel/issues/182
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
>   [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
> 
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): pig-hsw-4770r 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7633 -> Patchwork_15917
> 
>   CI-20190529: 20190529
>   CI_DRM_7633: 7670f977fb1bda159172900b243d14e4dded2886 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15917: fa37f6bdaf08b61dbeb346e2ff40e632d0dd08e6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15917/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
