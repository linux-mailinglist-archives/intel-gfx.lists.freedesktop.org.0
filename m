Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DB818273C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 04:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C936E038;
	Thu, 12 Mar 2020 03:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9F406E038;
 Thu, 12 Mar 2020 03:01:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2888A011A;
 Thu, 12 Mar 2020 03:01:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Liu, Chuansheng" <chuansheng.liu@intel.com>
Date: Thu, 12 Mar 2020 03:01:40 -0000
Message-ID: <158398210063.4950.10808243354437957914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311084704.20468-1-chuansheng.liu@intel.com>
In-Reply-To: <20200311084704.20468-1-chuansheng.liu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_print_more_workaround_registers?=
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

Series: drm/i915/debugfs: print more workaround registers
URL   : https://patchwork.freedesktop.org/series/74571/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8116_full -> Patchwork_16921_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16921_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16921_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16921_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@basic-read:
    - shard-iclb:         [PASS][1] -> [FAIL][2] +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb2/igt@gem_workarounds@basic-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb2/igt@gem_workarounds@basic-read.html

  * igt@gem_workarounds@basic-read-context:
    - shard-kbl:          [PASS][3] -> [FAIL][4] +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl2/igt@gem_workarounds@basic-read-context.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl3/igt@gem_workarounds@basic-read-context.html

  * igt@gem_workarounds@reset-fd:
    - shard-apl:          [PASS][5] -> [FAIL][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl2/igt@gem_workarounds@reset-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl3/igt@gem_workarounds@reset-fd.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][7] -> [FAIL][8] +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-tglb5/igt@gem_workarounds@suspend-resume.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-tglb7/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][9] -> [FAIL][10] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl10/igt@gem_workarounds@suspend-resume-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl5/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-glk:          [PASS][11] -> [FAIL][12] +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-glk8/igt@gem_workarounds@suspend-resume-fd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-glk4/igt@gem_workarounds@suspend-resume-fd.html
    - shard-skl:          NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html

  
#### Warnings ####

  * igt@gem_workarounds@basic-read-fd:
    - shard-snb:          [SKIP][14] ([fdo#109271]) -> [FAIL][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-snb2/igt@gem_workarounds@basic-read-fd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-snb5/igt@gem_workarounds@basic-read-fd.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][16] ([i915#180]) -> [FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl1/igt@gem_workarounds@suspend-resume.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl7/igt@gem_workarounds@suspend-resume.html
    - shard-kbl:          [DMESG-WARN][18] ([i915#180]) -> [FAIL][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl7/igt@gem_workarounds@suspend-resume.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl3/igt@gem_workarounds@suspend-resume.html
    - shard-hsw:          [SKIP][20] ([fdo#109271]) -> [FAIL][21] +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-hsw4/igt@gem_workarounds@suspend-resume.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-hsw1/igt@gem_workarounds@suspend-resume.html

  
Known issues
------------

  Here are the changes found in Patchwork_16921_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-skl:          [PASS][22] -> [INCOMPLETE][23] ([i915#69]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl4/igt@gem_ctx_isolation@vecs0-s3.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl8/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#1402])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-kbl:          [PASS][26] -> [INCOMPLETE][27] ([i915#1402])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#677])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276] / [i915#677])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109276]) +15 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#112146]) +6 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#300])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([IGT#5] / [i915#697])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#52] / [i915#54])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - shard-hsw:          [PASS][42] -> [INCOMPLETE][43] ([i915#61])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-hsw7/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-hsw4/igt@kms_flip@flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#49])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#899]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb3/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#31])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl2/igt@kms_setmode@basic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl3/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#112080]) +9 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][64] ([fdo#112080]) -> [PASS][65] +17 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [SKIP][66] ([i915#677]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][68] ([fdo#109276] / [i915#677]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [INCOMPLETE][72] ([i915#1401]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-tglb1/igt@gem_exec_whisper@basic-fds-priority.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-tglb3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][74] ([i915#1322]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl8/igt@gem_linear_blits@normal.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl2/igt@gem_linear_blits@normal.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl7/igt@gem_softpin@noreloc-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl7/igt@i915_selftest@live@execlists.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl5/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][80] -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][82] ([IGT#5]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][84] ([i915#61]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][86] ([i915#1188]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-skl1/igt@kms_hdr@bpc-switch.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][90] ([fdo#109642] / [fdo#111068]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][92] ([fdo#109441]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb6/igt@kms_psr@psr2_basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][94] ([fdo#109276]) -> [PASS][95] +27 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-snb:          [SKIP][96] ([fdo#109271]) -> [INCOMPLETE][97] ([i915#82]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-snb4/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-snb6/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][98] ([i915#92]) -> ([FAIL][99], [FAIL][100]) ([i915#1389] / [i915#1402] / [i915#92])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8116/shard-kbl6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/shard-kbl4/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8116 -> Patchwork_16921

  CI-20190529: 20190529
  CI_DRM_8116: ad36774154a4c61ff7b460ab5023b1e82c164ef5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16921: cc774ed296c85cd2125bbbe42fcc7c9fda87c3b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16921/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
