Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD71815722
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Dec 2023 04:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F7610E07C;
	Sat, 16 Dec 2023 03:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E20FE10E077;
 Sat, 16 Dec 2023 03:50:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D98B8AADED;
 Sat, 16 Dec 2023 03:50:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8148397871437899477=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/mm=3A_Allow_CONFIG=5FDR?=
 =?utf-8?q?M=5FMM=5FDEBUG_with_DRM=3Dm_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 16 Dec 2023 03:50:51 -0000
Message-ID: <170269865185.3476.13592942490017441280@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231215111129.9559-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231215111129.9559-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8148397871437899477==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=m (rev2)
URL   : https://patchwork.freedesktop.org/series/127871/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14033_full -> Patchwork_127871v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127871v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127871v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/index.html

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127871v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-panning-vs-hang@b-vga1:
    - shard-snb:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb4/igt@kms_flip@flip-vs-panning-vs-hang@b-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb2/igt@kms_flip@flip-vs-panning-vs-hang@b-vga1.html

  
#### Warnings ####

  * igt@i915_pm_rps@engine-order:
    - shard-snb:          [INCOMPLETE][3] ([i915#9847]) -> [INCOMPLETE][4] +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb2/igt@i915_pm_rps@engine-order.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb6/igt@i915_pm_rps@engine-order.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14033_full and Patchwork_127871v2_full:

### New IGT tests (3) ###

  * igt@gem_ctx_engines@independent@all-engines:
    - Statuses : 6 pass(s)
    - Exec time: [0.09, 1.59] s

  * igt@gem_exec_gttfill@all-engines:
    - Statuses : 7 pass(s)
    - Exec time: [22.74, 29.84] s

  * igt@gem_wait@write-wait@all-engines:
    - Statuses : 1 pass(s)
    - Exec time: [1.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_127871v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52], [PASS][53]) ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_freq@sysfs:
    - shard-snb:          NOTRUN -> [INCOMPLETE][54] ([i915#9860])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@gem_ctx_freq@sysfs.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-glk:          NOTRUN -> [ABORT][55] ([i915#9847])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk1/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([fdo#109314])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#1099]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer:
    - shard-glk:          NOTRUN -> [INCOMPLETE][58] ([i915#2295])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@gem_exec_balancer.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-mtlp:         NOTRUN -> [ABORT][59] ([i915#9855])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@fairslice:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][60] ([i915#9856])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-6/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@full-late:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][61] ([i915#9856])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@indices:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][62] ([i915#9856])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-12/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_balancer@nop:
    - shard-dg1:          NOTRUN -> [ABORT][63] ([i915#9855] / [i915#9856])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-dg1:          NOTRUN -> [ABORT][64] ([i915#9855])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3539] / [i915#4852])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3281])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#3281])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-mtlp:         [PASS][68] -> [ABORT][69] ([i915#9855] / [i915#9857])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-priority.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          NOTRUN -> [INCOMPLETE][70] ([i915#9857])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][71] ([i915#9857]) +1 other test incomplete
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_gtt_cpu_tlb:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4077])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@gem_gtt_cpu_tlb.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3282])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#4270])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#8428])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#5190])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gen3_mixed_blits:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([fdo#109289])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#2527])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271]) +73 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][82] -> [INCOMPLETE][83] ([i915#7790])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb2/igt@i915_pm_rps@reset.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#6228])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#5286])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([fdo#111615])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5190])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#5354] / [i915#6095])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_ccs@pipe-b-bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#5354]) +5 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#5354] / [i915#6095]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7828]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#7828])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_content_protection@srm:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#6944])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3359])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([fdo#111825]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3469])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([fdo#111825])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#2587] / [i915#2672])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#2672])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#8708]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#1825]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [PASS][102] -> [SKIP][103] ([fdo#109271]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#8708])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#3023])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([fdo#111825] / [i915#1825]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#5176] / [i915#9423]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#5235]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5235]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#5235]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5354])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][112] ([fdo#109271]) +7 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#5289])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          NOTRUN -> [ABORT][115] ([i915#9847]) +1 other test abort
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/igt@perf@blocking@0-rcs0.html
    - shard-mtlp:         NOTRUN -> [ABORT][116] ([i915#9847])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-2/igt@perf@blocking@0-rcs0.html

  * igt@perf@polling-parameterized:
    - shard-dg1:          NOTRUN -> [ABORT][117] ([i915#9847])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@perf@polling-parameterized.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-dg1:          NOTRUN -> [ABORT][118] ([i915#9847] / [i915#9853])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@perf_pmu@semaphore-wait@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][119] ([i915#9853])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk3/igt@perf_pmu@semaphore-wait@rcs0.html

  * igt@prime_vgem@basic-write:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#3708])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@prime_vgem@basic-write.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][121] ([i915#9781])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-glk:          NOTRUN -> [FAIL][122] ([i915#9781])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_submit_cl@job-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([fdo#109315])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@v3d/v3d_submit_cl@job-perfmon.html

  * igt@v3d/v3d_wait_bo@map-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2575]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@v3d/v3d_wait_bo@map-bo-1ns.html

  * igt@v3d/v3d_wait_bo@used-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#2575])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@v3d/v3d_wait_bo@used-bo.html

  * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#7711]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][127] ([i915#6268]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-mtlp:         [ABORT][129] ([i915#9857]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-mtlp-5/igt@gem_exec_whisper@basic-fds-forked.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-mtlp:         [ABORT][131] ([i915#7392] / [i915#9857]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked-all.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          [SKIP][133] ([fdo#109271] / [fdo#111767]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][135] ([i915#2346]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][137] ([fdo#109271]) -> [PASS][138] +4 other tests pass
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  
#### Warnings ####

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg1:          [INCOMPLETE][139] -> [ABORT][140] ([i915#9847])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-dg1-18/igt@gem_ctx_freq@sysfs@gt0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_balancer@fairslice:
    - shard-glk:          [SKIP][141] ([fdo#109271]) -> [ABORT][142] ([i915#9855] / [i915#9856])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-glk8/igt@gem_exec_balancer@fairslice.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk1/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@full-late:
    - shard-dg2:          [INCOMPLETE][143] ([i915#9855] / [i915#9856]) -> [INCOMPLETE][144] ([i915#9856])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-dg2-6/igt@gem_exec_balancer@full-late.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-1/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@indices:
    - shard-dg2:          [ABORT][145] ([i915#9856]) -> [INCOMPLETE][146] ([i915#9856])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-dg2-3/igt@gem_exec_balancer@indices.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-1/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_balancer@smoke:
    - shard-rkl:          [INCOMPLETE][147] ([i915#9856]) -> [ABORT][148] ([i915#9856]) +1 other test abort
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/igt@gem_exec_balancer@smoke.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_whisper@basic-contexts-priority:
    - shard-glk:          [INCOMPLETE][149] ([i915#9857]) -> [ABORT][150] ([i915#9855] / [i915#9857])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [ABORT][151] ([i915#9855] / [i915#9857]) -> [INCOMPLETE][152] ([i915#9857])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html

  * igt@i915_pm_rps@engine-order:
    - shard-dg2:          [INCOMPLETE][153] ([i915#9847]) -> [ABORT][154] ([i915#9847])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-dg2-6/igt@i915_pm_rps@engine-order.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-7/igt@i915_pm_rps@engine-order.html
    - shard-rkl:          [INCOMPLETE][155] -> [ABORT][156] ([i915#9847])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/igt@i915_pm_rps@engine-order.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/igt@i915_pm_rps@engine-order.html

  * igt@kms_content_protection@atomic:
    - shard-snb:          [SKIP][157] ([fdo#109271]) -> [INCOMPLETE][158] ([i915#8816])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-snb1/igt@kms_content_protection@atomic.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@kms_content_protection@atomic.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-rkl:          [INCOMPLETE][159] ([i915#9853]) -> [INCOMPLETE][160] ([i915#9847] / [i915#9853])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/igt@perf_pmu@busy-check-all@rcs0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@module-unload:
    - shard-glk:          [INCOMPLETE][161] ([i915#9853]) -> [ABORT][162] ([i915#9847] / [i915#9853]) +1 other test abort
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-glk8/igt@perf_pmu@module-unload.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk1/igt@perf_pmu@module-unload.html
    - shard-rkl:          [INCOMPLETE][163] ([i915#9853]) -> [ABORT][164] ([i915#9847] / [i915#9853])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/igt@perf_pmu@module-unload.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-dg2:          [ABORT][165] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][166] ([i915#9853])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-dg2-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@perf_pmu@semaphore-wait@rcs0:
    - shard-rkl:          [ABORT][167] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][168] ([i915#9853])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/igt@perf_pmu@semaphore-wait@rcs0.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/igt@perf_pmu@semaphore-wait@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9855]: https://gitlab.freedesktop.org/drm/intel/issues/9855
  [i915#9856]: https://gitlab.freedesktop.org/drm/intel/issues/9856
  [i915#9857]: https://gitlab.freedesktop.org/drm/intel/issues/9857
  [i915#9860]: https://gitlab.freedesktop.org/drm/intel/issues/9860


Build changes
-------------

  * Linux: CI_DRM_14033 -> Patchwork_127871v2
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14033: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127871v2: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/index.html

--===============8148397871437899477==
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
<tr><td><b>Series:</b></td><td>drm/mm: Allow CONFIG_DRM_MM_DEBUG with DRM=
=3Dm (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127871/">https://patchwork.freedesktop.org/series/127871/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127871v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14033_full -&gt; Patchwork_127871v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127871v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127871v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v=
2/index.html</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127871v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-panning-vs-hang@b-vga1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb4/igt@kms_flip@flip-vs-panning-vs-hang@b-vga1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127871v2/shard-snb2/igt@kms_flip@flip-vs-panning-vs-hang@b-vga1.html">ABO=
RT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rps@engine-order:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb2/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27871v2/shard-snb6/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> +1 oth=
er test incomplete</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14033_full and Patchwork_1=
27871v2_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@gem_ctx_engines@independent@all-engines:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.09, 1.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all-engines:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [22.74, 29.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@all-engines:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.13] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127871v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_140=
33/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/sha=
rd-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14033/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14033/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1403=
3/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shard-rkl-4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14033/shar=
d-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14033/shard-rkl-1/boot.html">PASS</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127871v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rk=
l-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127871v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12787=
1v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127871v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2=
/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127871v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127871v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27871v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127871v2/shard-rkl-6/boot.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-rkl-6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871=
v2/shard-rkl-5/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@gem_ctx_freq@sysfs.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
60">i915#9860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-glk1/igt@gem_ctx_freq@sysfs@gt0.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/984=
7">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@gem_ctx_persistence@smokete=
st.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@gem_exec_balancer.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/229=
5">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_balancer@bonded-=
false-hang.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-6/igt@gem_exec_balancer@fairslic=
e.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/igt@gem_exec_balancer@full-lat=
e.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-12/igt@gem_exec_balancer@indices=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gem_exec_balancer@nop.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
55">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gem_exec_balancer@paralle=
l-dmabuf-import-out-fence.html">ABORT</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_exec_flush@basic-wb-r=
w-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_reloc@basic-wc-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-priority.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127871v2/shard-mtlp-4/igt@gem_exec_whisper@basic-contexts-priority.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
55">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-glk4/igt@gem_exec_whisper@basic-fds-f=
orked.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9857">i915#9857</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@gem_exec_whisper@basic-fds-f=
orked.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9857">i915#9857</a>) +1 other test incomplete</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@gem_gtt_cpu_tlb.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">i91=
5#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gem_lmem_swapping@random-e=
ngines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_render_copy@mixed-til=
ed-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@gem_render_copy@yf-tiled-=
ccs-to-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@gen3_mixed_blits.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">f=
do#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@gen9_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-snb5/igt@i915_pm_rpm@system-suspend-=
devices.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb4/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_async_flips@invalid-a=
sync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_ccs@pipe-b-bad-aux-str=
ide-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_ccs@pipe-d-random-ccs=
-data-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_ccs@pipe-d-random-ccs=
-data-y-tiled-gen12-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_chamelium_frames@dp-cr=
c-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_cursor_legacy@2x-long=
-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127871v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-17/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-glk4/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-rkl-5/igt@perf@blocking@0-rcs0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847"=
>i915#9847</a>) +1 other test abort</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-mtlp-2/igt@perf@blocking@0-rcs0.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847=
">i915#9847</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@perf@polling-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@perf_pmu@most-busy-idle-c=
heck-all@rcs0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9847">i915#9847</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-glk3/igt@perf_pmu@semaphore-wait@rcs=
0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/37=
08">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-dg2-11/igt@syncobj_timeline@invalid-w=
ait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9781">i915#9781</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@syncobj_timeline@invalid-wai=
t-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9781">i915#9781</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@job-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-rkl-4/igt@v3d/v3d_submit_cl@job-perf=
mon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@map-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg2-10/igt@v3d/v3d_wait_bo@map-bo-1n=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-mtlp-7/igt@v3d/v3d_wait_bo@used-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127871v2/shard-dg1-13/igt@vc4/vc4_dmabuf_poll@poll-=
write-waits-until-write-done.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#62=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127871v2/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-mtlp-5/igt@gem_exec_whisper@basic-fds-forked.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127871v2/shard-mtlp-2/igt@gem_exec_whisper@basic-fds-forked.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-mtlp-3/igt@gem_exec_whisper@basic-fds-forked-all.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7392"=
>i915#7392</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9857">i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127871v2/shard-mtlp-7/igt@gem_exec_whisper@basic-fds-forked-=
all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tran=
sitions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@kms_cursor_legacy@c=
ursorb-vs-flipb-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-glk9/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127871v2/shard-snb7/igt@kms_frontbuffer_=
tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> +4 other te=
sts pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-dg1-18/igt@gem_ctx_freq@sysfs@gt0.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v=
2/shard-dg1-13/igt@gem_ctx_freq@sysfs@gt0.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-glk8/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7871v2/shard-glk1/igt@gem_exec_balancer@fairslice.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-dg2-6/igt@gem_exec_balancer@full-late.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#=
9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856"=
>i915#9856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127871v2/shard-dg2-1/igt@gem_exec_balancer@full-late.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i=
915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-dg2-3/igt@gem_exec_balancer@indices.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1278=
71v2/shard-dg2-1/igt@gem_exec_balancer@indices.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@smoke:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-rkl-7/igt@gem_exec_balancer@smoke.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27871v2/shard-rkl-6/igt@gem_exec_balancer@smoke.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>) +1 ot=
her test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9857">i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127871v2/shard-glk1/igt@gem_exec_whisper@basic-contexts-prio=
rity.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-glk1/igt@gem_exec_whisper@basic-forked-all.html">ABORT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#=
9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857"=
>i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127871v2/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
57">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14033/shard-dg2-6/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27871v2/shard-dg2-7/igt@i915_pm_rps@engine-order.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14033/shard-rkl-4/igt@i915_pm_rps@engine-order.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127871v=
2/shard-rkl-5/igt@i915_pm_rps@engine-order.html">ABORT</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-snb1/igt@kms_content_protection@atomic.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127871v2/shard-snb7/igt@kms_content_protection@atomic.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816=
</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-rkl-1/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915=
#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127871v2/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#=
9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853"=
>i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14033/shard-glk8/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1278=
71v2/shard-glk1/igt@perf_pmu@module-unload.html">ABORT</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) +1=
 other test abort</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14033/shard-rkl-1/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
871v2/shard-rkl-5/igt@perf_pmu@module-unload.html">ABORT</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-dg2-7/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847"=
>i915#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9853">i915#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127871v2/shard-dg2-10/igt@perf_pmu@most-busy-idle-check-all@=
rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14033/shard-rkl-5/igt@perf_pmu@semaphore-wait@rcs0.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i91=
5#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127871v2/shard-rkl-7/igt@perf_pmu@semaphore-wait@rcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915=
#9853</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14033 -&gt; Patchwork_127871v2</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14033: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127871v2: e6580f88bbde08a04d0cb7bb591c38e7b9f0076d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8148397871437899477==--
