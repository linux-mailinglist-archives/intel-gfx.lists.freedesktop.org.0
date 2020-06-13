Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EACA91F7FE0
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 02:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7046E38A;
	Sat, 13 Jun 2020 00:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEBB86E38A;
 Sat, 13 Jun 2020 00:14:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEB7BA00C7;
 Sat, 13 Jun 2020 00:14:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 13 Jun 2020 00:14:39 -0000
Message-ID: <159200727975.20489.8920529729901655345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612204734.3674650-1-matthew.d.roper@intel.com>
In-Reply-To: <20200612204734.3674650-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_bw=5Fbuddy_pagemask_table?=
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

Series: drm/i915: Update bw_buddy pagemask table
URL   : https://patchwork.freedesktop.org/series/78276/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8621_full -> Patchwork_17942_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17942_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17942_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17942_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb7/igt@gem_exec_balancer@bonded-early.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb6/igt@gem_exec_balancer@bonded-early.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-snb:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@perf_pmu@busy-check-all@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@perf_pmu@busy-check-all@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17942_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@short-buffer-wakeup:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#95]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl3/igt@drm_read@short-buffer-wakeup.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl7/igt@drm_read@short-buffer-wakeup.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1930])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl1/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk4/igt@gem_exec_schedule@smoketest-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-glk5/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_mmap@bad-size:
    - shard-snb:          [PASS][13] -> [TIMEOUT][14] ([i915#1958])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_mmap@bad-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@gem_mmap@bad-size.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#128])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb3/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1928])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl9/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl8/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-farfromfence.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-farfromfence.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb2/igt@kms_psr@psr2_basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@kms_vblank@pipe-c-wait-forked-hang:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_vblank@pipe-c-wait-forked-hang.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl4/igt@kms_vblank@pipe-c-wait-forked-hang.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-snb:          [PASS][35] -> [INCOMPLETE][36] ([i915#82])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@perf_pmu@busy-check-all@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@perf_pmu@busy-check-all@vcs0.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][37] ([i915#402]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [DMESG-FAIL][39] ([i915#1823]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb5/igt@i915_selftest@perf@request.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb8/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl3/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl7/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-kbl:          [DMESG-WARN][43] ([i915#93] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-hsw:          [DMESG-WARN][49] ([i915#128]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-hsw4/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-hsw1/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][51] ([i915#61]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-hsw1/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-hsw4/igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +11 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          [DMESG-WARN][55] ([i915#95]) -> [PASS][56] +11 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-glk5/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-iclb8/igt@perf@blocking-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          [SKIP][69] ([fdo#109271] / [i915#1099]) -> [INCOMPLETE][70] ([i915#82])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][71] ([i915#1930]) -> [TIMEOUT][72] ([i915#1958])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][73] ([i915#468]) -> [FAIL][74] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][75] ([fdo#110321]) -> [FAIL][76] ([fdo#110321] / [fdo#110336])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl2/igt@kms_content_protection@atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][77] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][78] ([fdo#110321] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][79] ([i915#1319]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl1/igt@kms_content_protection@lic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl8/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][81] ([i915#1319]) -> [DMESG-FAIL][82] ([fdo#110321] / [i915#95])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl3/igt@kms_content_protection@lic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][83] ([i915#1319]) -> [TIMEOUT][84] ([i915#1319] / [i915#1958])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl1/igt@kms_content_protection@srm.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl4/igt@kms_content_protection@srm.html
    - shard-apl:          [DMESG-FAIL][85] ([fdo#110321]) -> [TIMEOUT][86] ([i915#1319] / [i915#1635])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl3/igt@kms_content_protection@srm.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [DMESG-WARN][87] ([i915#93] / [i915#95]) -> [DMESG-FAIL][88] ([i915#54] / [i915#95])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][89] ([i915#180] / [i915#95]) -> [DMESG-WARN][90] ([i915#95])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-snb:          [SKIP][91] ([fdo#109271]) -> [TIMEOUT][92] ([i915#1958])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8621/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8621 -> Patchwork_17942

  CI-20190529: 20190529
  CI_DRM_8621: acd803311fbd1e6adc38d10ca382a60c6c190be9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5708: f66c71e29de50bae880bc81ceb0517d4e3e2dfd8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17942: d2b1478a5a609fd6f1ee0711cad56b2a67d4708d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17942/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
