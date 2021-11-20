Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E0D4579FC
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Nov 2021 01:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E710B89DBD;
	Sat, 20 Nov 2021 00:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDC7489DBD;
 Sat, 20 Nov 2021 00:13:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C60EDAA914;
 Sat, 20 Nov 2021 00:13:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5240715369840750280=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Sat, 20 Nov 2021 00:13:15 -0000
Message-ID: <163736719578.27211.10108392922227405043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211119140931.32791-1-jose.souza@intel.com>
In-Reply-To: <20211119140931.32791-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_Revert_=22drm/i915=3A_Implement_Wa?=
 =?utf-8?q?=5F1508744258=22?=
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

--===============5240715369840750280==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] Revert "drm/i915: Implement Wa_1508744258"
URL   : https://patchwork.freedesktop.org/series/97105/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10907_full -> Patchwork_21639_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21639_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21639_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21639_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@cursor:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-iclb3/igt@i915_pm_rpm@cursor.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb4/igt@i915_pm_rpm@cursor.html

  * igt@kms_vblank@pipe-a-query-busy-hang:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl7/igt@kms_vblank@pipe-a-query-busy-hang.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-kbl4/igt@kms_vblank@pipe-c-wait-busy.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl7/igt@kms_vblank@pipe-c-wait-busy.html

  
