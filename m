Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8529012B411
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 11:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EBD6E425;
	Fri, 27 Dec 2019 10:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE2876E425;
 Fri, 27 Dec 2019 10:51:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6602A47DB;
 Fri, 27 Dec 2019 10:51:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 27 Dec 2019 10:51:25 -0000
Message-ID: <157744388585.27189.7305115256151676317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191224084012.24241-1-lucas.demarchi@intel.com>
In-Reply-To: <20191224084012.24241-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/10=5D_drm/i915=3A_simplify_prefixe?=
 =?utf-8?q?s_on_device=5Finfo_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,01/10] drm/i915: simplify prefixes on device_info (rev3)
URL   : https://patchwork.freedesktop.org/series/71341/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7633_full -> Patchwork_15919_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15919_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl8/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-apl7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#435])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb8/igt@gem_exec_nop@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb5/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#463])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([fdo#112126] / [i915#530])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#456])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb7/igt@gem_softpin@noreloc-s3.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#460] / [i915#516])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_tiling@flip-to-yf-tiled:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#107931] / [i915#167])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl1/igt@kms_flip_tiling@flip-to-yf-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-skl6/igt@kms_flip_tiling@flip-to-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#49]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456] / [i915#460] / [i915#474])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#56] / [i915#78])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl1/igt@kms_plane_lowres@pipe-c-tiling-y.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#456] / [i915#460])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [INCOMPLETE][33] ([i915#456]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb6/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][35] ([i915#490]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][37] ([fdo#111677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][41] ([i915#832]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#112057]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb8/igt@i915_selftest@live_requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb5/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [INCOMPLETE][45] ([i915#58] / [k.org#198133]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-glk6/igt@i915_selftest@mock_requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-glk4/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [DMESG-WARN][47] ([i915#109]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl4/igt@kms_color@pipe-a-ctm-0-25.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-skl10/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][51] ([i915#456] / [i915#460]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][53] ([i915#34]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-kbl:          [DMESG-WARN][59] ([i915#56] / [i915#78]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-yf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-kbl3/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][61] ([i915#460]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb3/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb9/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [INCOMPLETE][63] ([i915#456] / [i915#460]) -> [DMESG-WARN][64] ([i915#402])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7633/shard-tglb2/igt@kms_psr@psr2_suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/shard-tglb8/igt@kms_psr@psr2_suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  Additional (1): pig-snb-2600 
  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7633 -> Patchwork_15919

  CI-20190529: 20190529
  CI_DRM_7633: 7670f977fb1bda159172900b243d14e4dded2886 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15919: 55bf3893feb3186384a3c9983975c1cf0948da1e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15919/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
