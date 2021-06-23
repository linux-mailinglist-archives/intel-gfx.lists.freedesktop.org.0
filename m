Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA56C3B1F9C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 19:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B3D6E96F;
	Wed, 23 Jun 2021 17:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C4B66E96E;
 Wed, 23 Jun 2021 17:35:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 851DAA7DFB;
 Wed, 23 Jun 2021 17:35:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 23 Jun 2021 17:35:27 -0000
Message-ID: <162446972754.30471.4936351877523315523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaW1w?=
 =?utf-8?q?licit_fencing/dma-resv_rules_for_shared_buffers_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0960358468=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0960358468==
Content-Type: multipart/alternative;
 boundary="===============0260677660890810900=="

--===============0260677660890810900==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: implicit fencing/dma-resv rules for shared buffers (rev5)
URL   : https://patchwork.freedesktop.org/series/91789/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10268 -> Patchwork_20444
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/index.html

Known issues
------------

  Here are the changes found in Patchwork_20444 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271]) +59 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-guc:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-guc:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#533])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-bxt-dsi:         NOTRUN -> [FAIL][5] ([i915#2426] / [i915#3363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-bxt-dsi/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (41 -> 38)
------------------------------

  Additional (1): fi-kbl-guc 
  Missing    (4): fi-ilk-m540 fi-bdw-samus fi-bsw-cyan bat-adlp-4 


Build changes
-------------

  * Linux: CI_DRM_10268 -> Patchwork_20444

  CI-20190529: 20190529
  CI_DRM_10268: 0e0529132a50160a0e8bd0aa9608226445a3299b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20444: ab7b3daba258b2b06f00e003a8d68c0795d91ae3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ab7b3daba258 RFC: drm/amdgpu: Implement a proper implicit fencing uapi
24934c721047 drm/gem: Tiny kernel clarification for drm_gem_fence_array_add
a59a7001144a drm/tiny: drm_gem_simple_display_pipe_prepare_fb is the default
dd7d69020b37 drm/simple-helper: drm_gem_simple_display_pipe_prepare_fb as default
2d0b037b1bdb drm/omap: Follow implicit fencing in prepare_fb
1248a0b5d17a drm/vram-helpers: Create DRM_GEM_VRAM_PLANE_HELPER_FUNCS
b580cc0434b9 drm/armada: Remove prepare/cleanup_fb hooks
7e0e4eba2802 drm/<driver>: drm_gem_plane_helper_prepare_fb is now the default
8660ea15e738 drm/atomic-helper: make drm_gem_plane_helper_prepare_fb the default
c234633ef5d4 drm/panfrost: Fix implicit sync
9a0f2341b633 drm/panfrost: Use xarray and helpers for depedency tracking
f4a64c4c4a3c drm/panfrost: Shrink sched_lock
ee5ebd9f360f dma-buf: Document dma-buf implicit fencing/resv fencing rules
2757dca29ffc dma-buf: Switch to inline kerneldoc
ec4dbdd1b8f4 dma-resv: Fix kerneldoc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/index.html

--===============0260677660890810900==
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
<tr><td><b>Series:</b></td><td>implicit fencing/dma-resv rules for shared buffers (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91789/">https://patchwork.freedesktop.org/series/91789/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10268 -&gt; Patchwork_20444</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20444 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-kbl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20444/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Additional (1): fi-kbl-guc <br />
  Missing    (4): fi-ilk-m540 fi-bdw-samus fi-bsw-cyan bat-adlp-4 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10268 -&gt; Patchwork_20444</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10268: 0e0529132a50160a0e8bd0aa9608226445a3299b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20444: ab7b3daba258b2b06f00e003a8d68c0795d91ae3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ab7b3daba258 RFC: drm/amdgpu: Implement a proper implicit fencing uapi<br />
24934c721047 drm/gem: Tiny kernel clarification for drm_gem_fence_array_add<br />
a59a7001144a drm/tiny: drm_gem_simple_display_pipe_prepare_fb is the default<br />
dd7d69020b37 drm/simple-helper: drm_gem_simple_display_pipe_prepare_fb as default<br />
2d0b037b1bdb drm/omap: Follow implicit fencing in prepare_fb<br />
1248a0b5d17a drm/vram-helpers: Create DRM_GEM_VRAM_PLANE_HELPER_FUNCS<br />
b580cc0434b9 drm/armada: Remove prepare/cleanup_fb hooks<br />
7e0e4eba2802 drm/<driver>: drm_gem_plane_helper_prepare_fb is now the default<br />
8660ea15e738 drm/atomic-helper: make drm_gem_plane_helper_prepare_fb the default<br />
c234633ef5d4 drm/panfrost: Fix implicit sync<br />
9a0f2341b633 drm/panfrost: Use xarray and helpers for depedency tracking<br />
f4a64c4c4a3c drm/panfrost: Shrink sched_lock<br />
ee5ebd9f360f dma-buf: Document dma-buf implicit fencing/resv fencing rules<br />
2757dca29ffc dma-buf: Switch to inline kerneldoc<br />
ec4dbdd1b8f4 dma-resv: Fix kerneldoc</p>

</body>
</html>

--===============0260677660890810900==--

--===============0960358468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0960358468==--
