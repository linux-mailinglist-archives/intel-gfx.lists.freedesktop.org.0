Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11309812588
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 03:53:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE7010E872;
	Thu, 14 Dec 2023 02:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F24710E872;
 Thu, 14 Dec 2023 02:53:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46E9DA02F0;
 Thu, 14 Dec 2023 02:53:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7719777125098793558=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915/mtl=3A_Fix_HDMI/DP?=
 =?utf-8?q?_PLL_clock_selection?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 14 Dec 2023 02:53:34 -0000
Message-ID: <170252241427.19957.13137425823415924593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213220526.1828827-1-imre.deak@intel.com>
In-Reply-To: <20231213220526.1828827-1-imre.deak@intel.com>
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

--===============7719777125098793558==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Fix HDMI/DP PLL clock selection
URL   : https://patchwork.freedesktop.org/series/127777/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14017_full -> Patchwork_127777v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 8)
------------------------------

  Additional (1): shard-glk-0 

New tests
---------

  New tests have been introduced between CI_DRM_14017_full and Patchwork_127777v1_full:

### New IGT tests (75) ###

  * igt@api_intel_bb@delta-check:
    - Statuses :
    - Exec time: [None] s

  * igt@debugfs_test@sysfs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

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
    - Exec time: [12.48, 18.83] s

  * igt@gem_exec_balancer@parallel:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@parallel-balancer:
    - Statuses : 1 abort(s) 1 skip(s)
    - Exec time: [0.0, 0.58] s

  * igt@gem_exec_balancer@parallel-bb-first:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_balancer@parallel-contexts:
    - Statuses : 1 abort(s) 1 skip(s)
    - Exec time: [0.0, 5.11] s

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
    - Exec time: [16.08, 20.05] s

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
    - Exec time: [0.0, 8.81] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 10.55] s

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@flink-race:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@hang-busy:
    - Statuses : 3 pass(s) 2 skip(s)
    - Exec time: [0.0, 28.64] s

  * igt@gem_mmap_gtt@hang-user:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 1.30] s

  * igt@gem_mmap_gtt@isolation:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_pread@exhaustion:
    - Statuses : 4 skip(s) 3 warn(s)
    - Exec time: [0.0, 22.28] s

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
    - Statuses : 6 fail(s)
    - Exec time: [6.11, 20.15] s

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
    - Exec time: [0.14, 3.54] s

  * igt@kms_content_protection@type1:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_content_protection@uevent:
    - Statuses : 7 skip(s)
    - Exec time: [0.15, 3.53] s

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
    - Exec time: [0.00] s

  * igt@sysfs_defaults@readonly@rcs0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@sysfs_defaults@readonly@vcs0:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_127777v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@full:
    - shard-rkl:          NOTRUN -> [ABORT][51] ([i915#9855] / [i915#9856])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-dg1:          NOTRUN -> [ABORT][52] ([i915#9855])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg1-13/igt@gem_exec_balancer@nohangcheck.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][55] -> [ABORT][56] ([i915#7975] / [i915#8213])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][57] ([i915#6755] / [i915#9857])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4083])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3282]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8428])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4077]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@vma-merge (NEW):
    - shard-tglu:         NOTRUN -> [FAIL][62] ([i915#3318])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][63] ([i915#9858]) +1 other test incomplete
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-8/igt@i915_pm_rc6_residency@rc6-fence@gt1.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          NOTRUN -> [INCOMPLETE][64] ([i915#9858])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][65] ([i915#9858])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][66] ([i915#9858])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][67] ([i915#9858])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][68] -> [FAIL][69] ([i915#3743])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([fdo#111615])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#5190])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([fdo#111615])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#5354] / [i915#6095]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#5354] / [i915#6095])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3555] / [i915#8814]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#109274] / [i915#5354])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#3840] / [i915#9688])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#2672])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#1825]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-snb:          [PASS][80] -> [SKIP][81] ([fdo#109271]) +6 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#8708])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([fdo#110189])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3555] / [i915#8228])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3555] / [i915#8228])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#9423]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#5235]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#3555] / [i915#5235])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#5235]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#5235]) +11 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#5235]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@perf@blocking-parameterized:
    - shard-rkl:          NOTRUN -> [ABORT][92] ([i915#9847]) +1 other test abort
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@perf@blocking-parameterized.html

  * igt@perf@polling-parameterized:
    - shard-mtlp:         NOTRUN -> [ABORT][93] ([i915#9847]) +1 other test abort
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@perf@polling-parameterized.html

  * igt@perf_pmu:
    - shard-snb:          NOTRUN -> [INCOMPLETE][94] ([i915#2295] / [i915#9853])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb5/igt@perf_pmu.html

  * igt@perf_pmu@faulting-read:
    - shard-glk:          NOTRUN -> [INCOMPLETE][95] ([i915#9853])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk8/igt@perf_pmu@faulting-read.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#2575]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@vc4/vc4_purgeable_bo@free-purged-bo:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7711])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@vc4/vc4_purgeable_bo@free-purged-bo.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-mtlp:         [ABORT][98] ([i915#9857]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-2/igt@gem_exec_whisper@basic-normal-all.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-mtlp-8/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-tglu:         [INCOMPLETE][100] -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][102] ([i915#3743]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          [SKIP][104] ([fdo#109271] / [fdo#111767]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][106] ([i915#2346]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][108] ([fdo#109271]) -> [PASS][109] +3 other tests pass
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full-late:
    - shard-rkl:          [INCOMPLETE][110] ([i915#9856]) -> [ABORT][111] ([i915#9855] / [i915#9856])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/igt@gem_exec_balancer@full-late.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@gem_exec_balancer@full-late.html
    - shard-glk:          [INCOMPLETE][112] ([i915#9856]) -> [ABORT][113] ([i915#9855] / [i915#9856])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/igt@gem_exec_balancer@full-late.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [ABORT][114] ([i915#9855] / [i915#9857]) -> [INCOMPLETE][115] ([i915#9857])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk9/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [INCOMPLETE][116] ([i915#9857]) -> [ABORT][117] ([i915#9857]) +1 other test abort
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk5/igt@gem_exec_whisper@basic-normal-all.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-rkl:          [INCOMPLETE][118] ([i915#9847] / [i915#9858]) -> [INCOMPLETE][119] ([i915#9858])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-rkl:          [INCOMPLETE][120] ([i915#9858]) -> [ABORT][121] ([i915#9855] / [i915#9858])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rps@fence-order:
    - shard-rkl:          [INCOMPLETE][122] -> [INCOMPLETE][123] ([i915#9847])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-7/igt@i915_pm_rps@fence-order.html
    - shard-snb:          [INCOMPLETE][124] -> [INCOMPLETE][125] ([i915#9847])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb5/igt@i915_pm_rps@fence-order.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][126] ([i915#9433]) -> [SKIP][127] ([i915#9424])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg1-15/igt@kms_content_protection@mei-interface.html
    - shard-snb:          [INCOMPLETE][128] -> [SKIP][129] ([fdo#109271])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb4/igt@kms_content_protection@mei-interface.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-rkl:          [INCOMPLETE][130] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][131] ([i915#9853])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-4/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy@rcs0:
    - shard-dg1:          [ABORT][132] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][133] ([i915#9853])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-dg1-12/igt@perf_pmu@busy@rcs0.html

  * igt@perf_pmu@interrupts:
    - shard-rkl:          [ABORT][134] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][135] ([i915#9853])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-rkl-7/igt@perf_pmu@interrupts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
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
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
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

  * Linux: CI_DRM_14017 -> Patchwork_127777v1

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127777v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/index.html

--===============7719777125098793558==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Fix HDMI/DP PLL clock selectio=
n</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127777/">https://patchwork.freedesktop.org/series/127777/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127777v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017_full -&gt; Patchwork_127777v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 8)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14017_full and Patchwork_1=
27777v1_full:</p>
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
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
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
<li>Exec time: [12.48, 18.83] s</li>
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
<li>Exec time: [0.0, 0.58] s</li>
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
<li>Statuses : 1 abort(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.11] s</li>
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
<li>Exec time: [16.08, 20.05] s</li>
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
<li>Exec time: [0.0, 8.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 10.55] s</li>
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
<li>Statuses : 3 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 28.64] s</li>
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
<li>Exec time: [0.0, 22.28] s</li>
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
<li>Statuses : 6 fail(s)</li>
<li>Exec time: [6.11, 20.15] s</li>
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
<li>Exec time: [0.14, 3.54] s</li>
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
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.15, 3.53] s</li>
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
<li>Exec time: [0.00] s</li>
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
<li>Exec time: [0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127777v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14017/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14017/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14017/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14017/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14017/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14017/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14017/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4017/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14017/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14017/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
777v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127777v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127777v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127777v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7777v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127777v1/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127777v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127777v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7777v1/shard-glk6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127777v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127777v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127777v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@gem_exec_balancer@full.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/98=
55">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg1-13/igt@gem_exec_balancer@nohangc=
heck.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9855">i915#9855</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27777v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127777v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@gem_exec_whisper@basic-c=
ontexts.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/328=
2">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@gem_tiled_partial_pwrite_=
pread@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge (NEW):</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@gem_userptr_blits@vma-me=
rge.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-8/igt@i915_pm_rc6_residency@rc6=
-fence@gt1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9858">i915#9858</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/shard-glk7/igt@i915_pm_rc6_residency@rc6-id=
le.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@i915_pm_rc6_residency@rc6-=
idle.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-=
idle.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/shard-snb4/igt@i915_pm_rc6_residency@rc6-id=
le.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9858">i915#9858</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127777v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-=
hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_ccs@pipe-c-crc-prima=
ry-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipa-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-8/igt@kms_dsc@dsc-fractional-bp=
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
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
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
7777v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-tglu-10/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg2-6/igt@kms_hdr@static-toggle-dpms=
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
/tree/drm-tip/Patchwork_127777v1/shard-rkl-6/igt@kms_plane_scaling@plane-do=
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
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-rkl-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) =
+11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg1-15/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-rkl-5/igt@perf@blocking-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@perf@polling-parameterize=
d.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-snb5/igt@perf_pmu.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2=
295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">=
i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-glk8/igt@perf_pmu@faulting-read.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-mtlp-7/igt@v3d/v3d_perfmon@get-value=
s-invalid-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@free-purged-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127777v1/shard-dg2-11/igt@vc4/vc4_purgeable_bo@free=
-purged-bo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-mtlp-2/igt@gem_exec_whisper@basic-normal-all.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i91=
5#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127777v1/shard-mtlp-8/igt@gem_exec_whisper@basic-normal-all.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sm=
em0.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127777v1/shard-tglu-10/igt@i915_pm_rpm@gem-execbuf-stress=
@extra-wait-smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rota=
te-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-tglu-3/igt@kms_big_fb@y-=
tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127777v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-fl=
ipb-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-glk3/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127777v1/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-primscrn-cur-indfb-draw-render.html">PASS</a> +3 other tests =
pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-4/igt@gem_exec_balancer@full-late.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9=
856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127777v1/shard-rkl-5/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#98=
56</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-glk6/igt@gem_exec_balancer@full-late.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#98=
56</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127777v1/shard-glk1/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856=
</a>)</p>
</li>
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
work_127777v1/shard-glk9/igt@gem_exec_whisper@basic-normal.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i915=
#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-glk5/igt@gem_exec_whisper@basic-normal-all.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">=
i915#9857</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127777v1/shard-glk1/igt@gem_exec_whisper@basic-normal-all.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9857">i9=
15#9857</a>) +1 other test abort</li>
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
rm-tip/Patchwork_127777v1/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-fence@g=
t0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9858">i915#9858</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127777v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-=
rcs0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9855">i915#9855</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fence-order:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-rkl-1/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1=
/shard-rkl-7/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb6/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127777v1/=
shard-snb5/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href=3D"htt=
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
hwork_127777v1/shard-dg1-15/igt@kms_content_protection@mei-interface.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9424">=
i915#9424</a>)</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127777v1/shard-snb4/igt@kms_content_protection@mei-interface.html">SKIP=
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
Patchwork_127777v1/shard-rkl-4/igt@perf_pmu@busy-check-all@rcs0.html">INCOM=
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
777v1/shard-dg1-12/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
777v1/shard-rkl-7/igt@perf_pmu@interrupts.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127777v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127777v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7719777125098793558==--
