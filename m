Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E501E333941
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 10:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7566E4E3;
	Wed, 10 Mar 2021 09:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 181EF6E303;
 Wed, 10 Mar 2021 09:54:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1180AA66C9;
 Wed, 10 Mar 2021 09:54:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 10 Mar 2021 09:54:03 -0000
Message-ID: <161537004304.2306.17954089161191412726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615297748.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615297748.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_overhaul_displayid_iterator_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0923660446=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0923660446==
Content-Type: multipart/alternative;
 boundary="===============8258046476419364439=="

--===============8258046476419364439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: overhaul displayid iterator (rev2)
URL   : https://patchwork.freedesktop.org/series/87802/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9844 -> Patchwork_19771
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/index.html

Known issues
------------

  Here are the changes found in Patchwork_19771 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][4] ([i915#3159])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-8809g:       [PASS][5] -> [TIMEOUT][6] ([i915#2502] / [i915#3145])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@blt:
    - fi-snb-2600:        [PASS][7] -> [DMESG-FAIL][8] ([i915#1409])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-snb-2600/igt@i915_selftest@live@blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-snb-2600/igt@i915_selftest@live@blt.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9] ([i915#1602] / [i915#2029] / [i915#2369])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][10] ([i915#3145]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][12] ([i915#3047]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-glk-dsi/igt@i915_selftest@live@client.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-glk-dsi/igt@i915_selftest@live@client.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159


Participating hosts (45 -> 42)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9844 -> Patchwork_19771

  CI-20190529: 20190529
  CI_DRM_9844: 3108bcbbbf191b3b5e624f21348c306010725a02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6027: b8b3facdfbb99a0b9ef5f541a0ee7d6bca2aafea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19771: 7a1e03ddde500cf23d3464177119c8c323b7d08e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7a1e03ddde50 drm/edid: use the new displayid iterator for tile info
742b27ceab41 drm/edid: use the new displayid iterator for finding CEA extension
e1b0237e413c drm/edid: use the new displayid iterator for detailed modes
2cd7c9986b9e drm/displayid: add new displayid section/block iterators
6e714eb67565 drm/displayid: add separate drm_displayid.c
4c9b64816221 drm/edid: make a number of functions, parameters and variables const

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/index.html

--===============8258046476419364439==
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
<tr><td><b>Series:</b></td><td>drm/edid: overhaul displayid iterator (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87802/">https://patchwork.freedesktop.org/series/87802/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9844 -&gt; Patchwork_19771</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19771 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-snb-2600/igt@i915_selftest@live@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-snb-2600/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19771/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 42)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9844 -&gt; Patchwork_19771</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9844: 3108bcbbbf191b3b5e624f21348c306010725a02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6027: b8b3facdfbb99a0b9ef5f541a0ee7d6bca2aafea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19771: 7a1e03ddde500cf23d3464177119c8c323b7d08e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7a1e03ddde50 drm/edid: use the new displayid iterator for tile info<br />
742b27ceab41 drm/edid: use the new displayid iterator for finding CEA extension<br />
e1b0237e413c drm/edid: use the new displayid iterator for detailed modes<br />
2cd7c9986b9e drm/displayid: add new displayid section/block iterators<br />
6e714eb67565 drm/displayid: add separate drm_displayid.c<br />
4c9b64816221 drm/edid: make a number of functions, parameters and variables const</p>

</body>
</html>

--===============8258046476419364439==--

--===============0923660446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0923660446==--
