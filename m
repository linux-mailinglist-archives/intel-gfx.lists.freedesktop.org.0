Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F351C11F529
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 01:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE05F6E40B;
	Sun, 15 Dec 2019 00:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FFD96E40B;
 Sun, 15 Dec 2019 00:13:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 288AFA0BA8;
 Sun, 15 Dec 2019 00:13:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 15 Dec 2019 00:13:34 -0000
Message-ID: <157636881413.27846.6428133963808905219@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_Add_new_modes_from_CTA-861-G_=28rev3=29?=
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

Series: drm/edid: Add new modes from CTA-861-G (rev3)
URL   : https://patchwork.freedesktop.org/series/63554/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7566_full -> Patchwork_15754_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15754_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15754_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15754_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-apl3/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * {igt@gen9_exec_parse@basic-rejected-ctx-param}:
    - shard-tglb:         NOTRUN -> [SKIP][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb1/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * {igt@gen9_exec_parse@unaligned-jump}:
    - shard-iclb:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb3/igt@gen9_exec_parse@unaligned-jump.html

  
Known issues
------------

  Here are the changes found in Patchwork_15754_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#456] / [i915#460] / [i915#534])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@gem_eio@in-flight-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9] ([i915#58] / [k.org#198133])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-glk8/igt@gem_eio@kms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-glk3/igt@gem_eio@kms.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111736])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb3/igt@gem_exec_create@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([fdo#111593])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb7/igt@gem_exec_gttfill@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb9/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@gem_exec_schedule@independent-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +9 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111606] / [fdo#111677])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@gem_exec_schedule@preempt-queue-vebox.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb6/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#463])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [PASS][24] -> [TIMEOUT][25] ([i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][26] -> [DMESG-WARN][27] ([fdo#111870]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#747])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-kbl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#460])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb1/igt@i915_suspend@debugfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#456] / [i915#460])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#177] / [i915#52] / [i915#54])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#460] / [i915#516])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][42] -> [FAIL][43] ([i915#49])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +5 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#667])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#49])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#123] / [i915#667])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][54] -> [DMESG-WARN][55] ([i915#402])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#112080]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][60] ([i915#435]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@gem_busy@close-race.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][62] ([i915#679]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl10/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][64] ([fdo#109276] / [fdo#112080]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@gem_ctx_persistence@vcs1-persistence.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb1/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][66] ([i915#82]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb7/igt@gem_eio@kms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@vcs0:
    - shard-tglb:         [INCOMPLETE][68] ([fdo#111593]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb5/igt@gem_exec_parallel@vcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb1/igt@gem_exec_parallel@vcs0.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#112146]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb2/igt@gem_exec_schedule@preempt-hang-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb6/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][72] ([i915#435] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb8/igt@gem_sync@basic-store-each.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][74] ([fdo#111870]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb4/igt@gem_userptr_blits@sync-unmap-after-close.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][78] ([i915#747]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
    - shard-snb:          [DMESG-WARN][80] ([i915#747]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-apl8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][84] ([i915#54]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled:
    - shard-skl:          [INCOMPLETE][86] ([i915#667]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-skl:          [INCOMPLETE][88] ([i915#646] / [i915#667]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][90] ([i915#79]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][94] ([i915#474] / [i915#667]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][96] ([i915#49]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][98] ([fdo#108145]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][102] ([i915#69]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][104] ([fdo#109276]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][106] ([fdo#112080]) -> [SKIP][107] ([fdo#111912] / [fdo#112080])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7566/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/shard-tglb4/igt@gem_ctx_isolation@vcs2-nonpriv.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7566 -> Patchwork_15754

  CI-20190529: 20190529
  CI_DRM_7566: 87c99602f2beb1b0ee7bdb3310bf12133f4d3f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15754: 1eb2087450a1e802554fcd950feff6b55a145fcd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15754/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
