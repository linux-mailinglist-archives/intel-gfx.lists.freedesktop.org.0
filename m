Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512DF381524
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 04:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E45B6F4CF;
	Sat, 15 May 2021 02:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4843D6EE07;
 Sat, 15 May 2021 02:24:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 405C8A363D;
 Sat, 15 May 2021 02:24:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 15 May 2021 02:24:57 -0000
Message-ID: <162104549723.17968.14510679248816347617@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQW5v?=
 =?utf-8?q?ther_batch_of_reviewed_XeLPD_/_ADL-P_patches?=
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
Content-Type: multipart/mixed; boundary="===============0897182955=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0897182955==
Content-Type: multipart/alternative;
 boundary="===============2639325444875607397=="

--===============2639325444875607397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Another batch of reviewed XeLPD / ADL-P patches
URL   : https://patchwork.freedesktop.org/series/90169/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10083_full -> Patchwork_20127_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20127_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20127_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20127_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a:
    - shard-apl:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html

  * igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c:
    - shard-glk:          [PASS][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-snb:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          [SKIP][7] ([fdo#109271] / [i915#3457]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk9/igt@gem_exec_fair@basic-none@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-glk:          [INCOMPLETE][9] ([i915#3468]) -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@gem_mmap_gtt@fault-concurrent-x.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-snb:          [FAIL][11] ([i915#3457]) -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-64.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb6/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - shard-tglb:         [FAIL][13] ([i915#3457]) -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb5/igt@kms_plane_cursor@pipe-c-viewport-size-64.html

  
Known issues
------------

  Here are the changes found in Patchwork_20127_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache:
    - shard-skl:          NOTRUN -> [DMESG-WARN][15] ([i915#3457]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@api_intel_bb@blit-noreloc-purge-cache.html

  * igt@gem_create@create-clear:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#3160])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-skl4/igt@gem_create@create-clear.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl7/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@engines-persistence@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3457]) +13 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@gem_ctx_persistence@engines-persistence@bcs0.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#1099]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][22] -> [FAIL][23] ([i915#2842] / [i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
    - shard-glk:          [PASS][24] -> [SKIP][25] ([fdo#109271] / [i915#3457])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk3/igt@gem_exec_fair@basic-flow@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk9/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#2842] / [i915#3457])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][28] ([i915#2842] / [i915#3457])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][29] ([i915#2842] / [i915#3457])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][30] ([i915#2842] / [i915#3457])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][31] -> [SKIP][32] ([fdo#109271] / [i915#3457])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@syncobj-export:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#3457]) +23 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@gem_exec_fence@syncobj-export.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk6/igt@gem_exec_fence@syncobj-export.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271]) +453 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][36] ([i915#2389] / [i915#3457]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][37] ([i915#2389] / [i915#3457])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl3/igt@gem_exec_suspend@basic-s3.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-iclb:         [PASS][40] -> [INCOMPLETE][41] ([i915#2910] / [i915#3468])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-iclb:         [PASS][42] -> [INCOMPLETE][43] ([i915#3468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][44] ([i915#3468]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_offset@clear:
    - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#1888] / [i915#3160])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk7/igt@gem_mmap_offset@clear.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk9/igt@gem_mmap_offset@clear.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][47] ([i915#3468]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][48] ([i915#3468]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][49] ([i915#3468]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][50] ([i915#3468]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_spin_batch@engines@vcs0:
    - shard-apl:          NOTRUN -> [FAIL][51] ([i915#2898] / [i915#3457]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@gem_spin_batch@engines@vcs0.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3323])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3323])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][54] ([i915#3324])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][55] ([i915#2724] / [i915#3457])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180] / [i915#3457])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_hangman@error-state-capture@bcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][58] ([i915#3457]) +8 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@i915_hangman@error-state-capture@bcs0.html

  * igt@i915_hangman@error-state-capture@rcs0:
    - shard-glk:          NOTRUN -> [DMESG-WARN][59] ([i915#3457]) +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@i915_hangman@error-state-capture@rcs0.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][60] ([i915#454])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-snb:          NOTRUN -> [DMESG-WARN][61] ([i915#3457]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          NOTRUN -> [DMESG-WARN][62] ([i915#3457]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2705]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl6/igt@kms_big_joiner@basic.html
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2705])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_big_joiner@basic.html
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2705])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][71] ([i915#1319]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][72] ([i915#2105])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-kbl:          [PASS][73] -> [FAIL][74] ([i915#3444] / [i915#3457]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-apl:          [PASS][75] -> [FAIL][76] ([i915#3444] / [i915#3457])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3457]) +22 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#3444] / [i915#3457])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-glk:          NOTRUN -> [FAIL][80] ([i915#3444] / [i915#3457]) +6 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][81] ([i915#3457]) +9 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3444] / [i915#3457]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [PASS][83] -> [FAIL][84] ([i915#3444] / [i915#3457]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
    - shard-iclb:         [PASS][85] -> [FAIL][86] ([i915#3457])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3457]) +10 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#3444] / [i915#3457]) +11 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#3444] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3457]) +11 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:
    - shard-snb:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3457]) +67 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:
    - shard-tglb:         [PASS][92] -> [FAIL][93] ([i915#2124] / [i915#3457]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3457]) +19 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-apl:          [PASS][95] -> [FAIL][96] ([i915#70])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][97] ([i915#155] / [i915#180] / [i915#636])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#2122])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2642])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +112 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271]) +60 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#533])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#2472])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk5/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][107] ([i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-iclb:         [PASS][109] -> [FAIL][110] ([i915#2657])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-snb:          NOTRUN -> [FAIL][111] ([i915#3461]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-snb:          NOTRUN -> [FAIL][112] ([i915#3457] / [i915#3461])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-glk:          [PASS][113] -> [FAIL][114] ([i915#2657]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk3/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk8/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
    - shard-kbl:          NOTRUN -> [FAIL][115] ([i915#2657]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-b-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][116] ([i915#2657] / [i915#3457]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl9/igt@kms_plane_cursor@pipe-b-primary-size-64.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-64:
    - shard-iclb:         [PASS][117] -> [FAIL][118] ([i915#2657] / [i915#3457]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-c-overlay-size-64.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb5/igt@kms_plane_cursor@pipe-c-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - shard-iclb:         [PASS][119] -> [FAIL][120] ([i915#2657] / [i915#3461])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-c-viewport-size-256.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_plane_cursor@pipe-c-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#2657] / [i915#3457]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@kms_plane_cursor@pipe-c-viewport-size-64.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_plane_cursor@pipe-c-viewport-size-64.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#1779])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2733])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#658]) +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441]) +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_psr@psr2_basic.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@kms_universal_plane@universal-plane-pipe-b-functional:
    - shard-glk:          NOTRUN -> [FAIL][132] ([i915#3457]) +9 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_universal_plane@universal-plane-pipe-b-functional.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271]) +158 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/index.html

--===============2639325444875607397==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Another batch of reviewed XeLPD / ADL-P patches</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90169/">https://patchwork.freedesktop.org/series/90169/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10083_full -&gt; Patchwork_20127_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20127_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20127_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20127_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@gem_ppgtt@blt-vs-render-ctx0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling@dp-1-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk8/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_flip_tiling@flip-changes-tiling@hdmi-a-2-pipe-c.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk9/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb6/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-64:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb5/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20127_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@api_intel_bb@blit-noreloc-purge-cache.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-skl4/igt@gem_create@create-clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl7/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@gem_ctx_persistence@engines-persistence@bcs0.html">FAIL</a> ([i915#3457]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@gem_ctx_persistence@idempotent.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk9/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-export:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@gem_exec_fence@syncobj-export.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk6/igt@gem_exec_fence@syncobj-export.html">FAIL</a> ([i915#3457]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109271]) +453 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl3/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk7/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk9/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#1888] / [i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +4 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@engines@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@gem_spin_batch@engines@vcs0.html">FAIL</a> ([i915#2898] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@gem_userptr_blits@set-cache-level.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@i915_hangman@error-state-capture@bcs0.html">DMESG-WARN</a> ([i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-capture@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@i915_hangman@error-state-capture@rcs0.html">DMESG-WARN</a> ([i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@i915_pm_rps@waitboost.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@i915_pm_sseu@full-enable.html">DMESG-WARN</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl6/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@kms_chamelium@hdmi-aspect-ratio.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">FAIL</a> ([i915#3444] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-dpms.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +67 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">SKIP</a> ([fdo#109271] / [i915#3457]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl1/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">FAIL</a> ([i915#70])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +112 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk5/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html">FAIL</a> ([i915#2472])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-256:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#3461]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-snb7/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#3457] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk3/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk8/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl9/igt@kms_plane_cursor@pipe-b-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-64:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-c-overlay-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb5/igt@kms_plane_cursor@pipe-c-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-256:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_plane_cursor@pipe-c-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_plane_cursor@pipe-c-viewport-size-256.html">FAIL</a> ([i915#2657] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk4/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk5/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> ([i915#2657] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-glk6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html">FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10083/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-iclb3/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-functional:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-glk3/igt@kms_universal_plane@universal-plane-pipe-b-functional.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20127/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idl">SKIP</a> ([fdo#109271]) +158 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2639325444875607397==--

--===============0897182955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0897182955==--
