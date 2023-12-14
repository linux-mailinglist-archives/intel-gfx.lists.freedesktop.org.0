Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B58812618
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 04:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057B010E28F;
	Thu, 14 Dec 2023 03:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A626B10E28F;
 Thu, 14 Dec 2023 03:51:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FAACAADF6;
 Thu, 14 Dec 2023 03:51:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7229451591103954795=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_starting_with_=5B1/3?=
 =?utf-8?q?=5D_drm/i915=3A_Allow_the_initial_async_flip_to_change_modifier_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 Dec 2023 03:51:55 -0000
Message-ID: <170252591562.19958.6064274508221453293@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
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

--===============7229451591103954795==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Allow the initial async flip to change modifier (rev2)
URL   : https://patchwork.freedesktop.org/series/127754/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14017_full -> Patchwork_127754v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127754v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127754v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/index.html

Participating hosts (7 -> 8)
------------------------------

  Additional (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127754v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_content_protection@uevent (NEW):
    - shard-snb:          [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb5/igt@kms_content_protection@uevent.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-snb7/igt@kms_content_protection@uevent.html

  
#### Warnings ####

  * igt@i915_pm_rps@fence-order:
    - shard-dg1:          [ABORT][3] ([i915#9855]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-15/igt@i915_pm_rps@fence-order.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14017_full and Patchwork_127754v2_full:

### New IGT tests (75) ###

  * igt@api_intel_bb@delta-check:
    - Statuses :
    - Exec time: [None] s

  * igt@debugfs_test@sysfs:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.12] s

  * igt@fbdev@eof:
    - Statuses :
    - Exec time: [None] s

  * igt@fbdev@nullptr:
    - Statuses :
    - Exec time: [None] s

  * igt@fbdev@read:
    - Statuses :
    - Exec time: [None] s

  * igt@fbdev@unaligned-read:
    - Statuses :
    - Exec time: [None] s

  * igt@fbdev@unaligned-write:
    - Statuses :
    - Exec time: [None] s

  * igt@fbdev@write:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_exec@basic-close-race:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_exec@basic-nohangcheck:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@file:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@idempotent:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@process:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@processes:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_persistence@smoketest:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_eio@kms:
    - Statuses : 1 fail(s) 6 pass(s)
    - Exec time: [12.51, 19.99] s

  * igt@gem_exec_balancer@parallel:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-balancer:
    - Statuses : 1 abort(s) 1 skip(s)
    - Exec time: [0.0, 0.57] s

  * igt@gem_exec_balancer@parallel-bb-first:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_balancer@parallel-contexts:
    - Statuses : 1 abort(s)
    - Exec time: [5.10] s

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-ordering:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-out-fence:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_suspend@basic-s0:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@basic:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@basic@lmem0:
    - Statuses : 2 pass(s)
    - Exec time: [16.26, 19.81] s

  * igt@gem_lmem_swapping@heavy-multi:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@heavy-random:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@heavy-verify-random:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@parallel-multi:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@parallel-random:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@parallel-random-engines:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@parallel-random-verify:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@random:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@random-engines:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_lmem_swapping@smem-oom:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@verify:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@verify-random:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@close-race:
    - Statuses : 1 pass(s)
    - Exec time: [20.10] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 8.93] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 10.63] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@flink-race:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@hang-busy:
    - Statuses : 4 pass(s) 2 skip(s)
    - Exec time: [0.0, 28.35] s

  * igt@gem_mmap_gtt@hang-user:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 1.30] s

  * igt@gem_mmap_gtt@isolation:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_pread@exhaustion:
    - Statuses : 4 skip(s) 3 warn(s)
    - Exec time: [0.0, 21.87] s

  * igt@gem_pwrite@basic-exhaustion:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_pwrite@basic-self:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@huge-split:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@nohangcheck:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@stress-purge:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@vma-merge:
    - Statuses : 7 fail(s)
    - Exec time: [6.71, 20.30] s

  * igt@kms_big_joiner@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_big_joiner@invalid-modeset:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_content_protection@lic:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_content_protection@srm:
    - Statuses : 7 skip(s)
    - Exec time: [0.15, 3.52] s

  * igt@kms_content_protection@type1:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_content_protection@uevent:
    - Statuses : 1 incomplete(s) 6 skip(s)
    - Exec time: [0.0, 3.62] s

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_psr2_su@page_flip-nv12:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_psr2_su@page_flip-p010:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@sysfs_defaults@readonly@bcs0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_defaults@readonly@rcs0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_defaults@readonly@vcs0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_127754v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-rkl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-chain:
    - shard-dg1:          NOTRUN -> [ABORT][54] ([i915#9856])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-13/igt@gem_exec_balancer@bonded-chain.html

  * igt@gem_exec_balancer@full:
    - shard-rkl:          NOTRUN -> [ABORT][55] ([i915#9855] / [i915#9856])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/igt@gem_exec_balancer@full.html
    - shard-dg1:          NOTRUN -> [ABORT][56] ([i915#9855] / [i915#9856])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-13/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-glk:          NOTRUN -> [ABORT][57] ([i915#9855])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-glk1/igt@gem_exec_balancer@nohangcheck.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][58] ([i915#6755] / [i915#9857])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4083])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#3282]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8428])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4077]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@vma-merge (NEW):
    - shard-tglu:         NOTRUN -> [FAIL][63] ([i915#3318])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-snb:          NOTRUN -> [INCOMPLETE][64] ([i915#9858]) +1 other test incomplete
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-snb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          NOTRUN -> [INCOMPLETE][65] ([i915#9858])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-glk4/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][66] ([i915#9858])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([fdo#111615])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([fdo#111615])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#5354] / [i915#6095]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#5354] / [i915#6095])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#3555] / [i915#8814]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3840] / [i915#9688])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#2672])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#1825]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-snb:          [PASS][75] -> [SKIP][76] ([fdo#109271]) +6 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#8708])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][78] ([fdo#110189])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3555] / [i915#8228])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3555] / [i915#8228])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg2-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#9423]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#5235]) +2 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#5235]) +3 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3555] / [i915#5235])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#5235]) +3 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#5235]) +5 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][87] -> [SKIP][88] ([i915#9519])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-dg2:          NOTRUN -> [ABORT][89] ([i915#9847])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg2-3/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@gen12-mi-rpc@rcs0:
    - shard-rkl:          NOTRUN -> [ABORT][90] ([i915#9847]) +3 other tests abort
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/igt@perf@gen12-mi-rpc@rcs0.html

  * igt@perf@polling-parameterized:
    - shard-mtlp:         NOTRUN -> [ABORT][91] ([i915#9847]) +1 other test abort
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@perf@polling-parameterized.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#2575]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-mtlp:         [ABORT][95] ([i915#9857]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-2/igt@gem_exec_whisper@basic-normal-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-tglu:         [INCOMPLETE][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][99] ([i915#3743]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full-late:
    - shard-dg2:          [INCOMPLETE][101] ([i915#9856]) -> [ABORT][102] ([i915#9855] / [i915#9856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-1/igt@gem_exec_balancer@full-late.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg2-3/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@indices:
    - shard-rkl:          [INCOMPLETE][103] ([i915#9856]) -> [ABORT][104] ([i915#9856])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/igt@gem_exec_balancer@indices.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [INCOMPLETE][105] ([i915#9857]) -> [ABORT][106] ([i915#9855] / [i915#9857])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [ABORT][107] ([i915#9855] / [i915#9857]) -> [INCOMPLETE][108] ([i915#9857])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-glk8/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-rkl:          [INCOMPLETE][109] ([i915#9847] / [i915#9858]) -> [ABORT][110] ([i915#9855] / [i915#9858])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rps@fence-order:
    - shard-rkl:          [INCOMPLETE][111] -> [ABORT][112] ([i915#9855])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/igt@i915_pm_rps@fence-order.html
    - shard-snb:          [INCOMPLETE][113] -> [INCOMPLETE][114] ([i915#9847])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-snb7/igt@i915_pm_rps@fence-order.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][115] ([i915#9433]) -> [SKIP][116] ([i915#9424])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-16/igt@kms_content_protection@mei-interface.html
    - shard-snb:          [INCOMPLETE][117] -> [SKIP][118] ([fdo#109271])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-snb4/igt@kms_content_protection@mei-interface.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-rkl:          [INCOMPLETE][119] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][120] ([i915#9853])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy@rcs0:
    - shard-dg1:          [ABORT][121] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][122] ([i915#9853])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-dg1-16/igt@perf_pmu@busy@rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9855]: https://gitlab.freedesktop.org/drm/intel/issues/9855
  [i915#9856]: https://gitlab.freedesktop.org/drm/intel/issues/9856
  [i915#9857]: https://gitlab.freedesktop.org/drm/intel/issues/9857
  [i915#9858]: https://gitlab.freedesktop.org/drm/intel/issues/9858


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127754v2
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127754v2: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/index.html

--===============7229451591103954795==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Allow t=
he initial async flip to change modifier (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127754/">https://patchwork.freedesktop.org/series/127754/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127754v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017_full -&gt; Patchwork_127754v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127754v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_127754v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v=
2/index.html</p>
<h2>Participating hosts (7 -&gt; 8)</h2>
<p>Additional (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
127754v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_content_protection@uevent (NEW):<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb5/igt@kms_content_protection@uevent.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127754v2/shard-snb7/igt@kms_content_protection@uevent.html">INCOMPLETE</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rps@fence-order:<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12775=
4v2/shard-dg1-15/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14017_full and Patchwork_1=
27754v2_full:</p>
<h3>New IGT tests (75)</h3>
<ul>
<li>
<p>igt@api_intel_bb@delta-check:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@sysfs:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-close-race:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@processes:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s)</li>
<li>Exec time: [12.51, 19.99] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>Statuses : 1 abort(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>Statuses : 1 abort(s)</li>
<li>Exec time: [5.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [16.26, 19.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [20.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 8.93] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 10.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-busy:</p>
<ul>
<li>Statuses : 4 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 28.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang-user:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 1.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@isolation:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>Statuses : 4 skip(s) 3 warn(s)</li>
<li>Exec time: [0.0, 21.87] s</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@nohangcheck:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-purge:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>Statuses : 7 fail(s)</li>
<li>Exec time: [6.71, 20.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.15, 3.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>Statuses : 1 incomplete(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_defaults@readonly@bcs0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_defaults@readonly@rcs0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@sysfs_defaults@readonly@vcs0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127754v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14017/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_140=
17/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14017/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14017/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1401=
7/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14017/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/boot.html">PASS</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754=
v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/shard-rkl-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127754v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/sh=
ard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127754v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127754v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-r=
kl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127754v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
54v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127754v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2=
/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127754v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shar=
d-rkl-1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-dg1-13/igt@gem_exec_balancer@bonded-=
chain.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/shard-rkl-5/igt@gem_exec_balancer@full.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/985=
5">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/shard-dg1-13/igt@gem_exec_balancer@full.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
55">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-glk1/igt@gem_exec_balancer@nohangche=
ck.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@gem_exec_whisper@basic-co=
ntexts.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/328=
2">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@gem_tiled_partial_pwrite_=
pread@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge (NEW):</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@gem_userptr_blits@vma-mer=
ge.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-snb7/igt@i915_pm_rc6_residency@rc6-f=
ence.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9858">i915#9858</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/shard-glk4/igt@i915_pm_rc6_residency@rc6-id=
le.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127754v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-=
idle.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9858">i915#9858</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_ccs@pipe-c-crc-primar=
y-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7754v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-dg2-1/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-rkl-1/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27754v2/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519=
</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-dg2-3/igt@perf@gen12-group-exclusive=
-stream-ctx-handle.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-rkl-6/igt@perf@gen12-mi-rpc@rcs0.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
47">i915#9847</a>) +3 other tests abort</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@perf@polling-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127754v2/shard-mtlp-1/igt@v3d/v3d_perfmon@get-value=
s-invalid-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127754v2/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-mtlp-2/igt@gem_exec_whisper@basic-normal-all.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127754v2/shard-mtlp-1/igt@gem_exec_whisper@basic-normal-all.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sm=
em0.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127754v2/shard-tglu-4/igt@i915_pm_rpm@gem-execbuf-stress@=
extra-wait-smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rota=
te-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127754v2/shard-tglu-8/igt@kms_big_fb@y-=
tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg2-1/igt@gem_exec_balancer@full-late.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#=
9856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127754v2/shard-dg2-3/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9=
856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-2/igt@gem_exec_balancer@indices.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#98=
56</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127754v2/shard-rkl-5/igt@gem_exec_balancer@indices.html">ABORT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
857">i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127754v2/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127754v2/shard-glk8/igt@gem_exec_whisper@basic-normal.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i915=
#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/984=
7">i915#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9858">i915#9858</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127754v2/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-fence@g=
t0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fence-order:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2=
/shard-rkl-6/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127754v2/=
shard-snb7/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9433">i9=
15#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127754v2/shard-dg1-16/igt@kms_content_protection@mei-interface.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424">=
i915#9424</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127754v2/shard-snb4/igt@kms_content_protection@mei-interface.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915=
#9847</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853=
">i915#9853</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127754v2/shard-rkl-4/igt@perf_pmu@busy-check-all@rcs0.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853"=
>i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
754v2/shard-dg1-16/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127754v2</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127754v2: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7229451591103954795==--
