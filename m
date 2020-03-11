Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859E51818C0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:51:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF86B89D4A;
	Wed, 11 Mar 2020 12:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB22F89D2F;
 Wed, 11 Mar 2020 12:51:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A34F4A011A;
 Wed, 11 Mar 2020 12:51:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 12:51:17 -0000
Message-ID: <158393107766.13953.553199304222044740@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310092119.14965-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGlz?=
 =?utf-8?q?t=3A_Prevent_compiler_reloads_inside_=27safe=27_list_iteration?=
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

Series: list: Prevent compiler reloads inside 'safe' list iteration
URL   : https://patchwork.freedesktop.org/series/74495/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8108_full -> Patchwork_16903_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16903_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16903_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16903_full:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][1] -> ([FAIL][2], [FAIL][3]) ([i915#1389])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-tglb7/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb2/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16903_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +6 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#1402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +13 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [i915#677])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +20 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#859])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [PASS][20] -> [INCOMPLETE][21] ([i915#1318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb6/igt@gem_exec_whisper@basic-fds-forked.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#1401])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-tglb6/igt@gem_exec_whisper@basic-fds-priority.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb7/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk2/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#34])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#49])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1188])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109642] / [fdo#111068])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][40] ([i915#1402]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][42] ([fdo#103927] / [i915#1402]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl1/igt@gem_ctx_persistence@close-replace-race.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd:
    - shard-tglb:         [FAIL][44] ([i915#616]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb3/igt@gem_ctx_shared@exec-shared-gtt-bsd.html

  * igt@gem_ctx_shared@q-independent-blt:
    - shard-apl:          [FAIL][46] ([fdo#112118] / [i915#935]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl7/igt@gem_ctx_shared@q-independent-blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl1/igt@gem_ctx_shared@q-independent-blt.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][48] ([fdo#110854]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-tglb:         [INCOMPLETE][56] ([i915#1401]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-tglb7/igt@gem_exec_whisper@basic-fds-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-tglb1/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][58] ([i915#118] / [i915#95]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk6/igt@gem_exec_whisper@basic-queues-priority.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk5/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][62] ([i915#447]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][64] ([i915#413]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb7/igt@i915_pm_rps@reset.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [FAIL][66] ([i915#54]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][68] ([i915#300]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [FAIL][70] ([i915#699]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl7/igt@kms_flip_tiling@flip-y-tiled.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl6/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +5 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][76] ([i915#1188]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][78] ([fdo#108145]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][80] ([i915#899]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][84] ([i915#31]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl2/igt@kms_setmode@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][86] ([fdo#112080]) -> [PASS][87] +11 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb5/igt@perf_pmu@busy-vcs1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][88] ([fdo#109276]) -> [PASS][89] +18 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][90], [FAIL][91]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][92] ([i915#92])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl3/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-kbl7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][93], [FAIL][94]) ([fdo#103927] / [i915#1402]) -> [FAIL][95] ([fdo#103927])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8108/shard-apl4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/shard-apl8/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8108 -> Patchwork_16903

  CI-20190529: 20190529
  CI_DRM_8108: 7616c3ce8d78b3c229e4dc27d795246a2677f0a9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16903: d40a755ea0b3a2f13024b0f912c115e490ec1a15 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16903/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
