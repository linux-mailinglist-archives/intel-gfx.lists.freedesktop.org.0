Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7073F3762
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 01:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AAC6EB43;
	Fri, 20 Aug 2021 23:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30B106EB40;
 Fri, 20 Aug 2021 23:45:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FCC9A77A5;
 Fri, 20 Aug 2021 23:45:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5689701124423985118=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Aug 2021 23:45:38 -0000
Message-ID: <162950313802.2689.6299208150091663669@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210820224446.30620-1-matthew.brost@intel.com>
In-Reply-To: <20210820224446.30620-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGFy?=
 =?utf-8?q?allel_submission_aka_multi-bb_execbuf_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5689701124423985118==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev3)
URL   : https://patchwork.freedesktop.org/series/92789/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10505 -> Patchwork_20861
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20861 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20861, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20861:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-skl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-guc/igt@gem_close_race@basic-threads.html
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-7567u/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7567u/igt@gem_close_race@basic-threads.html
    - fi-kbl-7500u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7500u/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - fi-icl-y:           [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-icl-y/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-y/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-rkl-11600:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-rkl-11600/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-11600/igt@gem_exec_gttfill@basic.html
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-icl-u2/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-u2/igt@gem_exec_gttfill@basic.html
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@gem_exec_gttfill@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-ivb-3770:        [PASS][16] -> [FAIL][17] +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html
    - fi-hsw-4770:        [PASS][18] -> [FAIL][19] +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html

  * igt@runner@aborted:
    - fi-rkl-11600:       NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-11600/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@basic:
    - {fi-ehl-2}:         [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-ehl-2/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ehl-2/igt@gem_exec_gttfill@basic.html
    - {fi-jsl-1}:         [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-jsl-1/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-jsl-1/igt@gem_exec_gttfill@basic.html
    - {fi-tgl-dsi}:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html

  * igt@gem_render_tiled_blits@basic:
    - {fi-hsw-gt1}:       [PASS][27] -> [FAIL][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-hsw-gt1/igt@gem_render_tiled_blits@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-hsw-gt1/igt@gem_render_tiled_blits@basic.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ehl-2/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10505 and Patchwork_20861:

### New IGT tests (2) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 15 pass(s)
    - Exec time: [0.51, 5.15] s

  * igt@i915_selftest@live@guc_multi_lrc:
    - Statuses : 15 pass(s)
    - Exec time: [0.47, 5.22] s

  

Known issues
------------

  Here are the changes found in Patchwork_20861 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][31] ([fdo#109315]) +17 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-1115g4:      NOTRUN -> [DMESG-WARN][32] ([i915#4002])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_gttfill@basic:
    - fi-cfl-8109u:       [PASS][33] -> [DMESG-WARN][34] ([i915#1610])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-8809g:       [PASS][35] -> [DMESG-WARN][36] ([i915#1610])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][37] -> [DMESG-WARN][38] ([i915#1610])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cml-u2:          [PASS][39] -> [DMESG-WARN][40] ([i915#1610])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cml-u2/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cml-u2/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][41] -> [DMESG-WARN][42] ([i915#1610])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-apl-guc:         [PASS][43] -> [DMESG-WARN][44] ([i915#1610])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-apl-guc/igt@gem_exec_gttfill@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-apl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][45] -> [DMESG-WARN][46] ([i915#1610])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][47] -> [DMESG-WARN][48] ([i915#1610])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       NOTRUN -> [FAIL][49] ([i915#2426] / [i915#3363])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][50] ([i915#2426] / [i915#3363])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][51] ([i915#2426] / [i915#3363] / [i915#3690])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-u2/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][52] ([i915#2426])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][53] ([i915#2722] / [i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][54] ([i915#2426] / [i915#3363])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][55] ([i915#2082] / [i915#2426] / [i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cml-u2/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][56] ([i915#3690])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][57] ([i915#2426] / [i915#3363])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][58] ([i915#3690])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][59] ([i915#2722] / [i915#3363])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][60] ([i915#2722] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][61] ([i915#2426] / [i915#3363])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [INCOMPLETE][62] ([i915#3920]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][64] ([i915#180] / [i915#3363]) -> [FAIL][65] ([i915#2426] / [i915#3363])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-8809g/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3920]: https://gitlab.freedesktop.org/drm/intel/issues/3920
  [i915#4002]: https://gitlab.freedesktop.org/drm/intel/issues/4002


Participating hosts (40 -> 36)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10505 -> Patchwork_20861

  CI-20190529: 20190529
  CI_DRM_10505: 7c36ed237585ed2f645439e62dafccac070d5e33 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6181: e7a9ab2f21a67b1ab3f4093ec0bd775647308ba6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20861: 17b0d07e7aecf1b25b5386d7c461d6b8ab861fb3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

17b0d07e7aec drm/i915/execlists: Weak parallel submission support for execlists
668649e1b343 drm/i915: Enable multi-bb execbuf
41dc4f27399e drm/i915/guc: Handle errors in multi-lrc requests
1deecbc917a6 drm/i915: Multi-BB execbuf
2f8c2ac84f38 drm/i915/guc: Implement no mid batch preemption for multi-lrc
166ae35845ec drm/i915/guc: Add basic GuC multi-lrc selftest
d7635607ca11 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
24d24d71c346 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
f3e9fcd665da drm/i915: Fix bug in user proto-context creation that leaked contexts
28a6b590e69c drm/i915/guc: Update debugfs for GuC multi-lrc
d20a9f8066d0 drm/i915/guc: Implement multi-lrc reset
f0eaf349580b drm/i915/guc: Insert submit fences between requests in parent-child relationship
279b43791c6d drm/i915/guc: Implement multi-lrc submission
4397e2c32688 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
f671cf6be29a drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
2b3d3ef5cb7c drm/i915/guc: Add multi-lrc context registration
bff8a93386b8 drm/i915/guc: Implement parallel context pin / unpin functions
02d0b3f0499f drm/i915/guc: Introduce context parent-child relationship
b398df972aaa drm/i915: Expose logical engine instance to user
0222d44e38b8 drm/i915: Add logical engine mapping
cb16e92153bb drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
e0617461e1ec drm/i915/guc: Take engine PM when a context is pinned with GuC submission
08b1d791ac1a drm/i915: Add GT PM unpark worker
48e7785b7cb4 drm/i915/guc: Take GT PM ref when deregistering context
ce904de73b0d drm/i915/guc: Connect the number of guc_ids to debugfs
4a9a78aa06a7 drm/i915/guc: Allow flexible number of context ids
77206ddfd7e8 drm/i915/guc: Squash Clean up GuC CI failures, simplify locking, and kernel DOC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/index.html

--===============5689701124423985118==
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
<tr><td><b>Series:</b></td><td>Parallel submission aka multi-bb execbuf (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92789/">https://patchwork.freedesktop.org/series/92789/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10505 -&gt; Patchwork_20861</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20861 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20861, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20861:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-skl-guc/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-guc/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-7567u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7567u/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7500u/igt@gem_close_race@basic-threads.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-icl-y/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-y/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-rkl-11600/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-11600/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-icl-u2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-u2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-ehl-2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ehl-2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-jsl-1/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-jsl-1/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-dsi/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-hsw-gt1/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-hsw-gt1/igt@gem_render_tiled_blits@basic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10505 and Patchwork_20861:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>Statuses : 15 pass(s)</li>
<li>Exec time: [0.51, 5.15] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>Statuses : 15 pass(s)</li>
<li>Exec time: [0.47, 5.22] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20861 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4002">i915#4002</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-guc/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cml-u2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cml-u2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-apl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-apl-guc/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3920">i915#3920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10505/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20861/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10505 -&gt; Patchwork_20861</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10505: 7c36ed237585ed2f645439e62dafccac070d5e33 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6181: e7a9ab2f21a67b1ab3f4093ec0bd775647308ba6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20861: 17b0d07e7aecf1b25b5386d7c461d6b8ab861fb3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>17b0d07e7aec drm/i915/execlists: Weak parallel submission support for execlists<br />
668649e1b343 drm/i915: Enable multi-bb execbuf<br />
41dc4f27399e drm/i915/guc: Handle errors in multi-lrc requests<br />
1deecbc917a6 drm/i915: Multi-BB execbuf<br />
2f8c2ac84f38 drm/i915/guc: Implement no mid batch preemption for multi-lrc<br />
166ae35845ec drm/i915/guc: Add basic GuC multi-lrc selftest<br />
d7635607ca11 drm/i915/doc: Update parallel submit doc to point to i915_drm.h<br />
24d24d71c346 drm/i915/guc: Connect UAPI to GuC multi-lrc interface<br />
f3e9fcd665da drm/i915: Fix bug in user proto-context creation that leaked contexts<br />
28a6b590e69c drm/i915/guc: Update debugfs for GuC multi-lrc<br />
d20a9f8066d0 drm/i915/guc: Implement multi-lrc reset<br />
f0eaf349580b drm/i915/guc: Insert submit fences between requests in parent-child relationship<br />
279b43791c6d drm/i915/guc: Implement multi-lrc submission<br />
4397e2c32688 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids<br />
f671cf6be29a drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts<br />
2b3d3ef5cb7c drm/i915/guc: Add multi-lrc context registration<br />
bff8a93386b8 drm/i915/guc: Implement parallel context pin / unpin functions<br />
02d0b3f0499f drm/i915/guc: Introduce context parent-child relationship<br />
b398df972aaa drm/i915: Expose logical engine instance to user<br />
0222d44e38b8 drm/i915: Add logical engine mapping<br />
cb16e92153bb drm/i915/guc: Don't call switch_to_kernel_context with GuC submission<br />
e0617461e1ec drm/i915/guc: Take engine PM when a context is pinned with GuC submission<br />
08b1d791ac1a drm/i915: Add GT PM unpark worker<br />
48e7785b7cb4 drm/i915/guc: Take GT PM ref when deregistering context<br />
ce904de73b0d drm/i915/guc: Connect the number of guc_ids to debugfs<br />
4a9a78aa06a7 drm/i915/guc: Allow flexible number of context ids<br />
77206ddfd7e8 drm/i915/guc: Squash Clean up GuC CI failures, simplify locking, and kernel DOC</p>

</body>
</html>

--===============5689701124423985118==--
