Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400C54D578
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 01:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DA61139CE;
	Wed, 15 Jun 2022 23:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D65B1139CD;
 Wed, 15 Jun 2022 23:45:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04EA1AADD3;
 Wed, 15 Jun 2022 23:45:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5299859960698533412=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Wed, 15 Jun 2022 23:45:52 -0000
Message-ID: <165533675297.14600.16748320110771719587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655306128.git.mchehab@kernel.org>
In-Reply-To: <cover.1655306128.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell?=
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

--===============5299859960698533412==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix TLB invalidate issues with Broadwell
URL   : https://patchwork.freedesktop.org/series/105167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11761_full -> Patchwork_105167v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105167v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105167v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105167v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_alpha_blend@pipe-d-alpha-basic:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb3/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb8/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html

  * igt@perf@non-zero-reason:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-skl2/igt@perf@non-zero-reason.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl3/igt@perf@non-zero-reason.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ccs@suspend-resume:
    - {shard-rkl}:        [SKIP][5] ([i915#5325]) -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@gem_ccs@suspend-resume.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - {shard-rkl}:        NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gen9_exec_parse@bb-oversize:
    - {shard-rkl}:        [SKIP][8] ([i915#2527]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [PASS][10] -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@perf@gen12-mi-rpc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@perf@gen12-mi-rpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_105167v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36]) ([i915#4392]) -> ([PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk8/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk8/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk9/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk9/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111827])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@feature_discovery@chamelium.html

  * igt@feature_discovery@display-2x:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#1839])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@feature_discovery@display-2x.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([i915#4525])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][66] ([i915#6141])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][67] ([i915#6141])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_params@no-vebox:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109283] / [i915#4877])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_exec_params@no-vebox.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2190])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#4613]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][79] ([i915#2658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#4270])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109312])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#110542])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3323])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@huge-split:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#3376])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-skl6/igt@gem_userptr_blits@huge-split.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl2/igt@gem_userptr_blits@huge-split.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3297])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][87] ([i915#3318])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109289]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2856])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#2527] / [i915#2856]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@load:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#6227])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@i915_module_load@load.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#658])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][93] -> [FAIL][94] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][95] ([i915#454])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][96] ([i915#1886])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#5903])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][98] -> [INCOMPLETE][99] ([i915#3614] / [i915#4817])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-kbl1/igt@i915_suspend@forcewake.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#5286]) +5 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#110725] / [fdo#111614])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#111614]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#3743]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3886]) +8 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#111615] / [i915#3689]) +6 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#3886]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#3689] / [i915#3886]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109278]) +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#3689]) +8 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#6095]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109278] / [i915#1149])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109284] / [fdo#111827])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-glk:          NOTRUN -> [SKIP][115] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109284] / [fdo#111827]) +12 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#1063])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#3359]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#3319])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109279] / [i915#3359]) +3 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#109274] / [fdo#111825]) +6 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +214 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#533]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#4103])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#5287])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#5287]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][127] -> [FAIL][128] ([i915#79])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109274])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
    - shard-skl:          [PASS][130] -> [FAIL][131] ([i915#2122])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-skl1/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          NOTRUN -> [FAIL][132] ([i915#2122])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][133] -> [SKIP][134] ([i915#3701])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][135] -> [FAIL][136] ([i915#4911]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109280]) +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109280] / [fdo#111825]) +21 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][139] -> [FAIL][140] ([i915#1188])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#3555])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][142] -> [DMESG-WARN][143] ([i915#180]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][144] ([fdo#108145] / [i915#265]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271]) +49 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#5288])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-4.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([fdo#111615]) +4 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#5176]) +7 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271]) +78 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#111068] / [i915#658])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#658]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#658])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#1911]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][154] -> [SKIP][155] ([fdo#109441]) +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         NOTRUN -> [FAIL][156] ([i915#132] / [i915#3467]) +2 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][157] ([IGT#2])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@flipline:
    - shard-tglb:         NOTRUN -> [SKIP][158] ([i915#3555]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_vrr@flipline.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][159] ([i915#2530]) +3 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][160] ([i915#2530])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@prime_nv_api@i915_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([fdo#109291]) +5 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@prime_nv_api@i915_self_import.html

  * igt@prime_vgem@coherency-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][162] ([fdo#109295] / [fdo#111656])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@prime_vgem@coherency-gtt.html

  * igt@sw_sync@sync_merge_same:
    - shard-tglb:         NOTRUN -> [FAIL][163] ([i915#6140])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@sw_sync@sync_merge_same.html

  * igt@sw_sync@sync_multi_timeline_wait:
    - shard-skl:          NOTRUN -> [FAIL][164] ([i915#6140])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@sw_sync@sync_multi_timeline_wait.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#2994]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#2994])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([i915#2994]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][168] ([i915#180]) -> [PASS][169] +2 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][170] ([i915#2842]) -> [PASS][171] +4 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][172] ([i915#2842]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-rkl}:        [FAIL][174] ([i915#2842]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][176] ([i915#2842]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - {shard-rkl}:        [SKIP][178] ([i915#3281]) -> [PASS][179] +4 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-tglb:         [INCOMPLETE][180] -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb6/igt@gem_exec_whisper@basic-fds-priority-all.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][182] ([i915#2190]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][184] ([i915#3282]) -> [PASS][185] +3 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@batch-without-end:
    - {shard-rkl}:        [SKIP][186] ([i915#2527]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][188] -> [PASS][189] +2 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_backlight@basic-brightness:
    - {shard-rkl}:        [SKIP][190] ([i915#3012]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [SKIP][192] ([i915#3361]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@fences:
    - {shard-rkl}:        [SKIP][194] ([i915#1849]) -> [PASS][195] +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@i915_pm_rpm@fences.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-iclb:         [INCOMPLETE][196] ([i915#5096] / [i915#5420]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@i915_pm_rpm@modeset-lpsp-stress.html
    - {shard-rkl}:        [SKIP][198] ([i915#1397]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rps@waitboost:
    - {shard-rkl}:        [FAIL][200] ([i915#4016]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@i915_pm_rps@waitboost.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [DMESG-WARN][202] ([i915#5591]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb8/igt@i915_selftest@live@hangcheck.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@pipe-b-degamma:
    - {shard-rkl}:        [SKIP][204] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_color@pipe-b-degamma.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_color@pipe-b-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - {shard-rkl}:        [SKIP][206] ([fdo#112022] / [i915#4070]) -> [PASS][207] +5 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - {shard-rkl}:        [SKIP][208] ([fdo#111825] / [i915#4070]) -> [PASS][209] +4 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@pipe-c-single-move:
    - {shard-rkl}:        [SKIP][210] ([i915#4070]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-single-move.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - {shard-rkl}:        [SKIP][212] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][213] +3 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][214] ([i915#79]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][216] ([i915#3701]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - {shard-rkl}:        [SKIP][218] ([i915#1849] / [i915#4098]) -> [PASS][219] +13 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_invalid_mode@uint-max-clock:
    - {shard-rkl}:        [SKIP][220] ([i915#4278]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_invalid_mode@uint-max-clock.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane@plane-panning-top-left@pipe-b-planes:
    - {shard-rkl}:        [SKIP][222] ([i915#3558]) -> [PASS][223] +1 similar issue
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - {shard-rkl}:        [SKIP][224] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][226] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][228] ([i915#5235]) -> [PASS][229] +2 similar issues
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@cursor_blt:
    - {shard-rkl}:        [SKIP][230] ([i915#1072]) -> [PASS][231] +1 similar issue
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@kms_psr@cursor_blt.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][232] ([fdo#109441]) -> [PASS][233] +1 similar issue
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][234] ([i915#5519]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-iclb:         [SKIP][236] ([i915#5519]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - {shard-rkl}:        [SKIP][238] ([i915#1845] / [i915#4098]) -> [PASS][239] +16 similar issues
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - {shard-rkl}:        [FAIL][240] ([i915#5639]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-rkl-2/igt@perf@polling-parameterized.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][242] ([i915#3063]) -> [FAIL][243] ([i915#5784])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][244] ([i915#2842]) -> [FAIL][245] ([i915#2852])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][246] ([i915#658]) -> [SKIP][247] ([i915#588])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - shard-skl:          [SKIP][248] ([fdo#109271] / [i915#1888]) -> [SKIP][249] ([fdo#109271])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-skl10/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-skl6/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][250] ([i915#2920]) -> [SKIP][251] ([i915#658])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][252] ([i915#2920]) -> [SKIP][253] ([fdo#111068] / [i915#658])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][254] ([fdo#111068] / [i915#658]) -> [SKIP][255] ([i915#2920])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265]) ([i915#3002] / [i915#4312] / [i915#5257])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl3/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl6/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl4/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl4/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl3/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl2/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl1/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl8/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl4/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#5096]: https://gitlab.freedesktop.org/drm/intel/issues/5096
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11761 -> Patchwork_105167v1

  CI-20190529: 20190529
  CI_DRM_11761: ec90bfe7e13f9a75f02b7f409c8f23911e551b9f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6529: b96bf5a0307fc0bdbf6c8e86872817306e102883 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105167v1: ec90bfe7e13f9a75f02b7f409c8f23911e551b9f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/index.html

--===============5299859960698533412==
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
<tr><td><b>Series:</b></td><td>Fix TLB invalidate issues with Broadwell</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105167/">https://patchwork.freedesktop.org/series/105167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11761_full -&gt; Patchwork_105167v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105167v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105167v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105167v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-basic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb3/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v1/shard-tglb8/igt@kms_plane_alpha_blend@pipe-d-alpha-basic.html"=
>INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-skl2/igt@perf@non-zero-reason.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-sk=
l3/igt@perf@non-zero-reason.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5325">i915#5325</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1=
/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
167v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@perf@gen12-mi-rpc.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-=
5/igt@perf@gen12-mi-rpc.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105167v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11761/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11761/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11761/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11761/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk1/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11761/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11761/shard-glk1/boot.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11761/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1761/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11761/shard-glk4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-glk3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11761/shard-glk2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-g=
lk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v1/shard-glk3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105167v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105167v1/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105167v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v1/shard-glk6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk=
8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105167v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk8/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105167v1/shard-glk9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-glk9/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@feature_discovery@chameliu=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@feature_discovery@display-=
2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6141">i915#6141</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v1/shard-apl2/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6141">i915#6141</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
1/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
1/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_exec_params@no-vebox.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9283">fdo#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4877">i915#4877</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110542">fdo#110542</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-skl6/igt@gem_userptr_blits@huge-split.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/=
shard-skl2/igt@gem_userptr_blits@huge-split.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3376">i915#3376</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@gen9_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-ic=
lb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl1/igt@i915_pm_dc@dc6-psr.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl9/igt@i915_selftest@live@gt_pm.ht=
ml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@i915_suspend@basic-s3-with=
out-i915.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5903">i915#5903</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-=
kbl4/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3614">i915#3614</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_big_fb@linear-8bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +8 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-str=
ide-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_chamelium@dp-crc-fast.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl10/igt@kms_chamelium@hdmi-crc-fas=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_color@pipe-d-ctm-negat=
ive.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_color_chamelium@pipe-a=
-ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_color_chamelium@pipe-b-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_color_chamelium@pipe-b=
-degamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1063">i915#1063</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_cursor_crc@pipe-a-curs=
or-max-size-onscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3359">i915#3359</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_cursor_crc@pipe-c-curs=
or-32x32-rapid-movement.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3319">i915#3319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_cursor_crc@pipe-d-curs=
or-512x512-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3359">i915#3359</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_cursor_legacy@cursorb-v=
s-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +214 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@kms_cursor_legacy@pipe-d-to=
rture-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_draw_crc@draw-method-r=
gb565-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105167v1/shard-glk7/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-skl1/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105167v1/shard-skl3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105167v1/shard-glk8/igt@kms_flip_scaled_crc@flip=
-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4911">i915#4911</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +21 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v1/shard-apl4/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_plane_alpha_blend@pipe-=
d-alpha-opaque-fb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb3/igt@kms_plane_multiple@atomic-=
pipe-b-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5288">i915#5288</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_plane_multiple@atomic-=
pipe-b-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111615">fdo#111615</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
d-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-d-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-=
dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_plane_scaling@planes-up=
scale-20x20-downscale-factor-0-75@pipe-c-dp-1.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +78 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl9/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1911">i915#1911</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1=
/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb5/igt@kms_psr@psr2_suspend.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">=
i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
467">i915#3467</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-apl7/igt@kms_sysfs_edid_timing.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issu=
es/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_vrr@flipline.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@nouveau_crc@pipe-a-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-iclb1/igt@nouveau_crc@pipe-c-ctx-fli=
p-detection.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb2/igt@prime_nv_api@i915_self_imp=
ort.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9295">fdo#109295</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@sw_sync@sync_merge_same.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/61=
40">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_multi_timeline_wait:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl7/igt@sw_sync@sync_multi_timeline=
_wait.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6140">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-skl4/igt@sysfs_clients@busy.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-glk6/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v1/shard-tglb1/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105167v1/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v1/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v1/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105167v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105167v1/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105167v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html">PAS=
S</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb6/igt@gem_exec_whisper@basic-fds-priority-all.html"=
>INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105167v1/shard-tglb1/igt@gem_exec_whisper@basic-fds-priority-all.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/=
shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105167v1/shard-rkl-5/igt@gem_partial_pwrite_pread@wri=
tes-after-reads-uncached.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#=
2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v1/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v1/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html">PASS<=
/a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915=
#3012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/=
shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@i915_pm_rpm@fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/sha=
rd-rkl-6/igt@i915_pm_rpm@fences.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11761/shard-iclb4/igt@i915_pm_rpm@modeset-lpsp-stress.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5096">i9=
15#5096</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
20">i915#5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v1/shard-iclb1/igt@i915_pm_rpm@modeset-lpsp-stress.html">=
PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11761/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#139=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105167v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@i915_pm_rps@waitboost.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4016">i915#4016</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/=
shard-rkl-5/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915=
#5591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_color@pipe-b-degamma.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v1/shard-rkl-6/igt@kms_color@pipe-b-degamma.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor=
-128x42-onscreen.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825=
">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-=
toggle.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-single-move.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105167v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-move.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-unti=
led.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-mmap-gtt-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105167v1/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_flip_scale=
d_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">PASS</a> +13 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#42=
78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_plane@plane-panning-top-left@pipe-b-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left@p=
ipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-=
alpha-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-iclb8/igt@kms_plan=
e_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@kms_psr@cursor_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/sha=
rd-rkl-6/igt@kms_psr@cursor_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10516=
7v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11761/shard-tglb6/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v1/shard-tglb1/igt@kms_psr_stress_test@flip-prima=
ry-invalidate-overlay.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11761/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v1/shard-iclb2/igt@kms_psr_stress_test@flip-prima=
ry-invalidate-overlay.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105167v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continu=
ation-dpms-suspend.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-rkl-2/igt@perf@polling-parameterized.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1051=
67v1/shard-rkl-5/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10516=
7v1/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v1/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-skl10/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v1/shard-skl6/igt@kms_big_fb@x-tiled-addfb-siz=
e-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v1/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105167v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11761/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105167v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11761/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11761/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11761/shard-apl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11761/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105167v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v1/shard-apl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105167v1/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#43=
12</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i=
915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11761 -&gt; Patchwork_105167v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11761: ec90bfe7e13f9a75f02b7f409c8f23911e551b9f @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6529: b96bf5a0307fc0bdbf6c8e86872817306e102883 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105167v1: ec90bfe7e13f9a75f02b7f409c8f23911e551b9f @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5299859960698533412==--
