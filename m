Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296B3396F2A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 10:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794F489D42;
	Tue,  1 Jun 2021 08:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DDD36E8C0;
 Tue,  1 Jun 2021 08:43:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16283A363D;
 Tue,  1 Jun 2021 08:43:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 01 Jun 2021 08:43:51 -0000
Message-ID: <162253703105.19249.835583981753808277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210601074654.3103-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW92?=
 =?utf-8?q?e_LMEM_=28VRAM=29_management_over_to_TTM_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0156895686=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0156895686==
Content-Type: multipart/alternative;
 boundary="===============5941532399909288297=="

--===============5941532399909288297==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move LMEM (VRAM) management over to TTM (rev5)
URL   : https://patchwork.freedesktop.org/series/90681/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10153 -> Patchwork_20243
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20243:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_tiled_fence_blits@basic:
    - {fi-rkl-11500t}:    [FAIL][1] ([i915#3277]) -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_busy@basic:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][3] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@kms_busy@basic.html

  * igt@prime_self_import@basic-with_two_bos:
    - {fi-rkl-11500t}:    [PASS][4] -> [FAIL][5] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-fence-flip:
    - {fi-rkl-11500t}:    [PASS][6] -> [SKIP][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    [SKIP][8] ([i915#3291]) -> [SKIP][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - {fi-rkl-11500t}:    [SKIP][10] ([i915#3301]) -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_20243 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][12] ([fdo#109271]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][13] ([i915#2283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][14] ([i915#3462])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][16] -> [FAIL][17] ([i915#2416])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][18] ([fdo#109271]) +9 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][19] ([i915#2782]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [FAIL][21] ([i915#3049]) -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [DMESG-FAIL][23] ([i915#3462]) -> [INCOMPLETE][24] ([i915#2782] / [i915#3462])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][25] ([i915#2426] / [i915#3363]) -> [FAIL][26] ([i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-cfl-8700k/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-cfl-8700k/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][27] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][28] ([i915#2782] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-icl-u2/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-icl-u2/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][29] ([i915#1602] / [i915#2029]) -> [FAIL][30] ([i915#3462])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-bdw-5557u/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][31] ([i915#1436] / [i915#3363]) -> [FAIL][32] ([i915#1436] / [i915#2426] / [i915#3363])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-soraka/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][33] ([i915#1436] / [i915#3363]) -> [FAIL][34] ([i915#1436] / [i915#2426] / [i915#3363])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-guc/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10153 -> Patchwork_20243

  CI-20190529: 20190529
  CI_DRM_10153: 51cde10d0ff6d09afa365e7cf31d1ef44a8fa174 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6097: f823d8ec14b34a6dd2c0804c684b07b0a50f7bb7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20243: 324ad89a4002c6aa154832516bcaf1d5f388aaef @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

324ad89a4002 drm/i915: Use ttm mmap handling for ttm bo's.
6cf6f92c1646 drm/vma: Add a driver_private member to vma_node.
76afa15acac3 drm/i915: Disable mmap ioctl for gen12+
3049c2ef413f drm/i915/lmem: Verify checks for lmem residency
c777141dc2f3 drm/i915/ttm: Introduce a TTM i915 gem object backend
38c66ced103f drm/ttm, drm/amdgpu: Allow the driver some control over swapping
e053c57e6840 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
228add660c36 drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
15abc533f931 drm: Add a prefetching memcpy_from_wc
dd2260a61f1a drm/ttm: Add a generic TTM memcpy move for page-based iomem
4d3bb3c2ab3c drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
eb3b2aa36f72 drm/i915/ttm Initialize the ttm device and memory managers
f5f8f63758fb drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
b8ec60cc312c drm/i915: Don't free shared locks while shared
325ee27eefe0 drm/i915: Untangle the vma pages_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/index.html

--===============5941532399909288297==
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
<tr><td><b>Series:</b></td><td>Move LMEM (VRAM) management over to TTM (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90681/">https://patchwork.freedesktop.org/series/90681/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10153 -&gt; Patchwork_20243</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20243:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3277">i915#3277</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@kms_busy@basic.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20243 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10153/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20243/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10153 -&gt; Patchwork_20243</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10153: 51cde10d0ff6d09afa365e7cf31d1ef44a8fa174 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6097: f823d8ec14b34a6dd2c0804c684b07b0a50f7bb7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20243: 324ad89a4002c6aa154832516bcaf1d5f388aaef @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>324ad89a4002 drm/i915: Use ttm mmap handling for ttm bo's.<br />
6cf6f92c1646 drm/vma: Add a driver_private member to vma_node.<br />
76afa15acac3 drm/i915: Disable mmap ioctl for gen12+<br />
3049c2ef413f drm/i915/lmem: Verify checks for lmem residency<br />
c777141dc2f3 drm/i915/ttm: Introduce a TTM i915 gem object backend<br />
38c66ced103f drm/ttm, drm/amdgpu: Allow the driver some control over swapping<br />
e053c57e6840 drm/ttm: Document and optimize ttm_bo_pipeline_gutting()<br />
228add660c36 drm/ttm: Use drm_memcpy_from_wc for TTM bo moves<br />
15abc533f931 drm: Add a prefetching memcpy_from_wc<br />
dd2260a61f1a drm/ttm: Add a generic TTM memcpy move for page-based iomem<br />
4d3bb3c2ab3c drm/i915/ttm: Embed a ttm buffer object in the i915 gem object<br />
eb3b2aa36f72 drm/i915/ttm Initialize the ttm device and memory managers<br />
f5f8f63758fb drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages<br />
b8ec60cc312c drm/i915: Don't free shared locks while shared<br />
325ee27eefe0 drm/i915: Untangle the vma pages_mutex</p>

</body>
</html>

--===============5941532399909288297==--

--===============0156895686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0156895686==--
