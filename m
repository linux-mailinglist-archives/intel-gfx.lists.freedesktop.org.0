Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CADB12F5250
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 19:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F55C6EA41;
	Wed, 13 Jan 2021 18:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A6B586E885;
 Wed, 13 Jan 2021 18:38:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FBF6A9932;
 Wed, 13 Jan 2021 18:38:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 Jan 2021 18:38:20 -0000
Message-ID: <161056310062.11119.17733145488701189931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/10=5D_drm/i915=3A_Mark_up_protected_use?=
 =?utf-8?q?s_of_=27i915=5Frequest=5Fcompleted=27?=
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
Content-Type: multipart/mixed; boundary="===============0519705181=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0519705181==
Content-Type: multipart/alternative;
 boundary="===============6280869762263341047=="

--===============6280869762263341047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/10] drm/i915: Mark up protected uses of 'i915_request_completed'
URL   : https://patchwork.freedesktop.org/series/85803/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9601_full -> Patchwork_19331_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19331_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19331_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19331_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fair@basic-pace-solo@rcs0}:
    - shard-iclb:         [FAIL][3] ([i915#2842]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  

### Piglit changes ###

#### Possible regressions ####

  * security@initialized-texmemory (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][5] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/pig-glk-j5005/security@initialized-texmemory.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9601_full and Patchwork_19331_full:

### New Piglit tests (4) ###

  * security@initialized-texmemory:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.1@clipflat:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.1@copypixels-draw-sync:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.1@streaming-texture-leak:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19331_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +42 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-glk:          NOTRUN -> [FAIL][7] ([i915#2389]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][8] -> [DMESG-WARN][9] ([i915#118] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][10] ([i915#1436] / [i915#716])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2705])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111304])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk7/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_color_chamelium@pipe-c-gamma:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_color_chamelium@pipe-c-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][15] ([i915#54]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#54]) +7 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#533]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2598])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][23] ([fdo#109271]) +28 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#109441]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [FAIL][26] ([i915#2896]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb6/igt@gem_ctx_persistence@smoketest.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb3/igt@gem_ctx_persistence@smoketest.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-apl:          [SKIP][28] ([fdo#109271]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none-solo@rcs0}:
    - shard-glk:          [FAIL][30] ([i915#2842]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-kbl:          [FAIL][32] ([i915#2842]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][34] ([i915#2842]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace@bcs0}:
    - shard-tglb:         [FAIL][36] ([i915#2842]) -> [PASS][37] +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-iclb:         [FAIL][38] ([i915#2842]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][40] ([i915#118] / [i915#95]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][42] ([i915#644]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@write-wait@vecs0:
    - shard-skl:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl10/igt@gem_wait@write-wait@vecs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl5/igt@gem_wait@write-wait@vecs0.html

  * igt@kms_color@pipe-c-degamma:
    - shard-skl:          [FAIL][46] ([i915#71]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl9/igt@kms_color@pipe-c-degamma.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_color@pipe-c-degamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][48] ([i915#2405] / [i915#300]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][50] ([i915#54]) -> [PASS][51] +9 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][52] ([i915#79]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][54] ([i915#2295]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][56] ([i915#198]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][58] ([i915#2122]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][60] ([i915#1188]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl4/igt@kms_hdr@bpc-switch.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][62] ([fdo#108145] / [i915#265]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][64] ([fdo#109642] / [fdo#111068]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][68] ([i915#51]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl8/igt@perf@short-reads.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl4/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][70] ([i915#2684]) -> [WARN][71] ([i915#1804] / [i915#2684])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][72] ([i915#2295]) -> ([FAIL][73], [FAIL][74]) ([i915#2295] / [i915#2426])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-kbl3/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-kbl7/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-kbl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][75], [FAIL][76]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#2803]) -> ([FAIL][77], [FAIL][78]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb1/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb5/igt@runner@aborted.html
    - shard-skl:          [FAIL][79] ([i915#2295]) -> ([FAIL][80], [FAIL][81], [FAIL][82]) ([i915#1436] / [i915#2295] / [i915#2426])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-skl6/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl8/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl3/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl10/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2896]: https://gitlab.freedesktop.org/drm/intel/issues/2896
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9601 -> Patchwork_19331

  CI-20190529: 20190529
  CI_DRM_9601: 35180379602fb11cc044e6a9a77f4f758e641aad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19331: d824af9423406f1bec5c7e3788bb31a465c2e6a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/index.html

--===============6280869762263341047==
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
<tr><td><b>Series:</b></td><td>series starting with [01/10] drm/i915: Mark =
up protected uses of &#39;i915_request_completed&#39;</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85803/">https://patchwork.freedesktop.org/series/85803/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19331/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19331/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9601_full -&gt; Patchwork_19331_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19331_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19331_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19331_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-in=
dfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-cur-indfb-draw-pwrite.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_exec_fair@basic-pace-solo@rcs0}:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19331/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a><=
/li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>security@initialized-texmemory (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/pig-glk-j5005/security@initialized-texmemory.=
html">INCOMPLETE</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9601_full and Patchwork_19=
331_full:</p>
<h3>New Piglit tests (4)</h3>
<ul>
<li>
<p>security@initialized-texmemory:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.1@clipflat:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.1@copypixels-draw-sync:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.1@streaming-texture-leak:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19331_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl7/igt@gem_exec_params@no-vebox.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-glk7/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
331/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#=
95</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl10/igt@gen9_exec_parse@allowed-singl=
e.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl5/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-glk7/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_color_chamelium@pipe-c-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-1=
28x128-onscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19331/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915=
#54</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-skl7/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19331/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19331/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19331/shard-glk7/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-iclb8=
/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-tglb6/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2896">i915#2896<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
331/shard-tglb3/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19331/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-solo@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19331/shard-glk9/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9601/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1933=
1/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar is=
sue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9601/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1933=
1/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@bcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
331/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
331/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-glk8/igt@gem_exec_whisper@basic-queues-forked-all.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
118">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19331/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/644">i915#64=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19331/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl10/igt@gem_wait@write-wait@vecs0.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#198=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19331/shard-skl5/igt@gem_wait@write-wait@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl9/igt@kms_color@pipe-c-degamma.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/71">i915#71</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-=
skl7/igt@kms_color@pipe-c-degamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405=
">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19331/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19331/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.=
html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19331/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19331/shard-skl1/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19331/shard-skl10/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19331/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-sk=
l10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19331/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19331/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19331/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-skl8/igt@perf@short-reads.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl4/igt=
@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19331/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
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
CI_DRM_9601/shard-kbl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-kbl7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19331/shard-kbl3/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#=
2426</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9601/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9601/shard-tglb1/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1764">i915#1764</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19331/shard-tglb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i91=
5#2803</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9601/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl8/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19331/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19331/shard-skl=
10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
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
<li>Linux: CI_DRM_9601 -&gt; Patchwork_19331</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9601: 35180379602fb11cc044e6a9a77f4f758e641aad @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19331: d824af9423406f1bec5c7e3788bb31a465c2e6a4 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6280869762263341047==--

--===============0519705181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0519705181==--
