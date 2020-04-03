Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5634B19DC7C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6AB6EC31;
	Fri,  3 Apr 2020 17:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E53C6EC31;
 Fri,  3 Apr 2020 17:16:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07A8BA00C7;
 Fri,  3 Apr 2020 17:16:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 03 Apr 2020 17:16:13 -0000
Message-ID: <158593417302.13349.5567663649075984883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200402143109.1801605-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/23=5D_perf/core=3A_Only_copy-to-user_af?=
 =?utf-8?q?ter_completely_unlocking_all_locks=2C_v2=2E?=
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

Series: series starting with [01/23] perf/core: Only copy-to-user after completely unlocking all locks, v2.
URL   : https://patchwork.freedesktop.org/series/75423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238_full -> Patchwork_17184_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17184_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17184_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17184_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close@many-handles-one-vma:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk5/igt@gem_close@many-handles-one-vma.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-glk8/igt@gem_close@many-handles-one-vma.html
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl6/igt@gem_close@many-handles-one-vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl6/igt@gem_close@many-handles-one-vma.html
    - shard-tglb:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb3/igt@gem_close@many-handles-one-vma.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-tglb1/igt@gem_close@many-handles-one-vma.html
    - shard-kbl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl6/igt@gem_close@many-handles-one-vma.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@gem_close@many-handles-one-vma.html
    - shard-hsw:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw8/igt@gem_close@many-handles-one-vma.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw2/igt@gem_close@many-handles-one-vma.html
    - shard-snb:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb4/igt@gem_close@many-handles-one-vma.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-snb5/igt@gem_close@many-handles-one-vma.html
    - shard-iclb:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb5/igt@gem_close@many-handles-one-vma.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb6/igt@gem_close@many-handles-one-vma.html

  * igt@gem_exec_balancer@bonded-imm:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb6/igt@gem_exec_balancer@bonded-imm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb1/igt@gem_exec_balancer@bonded-imm.html

  * igt@gem_exec_balancer@full-late:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] +12 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb8/igt@gem_exec_balancer@full-late.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-tglb1/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@smoke:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] +11 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@gem_exec_balancer@smoke.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@gem_exec_balancer@smoke.html

  * igt@gem_media_fill:
    - shard-hsw:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw6/igt@gem_media_fill.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw4/igt@gem_media_fill.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-skl:          [PASS][23] -> [FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl9/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_render_copy@linear:
    - shard-hsw:          [PASS][25] -> [DMESG-WARN][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw2/igt@gem_render_copy@linear.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw1/igt@gem_render_copy@linear.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl6/igt@i915_selftest@live@gem_contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@i915_selftest@live@gem_contexts.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb4/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb1/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb2/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb1/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb1/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][34] ([i915#478]) -> ([FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43]) ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw4/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw6/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw2/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw1/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw1/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw4/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw1/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw4/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw2/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw4/igt@runner@aborted.html
    - shard-kbl:          [FAIL][44] ([i915#1423] / [i915#92]) -> ([FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55], [FAIL][56], [FAIL][57], [FAIL][58]) ([i915#656])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl4/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl4/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl6/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl4/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl2/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl3/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl4/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl1/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl1/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl6/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl1/igt@gem_exec_reloc@basic-parallel.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl1/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb6/igt@gem_exec_reloc@basic-parallel.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-tglb7/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl8/igt@gem_exec_reloc@basic-parallel.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl10/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@gem_exec_reloc@basic-parallel.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl2/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb6/igt@gem_exec_reloc@basic-parallel.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb4/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_17184_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [PASS][69] -> [INCOMPLETE][70] ([i915#1402])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#1402])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl4/igt@gem_ctx_persistence@close-replace-race.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [PASS][73] -> [INCOMPLETE][74] ([i915#1402] / [i915#58] / [k.org#198133])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-kbl:          [PASS][75] -> [INCOMPLETE][76] ([i915#1212])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl4/igt@gem_exec_balancer@hang.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@gem_exec_balancer@hang.html

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [PASS][77] -> [INCOMPLETE][78] ([i915#1505] / [i915#1581])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@i915_selftest@live@requests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb8/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#54])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-glk1/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-hsw:          [PASS][83] -> [INCOMPLETE][84] ([i915#61]) +19 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-hsw2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#34]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1188])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][89] -> [FAIL][90] ([fdo#108145] / [i915#265])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-apl:          [PASS][91] -> [FAIL][92] ([i915#1559] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl4/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][93] -> [SKIP][94] ([fdo#109441]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@before-bsd2:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109276])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@prime_busy@before-bsd2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb7/igt@prime_busy@before-bsd2.html

  
#### Possible fixes ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [FAIL][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@gem_tiled_swapping@non-threaded.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl4/igt@gem_tiled_swapping@non-threaded.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-snb:          [DMESG-WARN][99] ([i915#478]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][103] ([fdo#109349]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][105] ([i915#79]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][107] ([i915#34]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][109] ([i915#221]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][111] ([i915#1188]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl2/igt@kms_hdr@bpc-switch.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][115] ([fdo#108145] / [i915#265]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][119] ([i915#31]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl4/igt@kms_setmode@basic.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl7/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][121] ([fdo#109276]) -> [PASS][122] +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         [SKIP][123] ([i915#1316]) -> [SKIP][124] ([i915#1316] / [i915#579]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-iclb6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][125] ([i915#82]) -> [SKIP][126] ([fdo#109271]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-snb2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][127] ([i915#1423]) -> ([FAIL][128], [FAIL][129]) ([i915#1402] / [i915#1423])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1212]: https://gitlab.freedesktop.org/drm/intel/issues/1212
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17184

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17184: b49bed04801613c64e1ac2f808f2c1c67c365b7c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17184/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
