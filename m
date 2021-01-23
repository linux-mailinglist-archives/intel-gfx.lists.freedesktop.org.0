Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3EC301284
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 04:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58F2E6EAB5;
	Sat, 23 Jan 2021 03:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE7276EAAD;
 Sat, 23 Jan 2021 03:10:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF179A73C7;
 Sat, 23 Jan 2021 03:10:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 23 Jan 2021 03:10:16 -0000
Message-ID: <161137141687.14872.8991331955496048549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122114625.29098-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210122114625.29098-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_engine-reset_errors_in_the_middle_?=
 =?utf-8?q?of_workarounds?=
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
Content-Type: multipart/mixed; boundary="===============1557266900=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1557266900==
Content-Type: multipart/alternative;
 boundary="===============3230174308440057172=="

--===============3230174308440057172==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Check for engine-reset errors in the middle of workarounds
URL   : https://patchwork.freedesktop.org/series/86179/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9670_full -> Patchwork_19457_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19457_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19457_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19457_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl1/igt@i915_selftest@live@perf.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.0@gl-1.0-blend-func (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][2] +4 similar issues
   [2]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9670_full and Patchwork_19457_full:

### New Piglit tests (5) ###

  * security@initialized-texmemory:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.0@gl-1.0-blend-func:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.0@gl-1.0-readpixsanity:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.0@gl-1.0-scissor-many:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@!opengl 1.0@gl-1.0-scissor-offscreen:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19457_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#198])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl10/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][12] -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [PASS][14] -> [DMESG-WARN][15] ([i915#2803])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1610] / [i915#2803])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl1/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@gem_exec_schedule@u-fairslice@vcs0.html
    - shard-kbl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1610] / [i915#2803])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([i915#1895] / [i915#2405])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl5/igt@gen9_exec_parse@allowed-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][24] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#2597])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb7/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-iclb:         [PASS][30] -> [INCOMPLETE][31] ([i915#1185] / [i915#2405])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2346])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +42 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][39] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([fdo#108145] / [i915#265]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][44] ([i915#2842]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][46] ([i915#2842]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][50] ([i915#2842]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [DMESG-WARN][52] ([i915#118] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-glk7/igt@gem_exec_whisper@basic-queues.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-glk3/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][54] ([i915#2190]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][56] ([CI#80] / [i915#1037]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl7/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl1/igt@i915_selftest@live@execlists.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][58] ([i915#2521]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [FAIL][60] ([i915#54]) -> [PASS][61] +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][64] ([i915#79]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][66] ([i915#2122]) -> [PASS][67] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [INCOMPLETE][68] ([i915#198]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][70] ([fdo#108145] / [i915#265]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982] / [i915#262]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl3/igt@perf_pmu@module-unload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl2/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][76] ([i915#2852]) -> [FAIL][77] ([i915#2842])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][78] ([i915#1804] / [i915#2684]) -> [WARN][79] ([i915#2681] / [i915#2684])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-kbl:          [INCOMPLETE][80] ([i915#151] / [i915#155]) -> [INCOMPLETE][81] ([i915#151])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-kbl3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][82] ([i915#79]) -> [FAIL][83] ([i915#2122])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [FAIL][84] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][85] ([fdo#108145] / [i915#1982] / [i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][86] ([i915#658]) -> [SKIP][87] ([i915#2920])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][88] ([i915#2920]) -> [SKIP][89] ([i915#658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][90] ([i915#2295]) -> ([FAIL][91], [FAIL][92]) ([i915#2295] / [i915#2426])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-kbl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][93] ([i915#1602] / [i915#2295] / [i915#2667]) -> ([FAIL][94], [FAIL][95]) ([i915#1602] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-tglb7/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb2/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][96], [FAIL][97]) ([i915#1436] / [i915#2295]) -> ([FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295] / [i915#2426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl10/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl9/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9670 -> Patchwork_19457

  CI-20190529: 20190529
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19457: 7b40678254358a12a52f0ad7f6441344260b1654 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/index.html

--===============3230174308440057172==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Check for engine-reset e=
rrors in the middle of workarounds</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86179/">https://patchwork.freedesktop.org/series/86179/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19457/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19457/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9670_full -&gt; Patchwork_19457_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19457_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19457_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19457_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-skl1/igt@i915_selftest@live@perf.html">=
INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@!opengl 1.0@gl-1.0-blend-func (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> +4 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9670_full and Patchwork_19=
457_full:</p>
<h3>New Piglit tests (5)</h3>
<ul>
<li>
<p>security@initialized-texmemory:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.0@gl-1.0-blend-func:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.0@gl-1.0-readpixsanity:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.0@gl-1.0-scissor-many:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@!opengl 1.0@gl-1.0-scissor-offscreen:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19457_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-icl=
b6/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl10/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19457/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i91=
5#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/sh=
ard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_194=
57/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/sh=
ard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-tglb1/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_194=
57/shard-tglb2/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9670/shard-skl1/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457=
/shard-skl3/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2=
803</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9670/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457=
/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2=
803</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9457/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1895">i915#=
1895</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405"=
>i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard=
-skl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-skl3/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#=
454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/=
shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-skl3/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19457/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9457/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#=
1185</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405"=
>i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19457/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-skl5/igt@kms_flip@2x-plain-flip-fb-recr=
eate-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19457/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19457/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19457/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/sha=
rd-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar=
 issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_194=
57/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
457/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
457/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19457/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-glk7/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i91=
5#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19457/shard-glk3/igt@gem_exec_whisper@basic-queues.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/sha=
rd-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl7/igt@i915_selftest@live@execlists.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">=
CI#80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037=
">i915#1037</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19457/shard-skl1/igt@i915_selftest@live@execlists.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19457/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19457/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">P=
ASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl7/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interrupti=
ble@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19457/shard-skl1/igt@kms_flip@flip-vs-dpms-o=
ff-vs-modeset-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19457/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@c-edp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19457/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe=
-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19457/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19457/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#26=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19457/shard-skl2/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19457/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19457/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-kbl3/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/15=
5">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19457/shard-kbl2/igt@i915_pm_rpm@system-suspend-execbuf.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151=
">i915#151</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19457/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19457/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic=
.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19457/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-=
area-5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19457/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dm=
g-area-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9670/shard-kbl2/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shard-kbl4/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19457/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#=
2426</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9670/shard-tglb7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457=
/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19457/shard-tglb1/igt@runner@aborted.htm=
l">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/16=
02">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2803">i915#2803</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9670/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9670/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19457/shard-skl10/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/shar=
d-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19457/shard-skl9/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19457/s=
hard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19457/shard-skl3/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">=
i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9670 -&gt; Patchwork_19457</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9670: 85fd189b9fbfb6e7af8d956d37be012fdd6ae0ad @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5964: 0949766cb9846d7d55fac9cdf31d3d8e8ed1d0c6 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19457: 7b40678254358a12a52f0ad7f6441344260b1654 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3230174308440057172==--

--===============1557266900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1557266900==--
