Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AF1394698
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 19:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E5D6E527;
	Fri, 28 May 2021 17:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAB9A6E527;
 Fri, 28 May 2021 17:40:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0A01A7DFB;
 Fri, 28 May 2021 17:40:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 28 May 2021 17:40:27 -0000
Message-ID: <162222362781.11840.7850791437558448234@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210528105744.58271-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210528105744.58271-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW92?=
 =?utf-8?q?e_LMEM_=28VRAM=29_management_over_to_TTM_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0938843516=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0938843516==
Content-Type: multipart/alternative;
 boundary="===============7060596087431028255=="

--===============7060596087431028255==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move LMEM (VRAM) management over to TTM (rev2)
URL   : https://patchwork.freedesktop.org/series/90681/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10147 -> Patchwork_20232
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20232:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_tiled_fence_blits@basic:
    - {fi-rkl-11500t}:    [FAIL][1] ([i915#3277]) -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_busy@basic:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][3] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@kms_busy@basic.html

  * igt@prime_self_import@basic-with_two_bos:
    - {fi-rkl-11500t}:    [PASS][4] -> [FAIL][5] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-fence-flip:
    - {fi-rkl-11500t}:    [PASS][6] -> [SKIP][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    [SKIP][8] ([i915#3291]) -> [SKIP][9] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-userptr:
    - {fi-rkl-11500t}:    [SKIP][10] ([i915#3301]) -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_20232 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [INCOMPLETE][12] ([i915#3462]) -> [DMESG-FAIL][13] ([i915#3462])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [DMESG-FAIL][14] ([i915#3462]) -> [INCOMPLETE][15] ([i915#2782] / [i915#2940] / [i915#3462])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [DMESG-FAIL][16] ([i915#3462]) -> [INCOMPLETE][17] ([i915#3462])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][18] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][19] ([i915#1436] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-skl-6600u/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][20] ([i915#3363]) -> [FAIL][21] ([i915#2426] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-8109u/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-8109u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][22] ([i915#1436] / [i915#3363]) -> [FAIL][23] ([i915#1436] / [i915#2426] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-kbl-guc/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][24] ([i915#3363]) -> [FAIL][25] ([i915#2426] / [i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-guc/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10147 -> Patchwork_20232

  CI-20190529: 20190529
  CI_DRM_10147: f1ae7d0cb0c45bfbb601e3729fffe3f6d738aa5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20232: 9b68632f3c3cda023715ce74d375c74cece0d0dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b68632f3c3c drm/i915: Use ttm mmap handling for ttm bo's.
17f4c2659062 drm/vma: Add a driver_private member to vma_node.
b35b40e1c13e drm/i915: Disable mmap ioctl for gen12+
be6751a92bac drm/i915/lmem: Verify checks for lmem residency
2e3134a2e1f1 drm/i915/ttm: Introduce a TTM i915 gem object backend
00e905bc000d drm/ttm, drm/amdgpu: Allow the driver some control over swapping
4d7f3f30267b drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
9f85cc08745b drm/ttm: Use drm_memcpy_from_wc for TTM bo moves
e300aca6e0f4 drm: Add a prefetching memcpy_from_wc
c4422c1c603d drm/ttm: Add a generic TTM memcpy move for page-based iomem
0b80f3c1aecc drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
35cfd9f48f2a drm/i915/ttm Initialize the ttm device and memory managers
bdd3408f6b52 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
b5c847f763fa drm/i915: Don't free shared locks while shared
b97007c879b9 drm/i915: Untangle the vma pages_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/index.html

--===============7060596087431028255==
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
<tr><td><b>Series:</b></td><td>Move LMEM (VRAM) management over to TTM (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90681/">https://patchwork.freedesktop.org/series/90681/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10147 -&gt; Patchwork_20232</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20232:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3277">i915#3277</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@gem_tiled_fence_blits@basic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@kms_busy@basic.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-rkl-11500t/igt@prime_vgem@basic-userptr.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20232 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10147/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20232/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10147 -&gt; Patchwork_20232</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10147: f1ae7d0cb0c45bfbb601e3729fffe3f6d738aa5d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20232: 9b68632f3c3cda023715ce74d375c74cece0d0dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9b68632f3c3c drm/i915: Use ttm mmap handling for ttm bo's.<br />
17f4c2659062 drm/vma: Add a driver_private member to vma_node.<br />
b35b40e1c13e drm/i915: Disable mmap ioctl for gen12+<br />
be6751a92bac drm/i915/lmem: Verify checks for lmem residency<br />
2e3134a2e1f1 drm/i915/ttm: Introduce a TTM i915 gem object backend<br />
00e905bc000d drm/ttm, drm/amdgpu: Allow the driver some control over swapping<br />
4d7f3f30267b drm/ttm: Document and optimize ttm_bo_pipeline_gutting()<br />
9f85cc08745b drm/ttm: Use drm_memcpy_from_wc for TTM bo moves<br />
e300aca6e0f4 drm: Add a prefetching memcpy_from_wc<br />
c4422c1c603d drm/ttm: Add a generic TTM memcpy move for page-based iomem<br />
0b80f3c1aecc drm/i915/ttm: Embed a ttm buffer object in the i915 gem object<br />
35cfd9f48f2a drm/i915/ttm Initialize the ttm device and memory managers<br />
bdd3408f6b52 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages<br />
b5c847f763fa drm/i915: Don't free shared locks while shared<br />
b97007c879b9 drm/i915: Untangle the vma pages_mutex</p>

</body>
</html>

--===============7060596087431028255==--

--===============0938843516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0938843516==--
