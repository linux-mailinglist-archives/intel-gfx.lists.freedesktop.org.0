Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F79421A55
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 00:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A386E23D;
	Mon,  4 Oct 2021 22:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53FA26E22B;
 Mon,  4 Oct 2021 22:54:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C2F2A9A42;
 Mon,  4 Oct 2021 22:54:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3680122291153423108=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Oct 2021 22:54:56 -0000
Message-ID: <163338809627.1480.63411061195531334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211004220637.14746-1-matthew.brost@intel.com>
In-Reply-To: <20211004220637.14746-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGFy?=
 =?utf-8?q?allel_submission_aka_multi-bb_execbuf_=28rev4=29?=
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

--===============3680122291153423108==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev4)
URL   : https://patchwork.freedesktop.org/series/92789/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10681 -> Patchwork_21239
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21239 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21239, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21239:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_render_tiled_blits@basic:
    - fi-ivb-3770:        [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html
    - fi-hsw-4770:        [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10681 and Patchwork_21239:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc_multi_lrc:
    - Statuses : 29 pass(s)
    - Exec time: [0.44, 3.89] s

  

Known issues
------------

  Here are the changes found in Patchwork_21239 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([fdo#109315])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][6] ([fdo#109271]) +27 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([fdo#109315] / [i915#2575]) +16 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][8] ([i915#3718])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-apl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][10] ([i915#2190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][11] ([i915#1610])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][12] ([i915#1155])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][13] -> [INCOMPLETE][14] ([i915#3921])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][15] ([fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([i915#4103]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([fdo#109285])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#1072]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][20] ([i915#3301])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][21] ([i915#2426] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][22] ([i915#295]) -> [PASS][23] +12 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103


Participating hosts (36 -> 32)
------------------------------

  Additional (2): fi-tgl-1115g4 fi-apl-guc 
  Missing    (6): fi-kbl-soraka bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10681 -> Patchwork_21239

  CI-20190529: 20190529
  CI_DRM_10681: fe9b639a95a08713c8ee4ef110ce6a6388c9f9f2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21239: 8766155832d72e53d811f8023a4d3e5545190ce9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8766155832d7 drm/i915/execlists: Weak parallel submission support for execlists
b52570f01859 drm/i915: Enable multi-bb execbuf
368ab12f5205 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
962e6b3dce59 drm/i915: Make request conflict tracking understand parallel submits
28b699ece289 drm/i915/guc: Handle errors in multi-lrc requests
57882939d788 drm/i915: Multi-BB execbuf
ade3768c42d5 drm/i915/guc: Implement no mid batch preemption for multi-lrc
8290f5d15ca2 drm/i915/guc: Add basic GuC multi-lrc selftest
68c6596b649a drm/i915/doc: Update parallel submit doc to point to i915_drm.h
0eb3d3bf0c84 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
966991d7bbed drm/i915: Fix bug in user proto-context creation that leaked contexts
7add5784199f drm/i915/guc: Update debugfs for GuC multi-lrc
2ece815c1f18 drm/i915/guc: Implement multi-lrc reset
466c01457dec drm/i915/guc: Insert submit fences between requests in parent-child relationship
1ad560c70346 drm/i915/guc: Implement multi-lrc submission
40ef33318b81 drm/i915/guc: Implement parallel context pin / unpin functions
adf21ba138f3 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
e5f6f50e66d1 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
aaf50eacc2fd drm/i915/guc: Add multi-lrc context registration
aa8e1eb4dd4e drm/i915/guc: Introduce context parent-child relationship
8117ec0a1ca7 drm/i915: Expose logical engine instance to user
8629b55f536c drm/i915: Add logical engine mapping
4dd6554d994d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
93e5284929b3 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
f83d8f1539fa drm/i915/guc: Take GT PM ref when deregistering context
e2a47a99bf9d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/index.html

--===============3680122291153423108==
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
<tr><td><b>Series:</b></td><td>Parallel submission aka multi-bb execbuf (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92789/">https://patchwork.freedesktop.org/series/92789/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10681 -&gt; Patchwork_21239</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21239 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21239, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21239:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-ivb-3770/igt@gem_render_tiled_blits@basic.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-hsw-4770/igt@gem_render_tiled_blits@basic.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10681 and Patchwork_21239:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc_multi_lrc:<ul>
<li>Statuses : 29 pass(s)</li>
<li>Exec time: [0.44, 3.89] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21239 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10681/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21239/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (36 -&gt; 32)</h2>
<p>Additional (2): fi-tgl-1115g4 fi-apl-guc <br />
  Missing    (6): fi-kbl-soraka bat-dg1-6 fi-bsw-cyan bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10681 -&gt; Patchwork_21239</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10681: fe9b639a95a08713c8ee4ef110ce6a6388c9f9f2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6228: 22643ce4014a0b2dc52ce7916b2f657e2a7757c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21239: 8766155832d72e53d811f8023a4d3e5545190ce9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8766155832d7 drm/i915/execlists: Weak parallel submission support for execlists<br />
b52570f01859 drm/i915: Enable multi-bb execbuf<br />
368ab12f5205 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences<br />
962e6b3dce59 drm/i915: Make request conflict tracking understand parallel submits<br />
28b699ece289 drm/i915/guc: Handle errors in multi-lrc requests<br />
57882939d788 drm/i915: Multi-BB execbuf<br />
ade3768c42d5 drm/i915/guc: Implement no mid batch preemption for multi-lrc<br />
8290f5d15ca2 drm/i915/guc: Add basic GuC multi-lrc selftest<br />
68c6596b649a drm/i915/doc: Update parallel submit doc to point to i915_drm.h<br />
0eb3d3bf0c84 drm/i915/guc: Connect UAPI to GuC multi-lrc interface<br />
966991d7bbed drm/i915: Fix bug in user proto-context creation that leaked contexts<br />
7add5784199f drm/i915/guc: Update debugfs for GuC multi-lrc<br />
2ece815c1f18 drm/i915/guc: Implement multi-lrc reset<br />
466c01457dec drm/i915/guc: Insert submit fences between requests in parent-child relationship<br />
1ad560c70346 drm/i915/guc: Implement multi-lrc submission<br />
40ef33318b81 drm/i915/guc: Implement parallel context pin / unpin functions<br />
adf21ba138f3 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids<br />
e5f6f50e66d1 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts<br />
aaf50eacc2fd drm/i915/guc: Add multi-lrc context registration<br />
aa8e1eb4dd4e drm/i915/guc: Introduce context parent-child relationship<br />
8117ec0a1ca7 drm/i915: Expose logical engine instance to user<br />
8629b55f536c drm/i915: Add logical engine mapping<br />
4dd6554d994d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission<br />
93e5284929b3 drm/i915/guc: Take engine PM when a context is pinned with GuC submission<br />
f83d8f1539fa drm/i915/guc: Take GT PM ref when deregistering context<br />
e2a47a99bf9d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct</p>

</body>
</html>

--===============3680122291153423108==--
