Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC7179EAF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 05:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E476E123;
	Thu,  5 Mar 2020 04:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22C956E123;
 Thu,  5 Mar 2020 04:44:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E66E8A011C;
 Thu,  5 Mar 2020 04:44:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Thu, 05 Mar 2020 04:44:13 -0000
Message-ID: <158338345391.17236.14312177379180214496@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304104738.5398-1-ramalingam.c@intel.com>
In-Reply-To: <20200304104738.5398-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSERD?=
 =?utf-8?q?P_misc_=28rev3=29?=
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

Series: HDCP misc (rev3)
URL   : https://patchwork.freedesktop.org/series/73345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8063_full -> Patchwork_16814_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16814_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16814_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16814_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb2/igt@gem_busy@close-race.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][5] ([fdo#109276]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd2.html

  
Known issues
------------

  Here are the changes found in Patchwork_16814_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb5/igt@gem_exec_schedule@promotion-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1120])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#644])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +25 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][47] ([i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_hangman@error-state-capture-vcs1:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb7/igt@i915_hangman@error-state-capture-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb2/igt@i915_hangman@error-state-capture-vcs1.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb1/igt@i915_pm_rps@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-apl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][55] ([i915#72]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-skl:          [FAIL][57] ([i915#52] / [i915#54]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][59] ([i915#42]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-snb6/igt@kms_flip@flip-vs-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-snb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl3/igt@kms_hdr@bpc-switch.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][65] ([IGT#6]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][69] ([i915#1319]) -> [FAIL][70] ([fdo#110321] / [fdo#110336])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8063/shard-apl4/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/shard-apl2/igt@kms_content_protection@atomic.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8063 -> Patchwork_16814

  CI-20190529: 20190529
  CI_DRM_8063: cbce60ed8bb473eb6cdbdba9fc4e005a39a6926e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5490: f98b33cbd5b57bae52b8e2fae2039e89ac877822 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16814: 51c830e3ef77af408e1cd660f3a87ee0559c0a0e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16814/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
