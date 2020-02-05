Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C94671533AC
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:19:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77FB6F606;
	Wed,  5 Feb 2020 15:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCC9E6F606;
 Wed,  5 Feb 2020 15:19:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB095A0003;
 Wed,  5 Feb 2020 15:19:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 05 Feb 2020 15:19:24 -0000
Message-ID: <158091596473.17320.9073213091897201078@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203074756.10549-1-manasi.d.navare@intel.com>
In-Reply-To: <20200203074756.10549-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Introduce_encoder-?=
 =?utf-8?q?=3Ecompute=5Fconfig=5Flate=28=29?=
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

Series: series starting with [v2,1/3] drm/i915: Introduce encoder->compute_config_late()
URL   : https://patchwork.freedesktop.org/series/72891/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7857_full -> Patchwork_16387_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16387_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16387_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16387_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_await@wide-contexts:
    - shard-skl:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@gem_exec_await@wide-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl4/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_schedule@semaphore-codependency:
    - shard-kbl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl4/igt@gem_exec_schedule@semaphore-codependency.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-kbl1/igt@gem_exec_schedule@semaphore-codependency.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-kbl1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16387_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#112080]) +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276]) +16 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#109])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl5/igt@kms_color@pipe-a-ctm-0-5.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#52] / [i915#54])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#221])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#49]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([fdo#108145] / [i915#265])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#173])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb3/igt@kms_psr@no_drrs.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][32] -> [FAIL][33] ([i915#31])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl7/igt@kms_setmode@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-apl2/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#31])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_setmode@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +6 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-skl:          [DMESG-WARN][38] ([i915#109]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@gem_exec_reloc@basic-write-cpu-active.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl5/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][42] ([i915#677]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][44] ([fdo#109276]) -> [PASS][45] +14 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [FAIL][46] ([i915#694]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw7/igt@gem_partial_pwrite_pread@reads-display.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-hsw2/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][48] ([i915#770]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw1/igt@i915_selftest@live_blt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][52] ([i915#180]) -> [PASS][53] +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][54] ([i915#34]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][56] ([i915#668]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][58] ([fdo#108145] / [i915#265]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][60] ([fdo#109441]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][62] ([i915#69]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][64] ([fdo#112080]) -> [PASS][65] +15 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][66] ([IGT#28]) -> [SKIP][67] ([fdo#112080])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][68] ([i915#454]) -> [SKIP][69] ([i915#468])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@legacy-planes:
    - shard-snb:          [INCOMPLETE][70] ([i915#82]) -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-snb6/igt@i915_pm_rpm@legacy-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-snb2/igt@i915_pm_rpm@legacy-planes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [SKIP][72] ([fdo#111825]) -> [INCOMPLETE][73] ([i915#472])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7857 -> Patchwork_16387

  CI-20190529: 20190529
  CI_DRM_7857: 8ec40a15b9a930df9e445f17c5e01cdb6f80353a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16387: 4e5443593875f7b5c107caae700bd2e93d50ca3b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16387/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
