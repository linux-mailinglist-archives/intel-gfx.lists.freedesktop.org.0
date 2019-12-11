Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21D11A764
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 10:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A5E6EAE6;
	Wed, 11 Dec 2019 09:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 509226EAE3;
 Wed, 11 Dec 2019 09:37:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 473CAA011A;
 Wed, 11 Dec 2019 09:37:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 11 Dec 2019 09:37:26 -0000
Message-ID: <157605704625.30693.8751606387396985021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209122314.16289-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191209122314.16289-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_execbuf_debug_=28rev3=29?=
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

Series: drm/i915: Improve execbuf debug (rev3)
URL   : https://patchwork.freedesktop.org/series/70625/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534_full -> Patchwork_15677_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15677_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15677_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15677_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-apl1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15677_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-semaphore-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@gem_busy@extended-semaphore-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb5/igt@gem_busy@extended-semaphore-vcs1.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-glk8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#108838] / [i915#435])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@gem_exec_create@forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb3/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#463])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][16] -> [INCOMPLETE][17] ([fdo#103927])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-apl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][18] -> [TIMEOUT][19] ([i915#530])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][20] -> [TIMEOUT][21] ([i915#530])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([fdo#111870])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-snb5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([fdo#112057])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@i915_selftest@live_requests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb6/igt@i915_selftest@live_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#646])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#435] / [i915#456] / [i915#460])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [PASS][34] -> [INCOMPLETE][35] ([i915#61])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#456] / [i915#460])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb2/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][42] -> [INCOMPLETE][43] ([fdo#103665]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-kbl7/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][44] -> [INCOMPLETE][45] ([i915#69])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-tglb:         [PASS][48] -> [INCOMPLETE][49] ([i915#460])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [fdo#112080]) -> [PASS][53] +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][54] ([i915#69]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][58] ([fdo#112080]) -> [PASS][59] +9 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][60] ([fdo#109276]) -> [PASS][61] +12 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][62] ([i915#644]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][64] ([i915#109]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl1/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][66] ([i915#54]) -> [PASS][67] +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [DMESG-WARN][68] ([IGT#6]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][72] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][74] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][76] ([i915#456] / [i915#460]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][80] ([fdo#108145] / [i915#265]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][84] ([fdo#112080]) -> [SKIP][85] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-tglb8/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][86] ([i915#648]) -> [INCOMPLETE][87] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15677

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15677: 23925b78c1964929f696017feee561b464f13aa5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15677/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
