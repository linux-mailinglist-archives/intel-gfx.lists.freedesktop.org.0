Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B69AE2FCAC9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 06:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3CF6E154;
	Wed, 20 Jan 2021 05:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 416A76E135;
 Wed, 20 Jan 2021 05:39:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 391D6AADD0;
 Wed, 20 Jan 2021 05:39:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 20 Jan 2021 05:39:26 -0000
Message-ID: <161112116619.8789.11175482906388500432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210120012111.44184-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210120012111.44184-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?_subplatform_check!!?=
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
Content-Type: multipart/mixed; boundary="===============1505634779=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1505634779==
Content-Type: multipart/alternative;
 boundary="===============0587486878543781834=="

--===============0587486878543781834==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix subplatform check!!
URL   : https://patchwork.freedesktop.org/series/86063/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9647_full -> Patchwork_19417_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19417_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-hsw:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw4/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#2842]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][4] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2849])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-hsw:          NOTRUN -> [FAIL][11] ([i915#2389]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw6/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-apl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1610])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl8/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl7/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][14] -> [INCOMPLETE][15] ([i915#2295])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][18] ([i915#2782])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-hsw:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw6/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-random:
    - shard-hsw:          NOTRUN -> [SKIP][25] ([fdo#109271]) +164 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@kms_cursor_crc@pipe-d-cursor-128x128-random.html

  * igt@kms_flip@bo-too-big@a-hdmi-a1:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@kms_flip@bo-too-big@a-hdmi-a1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@kms_flip@bo-too-big@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#2598])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#79])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-hsw:          [PASS][34] -> [INCOMPLETE][35] ([i915#2055] / [i915#2295])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-hsw6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
    - shard-kbl:          [PASS][36] -> [FAIL][37] ([i915#2122])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#2122]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +20 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#53])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#198]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [TIMEOUT][50] ([i915#2918]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [TIMEOUT][52] ([i915#2918]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@wait-wedge-1us:
    - shard-apl:          [DMESG-WARN][54] ([i915#1037] / [i915#62]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@gem_eio@wait-wedge-1us.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@gem_eio@wait-wedge-1us.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][56] ([i915#198] / [i915#2624]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl6/igt@gem_exec_capture@pi@vecs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl4/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][58] ([i915#2842]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][60] ([i915#2842]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][62] ([i915#2842]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [DMESG-WARN][64] ([i915#1610]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          [DMESG-WARN][66] ([i915#1610] / [i915#2803]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][68] ([i915#2190]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [INCOMPLETE][70] -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][72] ([i915#2597]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@kms_async_flips@test-time-stamp.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][74] ([i915#54]) -> [PASS][75] +5 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][76] ([i915#2122]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-panning@a-dp1:
    - shard-apl:          [DMESG-WARN][78] ([i915#180] / [i915#62]) -> [PASS][79] +37 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_flip@flip-vs-panning@a-dp1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_flip@flip-vs-panning@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][80] ([i915#2122]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-apl:          [DMESG-WARN][82] ([i915#62]) -> [PASS][83] +15 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_prime@basic-crc@second-to-first.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][84] ([fdo#109441]) -> [PASS][85] +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][86] ([i915#51]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@perf@short-reads.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@perf@short-reads.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [INCOMPLETE][88] ([i915#1731] / [i915#198]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@vecs0:
    - shard-glk:          [INCOMPLETE][90] ([i915#2369]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk1/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk7/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][92] ([i915#2684]) -> [WARN][93] ([i915#1804] / [i915#2684])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          [DMESG-FAIL][94] -> [FAIL][95] ([i915#265])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][96] ([i915#658]) -> [SKIP][97] ([i915#2920]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][98] ([i915#2920]) -> [SKIP][99] ([i915#658]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][100] ([i915#2295] / [i915#2505]) -> ([FAIL][101], [FAIL][102]) ([i915#2295])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][103], [FAIL][104]) ([i915#2295] / [i915#2426]) -> [FAIL][105] ([i915#2295])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9647 -> Patchwork_19417

  CI-20190529: 20190529
  CI_DRM_9647: bf84e89a0accc900a7c42035226a811a24737f51 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19417: 7cf7b3d2a9ea19e82ab10e71c59987aa969fa71d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/index.html

--===============0587486878543781834==
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
<tr><td><b>Series:</b></td><td>Fix subplatform check!!</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86063/">https://patchwork.freedesktop.org/series/86063/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9647_full -&gt; Patchwork_19417_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19417_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw4/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw6/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl8/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl7/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw6/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-random:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@kms_cursor_crc@pipe-d-cursor-128x128-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +164 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@kms_flip@bo-too-big@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@kms_flip@bo-too-big@a-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#2598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-hsw6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2918">i915#2918</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2918">i915#2918</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@gem_eio@wait-wedge-1us.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@gem_eio@wait-wedge-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl6/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2624">i915#2624</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl4/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-hsw4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-tglb7/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_flip@flip-vs-panning@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_flip@flip-vs-panning@a-dp1.html">PASS</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@second-to-first:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_prime@basic-crc@second-to-first.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_prime@basic-crc@second-to-first.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@perf@short-reads.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl7/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-glk1/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-glk7/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#2920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-kbl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9647/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19417/shard-skl9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9647 -&gt; Patchwork_19417</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9647: bf84e89a0accc900a7c42035226a811a24737f51 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5960: ace82fcd5f3623f8dde7c220a825873dc53dfae4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19417: 7cf7b3d2a9ea19e82ab10e71c59987aa969fa71d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0587486878543781834==--

--===============1505634779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1505634779==--
