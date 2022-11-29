Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7183263BBF2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 09:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF4010E255;
	Tue, 29 Nov 2022 08:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D897D10E255;
 Tue, 29 Nov 2022 08:46:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3036A77A5;
 Tue, 29 Nov 2022 08:46:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7502886165562872059=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Date: Tue, 29 Nov 2022 08:46:49 -0000
Message-ID: <166971160982.23272.9238904314259468128@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221129072635.847-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20221129072635.847-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/vm=5Fbind=3A_Add_VM=5FBIND_functionality_=28rev11=29?=
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

--===============7502886165562872059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vm_bind: Add VM_BIND functionality (rev11)
URL   : https://patchwork.freedesktop.org/series/105879/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12441 -> Patchwork_105879v11
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/index.html

Participating hosts (35 -> 33)
------------------------------

  Missing    (2): bat-rpls-2 bat-dg1-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105879v11:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - {bat-adln-1}:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adln-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-adlm-1}:       NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlm-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-rplp-1}:       NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rplp-1/igt@i915_vm_bind_basic@basic-smem.html
    - fi-rkl-11600:       NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html
    - fi-adl-ddr5:        NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-adl-ddr5/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-9}:        NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-9/igt@i915_vm_bind_basic@basic-smem.html
    - bat-adlp-4:         NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-8}:        NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-8/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-rpls-1}:       NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rpls-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-adlp-6}:       NOTRUN -> [SKIP][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-6/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-ehl-2}:         NOTRUN -> [SKIP][11] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html
    - bat-dg1-5:          NOTRUN -> [SKIP][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg1-5/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg1-7}:        NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg1-7/igt@i915_vm_bind_basic@basic-smem.html
    - fi-rkl-guc:         NOTRUN -> [SKIP][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-dg2-11}:       NOTRUN -> [SKIP][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-11/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - fi-icl-u2:          NOTRUN -> [SKIP][16] +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-icl-u2/igt@i915_vm_bind_sanity@basic.html
    - {bat-jsl-3}:        NOTRUN -> [SKIP][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-3/igt@i915_vm_bind_sanity@basic.html
    - {bat-jsl-1}:        NOTRUN -> [SKIP][18] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-1/igt@i915_vm_bind_sanity@basic.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][19] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12441 and Patchwork_105879v11:

### New IGT tests (25) ###

  * igt@gem_exec3_basic@basic:
    - Statuses : 19 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-lmem0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@bcs0-smem:
    - Statuses : 14 pass(s)
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
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@rcs0-smem:
    - Statuses : 14 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-lmem0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs0-smem:
    - Statuses : 14 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-lmem0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vcs1-smem:
    - Statuses : 10 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-lmem0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs0-smem:
    - Statuses : 14 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs1-lmem0:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec3_basic@basic@vecs1-smem:
    - Statuses : 3 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_basic@basic-smem:
    - Statuses : 33 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic:
    - Statuses : 19 skip(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@lmem0:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@i915_vm_bind_sanity@basic@smem0:
    - Statuses : 14 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_105879v11 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * {igt@gem_exec3_basic@basic} (NEW):
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][20] ([fdo#109271]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][21] ([fdo#109271]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_exec3_basic@basic.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][22] ([fdo#109271]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-skl-6700k2/igt@gem_exec3_basic@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][23] -> [SKIP][24] ([fdo#109271]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * {igt@i915_vm_bind_basic@basic-smem} (NEW):
    - fi-cfl-8700k:       NOTRUN -> [SKIP][25] ([fdo#109271]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-8700k/igt@i915_vm_bind_basic@basic-smem.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][26] ([fdo#109271]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-kbl-2}:        NOTRUN -> [SKIP][27] ([fdo#109271]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-kbl-2/igt@i915_vm_bind_basic@basic-smem.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][28] ([fdo#109271]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][29] ([fdo#109271]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][30] ([fdo#109271]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-8109u/igt@i915_vm_bind_basic@basic-smem.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][31] ([fdo#109271]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ivb-3770/igt@i915_vm_bind_basic@basic-smem.html
    - fi-ilk-650:         NOTRUN -> [SKIP][32] ([fdo#109271]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ilk-650/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-jsl-1}:        NOTRUN -> [SKIP][33] ([fdo#112080])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-1/igt@i915_vm_bind_basic@basic-smem.html
    - {fi-jsl-1}:         NOTRUN -> [SKIP][34] ([fdo#112080])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html
    - {bat-jsl-3}:        NOTRUN -> [SKIP][35] ([fdo#112080])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-3/igt@i915_vm_bind_basic@basic-smem.html

  * {igt@i915_vm_bind_sanity@basic} (NEW):
    - fi-skl-guc:         NOTRUN -> [SKIP][36] ([fdo#109271]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][37] ([fdo#109271]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-blb-e6850/igt@i915_vm_bind_sanity@basic.html
    - fi-apl-guc:         NOTRUN -> [SKIP][38] ([fdo#109271]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-apl-guc/igt@i915_vm_bind_sanity@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - bat-adlp-4:         NOTRUN -> [SKIP][39] ([fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-adlp-4:         NOTRUN -> [SKIP][40] ([i915#3546])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][41] ([i915#2867]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [DMESG-FAIL][43] ([i915#5591]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [INCOMPLETE][45] ([i915#7308] / [i915#7348]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][47] ([i915#7229]) -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348


Build changes
-------------

  * IGT: IGT_7074 -> IGTPW_8164
  * Linux: CI_DRM_12441 -> Patchwork_105879v11

  CI-20190529: 20190529
  CI_DRM_12441: 72fca6c11d0f5c628a6251f7bc420838c89d6acc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8164: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8164/index.html
  IGT_7074: a7403583f1baee0548d86d1f2c9bb078384f997a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105879v11: 72fca6c11d0f5c628a6251f7bc420838c89d6acc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cf3a3e564b52 drm/i915/vm_bind: Support capture of persistent mappings
15c079c0674e drm/i915/vm_bind: Properly build persistent map sg table
317b66befbad drm/i915/vm_bind: Async vm_unbind support
aaf6d11129d5 drm/i915/vm_bind: Render VM_BIND documentation
b31092609161 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode
faf21cff635e drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts
247ef46b479f drm/i915/vm_bind: userptr dma-resv changes
81e26807fb7e drm/i915/vm_bind: Handle persistent vmas in execbuf3
75290f554448 drm/i915/vm_bind: Expose i915_request_await_bind()
bb02697bbeb3 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()
e246b6ed45d8 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl
66ca3613fa52 drm/i915/vm_bind: Use common execbuf functions in execbuf path
8de47fda0fe3 drm/i915/vm_bind: Abstract out common execbuf functions
6bee2538bf65 drm/i915/vm_bind: Add out fence support
e41af8393764 drm/i915/vm_bind: Support persistent vma activeness tracking
99d0c124546a drm/i915/vm_bind: Add support to handle object evictions
7982a47a90ee drm/i915/vm_bind: Support for VM private BOs
9585ac4bc104 drm/i915/vm_bind: Implement bind and unbind of object
cc75c766dc62 drm/i915/vm_bind: Add support to create persistent vma
56a5d39f6071 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()
3854eea7829d drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()
7bd08d326b40 drm/i915/vm_bind: Expose vm lookup function

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/index.html

--===============7502886165562872059==
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
<tr><td><b>Series:</b></td><td>drm/i915/vm_bind: Add VM_BIND functionality (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105879/">https://patchwork.freedesktop.org/series/105879/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12441 -&gt; Patchwork_105879v11</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): bat-rpls-2 bat-dg1-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105879v11:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adln-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlm-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-rplp-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rplp-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-rkl-11600/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-adl-ddr5/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-9/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-8/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rpls-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-6/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ehl-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg1-5/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg1-7}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg1-7/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-rkl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
<li>
<p>{bat-dg2-11}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-dg2-11/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-icl-u2/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-3/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-1/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-jsl-1/igt@i915_vm_bind_sanity@basic.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12441 and Patchwork_105879v11:</p>
<h3>New IGT tests (25)</h3>
<ul>
<li>
<p>igt@gem_exec3_basic@basic:</p>
<ul>
<li>Statuses : 19 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-lmem0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@bcs0-smem:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
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
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@rcs0-smem:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-lmem0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs0-smem:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vcs1-lmem0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
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
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec3_basic@basic@vecs0-smem:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
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
<li>Statuses : 33 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic:</p>
<ul>
<li>Statuses : 19 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@lmem0:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_vm_bind_sanity@basic@smem0:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105879v11 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>{igt@gem_exec3_basic@basic} (NEW):</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-bdw-gvtdvm/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-skl-6700k2/igt@gem_exec3_basic@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_basic@basic-smem} (NEW):</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-8700k/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-elk-e7500/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{bat-kbl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-kbl-2/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-bsw-kefka/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-guc/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-cfl-8109u/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ivb-3770/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-ilk-650/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-jsl-1/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-jsl-3/igt@i915_vm_bind_basic@basic-smem.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112080">fdo#112080</a>)</p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_vm_bind_sanity@basic} (NEW):</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-skl-guc/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-blb-e6850/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-apl-guc/igt@i915_vm_bind_sanity@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-icl-u2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12441/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105879v11/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7074 -&gt; IGTPW_8164</li>
<li>Linux: CI_DRM_12441 -&gt; Patchwork_105879v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12441: 72fca6c11d0f5c628a6251f7bc420838c89d6acc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8164: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8164/index.html<br />
  IGT_7074: a7403583f1baee0548d86d1f2c9bb078384f997a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105879v11: 72fca6c11d0f5c628a6251f7bc420838c89d6acc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cf3a3e564b52 drm/i915/vm_bind: Support capture of persistent mappings<br />
15c079c0674e drm/i915/vm_bind: Properly build persistent map sg table<br />
317b66befbad drm/i915/vm_bind: Async vm_unbind support<br />
aaf6d11129d5 drm/i915/vm_bind: Render VM_BIND documentation<br />
b31092609161 drm/i915/vm_bind: Add uapi for user to enable vm_bind_mode<br />
faf21cff635e drm/i915/vm_bind: Limit vm_bind mode to non-recoverable contexts<br />
247ef46b479f drm/i915/vm_bind: userptr dma-resv changes<br />
81e26807fb7e drm/i915/vm_bind: Handle persistent vmas in execbuf3<br />
75290f554448 drm/i915/vm_bind: Expose i915_request_await_bind()<br />
bb02697bbeb3 drm/i915/vm_bind: Update i915_vma_verify_bind_complete()<br />
e246b6ed45d8 drm/i915/vm_bind: Implement I915_GEM_EXECBUFFER3 ioctl<br />
66ca3613fa52 drm/i915/vm_bind: Use common execbuf functions in execbuf path<br />
8de47fda0fe3 drm/i915/vm_bind: Abstract out common execbuf functions<br />
6bee2538bf65 drm/i915/vm_bind: Add out fence support<br />
e41af8393764 drm/i915/vm_bind: Support persistent vma activeness tracking<br />
99d0c124546a drm/i915/vm_bind: Add support to handle object evictions<br />
7982a47a90ee drm/i915/vm_bind: Support for VM private BOs<br />
9585ac4bc104 drm/i915/vm_bind: Implement bind and unbind of object<br />
cc75c766dc62 drm/i915/vm_bind: Add support to create persistent vma<br />
56a5d39f6071 drm/i915/vm_bind: Expose i915_gem_object_max_page_size()<br />
3854eea7829d drm/i915/vm_bind: Add __i915_sw_fence_await_reservation()<br />
7bd08d326b40 drm/i915/vm_bind: Expose vm lookup function</p>

</body>
</html>

--===============7502886165562872059==--
