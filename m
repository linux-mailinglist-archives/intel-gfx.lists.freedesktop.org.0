Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17D626EBB
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Nov 2022 10:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0615D10E227;
	Sun, 13 Nov 2022 09:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C845D10E227;
 Sun, 13 Nov 2022 09:29:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C038AA7DFC;
 Sun, 13 Nov 2022 09:29:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8946237032211656448=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Sun, 13 Nov 2022 09:29:06 -0000
Message-ID: <166833174674.21697.12351982625328110532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221113075732.32100-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221113075732.32100-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev10=29?=
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

--===============8946237032211656448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev10)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12372 -> Patchwork_105879v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v10:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - {bat-adlm-1}:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlm-1/igt@i915_vm_bind_basic@basic-smem.html
    - bat-adlp-4:         NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlp-4/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-8}:        NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-8/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-rpls-1}:       NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-adln-1}:       NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adln-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-rplp-1}:       NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rplp-1/igt@i915_vm_bind_basic@basic-smem.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-9}:        NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-9/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-rpls-2}:       NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-2/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-adlp-6}:       NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlp-6/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-ehl-2}:         NOTRUN -> [SKIP][11] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-11}:       NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-11/igt@i915_vm_bind_basic@basic-smem.html
    - bat-dg1-6:          NOTRUN -> [SKIP][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg1-6/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - fi-icl-u2:          NOTRUN -> [SKIP][15] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-icl-u2/igt@i915_vm_bind_sanity@basic.html
    - {bat-jsl-3}:        NOTRUN -> [SKIP][16] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-3/igt@i915_vm_bind_sanity@basic.html
    - {bat-jsl-1}:        NOTRUN -> [SKIP][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-1/igt@i915_vm_bind_sanity@basic.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][18] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12372 and Patchwork_105879v10:

### New IGT tests (25) ###

  * igt@gem_exec3_basic@basic:
    - Statuses : 25 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-smem:
    - Statuses : 13 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs0-lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs0-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs1-lmem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs1-smem:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs2-lmem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs2-smem:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs3-lmem0:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@ccs3-smem:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-smem:
    - Statuses : 13 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-smem:
    - Statuses : 13 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-smem:
    - Statuses : 10 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-smem:
    - Statuses : 13 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs1-lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs1-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic-smem:
    - Statuses : 38 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic:
    - Statuses : 25 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@lmem0:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@smem0:
    - Statuses : 13 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_105879v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * {igt@gem_exec3_basic@basic} (NEW):
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][19] ([fdo#109271]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - fi-cfl-8700k:       NOTRUN -> [SKIP][20] ([fdo#109271]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-8700k/igt@i915_vm_bind_basic@basic-smem.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][21] ([fdo#109271]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][22] ([fdo#109271]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-nick/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-kbl-2}:        NOTRUN -> [SKIP][23] ([fdo#109271]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-kbl-2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][24] ([fdo#109271]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][25] ([fdo#109271]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-hsw-4770/igt@i915_vm_bind_basic@basic-smem.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][26] ([fdo#109271]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ivb-3770/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-jsl-1}:        NOTRUN -> [SKIP][27] ([fdo#112080])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-1/igt@i915_vm_bind_basic@basic-smem.html
    - fi-bxt-dsi:         NOTRUN -> [SKIP][28] ([fdo#109271]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bxt-dsi/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][29] ([fdo#112080])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html
    - fi-glk-j4005:       NOTRUN -> [SKIP][30] ([fdo#109271]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-glk-j4005/igt@i915_vm_bind_basic@basic-smem.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][31] ([fdo#109271]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-6700k2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-kbl-7567u:       NOTRUN -> [SKIP][32] ([fdo#109271]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-kbl-7567u/igt@i915_vm_bind_basic@basic-smem.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][33] ([fdo#109271]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][34] ([fdo#109271]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-8109u/igt@i915_vm_bind_basic@basic-smem.html
    - fi-ilk-650:         NOTRUN -> [SKIP][35] ([fdo#109271]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ilk-650/igt@i915_vm_bind_basic@basic-smem.html
    - fi-skl-6600u:       NOTRUN -> [SKIP][36] ([fdo#109271]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-6600u/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-jsl-3}:        NOTRUN -> [SKIP][37] ([fdo#112080])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-3/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - fi-snb-2520m:       NOTRUN -> [SKIP][38] ([fdo#109271]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-snb-2520m/igt@i915_vm_bind_sanity@basic.html
    - fi-skl-guc:         NOTRUN -> [SKIP][39] ([fdo#109271]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][40] ([fdo#109271]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-blb-e6850/igt@i915_vm_bind_sanity@basic.html
    - fi-apl-guc:         NOTRUN -> [SKIP][41] ([fdo#109271]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-apl-guc/igt@i915_vm_bind_sanity@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][42] -> [FAIL][43] ([i915#6298])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][44] ([i915#2867]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][46] ([i915#5278]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346


Build changes
-------------

  * IGT: IGT_7051 -> IGTPW_8092
  * Linux: CI_DRM_12372 -> Patchwork_105879v10

  CI-20190529: 20190529
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8092: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8092/index.html
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v10: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7debff4412e1 drm/i915/vm_bind: Async vm_unbind support
5aa6fdb35d71 drm/i915/vm_bind: Render VM_BIND documentation
3d466b7dae85 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
17c72407be21 drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
6e808cd2d342 drm/i915/vm_bind: userptr dma-resv changes
2568aae01ac4 drm/i915/vm_bind: Handle persistent vmas in execbuf3
53c131f716e0 drm/i915/vm_bind: Expose i915_request_await_bind()
61c6d70af630 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
b97da565b4bc drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
38f181beea6c drm/i915/vm_bind: Use common execbuf functions in execbuf path
5066e6ec829a drm/i915/vm_bind: Abstract out common execbuf functions
e3cf78b83d25 drm/i915/vm_bind: Add out fence support
604032431ae6 drm/i915/vm_bind: Support persistent vma activeness tracking
576331f6593c drm/i915/vm_bind: Add support to handle object evictions
a39ffa0a37b0 drm/i915/vm_bind: Support for VM private BOs
e6f6d5bf7e6c drm/i915/vm_bind: Implement bind and unbind of object
f63001cd6296 drm/i915/vm_bind: Add support to create persistent vma
4403df23a311 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
fca2e092b660 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
c6edcaec332e drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/index.html

--===============8946237032211656448==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12372 -&gt; Patchwork_105879v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlm-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlp-4/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-8/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adln-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rplp-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-9/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-adlp-6/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-11}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg2-11/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-dg1-6/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-icl-u2/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-3/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-1/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12372 and Patchwork_105879v10:</p>
<h3>New IGT tests (25)</h3>
<ul>
<li>
<p>igt@gem_exec3_basic@basic:</p>
<ul>
<li>Statuses : 25 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-smem:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs0-lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs0-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs1-lmem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs1-smem:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs2-lmem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs2-smem:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs3-lmem0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@ccs3-smem:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-smem:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-smem:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs1-smem:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-smem:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs1-lmem0:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs1-smem:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_basic@basic-smem:</p>
<ul>
<li>Statuses : 38 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic:</p>
<ul>
<li>Statuses : 25 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@lmem0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@smem0:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>{igt@gem_exec3_basic@basic} (NEW):</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-8700k/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-nick/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-kbl-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-hsw-4770/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ivb-3770/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bxt-dsi/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-glk-j4005/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-6700k2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-kbl-7567u/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-cfl-8109u/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-ilk-650/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-6600u/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-jsl-3/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-snb-2520m/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-blb-e6850/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-apl-guc/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12372/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v10/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7051 -&gt; IGTPW_8092</li>
<li>Linux: CI_DRM_12372 -&gt; Patchwork_105879v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12372: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8092: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8092/index.html<br />
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v10: 2cc304afd4967ceffd14940ff73a8beb31778f90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7debff4412e1 drm/i915/vm_bind: Async vm_unbind support<br />
5aa6fdb35d71 drm/i915/vm_bind: Render VM_BIND documentation<br />
3d466b7dae85 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
17c72407be21 drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts<br />
6e808cd2d342 drm/i915/vm_bind: userptr dma-resv changes<br />
2568aae01ac4 drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
53c131f716e0 drm/i915/vm_bind: Expose i915_request_await_bind()<br />
61c6d70af630 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
b97da565b4bc drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
38f181beea6c drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
5066e6ec829a drm/i915/vm_bind: Abstract out common execbuf functions<br />
e3cf78b83d25 drm/i915/vm_bind: Add out fence support<br />
604032431ae6 drm/i915/vm_bind: Support persistent vma activeness tracking<br />
576331f6593c drm/i915/vm_bind: Add support to handle object evictions<br />
a39ffa0a37b0 drm/i915/vm_bind: Support for VM private BOs<br />
e6f6d5bf7e6c drm/i915/vm_bind: Implement bind and unbind of object<br />
f63001cd6296 drm/i915/vm_bind: Add support to create persistent vma<br />
4403df23a311 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
fca2e092b660 drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
c6edcaec332e drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============8946237032211656448==--
