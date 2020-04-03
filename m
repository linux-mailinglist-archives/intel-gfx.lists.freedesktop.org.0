Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D1D19D322
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 11:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6396EB33;
	Fri,  3 Apr 2020 09:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1512C6EB32;
 Fri,  3 Apr 2020 09:09:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3412A00CC;
 Fri,  3 Apr 2020 09:09:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 09:09:14 -0000
Message-ID: <158590495496.13352.15171543817624085139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401185834.20595-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401185834.20595-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Try_allocating_va_from_free_space_=28rev3=29?=
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

Series: drm/i915/gem: Try allocating va from free space (rev3)
URL   : https://patchwork.freedesktop.org/series/74748/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8233_full -> Patchwork_17171_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17171_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17171_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17171_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.1@max-texture-size (NEW):
    - pig-snb-2600:       NOTRUN -> [INCOMPLETE][2]
   [2]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8233_full and Patchwork_17171_full:

### New IGT tests (1) ###

  * igt@gem_exec_reloc@basic-spin:
    - Statuses :
    - Exec time: [None] s

  


### New Piglit tests (1) ###

  * spec@!opengl 1.1@max-texture-size:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17171_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#1527])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#39])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk8/igt@i915_pm_rps@min-max-config-loaded.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#58] / [i915#656] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk6/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk8/igt@i915_selftest@live@execlists.html
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#656])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl4/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl2/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#177] / [i915#52] / [i915#54] / [i915#93] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#1559])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk3/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk7/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +10 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][45] ([i915#1531]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-tglb2/igt@i915_selftest@live@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-tglb6/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][63] ([i915#454]) -> [SKIP][64] ([i915#468])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#165] / [i915#180]) -> [DMESG-WARN][66] ([i915#180])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-kbl1/igt@kms_flip@flip-vs-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-kbl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-apl:          [FAIL][67] ([i915#49] / [i915#95]) -> [FAIL][68] ([i915#49])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [FAIL][70] ([fdo#108145] / [i915#265] / [i915#95])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][71] ([i915#1423]) -> ([FAIL][72], [FAIL][73]) ([i915#1423] / [i915#529])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/shard-apl3/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl6/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1527]: https://gitlab.freedesktop.org/drm/intel/issues/1527
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8233 -> Patchwork_17171

  CI-20190529: 20190529
  CI_DRM_8233: 0862243a5514a9da625520bd4f554f8348077594 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5553: 60475d9b41c58b7d256e83c7d53eaf7c2f1f8ecc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17171: ea63499c8e784ef283f7ee9ce0a1e103b07c1174 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17171/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
