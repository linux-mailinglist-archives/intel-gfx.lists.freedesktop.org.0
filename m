Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF70174531
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 06:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0536E04E;
	Sat, 29 Feb 2020 05:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A3D86E04E;
 Sat, 29 Feb 2020 05:27:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A5D3A47E9;
 Sat, 29 Feb 2020 05:27:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Sat, 29 Feb 2020 05:27:28 -0000
Message-ID: <158295404827.19636.7804398896833121708@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?_managed_resources=2C_v3?=
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

Series: drm managed resources, v3
URL   : https://patchwork.freedesktop.org/series/74035/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8022_full -> Patchwork_16742_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16742_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16742_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16742_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@requests:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb7/igt@i915_selftest@mock@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb6/igt@i915_selftest@mock@requests.html

  * igt@i915_selftest@mock@timelines:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-skl1/igt@i915_selftest@mock@timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-skl3/igt@i915_selftest@mock@timelines.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-tglb8/igt@i915_selftest@mock@timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-tglb2/igt@i915_selftest@mock@timelines.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-tglb2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8022_full and Patchwork_16742_full:

### New IGT tests (3) ###

  * igt@i915_selftest@mock:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_selftest@perf:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_selftest@all:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16742_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][8] -> [INCOMPLETE][9] ([fdo#103665]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +14 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110841])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#1277])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-tglb5/igt@gem_exec_balancer@hang.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +20 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([i915#677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112146]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_exec_schedule@preempt-hang-bsd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb1/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@mock@timelines:
    - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([fdo#103927])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl1/igt@i915_selftest@mock@timelines.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl1/igt@i915_selftest@mock@timelines.html
    - shard-glk:          [PASS][28] -> [INCOMPLETE][29] ([i915#58] / [k.org#198133])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-glk6/igt@i915_selftest@mock@timelines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-glk5/igt@i915_selftest@mock@timelines.html
    - shard-snb:          [PASS][30] -> [INCOMPLETE][31] ([i915#82])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-snb4/igt@i915_selftest@mock@timelines.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-snb6/igt@i915_selftest@mock@timelines.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#899])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#31])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl7/igt@kms_setmode@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [INCOMPLETE][40] ([i915#1291] / [i915#58] / [k.org#198133]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_ringsize@active@vcs1}:
    - shard-iclb:         [INCOMPLETE][42] ([i915#1333]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb1/igt@gem_ctx_ringsize@active@vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb1/igt@gem_ctx_ringsize@active@vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][44] ([fdo#110854]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +7 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [i915#677]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][50] ([fdo#112146]) -> [PASS][51] +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][52] ([i915#644]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][54] ([i915#716]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [FAIL][56] ([i915#52] / [i915#54]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][58] ([i915#79]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][60] ([i915#180]) -> [PASS][61] +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-skl6/igt@kms_hdr@bpc-switch.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@enable-disable:
    - shard-skl:          [FAIL][68] -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-skl6/igt@perf@enable-disable.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-skl8/igt@perf@enable-disable.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][70] ([fdo#109276]) -> [PASS][71] +19 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [FAIL][73] ([IGT#28])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][74] ([IGT#28]) -> [SKIP][75] ([fdo#112080])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][76] ([i915#454]) -> [SKIP][77] ([i915#468])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-snb:          [SKIP][78] ([fdo#109271]) -> [INCOMPLETE][79] ([i915#82])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-snb4/igt@i915_pm_rpm@modeset-lpsp.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-snb5/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][80] ([fdo#109349]) -> [DMESG-WARN][81] ([i915#1226])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8022/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8022 -> Patchwork_16742

  CI-20190529: 20190529
  CI_DRM_8022: 45f1af19e4d4bf8a6ecea2e52760f45f4dc2f64b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16742: 67fab894610f2849a9949cac4f50dc9be5bd6a73 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16742/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
