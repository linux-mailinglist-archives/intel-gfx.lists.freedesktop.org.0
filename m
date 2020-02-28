Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE2E1740BE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 21:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5286E0FD;
	Fri, 28 Feb 2020 20:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 912E96E0FD;
 Fri, 28 Feb 2020 20:12:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89E28A011B;
 Fri, 28 Feb 2020 20:12:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 28 Feb 2020 20:12:06 -0000
Message-ID: <158292072653.7476.15148701403423827748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227135839.12912-1-jani.nikula@intel.com>
In-Reply-To: <20200227135839.12912-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_split_intel=5Fmodeset?=
 =?utf-8?q?=5Finit=28=29_pre/post_gem_init?=
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

Series: series starting with [1/3] drm/i915: split intel_modeset_init() pre/post gem init
URL   : https://patchwork.freedesktop.org/series/74021/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8019_full -> Patchwork_16734_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16734_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16734_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16734_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb5/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8019_full and Patchwork_16734_full:

### New IGT tests (4) ###

  * igt@drm_mm@all:
    - Statuses :
    - Exec time: [None] s

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

  Here are the changes found in Patchwork_16734_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-apl7/igt@gem_ctx_isolation@bcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [PASS][6] -> [INCOMPLETE][7] ([fdo#103927])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#112080]) +12 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [i915#677]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#644])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#671])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][22] -> [INCOMPLETE][23] ([i915#58] / [k.org#198133])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][24] -> [INCOMPLETE][25] ([i915#82])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][26] -> [INCOMPLETE][27] ([i915#140])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb6/igt@i915_module_load@reload-with-fault-injection.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#151] / [i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl8/igt@i915_pm_rpm@system-suspend-execbuf.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#413])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#899])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl1/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl7/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][44] -> [FAIL][45] ([i915#31])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-kbl7/igt@kms_setmode@basic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-kbl6/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109276]) +21 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-apl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][50] ([i915#1291]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [INCOMPLETE][52] ([i915#1197] / [i915#1239]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-skl:          [FAIL][54] ([i915#679]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][56] ([i915#1277]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-tglb8/igt@gem_exec_balancer@hang.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][58] ([fdo#109276]) -> [PASS][59] +15 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb1/igt@gem_exec_schedule@preempt-other-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb6/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-tglb:         [INCOMPLETE][62] ([i915#750]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-tglb7/igt@gem_exec_whisper@basic-queues-forked.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-tglb7/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-iclb:         [INCOMPLETE][64] ([i915#1120]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-glk:          [INCOMPLETE][66] ([i915#58] / [k.org#198133]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][68] ([i915#644]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-kbl3/igt@gem_softpin@noreloc-s3.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [INCOMPLETE][72] ([i915#1310]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl5/igt@i915_selftest@mock@buddy.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl10/igt@i915_selftest@mock@buddy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [FAIL][74] ([i915#52] / [i915#54]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][76] ([i915#34]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl6/igt@kms_flip@plain-flip-ts-check.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][78] ([i915#1188]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][80] ([fdo#108145]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb6/igt@kms_psr@psr2_cursor_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][84] ([fdo#112080]) -> [PASS][85] +14 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][86] ([IGT#28]) -> [SKIP][87] ([fdo#112080])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         [INCOMPLETE][88] ([i915#189]) -> [SKIP][89] ([fdo#110892])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb2/igt@i915_pm_rpm@modeset-non-lpsp.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-snb:          [INCOMPLETE][90] ([i915#82]) -> [SKIP][91] ([fdo#109271])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-snb4/igt@i915_pm_rpm@pm-caching.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-snb5/igt@i915_pm_rpm@pm-caching.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][92] ([i915#1226]) -> [SKIP][93] ([fdo#109349])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8019/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
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
  * Linux: CI_DRM_8019 -> Patchwork_16734

  CI-20190529: 20190529
  CI_DRM_8019: c1fc892b1456a3b2b7f11482e52a126cc3ebedba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16734: b7f49adab789477c1776c5c043e224d57c0c45bd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16734/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
