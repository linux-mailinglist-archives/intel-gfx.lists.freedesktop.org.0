Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B9F391D50
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 18:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB4F6E1A2;
	Wed, 26 May 2021 16:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A40556E1A2;
 Wed, 26 May 2021 16:51:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A269A47EA;
 Wed, 26 May 2021 16:51:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 May 2021 16:51:35 -0000
Message-ID: <162204789559.13406.8821589093880571225@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0330274287=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0330274287==
Content-Type: multipart/alternative;
 boundary="===============4296928625960600549=="

--===============4296928625960600549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move LMEM (VRAM) management over to TTM (rev4)
URL   : https://patchwork.freedesktop.org/series/90022/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10135 -> Patchwork_20203
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20203:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_self_import@basic-with_two_bos:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][1] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html

  * igt@prime_vgem@basic-fence-flip:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][2] +11 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_20203 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][4] ([i915#2782] / [i915#2940] / [i915#3462])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][6] -> [FAIL][7] ([i915#2416])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][8] ([fdo#109271]) +14 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#1436])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][10] ([i915#2782]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][12] ([i915#2426] / [i915#3363]) -> [FAIL][13] ([i915#3363])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-cfl-8700k/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][14] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][15] ([i915#1436] / [i915#3363])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-skl-6600u/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][16] ([i915#3363] / [k.org#202321]) -> [FAIL][17] ([i915#2426] / [i915#3363] / [k.org#202321])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-glk-dsi/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][18] ([i915#1436] / [i915#3363]) -> [FAIL][19] ([i915#1436] / [i915#2426] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-r/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][20] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][21] ([i915#1436] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-soraka/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][22] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][23] ([i915#1436] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-guc/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-guc/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][24] ([i915#3363]) -> [FAIL][25] ([i915#2426] / [i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-cfl-guc/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][26] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][27] ([i915#1436] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-7567u/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-7567u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (43 -> 41)
------------------------------

  Additional (2): fi-bsw-kefka fi-rkl-11500t 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10135 -> Patchwork_20203

  CI-20190529: 20190529
  CI_DRM_10135: 3471adc5883339a844d766db0f8d859009387094 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20203: 7e57f71fdb2547ab704f9d3365559d871b04aa8d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7e57f71fdb25 drm/i915: Use ttm mmap handling for ttm bo's.
89fe83848800 drm/vma: Add a driver_private member to vma_node.
e1a4df82cfae drm/i915: Disable mmap ioctl for gen12+
078b4a721184 drm/i915/lmem: Verify checks for lmem residency
d74440bb1681 drm/i915/ttm: Introduce a TTM i915 gem object backend
4eb13de59af2 drm/ttm, drm/amdgpu: Allow the driver some control over swapping
a0467168f3dd drm/ttm: Document and optimize ttm_bo_pipeline_gutting()
aa4e527660b2 drm/ttm: Use drm_memcpy_from_wc_dbm for TTM bo moves
1a9c04facf2f drm, drm/i915: Move the memcpy_from_wc functionality to core drm
512ac8fd774b drm/ttm: Add a generic TTM memcpy move for page-based iomem
8c9f9a941096 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
9e94246f54ff drm/i915/ttm Initialize the ttm device and memory managers
34211cad1c61 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages
565669662415 drm/i915: Don't free shared locks while shared
a8d995049a9a drm/i915: Untangle the vma pages_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/index.html

--===============4296928625960600549==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move LMEM (VRAM) management over to TTM (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90022/">https://patchwork.freedesktop.org/series/90022/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10135 -&gt; Patchwork_20203</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20203:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-rkl-11500t/igt@prime_self_import@basic-with_two_bos.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-rkl-11500t/igt@prime_vgem@basic-fence-flip.html">SKIP</a> +11 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20203 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10135/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20203/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (2): fi-bsw-kefka fi-rkl-11500t <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10135 -&gt; Patchwork_20203</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10135: 3471adc5883339a844d766db0f8d859009387094 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20203: 7e57f71fdb2547ab704f9d3365559d871b04aa8d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7e57f71fdb25 drm/i915: Use ttm mmap handling for ttm bo's.<br />
89fe83848800 drm/vma: Add a driver_private member to vma_node.<br />
e1a4df82cfae drm/i915: Disable mmap ioctl for gen12+<br />
078b4a721184 drm/i915/lmem: Verify checks for lmem residency<br />
d74440bb1681 drm/i915/ttm: Introduce a TTM i915 gem object backend<br />
4eb13de59af2 drm/ttm, drm/amdgpu: Allow the driver some control over swapping<br />
a0467168f3dd drm/ttm: Document and optimize ttm_bo_pipeline_gutting()<br />
aa4e527660b2 drm/ttm: Use drm_memcpy_from_wc_dbm for TTM bo moves<br />
1a9c04facf2f drm, drm/i915: Move the memcpy_from_wc functionality to core drm<br />
512ac8fd774b drm/ttm: Add a generic TTM memcpy move for page-based iomem<br />
8c9f9a941096 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object<br />
9e94246f54ff drm/i915/ttm Initialize the ttm device and memory managers<br />
34211cad1c61 drm/i915: Fix i915_sg_page_sizes to record dma segments rather than physical pages<br />
565669662415 drm/i915: Don't free shared locks while shared<br />
a8d995049a9a drm/i915: Untangle the vma pages_mutex</p>

</body>
</html>

--===============4296928625960600549==--

--===============0330274287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0330274287==--
