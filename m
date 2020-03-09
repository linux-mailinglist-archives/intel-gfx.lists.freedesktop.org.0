Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCBA17E420
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 16:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF0D6E197;
	Mon,  9 Mar 2020 15:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16F336E190;
 Mon,  9 Mar 2020 15:57:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 103A1A00CC;
 Mon,  9 Mar 2020 15:57:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 15:57:12 -0000
Message-ID: <158376943206.9449.6477595580981605133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309110934.868-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200309110934.868-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Mark_up_unlocked_update?=
 =?utf-8?q?_of_i915=5Frequest=2Ehwsp=5Fseqno?=
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

Series: series starting with [1/5] drm/i915: Mark up unlocked update of i915_request.hwsp_seqno
URL   : https://patchwork.freedesktop.org/series/74445/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8097_full -> Patchwork_16877_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16877_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-skl1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk7/igt@gem_exec_whisper@basic-fds-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-glk2/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb7/igt@kms_psr@psr2_sprite_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +12 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +6 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +20 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][41] ([i915#454]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][43] ([i915#413]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb6/igt@i915_pm_rps@reset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#300]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][49] ([i915#57]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-skl:          [FAIL][51] ([i915#52] / [i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@suspend:
    - shard-iclb:         [INCOMPLETE][59] ([i915#1185]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-iclb3/igt@kms_psr@suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-iclb7/igt@kms_psr@suspend.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [TIMEOUT][61] ([i915#1340]) -> [INCOMPLETE][62] ([fdo#103927] / [i915#1402])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][63] ([fdo#111732]) -> [TIMEOUT][64] ([fdo#111732] / [i915#1322])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl1/igt@gem_linear_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl4/igt@gem_linear_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][67] ([fdo#103927]) -> ([FAIL][68], [FAIL][69]) ([fdo#103927] / [i915#1402])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8097/shard-apl1/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl1/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/shard-apl8/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8097 -> Patchwork_16877

  CI-20190529: 20190529
  CI_DRM_8097: 2e46e269a2843c5d0b6c72bfb7fa9d9913c15415 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5499: 2e23cf6f63fc6ba1d9543f8327698d6f21813cec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16877: fa62f674cf3804822c045b02f37954e7d0a03f99 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16877/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
