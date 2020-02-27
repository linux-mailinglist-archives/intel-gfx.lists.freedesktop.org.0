Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD771714EC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 11:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA536EC84;
	Thu, 27 Feb 2020 10:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECCFF6EC82;
 Thu, 27 Feb 2020 10:25:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2D4EA3C0D;
 Thu, 27 Feb 2020 10:25:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 10:25:46 -0000
Message-ID: <158279914689.29656.12195250552934597686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/17=5D_drm/i915/gt=3A_Reset_queue=5Fprio?=
 =?utf-8?q?rity=5Fhint_after_wedging?=
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

Series: series starting with [01/17] drm/i915/gt: Reset queue_priority_hint after wedging
URL   : https://patchwork.freedesktop.org/series/73947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008_full -> Patchwork_16714_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16714_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16714_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16714_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@gem-mmap-type@gtt:
    - shard-hsw:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw5/igt@i915_pm_rpm@gem-mmap-type@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw5/igt@i915_pm_rpm@gem-mmap-type@gtt.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb7/igt@i915_selftest@mock_requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-tglb2/igt@i915_selftest@mock_requests.html
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@i915_selftest@mock_requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb4/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-tglb2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15]) ([fdo#111870] / [i915#226]) -> ([FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24]) ([fdo#111870] / [i915#226] / [i915#873])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw4/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw6/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw4/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw6/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw4/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw7/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw7/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw5/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw5/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw4/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw5/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw4/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw5/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw7/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw6/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw6/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw7/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8008_full and Patchwork_16714_full:

### New IGT tests (1) ###

  * igt@i915_selftest@perf_request:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16714_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#1291])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#1277])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb2/igt@gem_exec_balancer@hang.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-tglb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#110854])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276] / [i915#677])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112146]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][37] -> [DMESG-WARN][38] ([i915#118] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#413])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@i915_pm_rps@reset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][41] -> [INCOMPLETE][42] ([i915#82])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb2/igt@i915_selftest@mock_requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb6/igt@i915_selftest@mock_requests.html
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#198])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@i915_selftest@mock_requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl1/igt@i915_selftest@mock_requests.html
    - shard-glk:          [PASS][45] -> [INCOMPLETE][46] ([i915#58] / [k.org#198133])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk2/igt@i915_selftest@mock_requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-glk7/igt@i915_selftest@mock_requests.html
    - shard-apl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103927])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl8/igt@i915_selftest@mock_requests.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl7/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][49] -> [INCOMPLETE][50] ([fdo#103665])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl6/igt@i915_selftest@mock_requests.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl1/igt@i915_selftest@mock_requests.html
    - shard-hsw:          [PASS][51] -> [INCOMPLETE][52] ([i915#61])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw5/igt@i915_selftest@mock_requests.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw6/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][53] -> [FAIL][54] ([i915#57])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#34])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#49])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([fdo#108145])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#173])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109276]) +16 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb8/igt@prime_busy@hang-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-skl:          [PASS][75] -> [TIMEOUT][76] ([i915#1328])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl6/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][77] -> [TIMEOUT][78] ([i915#1328])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb4/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-iclb:         [PASS][79] -> [TIMEOUT][80] ([i915#1328])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][83] ([i915#1277]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_balancer@hang.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][85] ([fdo#109276] / [i915#677]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][87] ([i915#677]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +14 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][91] ([fdo#112146]) -> [PASS][92] +5 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][93] ([fdo#103927]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl3/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][95] ([i915#54]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][97] ([IGT#5]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][99] ([i915#42]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][105] ([i915#69]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][113] ([i915#1328]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@sw_sync@sync_multi_producer_single_consumer.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][115] ([IGT#28]) -> [SKIP][116] ([fdo#112080])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [SKIP][117] ([fdo#109271]) -> [INCOMPLETE][118] ([i915#82])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][119] ([i915#1319]) -> [TIMEOUT][120] ([i915#1319] / [i915#727])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl4/igt@kms_content_protection@srm.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl3/igt@kms_content_protection@srm.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][121] ([i915#92]) -> ([FAIL][122], [FAIL][123]) ([fdo#103665] / [i915#873] / [i915#92])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          [FAIL][124] ([fdo#103927]) -> ([FAIL][125], [FAIL][126]) ([fdo#103927] / [i915#873])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl8/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl3/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-apl7/igt@runner@aborted.html
    - shard-snb:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134]) ([fdo#111870] / [i915#1077] / [i915#698]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([fdo#111870] / [i915#1077] / [i915#698] / [i915#873])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb5/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb5/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb2/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb4/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb5/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb6/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/shard-snb5/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1328]: https://gitlab.freedesktop.org/drm/intel/issues/1328
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#226]: https://gitlab.freedesktop.org/drm/intel/issues/226
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
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
  * Linux: CI_DRM_8008 -> Patchwork_16714

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16714: 2fa006f3999107dc4d8b152053d0ff4b621f07a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16714/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
