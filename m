Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C28217D058
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 22:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC416E13C;
	Sat,  7 Mar 2020 21:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 221326E13C;
 Sat,  7 Mar 2020 21:46:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A847A00E7;
 Sat,  7 Mar 2020 21:46:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 07 Mar 2020 21:46:21 -0000
Message-ID: <158361758108.20975.15086385858854897149@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200307012600.19602-1-lucas.demarchi@intel.com>
In-Reply-To: <20200307012600.19602-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dgfx=3A_avoid_opregion_calls_and_messages?=
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

Series: drm/i915/dgfx: avoid opregion calls and messages
URL   : https://patchwork.freedesktop.org/series/74408/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8088_full -> Patchwork_16871_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16871_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +18 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-apl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb7/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-glk3/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#370])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb5/igt@i915_pm_rps@min-max-config-loaded.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb1/igt@i915_pm_rps@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#221])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103665])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +17 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [TIMEOUT][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][33] ([fdo#103927]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +16 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +23 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +7 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][45] ([i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][47] ([i915#447]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][53] ([i915#72]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][57] ([i915#46]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [FAIL][65] ([i915#53]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-kbl:          [INCOMPLETE][67] ([fdo#103665]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][71] ([i915#250]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][75] ([fdo#109642] / [fdo#111068]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl2/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][81] ([i915#468]) -> [FAIL][82] ([i915#454])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16871

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16871: 5812120aa654d89e3fbf4493221d5e7431c4d424 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16871/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
