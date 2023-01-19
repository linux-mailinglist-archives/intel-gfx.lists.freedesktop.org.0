Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D367867333E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 09:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E9010E8D5;
	Thu, 19 Jan 2023 08:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03DE310E8D3;
 Thu, 19 Jan 2023 08:03:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE5E7AADE0;
 Thu, 19 Jan 2023 08:03:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8195375069890425759=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Thu, 19 Jan 2023 08:03:44 -0000
Message-ID: <167411542493.24700.9374201237646794816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev13=29?=
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

--===============8195375069890425759==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev13)
URL   : https://patchwork.freedesktop.org/series/105879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12596_full -> Patchwork_105879v13_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105879v13_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105879v13_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/index.html

Participating hosts (12 -> 10)
------------------------------

  Additional (1): shard-rkl0 
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v13_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@gem_exec3_balancer@parallel-ordering} (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-3/igt@gem_exec3_balancer@parallel-ordering.html
    - {shard-tglu}:       NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-8/igt@gem_exec3_balancer@parallel-ordering.html

  * igt@gem_ppgtt@shrink-vs-evict-any:
    - shard-glk:          [PASS][3] -> [TIMEOUT][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk2/igt@gem_ppgtt@shrink-vs-evict-any.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk6/igt@gem_ppgtt@shrink-vs-evict-any.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_create@hog-create@lmem0:
    - {shard-dg1}:        [FAIL][5] ([i915#7679]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-12/igt@gem_create@hog-create@lmem0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-19/igt@gem_create@hog-create@lmem0.html

  * igt@gem_create@hog-create@smem0:
    - {shard-rkl}:        [FAIL][7] ([i915#7679]) -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@gem_create@hog-create@smem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-4/igt@gem_create@hog-create@smem0.html

  * igt@gem_ppgtt@shrink-vs-evict-any:
    - {shard-dg1}:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-18/igt@gem_ppgtt@shrink-vs-evict-any.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-19/igt@gem_ppgtt@shrink-vs-evict-any.html

  * igt@i915_selftest@live@gem_contexts:
    - {shard-rkl}:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-1/igt@i915_selftest@live@gem_contexts.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12596_full and Patchwork_105879v13_full:

### New IGT tests (66) ###

  * igt@gem_exec3_balancer@parallel-ordering:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-smem:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@vm_bind:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@gem_lmem_swapping@vm_bind@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@gem_userptr_blits@vma-merge-execbuf3:
    - Statuses : 2 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m_sync_bind:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m_sync_bind@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@2m_sync_bind@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@64k:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_vm_bind_basic@basic:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_cmds:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_cmds@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_cmds@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_cmds@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_ctxts:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_ctxts@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_ctxts@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@multi_ctxts@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@share_vm:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@share_vm@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@share_vm@smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@share_vm@userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_copy:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_copy@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_copy@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_copy@userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_unbind:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_unbind@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_unbind@smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@skip_unbind@userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@bcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@bcs0-smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@bcs0-userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@rcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@rcs0-smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@rcs0-userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs0-smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs0-userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs1-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs1-smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vcs1-userptr:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vecs0-lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vecs0-smem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_capture@basic@vecs0-userptr:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@lmem0:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@smem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_105879v13_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#5507])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk7/igt@device_reset@unbind-reset-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk8/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_create@forked@smem:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk4/igt@gem_exec_create@forked@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk6/igt@gem_exec_create@forked@smem.html

  * {igt@i915_vm_bind_capture@basic} (NEW):
    - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271]) +13 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk4/igt@i915_vm_bind_capture@basic.html

  * igt@runner@aborted:
    - shard-glk:          NOTRUN -> [FAIL][18] ([i915#4312])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk8/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - {shard-rkl}:        [FAIL][19] ([i915#7742]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][21] ([i915#2582]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@fbdev@info.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_ctx_persistence@smoketest:
    - {shard-rkl}:        [FAIL][23] ([i915#5099]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-3/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - {shard-dg1}:        [FAIL][25] ([i915#5784]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-12/igt@gem_eio@unwedge-stress.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-12/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][27] ([i915#2842]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][29] ([fdo#109313]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - {shard-rkl}:        [SKIP][31] ([i915#3281]) -> [PASS][32] +9 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_readwrite@read-write:
    - {shard-rkl}:        [SKIP][33] ([i915#3282]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gem_readwrite@read-write.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_readwrite@read-write.html

  * igt@gen9_exec_parse@unaligned-access:
    - {shard-rkl}:        [SKIP][35] ([i915#2527]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - {shard-rkl}:        [SKIP][37] ([i915#4098]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-dg1}:        [SKIP][39] ([i915#1397]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-tglu}:       [SKIP][41] ([i915#3547]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@i915_pm_rpm@drm-resources-equal.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_suspend@basic-s3-without-i915:
    - {shard-rkl}:        [FAIL][43] ([fdo#103375]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_atomic@crtc-invalid-params-fence:
    - {shard-tglu}:       [SKIP][45] ([i915#7651]) -> [PASS][46] +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_atomic@crtc-invalid-params-fence.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-2/igt@kms_atomic@crtc-invalid-params-fence.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - {shard-rkl}:        [SKIP][47] ([i915#1845] / [i915#4098]) -> [PASS][48] +13 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-tglu}:       [SKIP][49] ([i915#1845] / [i915#7651]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][51] ([i915#72]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][53] ([i915#2346]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][55] ([i915#2122]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - {shard-rkl}:        [SKIP][57] ([i915#1849] / [i915#4098]) -> [PASS][58] +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
    - {shard-tglu}:       [SKIP][59] ([fdo#109274]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html

  * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
    - {shard-rkl}:        [SKIP][61] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][63] ([i915#2436]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-dg1}:        [FAIL][65] ([i915#4349]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-19/igt@perf_pmu@idle@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-16/igt@perf_pmu@idle@rcs0.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][67] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828


Build changes
-------------

  * IGT: IGT_7121 -> IGTPW_8357
  * Linux: CI_DRM_12596 -> Patchwork_105879v13
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12596: 0a0ee61784df01ac098a92bd43673ee30c629f13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8357: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8357/index.html
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v13: 0a0ee61784df01ac098a92bd43673ee30c629f13 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/index.html

--===============8195375069890425759==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev13)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12596_full -&gt; Patchwork_105879v13_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105879v13_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_105879v13_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/index.html</p>
<h2>Participating hosts (12 -&gt; 10)</h2>
<p>Additional (1): shard-rkl0 <br />
  Missing    (3): pig-skl-6260u pig-kbl-iris pig-glk-j5005 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v13_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@gem_exec3_balancer@parallel-ordering} (NEW):</p>
<ul>
<li>
<p>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-3/igt@gem_exec3_balancer@parallel-ordering.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-8/igt@gem_exec3_balancer@parallel-ordering.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@shrink-vs-evict-any:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk2/igt@gem_ppgtt@shrink-vs-evict-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk6/igt@gem_ppgtt@shrink-vs-evict-any.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_create@hog-create@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-12/igt@gem_create@hog-create@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7679">i915#7679</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-19/igt@gem_create@hog-create@lmem0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@gem_create@hog-create@smem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7679">i915#7679</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-4/igt@gem_create@hog-create@smem0.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@shrink-vs-evict-any:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-18/igt@gem_ppgtt@shrink-vs-evict-any.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-19/igt@gem_ppgtt@shrink-vs-evict-any.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12596_full and Patchwork_105879v13_full:</p>
<h3>New IGT tests (66)</h3>
<ul>
<li>
<p>igt@gem_exec3_balancer@parallel-ordering:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs1-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-smem:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@vm_bind:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@vm_bind@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge-execbuf3:</p>
<ul>
<li>Statuses : 2 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m_sync_bind:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m_sync_bind@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@2m_sync_bind@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@64k:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_cmds:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_cmds@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_cmds@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_cmds@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_ctxts:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_ctxts@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_ctxts@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@multi_ctxts@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@share_vm:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@share_vm@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@share_vm@smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@share_vm@userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_copy:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_copy@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_copy@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_copy@userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_unbind:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_unbind@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_unbind@smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@skip_unbind@userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@bcs0-smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@bcs0-userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@rcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@rcs0-smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@rcs0-userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs0-smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs0-userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs1-smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vcs1-userptr:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vecs0-lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vecs0-smem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_capture@basic@vecs0-userptr:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@lmem0:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@smem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v13_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk7/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk8/igt@device_reset@unbind-reset-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5507">i915#5507</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@smem:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk4/igt@gem_exec_create@forked@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk6/igt@gem_exec_create@forked@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_capture@basic} (NEW):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk4/igt@i915_vm_bind_capture@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk8/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-3/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-12/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-12/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109313">fdo#109313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gem_readwrite@read-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gem_readwrite@read-write.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@gen9_exec_parse@unaligned-access.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3547">i915#3547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-2/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_atomic@crtc-invalid-params-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-2/igt@kms_atomic@crtc-invalid-params-fence.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-glk1/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-d:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-b-sanity:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-dg1-19/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-dg1-16/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12596/shard-rkl-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v13/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7121 -&gt; IGTPW_8357</li>
<li>Linux: CI_DRM_12596 -&gt; Patchwork_105879v13</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12596: 0a0ee61784df01ac098a92bd43673ee30c629f13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8357: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8357/index.html<br />
  IGT_7121: aa16e81259f59734230d441905b9d0f605e4a4b5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v13: 0a0ee61784df01ac098a92bd43673ee30c629f13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8195375069890425759==--
