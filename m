Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA21172A3F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 22:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE666ED56;
	Thu, 27 Feb 2020 21:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83DC66ED4C;
 Thu, 27 Feb 2020 21:34:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C6DAA011B;
 Thu, 27 Feb 2020 21:34:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 21:34:04 -0000
Message-ID: <158283924447.29659.17075151090463010061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226174430.1568897-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226174430.1568897-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gem=3A_Consolidate_ctx-=3E?=
 =?utf-8?q?engines=5B=5D_release?=
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

Series: series starting with [1/3] drm/i915/gem: Consolidate ctx->engines[] release
URL   : https://patchwork.freedesktop.org/series/73966/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8010_full -> Patchwork_16723_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16723_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16723_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16723_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@gem_exec_whisper@basic-fds-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb3/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@kms_busy@basic@modeset:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb3/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-tglb6/igt@kms_busy@basic@modeset.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-tglb3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16723_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-snb:          [PASS][6] -> [FAIL][7] ([i915#1148])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb5/igt@gem_ctx_exec@basic-nohangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb6/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [PASS][8] -> [FAIL][9] ([i915#1148])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw1/igt@gem_ctx_exec@basic-nohangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +5 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112080]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +15 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#644])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][22] -> [INCOMPLETE][23] ([i915#82])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb6/igt@i915_selftest@mock_requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb2/igt@i915_selftest@mock_requests.html
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#198])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl10/igt@i915_selftest@mock_requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl7/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][26] -> [INCOMPLETE][27] ([i915#58] / [k.org#198133])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk7/igt@i915_selftest@mock_requests.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-glk4/igt@i915_selftest@mock_requests.html
    - shard-apl:          [PASS][28] -> [INCOMPLETE][29] ([fdo#103927])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl8/igt@i915_selftest@mock_requests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl6/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][30] -> [INCOMPLETE][31] ([fdo#103665])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl4/igt@i915_selftest@mock_requests.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl1/igt@i915_selftest@mock_requests.html
    - shard-hsw:          [PASS][32] -> [INCOMPLETE][33] ([i915#61])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw7/igt@i915_selftest@mock_requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw1/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#180]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#79])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglb:         [PASS][38] -> [SKIP][39] ([i915#668]) +5 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1188]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          [PASS][46] -> [DMESG-FAIL][47] ([i915#1041] / [i915#118] / [i915#95])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#69])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][50] ([fdo#110854]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][52] ([fdo#112146]) -> [PASS][53] +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_schedule@deep-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb7/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][54] ([i915#677]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@gem_exec_schedule@in-order-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb4/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [INCOMPLETE][58] ([i915#1120]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglb:         [FAIL][62] ([i915#488]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][64] ([i915#79]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][68] ([i915#79]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][70] ([i915#221]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][74] ([fdo#108145] / [i915#265]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][76] ([fdo#109441]) -> [PASS][77] +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][78] ([fdo#112080]) -> [PASS][79] +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][80] ([i915#454]) -> [SKIP][81] ([i915#468])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][82] ([i915#1319] / [i915#727]) -> [TIMEOUT][83] ([i915#1319]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl2/igt@kms_content_protection@atomic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][84] ([i915#1226]) -> [SKIP][85] ([fdo#109349])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91]) ([fdo#111870]) -> ([FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98]) ([fdo#111870] / [i915#873])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw4/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw7/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw5/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw5/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-hsw1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw7/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw1/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-hsw6/igt@runner@aborted.html
    - shard-kbl:          [FAIL][99] ([i915#92]) -> ([FAIL][100], [FAIL][101]) ([fdo#103665] / [i915#873] / [i915#92])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl1/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          [FAIL][102] ([fdo#103927]) -> ([FAIL][103], [FAIL][104]) ([fdo#103927] / [i915#873])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl6/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl7/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-apl6/igt@runner@aborted.html
    - shard-snb:          ([FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([fdo#111870] / [i915#1077]) -> ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117]) ([fdo#111870] / [i915#1077] / [i915#873])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb4/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb4/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb4/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb2/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-snb2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb4/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb2/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb2/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb4/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb2/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb5/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/shard-snb5/igt@runner@aborted.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1041]: https://gitlab.freedesktop.org/drm/intel/issues/1041
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1148]: https://gitlab.freedesktop.org/drm/intel/issues/1148
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16723

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16723: e5a01955de730e94082a64efe1d99c35c178228d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16723/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
