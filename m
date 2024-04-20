Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FA28AB819
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Apr 2024 02:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EEF10EE9D;
	Sat, 20 Apr 2024 00:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2149810E33F;
 Sat, 20 Apr 2024 00:21:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0361831408346340231=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/edid=3A_Parse_topology_?=
 =?utf-8?q?block_for_all_DispID_structure_v1=2Ex_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 20 Apr 2024 00:21:08 -0000
Message-ID: <171357246813.1536851.15297385511258750493@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240410180139.21352-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240410180139.21352-1-ville.syrjala@linux.intel.com>
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

--===============0361831408346340231==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: Parse topology block for all DispID structure v1.x (rev2)
URL   : https://patchwork.freedesktop.org/series/132292/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14617 -> Patchwork_132292v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/index.html

Participating hosts (37 -> 33)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): bat-rpls-4 fi-kbl-8809g bat-arls-1 bat-mtlp-8 bat-arls-3 

Known issues
------------

  Here are the changes found in Patchwork_132292v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] +19 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@gtt:
    - bat-arls-2:         [PASS][2] -> [ABORT][3] ([i915#10677])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-arls-2/igt@i915_selftest@live@gtt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-arls-2/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][4] -> [DMESG-FAIL][5] ([i915#10793])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-dg2-11:         [DMESG-FAIL][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-dg2-11:         [ABORT][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html

  * igt@gem_lmem_swapping@basic@lmem0:
    - bat-dg2-8:          [FAIL][10] ([i915#10378]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html

  
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10677]: https://gitlab.freedesktop.org/drm/intel/issues/10677
  [i915#10793]: https://gitlab.freedesktop.org/drm/intel/issues/10793


Build changes
-------------

  * Linux: CI_DRM_14617 -> Patchwork_132292v2

  CI-20190529: 20190529
  CI_DRM_14617: 5b8f5c906246fb3ddf35b775a3b6ac9ea5fdcdd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7814: 7814
  Patchwork_132292v2: 5b8f5c906246fb3ddf35b775a3b6ac9ea5fdcdd5 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/index.html

--===============0361831408346340231==
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
<tr><td><b>Series:</b></td><td>drm/edid: Parse topology block for all DispID structure v1.x (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132292/">https://patchwork.freedesktop.org/series/132292/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14617 -&gt; Patchwork_132292v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): bat-rpls-4 fi-kbl-8809g bat-arls-1 bat-mtlp-8 bat-arls-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132292v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-arls-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-arls-2/igt@i915_selftest@live@gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10677">i915#10677</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10793">i915#10793</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic@lmem0:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14617/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132292v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14617 -&gt; Patchwork_132292v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14617: 5b8f5c906246fb3ddf35b775a3b6ac9ea5fdcdd5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7814: 7814<br />
  Patchwork_132292v2: 5b8f5c906246fb3ddf35b775a3b6ac9ea5fdcdd5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0361831408346340231==--
