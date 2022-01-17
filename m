Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A343490FFB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 18:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6863F10F5E6;
	Mon, 17 Jan 2022 17:57:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F95610F5E6;
 Mon, 17 Jan 2022 17:57:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B73BA7DFB;
 Mon, 17 Jan 2022 17:57:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8403923897293975916=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Mon, 17 Jan 2022 17:57:35 -0000
Message-ID: <164244225527.28491.18127131924881014952@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220117150910.231889-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220117150910.231889-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_multitile_support?=
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

--===============8403923897293975916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce multitile support
URL   : https://patchwork.freedesktop.org/series/98950/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11091_full -> Patchwork_22007_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22007_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22007_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22007_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@requests:
    - shard-kbl:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl7/igt@i915_selftest@mock@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@i915_selftest@mock@requests.html
    - shard-apl:          [PASS][3] -> ([DMESG-FAIL][4], [DMESG-FAIL][5])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl2/igt@i915_selftest@mock@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl4/igt@i915_selftest@mock@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl8/igt@i915_selftest@mock@requests.html
    - shard-snb:          [PASS][6] -> [DMESG-FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-snb6/igt@i915_selftest@mock@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-snb6/igt@i915_selftest@mock@requests.html
    - shard-iclb:         [PASS][8] -> [DMESG-FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb5/igt@i915_selftest@mock@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb6/igt@i915_selftest@mock@requests.html

  * igt@sysfs_heartbeat_interval@nopreempt@rcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_shared@q-smoketest-all:
    - {shard-rkl}:        [INCOMPLETE][12] -> ([PASS][13], [INCOMPLETE][14])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_create@forked@smem:
    - {shard-tglu}:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-2/igt@gem_exec_create@forked@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@gem_exec_create@forked@smem.html

  * igt@gem_exec_create@madvise@smem:
    - {shard-rkl}:        ([PASS][17], [PASS][18]) -> [INCOMPLETE][19]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@gem_exec_create@madvise@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-2/igt@gem_exec_create@madvise@smem.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_create@madvise@smem.html

  * igt@gem_exec_schedule@smoketest-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - {shard-rkl}:        [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@gem_exec_whisper@basic-queues-forked.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@i915_selftest@live@gt_pm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - {shard-dg1}:        [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-dg1-17/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-dg1-18/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - {shard-tglu}:       ([FAIL][27], [FAIL][28], [FAIL][29]) ([i915#3002] / [i915#4312]) -> ([FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33]) ([i915#2722] / [i915#3002] / [i915#4312])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-3/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-4/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-7/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-5/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-1/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11091_full and Patchwork_22007_full:

### New IGT tests (2) ###

  * igt@gem_spin_batch@legacy-resubmit:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_spin_batch@legacy-resubmit-new:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_22007_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#2896])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb6/igt@gem_ctx_persistence@smoketest.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb1/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#232])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglb7/igt@gem_eio@kms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#4525])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#4547])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl5/igt@gem_exec_capture@pi@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#2846])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +245 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][44] -> [FAIL][45] ([i915#2842])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2190])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#4613]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#4613]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#4613])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][50] ([i915#180])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][51] ([i915#3002])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl6/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][52] ([i915#454])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][53] ([i915#1886] / [i915#2291])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl4/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2521])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][56] -> [DMESG-WARN][57] ([i915#118]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3777]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3886])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3886]) +9 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-skl:          [PASS][68] -> [DMESG-WARN][69] ([i915#1982]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][70] -> [INCOMPLETE][71] ([i915#180] / [i915#636])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][72] ([i915#79])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#2122]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2122]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][76] -> ([DMESG-WARN][77], [PASS][78]) ([i915#180])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +29 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][80] ([i915#1188]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_panel_fitting@legacy:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +81 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#533]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][83] -> [INCOMPLETE][84] ([i915#794])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][90] -> [SKIP][91] ([fdo#109441])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][92] -> [INCOMPLETE][93] ([i915#4939]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2437])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@sysfs_clients@fair-0.html
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_create@create-ext-placement-sanity-check:
    - {shard-rkl}:        [FAIL][98] -> [PASS][99] +10 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_create@create-ext-placement-sanity-check.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-2/igt@gem_create@create-ext-placement-sanity-check.html

  * igt@gem_exec_fence@syncobj-wait:
    - {shard-rkl}:        [FAIL][100] -> ([PASS][101], [PASS][102]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_exec_fence@syncobj-wait.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-2/igt@gem_exec_fence@syncobj-wait.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-4/igt@gem_exec_fence@syncobj-wait.html

  * igt@gem_exec_schedule@submit-early-slice@bcs0:
    - {shard-tglu}:       [INCOMPLETE][103] ([i915#3797] / [i915#750]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-7/igt@gem_exec_schedule@submit-early-slice@bcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-5/igt@gem_exec_schedule@submit-early-slice@bcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_suspend@basic@smem:
    - {shard-tglu}:       [FAIL][107] ([i915#1888]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-6/igt@gem_exec_suspend@basic@smem.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-8/igt@gem_exec_suspend@basic@smem.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [DMESG-WARN][109] ([i915#118]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][111] ([i915#1436] / [i915#716]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl4/igt@gen9_exec_parse@allowed-all.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][113] ([i915#454]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4098]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        ([SKIP][117], [PASS][118]) ([i915#1845]) -> [PASS][119]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement:
    - {shard-rkl}:        [SKIP][120] ([fdo#112022] / [i915#4070]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][122] ([i915#2346] / [i915#533]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][124] ([i915#2346]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - {shard-rkl}:        [SKIP][126] ([fdo#111314]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
    - shard-kbl:          [FAIL][128] ([i915#79]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131] +12 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - {shard-rkl}:        [SKIP][132] ([i915#1849]) -> [PASS][133] +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - {shard-rkl}:        ([SKIP][134], [SKIP][135]) ([i915#1849] / [i915#4098]) -> [PASS][136]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  * igt@kms_invalid_mode@uint-max-clock:
    - {shard-rkl}:        [SKIP][137] ([i915#4278]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_invalid_mode@uint-max-clock.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
    - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#4070]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb4/igt@kms_psr@psr2_cursor_render.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][143] ([i915#1072]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_psr@sprite_blt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_pwrite_crc:
    - {shard-rkl}:        [SKIP][145] ([i915#1845]) -> [PASS][146] +3 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_pwrite_crc.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_pwrite_crc.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][147] ([i915#31]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl1/igt@kms_setmode@basic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl7/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][149] ([i915#31]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk1/igt@kms_setmode@basic.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk5/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
    - {shard-rkl}:        [SKIP][151] ([i915#1845] / [i915#4070]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-feat

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/index.html

--===============8403923897293975916==
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
<tr><td><b>Series:</b></td><td>Introduce multitile support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98950/">https://patchwork.freedesktop.org/series/98950/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11091_full -&gt; Patchwork_22007_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22007_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22007_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22007_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl7/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@i915_selftest@mock@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl2/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl4/igt@i915_selftest@mock@requests.html">DMESG-FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl8/igt@i915_selftest@mock@requests.html">DMESG-FAIL</a>)</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-snb6/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-snb6/igt@i915_selftest@mock@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb5/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb6/igt@i915_selftest@mock@requests.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html">INCOMPLETE</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-4/igt@gem_ctx_shared@q-smoketest-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_ctx_shared@q-smoketest-all.html">INCOMPLETE</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-2/igt@gem_exec_create@forked@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@gem_exec_create@forked@smem.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise@smem:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@gem_exec_create@madvise@smem.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-2/igt@gem_exec_create@madvise@smem.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_create@madvise@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-5/igt@gem_exec_whisper@basic-queues-forked.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-dg1-17/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-dg1-18/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-tglu}:       (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-7/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / [i915#4312]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-7/igt@runner@aborted.html">FAIL</a>) ([i915#2722] / [i915#3002] / [i915#4312])</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11091_full and Patchwork_22007_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_spin_batch@legacy-resubmit:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy-resubmit-new:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22007_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb6/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb1/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglb5/igt@gem_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl5/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271]) +245 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a>) ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_panel_fitting@legacy.html">SKIP</a> ([fdo#109271]) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> ([i915#794])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#4939]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl3/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-placement-sanity-check:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_create@create-ext-placement-sanity-check.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-2/igt@gem_create@create-ext-placement-sanity-check.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-wait:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-5/igt@gem_exec_fence@syncobj-wait.html">FAIL</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-2/igt@gem_exec_fence@syncobj-wait.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-4/igt@gem_exec_fence@syncobj-wait.html">PASS</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@bcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-7/igt@gem_exec_schedule@submit-early-slice@bcs0.html">INCOMPLETE</a> ([i915#3797] / [i915#750]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-5/igt@gem_exec_schedule@submit-early-slice@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic@smem:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-tglu-6/igt@gem_exec_suspend@basic@smem.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-tglu-8/igt@gem_exec_suspend@basic@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl7/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">PASS</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-slowdraw:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-slowdraw.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-slowdraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-iclb4/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_psr@sprite_blt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pwrite_crc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_pwrite_crc.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_pwrite_crc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-apl7/igt@kms_setmode@basic.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-glk1/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-glk5/igt@kms_setmode@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11091/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22007/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-feat">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============8403923897293975916==--
