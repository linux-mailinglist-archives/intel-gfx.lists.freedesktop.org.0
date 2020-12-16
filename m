Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E82072DB931
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 03:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC4889B62;
	Wed, 16 Dec 2020 02:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3729389B5F;
 Wed, 16 Dec 2020 02:33:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F7CEA9A42;
 Wed, 16 Dec 2020 02:33:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 16 Dec 2020 02:33:55 -0000
Message-ID: <160808603515.16510.9666665366205152619@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215154456.13954-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201215154456.13954-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_the_overall_awake/busy_time?=
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
Content-Type: multipart/mixed; boundary="===============0189495148=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0189495148==
Content-Type: multipart/alternative;
 boundary="===============7221048551920052545=="

--===============7221048551920052545==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Track the overall awake/busy time
URL   : https://patchwork.freedesktop.org/series/84964/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9488_full -> Patchwork_19148_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19148_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19148_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19148_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@other-init-4:
    - shard-apl:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-apl3/igt@perf_pmu@other-init-4.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-apl7/igt@perf_pmu@other-init-4.html
    - shard-tglb:         [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-tglb8/igt@perf_pmu@other-init-4.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-tglb8/igt@perf_pmu@other-init-4.html
    - shard-glk:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk1/igt@perf_pmu@other-init-4.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk8/igt@perf_pmu@other-init-4.html
    - shard-skl:          [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl7/igt@perf_pmu@other-init-4.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl8/igt@perf_pmu@other-init-4.html
    - shard-hsw:          [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-hsw6/igt@perf_pmu@other-init-4.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw2/igt@perf_pmu@other-init-4.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-kbl6/igt@perf_pmu@other-init-4.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-kbl6/igt@perf_pmu@other-init-4.html

  * igt@perf_pmu@other-read-4:
    - shard-snb:          [PASS][13] -> [FAIL][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-snb6/igt@perf_pmu@other-read-4.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-snb6/igt@perf_pmu@other-read-4.html
    - shard-iclb:         [PASS][15] -> [FAIL][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb1/igt@perf_pmu@other-read-4.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb1/igt@perf_pmu@other-read-4.html

  
#### Warnings ####

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][17] ([i915#794]) -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_balancer@fairslice}:
    - shard-iclb:         [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb7/igt@gem_exec_balancer@fairslice.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb1/igt@gem_exec_balancer@fairslice.html

  
Known issues
------------

  Here are the changes found in Patchwork_19148_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hang:
    - shard-hsw:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#1099])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@gem_ctx_persistence@legacy-engines-hang.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk3/igt@gem_exec_whisper@basic-fds-priority-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#1704]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-glk:          NOTRUN -> [SKIP][25] ([fdo#109271]) +15 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk2/igt@gen7_exec_parse@basic-allocation.html
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109289])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@gen7_exec_parse@basic-allocation.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110723])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109278]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_ccs@pipe-d-ccs-on-another-bo.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@hdmi-hpd-after-suspend:
    - shard-hsw:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@kms_chamelium@hdmi-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk2/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109300] / [fdo#111066])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#96])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2346])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#79])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#2598]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109280]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#533])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][47] ([i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109642] / [fdo#111068])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109441]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-hsw:          NOTRUN -> [SKIP][54] ([fdo#109271]) +52 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278] / [i915#2530])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@perf@polling:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#1542])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl6/igt@perf@polling.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl6/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#1542])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk4/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk6/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test1_micro:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +12 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl3/igt@prime_nv_pcopy@test1_micro.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109291])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@prime_nv_test@i915_nv_sharing.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][62] ([i915#2389]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-hsw:          [FAIL][64] ([i915#2389]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-glk:          [DMESG-WARN][66] ([i915#1610]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk2/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-iclb:         [DMESG-WARN][68] -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][70] ([i915#118] / [i915#95]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         [FAIL][72] ([i915#2692]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][74] ([i915#2521]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][76] ([i915#2574]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][80] ([i915#2122]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][82] ([i915#79]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][84] ([i915#198] / [i915#2295]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][88] ([i915#1542]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-skl6/igt@perf@blocking.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl6/igt@perf@blocking.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][90] ([i915#588]) -> [SKIP][91] ([i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][92] ([i915#2684]) -> [WARN][93] ([i915#1804] / [i915#2684])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][94] ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][95], [FAIL][96]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#483] / [i915#602])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-kbl1/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-kbl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][97], [FAIL][98], [FAIL][99]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#2724] / [i915#483]) -> ([FAIL][100], [FAIL][101]) ([i915#1814] / [i915#2295] / [i915#2722] / [i915#2724] / [i915#483])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb5/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb8/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][102], [FAIL][103], [FAIL][104]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722] / [k.org#202321]) -> ([FAIL][105], [FAIL][106]) ([i915#1814] / [i915#2295] / [i915#2722] / [k.org#202321])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk1/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk9/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk5/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2692]: https://gitlab.freedesktop.org/drm/intel/issues/2692
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9488 -> Patchwork_19148

  CI-20190529: 20190529
  CI_DRM_9488: 610a032e0c8eff40d87d9344f92311382f4acd49 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19148: 57b8d4adc6235e4cb3c56fa72b3bb5e40b6e22e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/index.html

--===============7221048551920052545==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/gt: Track the overall awake/busy ti=
me</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84964/">https://patchwork.freedesktop.org/series/84964/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19148/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9488_full -&gt; Patchwork_19148_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19148_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19148_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19148_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@perf_pmu@other-init-4:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-apl3/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-apl7/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-tglb8/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-tglb8=
/igt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-glk1/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk8/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-skl7/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl8/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-hsw6/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-hsw2/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-kbl6/igt@perf_pmu@other-init-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-kbl6/i=
gt@perf_pmu@other-init-4.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@other-read-4:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-snb6/igt@perf_pmu@other-read-4.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-snb6/i=
gt@perf_pmu@other-read-4.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-iclb1/igt@perf_pmu@other-read-4.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb1=
/igt@perf_pmu@other-read-4.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_vblank@pipe-c-ts-continuation-suspend:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/794">i915#794</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19148/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend=
.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_exec_balancer@fairslice}:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb7/igt@gem_exec_balancer@fairslice.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shar=
d-iclb1/igt@gem_exec_balancer@fairslice.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19148_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@gem_ctx_persistence@legacy-eng=
ines-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk3/igt@gem_exec_whisper@basic-fds-priority-all.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19148/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync@wb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@gem_userptr_blits@readonly-mm=
ap-unsync@wb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1704">i915#1704</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/shard-glk2/igt@gen7_exec_parse@basic-allocatio=
n.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +15 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/shard-iclb7/igt@gen7_exec_parse@basic-allocati=
on.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_ccs@pipe-d-ccs-on-another=
-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_chamelium@dp-crc-single.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@kms_chamelium@hdmi-hpd-after-s=
uspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/shard-glk2/igt@kms_color_chamelium@pipe-d-ctm-=
green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_content_protection@atomic=
-dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19148/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19148/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-lega=
cy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19148/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-t=
ransitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19148/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19148/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19148/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-ic=
lb4/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard=
-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-hsw8/igt@nouveau_crc@pipe-c-ctx-flip-sk=
ip-current-frame.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +52 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@nouveau_crc@pipe-d-ctx-flip-s=
kip-current-frame.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl6/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl6/igt@perf@=
polling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk4/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-=
glk6/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_micro:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-skl3/igt@prime_nv_pcopy@test1_micro.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19148/shard-iclb7/igt@prime_nv_test@i915_nv_sharing=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-glk1/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915=
#2389</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19148/shard-glk8/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915=
#2389</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19148/shard-hsw8/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</=
a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-glk1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19148/shard-glk2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-iclb7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19148/shard-iclb7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk7/igt@gem_exec_whisper@basic-queues-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19148/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2692">i915#2692=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9148/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19148/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#257=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19148/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19148/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-hdmi-=
a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19148/shard-glk7/igt@kms_flip@2x-flip-vs-absolute-=
wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-h=
dmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19148/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc=
-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19148/shard-skl3/igt@kms_flip@flip-vs-suspend-interr=
uptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19148/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-skl6/igt@perf@blocking.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-skl6/ig=
t@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
148/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19148/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9488/shard-kbl1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19148/shard-kbl3/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i=
915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2722">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/483">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9488/shard-iclb4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i91=
5#2724</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483=
">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19148/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-iclb6/igt@run=
ner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9488/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9488/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9488/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</=
a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org=
#202321</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19148/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19148/shard-glk4/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://bugzilla.kerne=
l.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9488 -&gt; Patchwork_19148</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9488: 610a032e0c8eff40d87d9344f92311382f4acd49 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5901: 565d911f08df697fa211dbd1faefe2fd57066f71 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19148: 57b8d4adc6235e4cb3c56fa72b3bb5e40b6e22e8 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7221048551920052545==--

--===============0189495148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0189495148==--