Known issues
------------

  Here are the changes found in Patchwork_21639_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [FAIL][28], [PASS][29], [PASS][30]) ([i915#4392]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk4/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][56] ([i915#180]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#4525])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-iclb:         [PASS][58] -> [INCOMPLETE][59] ([i915#2369] / [i915#3371])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-iclb6/igt@gem_exec_capture@pi@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb6/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +100 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#2842]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         NOTRUN -> [FAIL][63] ([i915#2842]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][64] ([i915#2842]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#112283])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][66] ([i915#1895])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb7/igt@gem_exec_whisper@basic-queues-forked.html
    - shard-glk:          [PASS][67] -> [DMESG-WARN][68] ([i915#118]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][69] -> [SKIP][70] ([i915#2190])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2190])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#4555])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][73] ([i915#2658])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][74] ([i915#2658])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#4270]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#4270])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#3323])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][78] ([i915#3002])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl10/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][79] ([i915#3002])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-tglb:         NOTRUN -> [FAIL][80] ([i915#3318])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2856]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][82] -> [DMESG-WARN][83] ([i915#1982])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [PASS][84] -> [INCOMPLETE][85] ([i915#151])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-kbl6/igt@i915_pm_rpm@system-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][86] ([i915#1886] / [i915#2291])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#4272])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl9/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111614]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][89] ([i915#3743])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#111615]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2705])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3689] / [i915#3886]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111615] / [i915#3689]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3689]) +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3742]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [i915#1149])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb7/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#109284] / [fdo#111827]) +10 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#3116]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#111828])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3319]) +6 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][109] -> [INCOMPLETE][110] ([i915#300])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-apl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-tglb:         [PASS][113] -> [FAIL][114] ([fdo#103375])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#109279] / [i915#3359])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3359]) +5 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#407])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk4/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#79])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109274]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [PASS][122] -> [FAIL][123] ([i915#79])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][124] -> [DMESG-WARN][125] ([i915#180]) +5 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2587])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-iclb:         [PASS][127] -> [SKIP][128] ([i915#3701])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#111825]) +35 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +28 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109280]) +4 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#1187])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_hdr@static-swap.html
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#1187])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#109289]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#533]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#533])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][137] ([i915#456])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][138] ([i915#265])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][139] ([fdo#108145] / [i915#265])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#109278]) +7 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#3536]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_lowres@pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([fdo#111615] / [fdo#112054]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_plane_lowres@pipe-d-tiling-yf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#658])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#658])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#658])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([i915#658]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#2920]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#658]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([i915#1911])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][151] -> [SKIP][152] ([fdo#109441]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_dpms:
    - shard-tglb:         NOTRUN -> [FAIL][153] ([i915#132] / [i915#3467]) +3 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-iclb:         [PASS][154] -> [FAIL][155] ([fdo#103375])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-iclb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-tglb:         [PASS][156] -> [INCOMPLETE][157] ([i915#2828] / [i915#456])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-tglb8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
    - shard-glk:          NOTRUN -> [SKIP][158] ([fdo#109271]) +34 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/index.html

--===============5240715369840750280==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] Revert &quot;drm/=
i915: Implement Wa_1508744258&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97105/">https://patchwork.freedesktop.org/series/97105/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21639/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10907_full -&gt; Patchwork_21639_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21639_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21639_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21639_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-iclb3/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-iclb4/=
igt@i915_pm_rpm@cursor.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-busy-hang:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-kbl7/igt@kms_vblank@pipe-a-query-busy-h=
ang.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-kbl4/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shar=
d-kbl7/igt@kms_vblank@pipe-c-wait-busy.html">INCOMPLETE</a> +1 similar issu=
e</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21639_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10907/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10907/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10907/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10907/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10907/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10907/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10907/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0907/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10907/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shard-glk1/boot.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10907/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10907/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21639/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-apl1/igt@gem_ctx_isolation@preservation=
-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_exec_balancer@parallel.ht=
ml">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-iclb6/igt@gem_exec_capture@pi@vcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-=
iclb6/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#2369] / [i91=
5#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl6/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +100 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
639/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0=
.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-iclb7/igt@gem_exec_whisper@basic-queues-=
forked.html">INCOMPLETE</a> ([i915#1895])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10907/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
639/shard-glk4/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a=
> ([i915#118]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10907/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_lmem_swapping@smem-oom.ht=
ml">SKIP</a> ([i915#4555])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-iclb6/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-glk3/igt@gem_pwrite@basic-exhaustion.htm=
l">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_pxp@regular-baseline-src-=
copy-readible.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@gem_pxp@verify-pxp-execution-=
after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-skl10/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-kbl2/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@gem_userptr_blits@vma-merge.h=
tml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@gen9_exec_parse@allowed-all.h=
tml">SKIP</a> ([i915#2856]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-skl6/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21639/shard-skl7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-kbl6/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard=
-kbl2/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> ([i915#151])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl9/igt@i915_selftest@live@gt_pm.html"=
>DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl9/igt@kms_async_flips@crc.html">FAIL=
</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate=
-90.html">SKIP</a> ([fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_big_fb@yf-tiled-addfb.htm=
l">SKIP</a> ([fdo#111615]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_ccs@pipe-a-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-dat=
a-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_cdclk@plane-scaling.html"=
>SKIP</a> ([i915#3742]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_chamelium@common-hpd-after=
-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_chamelium@dp-hpd.html">SKI=
P</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl6/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb7/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_color_chamelium@pipe-b-ct=
m-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_content_protection@dp-mst=
-type-0.html">SKIP</a> ([i915#3116]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_content_protection@legacy=
.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-random.html">SKIP</a> ([i915#3319]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10907/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
639/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a=
> ([i915#300])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10907/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
639/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10907/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1639/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">FAIL</a> ([=
fdo#103375])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-glk4/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21639/shard-glk1/igt@kms_flip@2x-dpms-vs-vblank-race@ab-hdmi-a=
1-hdmi-a2.html">FAIL</a> ([i915#407])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21639/shard-glk2/igt@kms_flip@2x-flip-vs-expi=
red-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_flip@2x-modeset-vs-vblank=
-race.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21639/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> (=
[i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/s=
hard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21639/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-t=
o-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-move.html">SKIP</a> ([fdo#111825]) +35 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +28 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([fdo#109280]) +4 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_hdr@static-swap.html">SKIP=
</a> ([i915#1187])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_hdr@static-swap.html">SKIP=
</a> ([i915#1187])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_pipe_b_c_ivb@enable-pipe-=
c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-skl10/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-cr=
c-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb7/igt@kms_plane@plane-panning-botto=
m-right-suspend@pipe-b-planes.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-min.html">SKIP</a> ([fdo#109278]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_plane_lowres@pipe-a-tilin=
g-y.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_plane_lowres@pipe-d-tilin=
g-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-kbl2/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-glk3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-apl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-iclb5/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21639/shard-tglb5/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-skl4/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb3/igt@kms_psr2_su@frontbuffer.html"=
>SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21639/shard-i=
clb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21639/shard-tglb2/igt@kms_psr@psr2_dpms.html">FAIL<=
/a> ([i915#132] / [i915#3467]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-iclb7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspen=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21639/shard-iclb5/igt@kms_vblank@pipe-b-ts-continuation-dpms-susp=
end.html">FAIL</a> ([fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10907/shard-tglb8/igt@kms_vblank@pipe-c-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21639/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">=
INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patc">SKIP</a> ([fdo#109271]) +34 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5240715369840750280==--
